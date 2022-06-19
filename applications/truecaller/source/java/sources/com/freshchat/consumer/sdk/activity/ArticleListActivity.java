package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.widget.SearchView;
import androidx.core.widget.ContentLoadingProgressBar;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.FaqOptions;
import com.freshchat.consumer.sdk.beans.Article;
import com.freshchat.consumer.sdk.p045a.C1305a;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1729u;
import com.freshchat.consumer.sdk.p057j.C1730v;
import com.freshchat.consumer.sdk.service.p067d.C1867b;
import com.freshchat.consumer.sdk.service.p068e.C1901f;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1807k.p1821i.AbstractC26603h;
import p1727n3.p1807k.p1821i.MenuItem$OnActionExpandListenerC26594g;
import p1727n3.p1869w.p1870a.AbstractC27043a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ArticleListActivity.class */
public class ArticleListActivity extends AbstractC1419b {

    /* renamed from: L */
    private C1305a f3692L;

    /* renamed from: N */
    private ContentLoadingProgressBar f3694N;

    /* renamed from: O */
    private SearchView f3695O;

    /* renamed from: P */
    private ListView f3696P;

    /* renamed from: Q */
    private View f3697Q;

    /* renamed from: R */
    private Menu f3698R;

    /* renamed from: S */
    private View f3699S;

    /* renamed from: V */
    private boolean f3702V;

    /* renamed from: Y */
    private ArrayList<String> f3705Y;

    /* renamed from: eM */
    private List<String> f3711eM;

    /* renamed from: lE */
    private String[] f3714lE;

    /* renamed from: g */
    public FaqOptions f3712g = new FaqOptions();

    /* renamed from: h */
    private Bundle f3713h = null;

    /* renamed from: J */
    private boolean f3690J = false;

    /* renamed from: K */
    private String f3691K = "";
    private String categoryId = "";
    private String categoryName = "";

    /* renamed from: M */
    private String f3693M = "";

    /* renamed from: T */
    private boolean f3700T = false;

    /* renamed from: U */
    private boolean f3701U = false;

    /* renamed from: W */
    private List<Article> f3703W = new ArrayList();

    /* renamed from: X */
    private List<Article> f3704X = new ArrayList();

    /* renamed from: A */
    private String f3689A = "article_list";

    /* renamed from: Z */
    public AbstractC27043a.AbstractC27044a<List<Article>> f3706Z = new C1395ac(this);

    /* renamed from: aa */
    public AbstractC26603h f3707aa = new C1396ad(this);

    /* renamed from: ab */
    public AdapterView.OnItemClickListener f3708ab = new C1397ae(this);

    /* renamed from: ac */
    public View.OnClickListener f3709ac = new View$OnClickListenerC1398af(this);

    /* renamed from: ad */
    public SearchView.AbstractC0071l f3710ad = new C1399ag(this);

    /* renamed from: A */
    private void m41396A() {
        final ContentLoadingProgressBar contentLoadingProgressBar = this.f3694N;
        if (contentLoadingProgressBar != null) {
            contentLoadingProgressBar.post(new Runnable() { // from class: n3.k.j.b
                @Override // java.lang.Runnable
                public final void run() {
                    ContentLoadingProgressBar contentLoadingProgressBar2 = ContentLoadingProgressBar.this;
                    contentLoadingProgressBar2.f708d = true;
                    contentLoadingProgressBar2.removeCallbacks(contentLoadingProgressBar2.f710f);
                    contentLoadingProgressBar2.f707c = false;
                    long currentTimeMillis = System.currentTimeMillis();
                    long j = contentLoadingProgressBar2.f705a;
                    long j2 = currentTimeMillis - j;
                    if (j2 >= 500 || j == -1) {
                        contentLoadingProgressBar2.setVisibility(8);
                    } else if (contentLoadingProgressBar2.f706b) {
                    } else {
                        contentLoadingProgressBar2.postDelayed(contentLoadingProgressBar2.f709e, 500 - j2);
                        contentLoadingProgressBar2.f706b = true;
                    }
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m41394a(Intent intent) {
        if (intent == null) {
            return;
        }
        this.f3712g = C1729u.m39812d(intent.getExtras());
        if (intent.hasExtra("force_search_open")) {
            this.f3702V = true;
        }
        if (intent.hasExtra("category_name")) {
            this.categoryName = intent.getStringExtra("category_name");
        }
        if (intent.hasExtra("category_ids")) {
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("category_ids");
            this.f3705Y = stringArrayListExtra;
            if (C1716k.m39900b(stringArrayListExtra) == 1) {
                this.categoryId = this.f3705Y.get(0);
            }
        }
        this.f3693M = (this.f3712g.getFilterType() != FaqOptions.FilterType.ARTICLE || !C1626as.m40233a(this.f3712g.getFilteredViewTitle())) ? C1626as.m40233a(this.categoryName) ? this.categoryName : getString(C1298R.string.freshchat_activity_title_article_list) : this.f3712g.getFilteredViewTitle();
        if (!C1716k.m39902a(this.f3712g.getTags())) {
            return;
        }
        this.f3700T = true;
    }

    /* renamed from: aJ */
    public void m41388aJ() {
        MenuItem findItem;
        Menu menu = this.f3698R;
        if (menu == null || (findItem = menu.findItem(C1298R.C1300id.freshchat_menu_item_contact_us)) == null) {
            return;
        }
        findItem.setVisible(!this.f3690J && this.f3712g.shouldShowContactUsOnFaqScreens() && this.f3712g.shouldShowContactUsOnAppBar());
    }

    /* renamed from: bL */
    public void m41384bL() {
        getListView().setAdapter((ListAdapter) this.f3692L);
        getListView().setOnItemClickListener(this.f3708ab);
    }

    /* renamed from: d */
    public void m41380d(String str) {
        if (this.f3690J) {
            getSupportLoaderManager().mo976d(111, C22128a.m8654X0("search_key", str), this.f3706Z);
        }
    }

    private View getEmptyView() {
        if (this.f3697Q == null) {
            this.f3697Q = findViewById(C1298R.C1300id.empty);
        }
        return this.f3697Q;
    }

    private ListView getListView() {
        if (this.f3696P == null) {
            this.f3696P = (ListView) findViewById(C1298R.C1300id.list);
        }
        return this.f3696P;
    }

    /* renamed from: r */
    public C1730v m41367r() {
        return C1594aa.m40363a(getContext(), this.f3712g);
    }

    /* renamed from: u */
    private void m41366u() {
        this.f3694N = (ContentLoadingProgressBar) findViewById(C1298R.C1300id.freshchat_article_list_cl_progressbar);
        m41362y();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: v */
    private void m41365v() {
        new C1867b(getApplicationContext(), C1867b.EnumC1868a.faq_open_category).m39394g("category_id", this.categoryId).m39394g("category_name", this.categoryName).m39395dB();
    }

    /* renamed from: w */
    public void m41364w() {
        ArrayList<String> arrayList;
        String str;
        Bundle bundle = new Bundle();
        if (!C1716k.m39902a(this.f3705Y)) {
            if (C1716k.m39902a(this.f3712g.getTags()) && this.f3712g.getFilterType() == FaqOptions.FilterType.ARTICLE) {
                arrayList = new ArrayList<>(this.f3712g.getTags());
                str = "FAQ_TAGS";
            }
            getSupportLoaderManager().mo976d(111, bundle, this.f3706Z);
        }
        arrayList = this.f3705Y;
        str = "category_ids";
        bundle.putStringArrayList(str, arrayList);
        getSupportLoaderManager().mo976d(111, bundle, this.f3706Z);
    }

    /* renamed from: x */
    public void m41363x() {
        synchronized (this) {
            m41396A();
            if (C1716k.isEmpty(this.f3703W)) {
                C1471i.m40840c(getListView());
                C1471i.m40842b(getEmptyView());
            } else {
                C1471i.m40842b(getListView());
                C1471i.m40840c(getEmptyView());
            }
        }
    }

    /* renamed from: y */
    public void m41362y() {
        View findViewById = findViewById(C1298R.C1300id.freshchat_contact_us_group);
        this.f3699S = findViewById;
        if (findViewById != null) {
            if (this.f3690J && this.f3712g.shouldShowContactUsOnFaqNotHelpful()) {
                this.f3699S.setVisibility(0);
                this.f3699S.setOnClickListener(this.f3709ac);
            } else if (!this.f3712g.shouldShowContactUsOnFaqScreens() || this.f3712g.shouldShowContactUsOnAppBar()) {
                this.f3699S.setVisibility(8);
            } else {
                this.f3699S.setVisibility(0);
                this.f3699S.setOnClickListener(this.f3709ac);
            }
        }
    }

    /* renamed from: z */
    public void m41361z() {
        final ContentLoadingProgressBar contentLoadingProgressBar = this.f3694N;
        if (contentLoadingProgressBar != null) {
            contentLoadingProgressBar.post(new Runnable() { // from class: n3.k.j.d
                @Override // java.lang.Runnable
                public final void run() {
                    ContentLoadingProgressBar contentLoadingProgressBar2 = ContentLoadingProgressBar.this;
                    contentLoadingProgressBar2.f705a = -1L;
                    contentLoadingProgressBar2.f708d = false;
                    contentLoadingProgressBar2.removeCallbacks(contentLoadingProgressBar2.f709e);
                    contentLoadingProgressBar2.f706b = false;
                    if (!contentLoadingProgressBar2.f707c) {
                        contentLoadingProgressBar2.postDelayed(contentLoadingProgressBar2.f710f, 500L);
                        contentLoadingProgressBar2.f707c = true;
                    }
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m41395a(long j) {
        if (C1626as.m40233a(this.f3691K)) {
            C1649bg.m40095a(getContext(), this.f3691K, C1716k.m39900b(this.f3703W), true);
        }
        Intent intent = new Intent((Context) this, (Class<?>) ArticleDetailActivity.class);
        Bundle bundle = this.f3713h;
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra("article_id", j);
        intent.putExtra("category_name", this.categoryName);
        intent.putExtra("EVENT_LAUNCH_SOURCE", this.f3689A);
        intent.putExtra("INPUT_TAGS", this.f3714lE);
        startActivity(intent);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
        if ("com.freshchat.consumer.sdk.actions.SolutionsUpdated".equalsIgnoreCase(intent.getAction())) {
            m41364w();
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return new String[]{"com.freshchat.consumer.sdk.actions.SolutionsUpdated", "com.freshchat.consumer.sdk.actions.TokenWaitTimeout", "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged"};
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b, com.freshchat.consumer.sdk.activity.C1392a
    public void onBackPressed() {
        Menu menu;
        if (this.f3702V) {
            finish();
        } else if (!this.f3690J || (menu = this.f3698R) == null) {
            super.onBackPressed();
        } else {
            MenuItem findItem = menu.findItem(C1298R.C1300id.freshchat_menu_item_search_solutions);
            if (findItem == null) {
                return;
            }
            findItem.collapseActionView();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1298R.layout.freshchat_activity_article_list);
        Intent intent = getIntent();
        m41394a(intent);
        this.f3713h = intent.getExtras();
        this.f3714lE = intent.getStringArrayExtra("INPUT_TAGS");
        m41100e(this.f3693M);
        m41107C();
        m41366u();
        this.f3692L = new C1305a(this, this.f3703W);
        m41384bL();
        m41364w();
        if (C1626as.m40233a(this.categoryId)) {
            m41365v();
        }
        if (!this.f3702V) {
            C1649bg.m40091a(getContext(), this.categoryId, this.categoryName, this.f3714lE);
        }
        C1638b.m40151a(getApplicationContext(), C1901f.EnumC1902a.NORMAL);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1298R.C1302menu.freshchat_articles_list, menu);
        this.f3698R = menu;
        MenuItem findItem = menu.findItem(C1298R.C1300id.freshchat_menu_item_search_solutions);
        SearchView searchView = (SearchView) findItem.getActionView();
        this.f3695O = searchView;
        searchView.setOnQueryTextListener(this.f3710ad);
        this.f3695O.setQueryHint(getString(C1298R.string.freshchat_faq_search_query_hint));
        findItem.setOnActionExpandListener(new MenuItem$OnActionExpandListenerC26594g(this.f3707aa));
        C1471i.m40844a(this.f3695O, getSupportActionBar());
        if (this.f3702V) {
            findItem.expandActionView();
        }
        m41388aJ();
        return true;
    }

    public void onDestroy() {
        ArticleListActivity.super.onDestroy();
    }

    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == C1298R.C1300id.freshchat_menu_item_contact_us) {
            m41367r().m39810aE();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void supportInvalidateOptionsMenu() {
        this.f3701U = true;
        ArticleListActivity.super.invalidateOptionsMenu();
    }
}
