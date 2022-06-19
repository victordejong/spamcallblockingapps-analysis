package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.FaqOptions;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.FreshchatWebViewListener;
import com.freshchat.consumer.sdk.activity.C1433c;
import com.freshchat.consumer.sdk.beans.Article;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.p047b.C1474j;
import com.freshchat.consumer.sdk.p054g.C1551j;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1729u;
import com.freshchat.consumer.sdk.p057j.C1730v;
import com.freshchat.consumer.sdk.service.p067d.C1867b;
import com.freshchat.consumer.sdk.service.p068e.C1901f;
import com.freshchat.consumer.sdk.service.p068e.C1910n;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.regex.Pattern;
import p1727n3.p1869w.p1870a.AbstractC27043a;
import p1727n3.p1869w.p1871b.C27051b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ArticleDetailActivity.class */
public class ArticleDetailActivity extends AbstractC1419b implements AbstractC27043a.AbstractC27044a<Article>, C1433c.AbstractC1436b {

    /* renamed from: l */
    private static String f3663l = "isArticleVoted";

    /* renamed from: s */
    private static String f3664s = "HL_ARTICLE_TITLE";

    /* renamed from: t */
    private static final String f3665t;

    /* renamed from: u */
    private static final String f3666u;

    /* renamed from: z */
    private static String f3667z;
    private String categoryId;
    private String categoryName;

    /* renamed from: i */
    private View f3675i;

    /* renamed from: j */
    private View f3676j;

    /* renamed from: k */
    private C1433c f3677k;

    /* renamed from: lE */
    private String[] f3678lE;

    /* renamed from: m */
    private RelativeLayout f3679m;

    /* renamed from: n */
    private View f3680n;

    /* renamed from: o */
    private View f3681o;

    /* renamed from: p */
    private View f3682p;

    /* renamed from: q */
    private View f3683q;

    /* renamed from: r */
    private C1474j f3684r;
    private String title;

    /* renamed from: v */
    private String f3685v;

    /* renamed from: w */
    private boolean f3686w;

    /* renamed from: y */
    private boolean f3688y;

    /* renamed from: g */
    public FaqOptions f3673g = new FaqOptions();

    /* renamed from: h */
    private Bundle f3674h = null;

    /* renamed from: x */
    private boolean f3687x = false;

    /* renamed from: A */
    private String f3668A = "article_list";

    /* renamed from: B */
    private boolean f3669B = false;

    /* renamed from: C */
    public WebViewClient f3670C = new C1455v(this);

    /* renamed from: D */
    public View.OnClickListener f3671D = new View$OnClickListenerC1457x(this);

    /* renamed from: E */
    public View.OnClickListener f3672E = new View$OnClickListenerC1393aa(this);

    static {
        String m8618h = C22128a.m8618h(C22128a.m8728C("<head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src='file:///freshchat_assets/freshchat_hacks.js'></script><title>"), f3664s, "</title></head>");
        f3665t = m8618h;
        f3666u = C22128a.m8725C2("<!DOCTYPE html>\t<html>", m8618h, "<body onload='correctIframe()'> <bdi>");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private String m41423a(Article article) {
        String str;
        if (article == null) {
            return null;
        }
        this.categoryId = article.getCategoryId();
        StringBuilder sb = new StringBuilder();
        String replaceAll = article.getDescription().replaceAll("src=\"//", "src=\"http://").replaceAll("value=\"//", "value=\"http://");
        Pattern compile = Pattern.compile("<\\s*(img|iframe).*?src\\s*=[ '\"]+http[s]?:\\/\\/.*?>");
        if (C1618al.m40261aS(this) || !compile.matcher(replaceAll).find()) {
            str = "";
        } else {
            StringBuilder m8728C = C22128a.m8728C("<div class='offline-article-message'>");
            m8728C.append(getString(C1298R.string.freshchat_faq_rich_media_content_cannot_be_displayed));
            m8728C.append("</div>");
            str = m8728C.toString();
        }
        this.title = article.getTitle();
        sb.append(f3666u);
        sb.append("<div class=\"article-title\";><h3 >");
        C22128a.m8666T0(sb, this.title, "</h3></div>", str, "<div class=\"article-body\">");
        String m8610j = C22128a.m8610j(sb, replaceAll, "</div>", "</bdi></body></html>");
        String str2 = m8610j;
        if (!C1626as.isEmpty(this.categoryName)) {
            str2 = m8610j.replace(f3664s, this.categoryName);
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m41428a(Intent intent) {
        if (!intent.hasExtra("article_id")) {
            Toast.makeText((Context) this, C1298R.string.freshchat_faq_failed_to_load, 0).show();
            finish();
        }
        long longExtra = intent.getLongExtra("article_id", -1L);
        if (longExtra > 0) {
            this.f3685v = Long.toString(longExtra);
        } else {
            Toast.makeText((Context) this, C1298R.string.freshchat_faq_failed_to_load, 0).show();
            finish();
        }
        if (intent.hasExtra("category_id")) {
            this.categoryId = intent.getStringExtra("category_id");
        }
        if (intent.hasExtra("category_name")) {
            this.categoryName = intent.getStringExtra("category_name");
        }
        if (intent.hasExtra("EVENT_LAUNCH_SOURCE")) {
            this.f3668A = intent.getStringExtra("EVENT_LAUNCH_SOURCE");
        }
        if (intent.hasExtra("LAUNCHED_FROM_CONVERSATION")) {
            this.f3688y = intent.getBooleanExtra("LAUNCHED_FROM_CONVERSATION", false);
        }
        this.f3678lE = intent.getStringArrayExtra("INPUT_TAGS");
    }

    /* renamed from: a */
    private void m41427a(Bundle bundle) {
        this.f3686w = bundle != null ? bundle.getBoolean(f3663l) : false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m41422a(C1910n.EnumC1911a enumC1911a) {
        C1910n.EnumC1911a enumC1911a2 = C1910n.EnumC1911a.Upvote;
        C1649bg.m40093a(getContext(), this.categoryId, this.categoryName, this.f3685v, this.title, enumC1911a == enumC1911a2);
        new C1867b(getApplicationContext(), enumC1911a == enumC1911a2 ? C1867b.EnumC1868a.faq_upvote_article : C1867b.EnumC1868a.faq_downvote_article).m39394g("article_id", this.f3685v).m39394g("category_id", this.categoryId).m39394g("article_name", this.title).m39395dB();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m41419b() {
        C1649bg.m40092a(getContext(), this.categoryId, this.categoryName, this.f3685v, this.title, this.f3678lE);
        if (!this.f3669B) {
            new C1867b(getApplicationContext(), C1867b.EnumC1868a.faq_open_article).m39394g("category_id", this.categoryId).m39394g("category_name", this.categoryName).m39394g("article_id", this.f3685v).m39394g("article_name", this.title).m39394g("source", this.f3668A).m39395dB();
            this.f3669B = true;
        }
    }

    /* renamed from: c */
    private void m41417c() {
        this.f3682p = findViewById(C1298R.C1300id.freshchat_upvote);
        this.f3683q = findViewById(C1298R.C1300id.freshchat_downvote);
        this.f3680n = findViewById(C1298R.C1300id.freshchat_voting_view);
        this.f3681o = findViewById(C1298R.C1300id.freshchat_contact_us_group);
        this.f3679m = (RelativeLayout) findViewById(C1298R.C1300id.freshchat_solution_article_root_layout);
        ((TextView) findViewById(C1298R.C1300id.freshchat_contact_us_btn)).setText(C1298R.string.freshchat_faq_not_helpful_contact_us);
    }

    /* renamed from: d */
    private void m41415d() {
        Bundle bundle = new Bundle();
        bundle.putString("article_id", this.f3685v);
        if (C1626as.isEmpty(this.categoryName)) {
            bundle.putBoolean("EXTRA_FETCH_CATEGORY_INFO", true);
        }
        getSupportLoaderManager().mo977c(0, bundle, this);
    }

    /* renamed from: e */
    private void m41413e() {
        this.f3682p.setOnClickListener(this.f3671D);
        this.f3683q.setOnClickListener(this.f3671D);
        this.f3681o.setOnClickListener(this.f3672E);
    }

    /* renamed from: f */
    private void m41411f() {
        int i;
        View view;
        if (!this.f3673g.shouldShowContactUsOnFaqNotHelpful() || !this.f3686w || !m41409g().m40831bj(this.f3685v)) {
            view = this.f3681o;
            i = 8;
        } else {
            this.f3681o.bringToFront();
            view = this.f3681o;
            i = 0;
        }
        view.setVisibility(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l */
    public void m41403l() {
        new C1867b(getApplicationContext(), C1867b.EnumC1868a.channels_launch).m39394g("source", "article_not_helpful").m39394g("article_id", this.f3685v).m39394g("category_id", this.categoryId).m39395dB();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    private void m41402m() {
        if (!this.f3686w) {
            String str = f3667z;
            if (str != null && str.equals(this.f3685v)) {
                return;
            }
            Animation loadAnimation = AnimationUtils.loadAnimation(this, C1298R.anim.freshchat_slide_up);
            this.f3680n.bringToFront();
            this.f3680n.startAnimation(loadAnimation);
            this.f3680n.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public void m41401n() {
        if (!this.f3686w) {
            this.f3680n.startAnimation(AnimationUtils.loadAnimation(this, C1298R.anim.freshchat_slide_down));
            this.f3680n.setVisibility(8);
        }
    }

    /* renamed from: o */
    private void m41400o() {
        if (getSupportActionBar() != null) {
            getSupportActionBar().mo3557f();
        }
    }

    /* renamed from: q */
    private void m41399q() {
        if (getSupportActionBar() != null) {
            getSupportActionBar().mo3568A();
        }
    }

    /* renamed from: r */
    public C1730v m41398r() {
        return C1594aa.m40363a(getContext(), this.f3673g);
    }

    /* renamed from: s */
    private void m41397s() {
        this.f3677k.postDelayed(new RunnableC1394ab(this), 500L);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
    }

    /* renamed from: a */
    public void onLoadFinished(C27051b<Article> c27051b, Article article) {
        String m41423a = m41423a(article);
        if (C1626as.m40233a(m41423a)) {
            String str = m41423a;
            if (c27051b instanceof C1551j) {
                Category m40558dk = ((C1551j) c27051b).m40558dk();
                str = m41423a;
                if (m40558dk != null) {
                    String title = m40558dk.getTitle();
                    this.categoryName = title;
                    str = m41423a.replace(f3664s, title);
                }
            }
            this.f3677k.loadDataWithBaseURL(null, str, "text/html", AbstractC22212i.PROTOCOL_CHARSET, null);
        }
        m41419b();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return new String[]{"com.freshchat.consumer.sdk.actions.TokenWaitTimeout", "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged"};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public C1474j m41409g() {
        if (this.f3684r == null) {
            this.f3684r = new C1474j(this);
        }
        return this.f3684r;
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: h */
    public void mo41061h() {
        m41402m();
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: i */
    public void mo41060i() {
        m41401n();
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: j */
    public void mo41059j() {
        m41400o();
        this.f3687x = true;
        this.f3680n.setVisibility(8);
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: k */
    public void mo41058k() {
        m41399q();
        m41397s();
        this.f3687x = false;
    }

    public void onConfigurationChanged(Configuration configuration) {
        ArticleDetailActivity.super.onConfigurationChanged(configuration);
        if (!this.f3687x) {
            m41397s();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        FreshchatWebViewListener webviewListener;
        super.onCreate(bundle);
        Locale m40290bb = C1612ah.m40290bb(this);
        m41427a(bundle);
        Intent intent = getIntent();
        m41428a(intent);
        Bundle extras = intent.getExtras();
        this.f3674h = extras;
        this.f3673g = C1729u.m39812d(extras);
        m41415d();
        setContentView(C1298R.layout.freshchat_activity_article_detail);
        m41107C();
        m41100e(!C1626as.isEmpty(this.f3673g.getFilteredViewTitle()) ? this.f3673g.getFilteredViewTitle() : C1626as.isEmpty(this.categoryName) ? getString(C1298R.string.freshchat_activity_title_article_detail) : this.categoryName);
        m41417c();
        C1638b.m40151a(getApplicationContext(), C1901f.EnumC1902a.NORMAL);
        m41413e();
        this.f3686w = m41409g().m40833P(this.f3685v);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(10, -1);
        this.f3676j = LayoutInflater.from(this).inflate(C1298R.layout.freshchat_partial_article_progress, (ViewGroup) null);
        C1433c c1433c = new C1433c(this);
        this.f3677k = c1433c;
        c1433c.setWebViewClient(this.f3670C);
        this.f3677k.m41074a(this, 85);
        this.f3679m.addView(this.f3677k.getLayout(), layoutParams2);
        this.f3679m.addView(this.f3676j, layoutParams);
        if (bundle != null) {
            this.f3677k.restoreState(bundle);
        }
        this.f3675i = this.f3677k;
        Locale m40290bb2 = C1612ah.m40290bb(this);
        if (m40290bb == null || m40290bb2 == null || !C1626as.m40222p(m40290bb.getLanguage(), m40290bb2.getLanguage()) || (webviewListener = Freshchat.getInstance(this).getWebviewListener()) == null) {
            return;
        }
        webviewListener.onLocaleChangedByWebView(new WeakReference<>(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
    public C27051b<Article> onCreateLoader(int i, Bundle bundle) {
        return new C1551j(getApplicationContext(), bundle.getString("article_id"), bundle.containsKey("EXTRA_FETCH_CATEGORY_INFO"));
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1298R.C1302menu.freshchat_article_detail_list, menu);
        return true;
    }

    public void onDestroy() {
        ArticleDetailActivity.super.onDestroy();
        C1433c c1433c = this.f3677k;
        if (c1433c != null) {
            c1433c.destroy();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.f3677k.m41068az()) {
            return ArticleDetailActivity.super.onKeyDown(i, keyEvent);
        }
        this.f3677k.m41070aA();
        return true;
    }

    @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
    public void onLoaderReset(C27051b<Article> c27051b) {
    }

    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    public void onPause() {
        super.onPause();
        if (C1630aw.m40192fb() && C1630aw.m40204eS()) {
            this.f3677k.onPause();
        } else if (!C1630aw.m40208eM()) {
        } else {
            this.f3677k.m41069aB();
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b, com.freshchat.consumer.sdk.activity.C1392a
    public void onResume() {
        super.onResume();
        this.f3686w = m41409g().m40833P(this.f3685v);
        m41411f();
        if (!C1630aw.m40192fb() || !C1630aw.m40204eS()) {
            return;
        }
        this.f3677k.onResume();
    }

    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(f3663l, this.f3686w);
        super.onSaveInstanceState(bundle);
    }

    public void onStart() {
        ArticleDetailActivity.super.onStart();
        if (C1630aw.m40191fc()) {
            this.f3677k.onResume();
        }
    }

    public void onStop() {
        ArticleDetailActivity.super.onStop();
        if (C1630aw.m40191fc()) {
            this.f3677k.onPause();
        }
        this.f3677k.stopLoading();
    }
}
