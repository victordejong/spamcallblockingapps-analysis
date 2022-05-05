package com.privacystar.core.p011ui.detail_view.af_about;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.p001v4.content.FileProvider;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.about.InfoItemRepository;
import com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract;
import com.privacystar.core.p011ui.intro.PrivacyPolicyDialog;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import io.realm.Realm;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import kotlin.p013io.TextStreamsKt;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��w\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b*\u0001\u0013\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0014J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0001H\u0016J\b\u0010\u001f\u001a\u00020\u0016H\u0016J&\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\b\u0010(\u001a\u00020\u0016H\u0016J\u0012\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u001a\u0010-\u001a\u00020\u00162\u0006\u0010.\u001a\u00020!2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000200H\u0016J\b\u00102\u001a\u00020\u0016H\u0016J\b\u00103\u001a\u00020\u0016H\u0016J\b\u00104\u001a\u00020\u0016H\u0016J\b\u00105\u001a\u00020\u0016H\u0016J\b\u00106\u001a\u00020\u0016H\u0016J\b\u00107\u001a\u00020\u0016H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014¨\u00068"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/af_about/AFAboutFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/DetailActivity$DetailActivityContent;", "Lcom/privacystar/core/ui/detail_view/af_about/AFAboutContract$View;", "()V", "presenter", "Lcom/privacystar/core/ui/detail_view/af_about/AFAboutPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/detail_view/af_about/AFAboutPresenter;", "privacyPolicy", "Landroid/widget/TextView;", "getPrivacyPolicy", "()Landroid/widget/TextView;", "setPrivacyPolicy", "(Landroid/widget/TextView;)V", "termsOfService", "getTermsOfService", "setTermsOfService", "versionClickedListener", "com/privacystar/core/ui/detail_view/af_about/AFAboutFragment$versionClickedListener$1", "Lcom/privacystar/core/ui/detail_view/af_about/AFAboutFragment$versionClickedListener$1;", "emailLog", "", "file", "Ljava/io/File;", "getCacheDirPath", "getLayoutResId", "", "getRealmTemp", "Lio/realm/Realm;", "newInstance", "onButtonClicked", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onFabClicked", "onMenuItemClicked", "", "item", "Landroid/view/MenuItem;", "onViewCreated", Promotion.ACTION_VIEW, "readKeyFromAssets", "", "fileName", "refreshContent", "setVersionClickListener", "setVersionText", "setupView", "showPrivacyPolicy", "showTermsOfService", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.af_about.AFAboutFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/af_about/AFAboutFragment.class */
public final class AFAboutFragment extends DetailFragment implements DetailActivity.DetailActivityContent, AFAboutContract.View {
    private HashMap _$_findViewCache;
    @NotNull
    public TextView privacyPolicy;
    @NotNull
    public TextView termsOfService;
    @NotNull
    private final AFAboutPresenter presenter = new AFAboutPresenter(this);
    private final AFAboutFragment$versionClickedListener$1 versionClickedListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_about.AFAboutFragment$versionClickedListener$1
        private int count;

        @Override // android.view.View.OnClickListener
        public void onClick(@Nullable View view) {
            this.count++;
            AFAboutFragment.this.getPresenter().onVersionClicked(this.count);
        }
    };

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract.View
    public void emailLog(@NotNull File file) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", "Android Log From " + getString(2131755161));
        intent.putExtra("android.intent.extra.TEXT", "Log attached.\n version: 3.4.2.0059-release");
        DetailActivity activity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        Context applicationContext = activity.getApplicationContext();
        StringBuilder sb = new StringBuilder();
        DetailActivity activity2 = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity2, "activity");
        Context applicationContext2 = activity2.getApplicationContext();
        Intrinsics.checkExpressionValueIsNotNull(applicationContext2, "activity.applicationContext");
        sb.append(applicationContext2.getPackageName());
        sb.append(".log.file.provider");
        intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(applicationContext, sb.toString(), file));
        startActivity(Intent.createChooser(intent, "Share with:"));
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract.View
    @Nullable
    public File getCacheDirPath() {
        DetailActivity activity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        Context applicationContext = activity.getApplicationContext();
        Intrinsics.checkExpressionValueIsNotNull(applicationContext, "activity.applicationContext");
        return applicationContext.getExternalCacheDir();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.af_about_fragment;
    }

    @NotNull
    public final AFAboutPresenter getPresenter() {
        return this.presenter;
    }

    @NotNull
    public final TextView getPrivacyPolicy() {
        TextView textView = this.privacyPolicy;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("privacyPolicy");
        }
        return textView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract.View
    @NotNull
    public Realm getRealmTemp() {
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        return realm;
    }

    @NotNull
    public final TextView getTermsOfService() {
        TextView textView = this.termsOfService;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("termsOfService");
        }
        return textView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new AFAboutFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        TextView textView = (TextView) view.findViewById(C1566R.C1569id.af_about_terms_of_service_tv);
        Intrinsics.checkExpressionValueIsNotNull(textView, "view.af_about_terms_of_service_tv");
        this.termsOfService = textView;
        TextView textView2 = (TextView) view.findViewById(C1566R.C1569id.af_about_privacy_policy_tv);
        Intrinsics.checkExpressionValueIsNotNull(textView2, "view.af_about_privacy_policy_tv");
        this.privacyPolicy = textView2;
        return view;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(@Nullable MenuItem menuItem) {
        return false;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.presenter.onViewCreated();
        TextView textView = this.termsOfService;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("termsOfService");
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_about.AFAboutFragment$onViewCreated$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AFAboutFragment.this.getPresenter().onTermsOfServiceClick();
            }
        });
        TextView textView2 = this.privacyPolicy;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("privacyPolicy");
        }
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_about.AFAboutFragment$onViewCreated$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AFAboutFragment.this.getPresenter().onPrivacyPolicyClick();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract.View
    @NotNull
    public String readKeyFromAssets(@NotNull String fileName) {
        Intrinsics.checkParameterIsNotNull(fileName, "fileName");
        DetailActivity activity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        InputStream open = activity.getAssets().open(fileName);
        Intrinsics.checkExpressionValueIsNotNull(open, "activity.assets.open(fileName)");
        InputStreamReader inputStreamReader = new InputStreamReader(open, Charsets.UTF_8);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        Throwable th = null;
        try {
            String readText = TextStreamsKt.readText(bufferedReader);
            CloseableKt.closeFinally(bufferedReader, th);
            return readText;
        } finally {
            try {
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
    }

    public final void setPrivacyPolicy(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.privacyPolicy = textView;
    }

    public final void setTermsOfService(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.termsOfService = textView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract.View
    public void setVersionClickListener() {
        ((TextView) _$_findCachedViewById(C1566R.C1569id.af_about_app_version_tv)).setOnClickListener(this.versionClickedListener);
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract.View
    public void setVersionText() {
        Context it = getContext();
        if (it != null) {
            InfoItemRepository infoItemRepository = InfoItemRepository.INSTANCE;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            String itemDescription = infoItemRepository.getApkVersionInfoItem$app_core(it).getItemDescription();
            TextView af_about_app_version_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.af_about_app_version_tv);
            Intrinsics.checkExpressionValueIsNotNull(af_about_app_version_tv, "af_about_app_version_tv");
            af_about_app_version_tv.setText(getString(C1566R.string.af_app_version_label, itemDescription));
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract.View
    public void setupView() {
        this.activity.setDetailToolbarTitle(C1566R.string.about_fragment_toolbar_title);
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract.View
    public void showPrivacyPolicy() {
        if (this.activity != null) {
            final PrivacyPolicyDialog privacyPolicyDialog = new PrivacyPolicyDialog();
            privacyPolicyDialog.setListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_about.AFAboutFragment$showPrivacyPolicy$1$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Timber.m37d("Disclosure notice accepted", new Object[0]);
                    PrivacyPolicyDialog.this.dismiss();
                }
            });
            privacyPolicyDialog.setStyle(0, C1566R.C1574style.DialogFullScreenFragmentTheme);
            privacyPolicyDialog.show(getFragmentManager(), PrivacyPolicyDialog.Companion.getCLASS_TAG());
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract.View
    public void showTermsOfService() {
        AnalyticsManager.INSTANCE.fire(Event.EulaReadEvent.INSTANCE);
        AnalyticsUtil.trackRegistration$default(AnalyticsUtil.INSTANCE, AnalyticsUtil.RegistrationAnalyticsEvent.EULA_READ, 0L, 2, null);
        SystemUtil systemUtil = SystemUtil.INSTANCE;
        Context context = getContext();
        String string = getString(C1566R.string.eula_fragment_eula_url);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.eula_fragment_eula_url)");
        SystemUtil.openExternalWebpage$default(systemUtil, context, string, null, 4, null);
    }
}
