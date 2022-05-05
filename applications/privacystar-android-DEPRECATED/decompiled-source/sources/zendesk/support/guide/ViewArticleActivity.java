package zendesk.support.guide;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.p001v4.p003os.ConfigurationCompat;
import android.support.p004v7.app.ActionBar;
import android.support.p004v7.app.AppCompatActivity;
import android.support.p004v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.SafeZendeskCallback;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.FileUtils;
import com.zendesk.util.StringUtils;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import zendesk.commonui.UiConfigUtil;
import zendesk.core.ApplicationConfiguration;
import zendesk.core.NetworkAware;
import zendesk.core.NetworkInfoProvider;
import zendesk.support.AggregatedCallback;
import zendesk.support.Article;
import zendesk.support.ArticleVoteStorage;
import zendesk.support.AttachmentType;
import zendesk.support.HelpCenterAttachment;
import zendesk.support.HelpCenterProvider;
import zendesk.support.SdkDependencyProvider;
import zendesk.support.SupportSdkSettings;
import zendesk.support.SupportSettingsProvider;
import zendesk.support.UiUtils;
import zendesk.support.ZendeskDeepLinkHelper;
import zendesk.support.guide.ArticleUiConfig;
import zendesk.support.request.RequestActivity;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ViewArticleActivity.class */
public class ViewArticleActivity extends AppCompatActivity implements AdapterView.OnItemClickListener {
    private static final String ARTICLE_DETAIL_FORMAT_STRING = "%s %s %s";
    private static final String CSS_FILE = "file:///android_asset/help_center_article_style.css";
    private static final long FETCH_ATTACHMENTS_DELAY_MILLIS = 250;
    static final String LOG_TAG = "ViewArticleActivity";
    private static final Integer NETWORK_AWARE_ID = 57564;
    private static final String TYPE_TEXT_HTML = "text/html";
    private static final String UTF_8_ENCODING_TYPE = "UTF-8";
    private ArticleAttachmentAdapter adapter;
    @Inject
    ApplicationConfiguration applicationConfiguration;
    private ArticleViewModel article;
    private WebView articleContentWebView;
    private Long articleId;
    @Inject
    ArticleVoteStorage articleVoteStorage;
    private ArticleVotingView articleVotingView;
    private ListView attachmentListView;
    private SafeZendeskCallback<List<HelpCenterAttachment>> attachmentRequestCallback;
    private ArticleUiConfig config;
    private CoordinatorLayout coordinatorLayout;
    @Inject
    ZendeskDeepLinkHelper deepLinkHelper;
    @Inject
    HelpCenterProvider helpCenterProvider;
    @Inject
    NetworkInfoProvider networkInfoProvider;
    @Inject
    OkHttpClient okHttpClient;
    private ProgressBar progressView;
    private Snackbar snackbar;
    @Inject
    SupportSettingsProvider supportSettingsProvider;
    private final AggregatedCallback<SupportSdkSettings> settingsAggregatedCallback = new AggregatedCallback<>();
    private final Handler handler = new Handler();
    private final NetworkAware networkConnectionCallbacks = new NetworkAware() { // from class: zendesk.support.guide.ViewArticleActivity.6
        boolean connected = true;

        @Override // zendesk.core.NetworkAware
        public void onNetworkAvailable() {
            if (NetworkUtils.isConnectedOrConnecting(ViewArticleActivity.this)) {
                ViewArticleActivity.this.dimissSnackBar();
                this.connected = true;
                if (ViewArticleActivity.this.articleId != null && ViewArticleActivity.this.article == null) {
                    ViewArticleActivity.this.fetchArticle(ViewArticleActivity.this.articleId.longValue());
                } else if (ViewArticleActivity.this.article != null) {
                    ViewArticleActivity.this.fetchAttachmentsForArticle(ViewArticleActivity.this.article.getId());
                }
            }
        }

        @Override // zendesk.core.NetworkAware
        @SuppressLint({"MissingPermission"})
        public void onNetworkUnavailable() {
            if (!NetworkUtils.isConnectedOrConnecting(ViewArticleActivity.this) && this.connected) {
                this.connected = false;
                ViewArticleActivity.this.dimissSnackBar();
                ViewArticleActivity.this.snackbar = Snackbar.make(ViewArticleActivity.this.coordinatorLayout, C1790R.string.zendesk_no_connectivity_error, -2);
                ViewArticleActivity.this.snackbar.show();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: zendesk.support.guide.ViewArticleActivity$8 */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ViewArticleActivity$8.class */
    public static /* synthetic */ class C27998 {

        /* renamed from: $SwitchMap$zendesk$support$guide$ViewArticleActivity$LoadingState */
        static final /* synthetic */ int[] f1860x84719a3e = new int[LoadingState.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f1860x84719a3e[LoadingState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1860x84719a3e[LoadingState.DISPLAYING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1860x84719a3e[LoadingState.ERRORED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ViewArticleActivity$ArticleAttachmentAdapter.class */
    public static class ArticleAttachmentAdapter extends ArrayAdapter<HelpCenterAttachment> {
        ArticleAttachmentAdapter(Context context) {
            super(context, C1790R.C1794layout.zs_row_article_attachment);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        @NonNull
        public View getView(int i, View view, @NonNull ViewGroup viewGroup) {
            ArticleAttachmentRow articleAttachmentRow = view instanceof ArticleAttachmentRow ? (ArticleAttachmentRow) view : new ArticleAttachmentRow(getContext());
            articleAttachmentRow.bind(getItem(i));
            return articleAttachmentRow;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ViewArticleActivity$ArticleAttachmentRow.class */
    private static class ArticleAttachmentRow extends RelativeLayout {
        private final TextView mFileName = (TextView) findViewById(C1790R.C1793id.article_attachment_row_filename_text);
        private final TextView mFileSize = (TextView) findViewById(C1790R.C1793id.article_attachment_row_filesize_text);

        public ArticleAttachmentRow(Context context) {
            super(context);
            inflate(context, C1790R.C1794layout.zs_row_article_attachment, this);
        }

        public void bind(HelpCenterAttachment helpCenterAttachment) {
            this.mFileName.setText(helpCenterAttachment.getFileName());
            this.mFileSize.setText(FileUtils.humanReadableFileSize(helpCenterAttachment.getSize()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ViewArticleActivity$AttachmentRequestCallback.class */
    class AttachmentRequestCallback extends ZendeskCallback<List<HelpCenterAttachment>> {
        AttachmentRequestCallback() {
        }

        @Override // com.zendesk.service.ZendeskCallback
        public void onError(ErrorResponse errorResponse) {
            ViewArticleActivity.this.adapter.clear();
            ViewArticleActivity.this.setLoadingState(LoadingState.ERRORED);
            Logger.m297e(ViewArticleActivity.LOG_TAG, errorResponse);
        }

        public void onSuccess(List<HelpCenterAttachment> list) {
            ViewArticleActivity.this.adapter.clear();
            ViewArticleActivity.this.adapter.addAll(list);
            ViewArticleActivity.setListViewHeightBasedOnChildren(ViewArticleActivity.this.attachmentListView);
            ViewArticleActivity.this.setLoadingState(LoadingState.DISPLAYING);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ViewArticleActivity$LoadingState.class */
    public enum LoadingState {
        LOADING,
        DISPLAYING,
        ERRORED
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyVoteButtonSettings() {
        loadSettings(new ZendeskCallback<SupportSdkSettings>() { // from class: zendesk.support.guide.ViewArticleActivity.7
            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                ViewArticleActivity.this.articleVotingView.setVisibility(8);
            }

            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                if (supportSdkSettings.isHelpCenterArticleVotingEnabled()) {
                    ViewArticleActivity.this.articleVotingView.setVisibility(0);
                } else {
                    ViewArticleActivity.this.articleVotingView.setVisibility(8);
                }
            }
        });
    }

    public static ArticleUiConfig.Builder builder() {
        return new ArticleUiConfig.Builder();
    }

    public static ArticleUiConfig.Builder builder(long j) {
        return new ArticleUiConfig.Builder(j);
    }

    public static ArticleUiConfig.Builder builder(@NonNull Article article) {
        return new ArticleUiConfig.Builder(article);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dimissSnackBar() {
        if (this.snackbar != null) {
            this.snackbar.dismiss();
            this.snackbar = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchArticle(long j) {
        setLoadingState(LoadingState.LOADING);
        this.helpCenterProvider.getArticle(Long.valueOf(j), new ZendeskCallback<Article>() { // from class: zendesk.support.guide.ViewArticleActivity.3
            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                ViewArticleActivity.this.setLoadingState(LoadingState.ERRORED);
            }

            public void onSuccess(Article article) {
                ViewArticleActivity.this.article = new ArticleViewModel(article);
                ViewArticleActivity.this.loadArticleBody();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchAttachmentsForArticle(long j) {
        setLoadingState(LoadingState.LOADING);
        this.helpCenterProvider.getAttachments(Long.valueOf(j), AttachmentType.BLOCK, this.attachmentRequestCallback);
    }

    private ActionBar initToolbar() {
        Toolbar toolbar = (Toolbar) findViewById(C1790R.C1793id.view_article_toolbar);
        if (Build.VERSION.SDK_INT >= 21) {
            findViewById(C1790R.C1793id.view_article_compat_shadow).setVisibility(8);
        }
        setSupportActionBar(toolbar);
        return getSupportActionBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"RestrictedApi"})
    public void loadArticleBody() {
        setTitle(getString(C1790R.string.zs_view_article_loaded_accessibility, new Object[]{this.article.getTitle()}));
        setLoadingState(LoadingState.DISPLAYING);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(UiUtils.decodeHtmlEntities(this.article.getTitle()));
        }
        String str = null;
        String authorName = this.article.getAuthorName();
        if (this.article.getCreatedAt() != null) {
            str = DateFormat.getDateInstance(1, ConfigurationCompat.getLocales(getResources().getConfiguration()).get(0)).format(this.article.getCreatedAt());
        }
        this.articleContentWebView.loadDataWithBaseURL(this.applicationConfiguration.getZendeskUrl(), getString(C1790R.string.view_article_html_body, new Object[]{CSS_FILE, this.article.getTitle(), this.article.getBody(), (str == null || authorName == null) ? "" : String.format(Locale.US, ARTICLE_DETAIL_FORMAT_STRING, authorName, getString(C1790R.string.view_article_seperator), str)}), TYPE_TEXT_HTML, "UTF-8", null);
        this.handler.postDelayed(new Runnable() { // from class: zendesk.support.guide.ViewArticleActivity.4
            @Override // java.lang.Runnable
            public void run() {
                ViewArticleActivity.this.fetchAttachmentsForArticle(ViewArticleActivity.this.article.getId());
                ViewArticleActivity.this.applyVoteButtonSettings();
            }
        }, FETCH_ATTACHMENTS_DELAY_MILLIS);
    }

    private void loadSettings(ZendeskCallback<SupportSdkSettings> zendeskCallback) {
        if (this.settingsAggregatedCallback.add(zendeskCallback)) {
            this.supportSettingsProvider.getSettings(this.settingsAggregatedCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setListViewHeightBasedOnChildren(ListView listView) {
        ListAdapter adapter = listView.getAdapter();
        if (adapter != null) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(listView.getWidth(), 0);
            View view = null;
            int i = 0;
            for (int i2 = 0; i2 < adapter.getCount(); i2++) {
                view = adapter.getView(i2, view, listView);
                if (i2 == 0) {
                    view.setLayoutParams(new ViewGroup.LayoutParams(makeMeasureSpec, -2));
                }
                view.measure(makeMeasureSpec, 0);
                i += view.getMeasuredHeight();
            }
            ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
            layoutParams.height = i + (listView.getDividerHeight() * (adapter.getCount() - 1));
            listView.setLayoutParams(layoutParams);
            listView.requestLayout();
        }
    }

    private void setupRequestInterceptor() {
        if (this.articleContentWebView == null) {
            Logger.m289w(LOG_TAG, "The webview is null. Make sure you initialise it before trying to add the interceptor", new Object[0]);
        } else {
            this.articleContentWebView.setWebViewClient(new WebViewClient() { // from class: zendesk.support.guide.ViewArticleActivity.2
                @Override // android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    InputStream inputStream;
                    String str2;
                    Exception e;
                    Response execute;
                    MediaType contentType;
                    Charset charset;
                    String zendeskUrl = ViewArticleActivity.this.applicationConfiguration.getZendeskUrl();
                    if (StringUtils.isEmpty(zendeskUrl) || !str.startsWith(zendeskUrl)) {
                        Logger.m289w(ViewArticleActivity.LOG_TAG, "Will not intercept request because the url is not hosted by Zendesk" + str, new Object[0]);
                        return super.shouldInterceptRequest(webView, str);
                    }
                    String str3 = null;
                    try {
                        execute = ViewArticleActivity.this.okHttpClient.newCall(new Request.Builder().url(str).build()).execute();
                    } catch (Exception e2) {
                        e = e2;
                        inputStream = null;
                        str3 = null;
                    }
                    if (execute == null || !execute.isSuccessful() || execute.body() == null) {
                        str2 = null;
                        inputStream = null;
                    } else {
                        inputStream = execute.body().byteStream();
                        try {
                            contentType = execute.body().contentType();
                        } catch (Exception e3) {
                            e = e3;
                            str3 = null;
                        }
                        if (contentType != null) {
                            str3 = (!StringUtils.hasLength(contentType.type()) || !StringUtils.hasLength(contentType.subtype())) ? null : String.format(Locale.US, "%s/%s", contentType.type(), contentType.subtype());
                            try {
                                charset = contentType.charset();
                                inputStream = inputStream;
                                str3 = str3;
                            } catch (Exception e4) {
                                e = e4;
                                Logger.m296e(ViewArticleActivity.LOG_TAG, "Exception encountered when trying to intercept request", e, new Object[0]);
                                str2 = null;
                                return new WebResourceResponse(str3, str2, inputStream);
                            }
                            if (charset != null) {
                                str2 = charset.name();
                                str3 = str3;
                            }
                            str2 = null;
                        } else {
                            str2 = null;
                        }
                    }
                    return new WebResourceResponse(str3, str2, inputStream);
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    return ViewArticleActivity.this.deepLinkHelper.launch(str, ViewArticleActivity.this.config, webView.getContext());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRequestActivity() {
        RequestActivity.builder().show(this, this.config.getUiConfigs());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    @SuppressLint({"SetJavaScriptEnabled", "RestrictedApi"})
    @TargetApi(21)
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getTheme().applyStyle(C1790R.C1796style.ZendeskActivityDefaultTheme, true);
        setContentView(C1790R.C1794layout.zs_activity_view_article);
        if (!SdkDependencyProvider.INSTANCE.isInitialized()) {
            Logger.m295e(LOG_TAG, SdkDependencyProvider.NOT_INITIALIZED_LOG, new Object[0]);
            finish();
            return;
        }
        ActionBar initToolbar = initToolbar();
        this.config = (ArticleUiConfig) UiConfigUtil.fromBundle(getIntent().getExtras(), ArticleUiConfig.class);
        if (this.config == null || this.config.getConfigurationState() == -1) {
            Logger.m295e(LOG_TAG, "No configuration found. Please use ViewArticleActivity.builder()", new Object[0]);
            finish();
            return;
        }
        this.attachmentListView = (ListView) findViewById(C1790R.C1793id.view_article_attachment_list);
        this.adapter = new ArticleAttachmentAdapter(this);
        this.attachmentListView.setAdapter((ListAdapter) this.adapter);
        this.attachmentListView.setOnItemClickListener(this);
        if (initToolbar != null) {
            initToolbar.setDisplayHomeAsUpEnabled(true);
        }
        SdkDependencyProvider.INSTANCE.provideSupportSdkComponent().inject(this);
        this.articleContentWebView = (WebView) findViewById(C1790R.C1793id.view_article_content_webview);
        this.articleContentWebView.setWebChromeClient(new WebChromeClient());
        this.articleContentWebView.getSettings().setJavaScriptEnabled(true);
        setupRequestInterceptor();
        if (Build.VERSION.SDK_INT >= 21) {
            this.articleContentWebView.getSettings().setMixedContentMode(0);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        this.progressView = (ProgressBar) findViewById(C1790R.C1793id.view_article_progress);
        this.coordinatorLayout = (CoordinatorLayout) findViewById(C1790R.C1793id.view_article_attachment_coordinator);
        if (this.config.getConfigurationState() == 2) {
            this.article = this.config.getArticle();
            if (this.article != null) {
                this.articleId = Long.valueOf(this.article.getId());
            }
            loadArticleBody();
        } else {
            fetchArticle(this.config.getArticleId());
            this.articleId = Long.valueOf(this.config.getArticleId());
        }
        if (this.config.isContactUsButtonVisible()) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(C1790R.C1793id.contact_us_button);
            floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.guide.ViewArticleActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ViewArticleActivity.this.startRequestActivity();
                }
            });
            floatingActionButton.setVisibility(0);
        }
        this.articleVotingView = (ArticleVotingView) findViewById(C1790R.C1793id.article_voting_container);
        this.articleVotingView.bindTo(this.articleId, this.articleVoteStorage, this.helpCenterProvider);
        this.articleVotingView.setVisibility(8);
        applyVoteButtonSettings();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.settingsAggregatedCallback.cancel();
        if (this.articleContentWebView != null) {
            this.articleContentWebView.destroy();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition instanceof HelpCenterAttachment) {
            HelpCenterAttachment helpCenterAttachment = (HelpCenterAttachment) itemAtPosition;
            if (helpCenterAttachment.getContentUrl() != null) {
                Uri parse = Uri.parse(helpCenterAttachment.getContentUrl());
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(parse);
                startActivity(intent);
                return;
            }
            Logger.m289w(LOG_TAG, "Unable to launch viewer, unable to parse URI for attachment", new Object[0]);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.attachmentRequestCallback = SafeZendeskCallback.from(new AttachmentRequestCallback());
        this.networkInfoProvider.addNetworkAwareListener(NETWORK_AWARE_ID, this.networkConnectionCallbacks);
        this.networkInfoProvider.register();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.attachmentRequestCallback != null) {
            this.attachmentRequestCallback.cancel();
            this.attachmentRequestCallback = null;
        }
        this.networkInfoProvider.removeNetworkAwareListener(NETWORK_AWARE_ID);
        this.networkInfoProvider.unregister();
    }

    protected void setLoadingState(LoadingState loadingState) {
        if (loadingState == null) {
            Logger.m289w(LOG_TAG, "LoadingState was null, nothing to do", new Object[0]);
            return;
        }
        switch (C27998.f1860x84719a3e[loadingState.ordinal()]) {
            case 1:
                UiUtils.setVisibility(this.progressView, 0);
                UiUtils.setVisibility(this.attachmentListView, 8);
                return;
            case 2:
                UiUtils.setVisibility(this.progressView, 8);
                UiUtils.setVisibility(this.attachmentListView, 0);
                return;
            case 3:
                UiUtils.setVisibility(this.progressView, 8);
                UiUtils.setVisibility(this.attachmentListView, 8);
                dimissSnackBar();
                this.snackbar = Snackbar.make(this.coordinatorLayout, C1790R.string.view_article_attachments_error, -2).setAction(C1790R.string.zendesk_retry_button_label, new View.OnClickListener() { // from class: zendesk.support.guide.ViewArticleActivity.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (ViewArticleActivity.this.articleId != null && ViewArticleActivity.this.article == null) {
                            ViewArticleActivity.this.fetchArticle(ViewArticleActivity.this.articleId.longValue());
                        } else if (ViewArticleActivity.this.article != null) {
                            ViewArticleActivity.this.fetchAttachmentsForArticle(ViewArticleActivity.this.article.getId());
                        }
                        ViewArticleActivity.this.dimissSnackBar();
                    }
                });
                this.snackbar.show();
                return;
            default:
                return;
        }
    }
}
