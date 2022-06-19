package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewStub;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.FaqOptions;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.p045a.C1310b;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p054g.C1546f;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1646be;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1722p;
import com.freshchat.consumer.sdk.p057j.C1729u;
import com.freshchat.consumer.sdk.p057j.C1730v;
import com.freshchat.consumer.sdk.service.p067d.C1867b;
import com.freshchat.consumer.sdk.service.p068e.C1901f;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1869w.p1870a.AbstractC27043a;
import p1727n3.p1869w.p1871b.C27051b;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/CategoryListActivity.class */
public class CategoryListActivity extends AbstractC1419b {

    /* renamed from: M */
    private String f3721M;

    /* renamed from: Q */
    private View f3722Q;

    /* renamed from: S */
    private View f3723S;

    /* renamed from: af */
    private RecyclerView f3725af;

    /* renamed from: ag */
    private C1310b<Category> f3726ag;

    /* renamed from: ai */
    private boolean f3728ai;

    /* renamed from: am */
    private ProgressBar f3731am;

    /* renamed from: lE */
    private String[] f3733lE;
    private RecyclerView.AbstractC0329o mLayoutManager;

    /* renamed from: ah */
    private List<Category> f3727ah = new ArrayList();

    /* renamed from: g */
    private FaqOptions f3732g = new FaqOptions();

    /* renamed from: aj */
    public C1310b.AbstractC1312a f3729aj = new C1310b.AbstractC1312a() { // from class: com.freshchat.consumer.sdk.activity.CategoryListActivity.1
        @Override // com.freshchat.consumer.sdk.p045a.C1310b.AbstractC1312a
        /* renamed from: a */
        public void mo41081a(View view, int i) {
            Category category = (Category) CategoryListActivity.this.f3727ah.get(i);
            CategoryListActivity.this.m41334r().m39811a(category.getId(), category.getTitle(), CategoryListActivity.this.f3733lE);
        }
    };

    /* renamed from: ac */
    public View.OnClickListener f3724ac = new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.activity.CategoryListActivity.2
        /* JADX WARN: Type inference failed for: r2v1, types: [com.freshchat.consumer.sdk.activity.CategoryListActivity, android.app.Activity] */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CategoryListActivity.this.m41334r().m39810aE();
            new C1867b(CategoryListActivity.this.getApplicationContext(), C1867b.EnumC1868a.channels_launch).m39394g("source", "contact_us").m39395dB();
        }
    };

    /* renamed from: ak */
    public AbstractC27043a.AbstractC27044a<List<Category>> f3730ak = new AbstractC27043a.AbstractC27044a<List<Category>>() { // from class: com.freshchat.consumer.sdk.activity.CategoryListActivity.3
        /* renamed from: a */
        public void onLoadFinished(C27051b<List<Category>> c27051b, List<Category> list) {
            if (CategoryListActivity.this.f3728ai && C1716k.m39900b(list) == 0) {
                CategoryListActivity.this.finish();
                C1471i.m40855a(CategoryListActivity.this.getContext(), C1298R.string.freshchat_faqs_reload_and_redirect);
                Freshchat.showFAQs(CategoryListActivity.this.getContext(), CategoryListActivity.this.f3732g);
                return;
            }
            CategoryListActivity.this.f3727ah.clear();
            CategoryListActivity.this.f3727ah.addAll(list);
            CategoryListActivity.this.m41332x();
            CategoryListActivity.this.m41349B().setAdapter(CategoryListActivity.this.f3726ag);
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [com.freshchat.consumer.sdk.activity.CategoryListActivity, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r2v4, types: [com.freshchat.consumer.sdk.activity.CategoryListActivity, android.app.Activity] */
        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public C27051b<List<Category>> onCreateLoader(int i, Bundle bundle) {
            return (bundle == null || !C1716k.m39902a(bundle.getStringArrayList("TAGS"))) ? new C1546f(CategoryListActivity.this.getApplicationContext()) : new C1546f(CategoryListActivity.this.getApplicationContext(), bundle.getStringArrayList("TAGS"));
        }

        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public void onLoaderReset(C27051b<List<Category>> c27051b) {
            CategoryListActivity.this.f3727ah.clear();
            CategoryListActivity.this.f3726ag.notifyDataSetChanged();
        }
    };

    /* renamed from: A */
    private void m41350A() {
        C1471i.m40840c(this.f3731am);
    }

    /* renamed from: E */
    private void m41348E() {
        Bundle bundle = new Bundle();
        if (this.f3728ai) {
            bundle.putStringArrayList("TAGS", new ArrayList<>(this.f3732g.getTags()));
        }
        getSupportLoaderManager().mo976d(0, bundle, this.f3730ak);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m41347a(Intent intent) {
        if (intent == null) {
            return;
        }
        FaqOptions m39812d = C1729u.m39812d(intent.getExtras());
        this.f3732g = m39812d;
        this.f3721M = C1626as.m40233a(m39812d.getFilteredViewTitle()) ? this.f3732g.getFilteredViewTitle() : getString(C1298R.string.freshchat_activity_title_category_list);
        if (C1716k.m39902a(this.f3732g.getTags())) {
            this.f3728ai = true;
        }
        this.f3733lE = intent.getStringArrayExtra("INPUT_TAGS");
    }

    /* renamed from: e */
    public ArrayList<String> m41340e(List<Category> list) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (C1716k.isEmpty(list)) {
            return arrayList;
        }
        for (Category category : list) {
            arrayList.add(category.getId());
        }
        return arrayList;
    }

    /* renamed from: eA */
    private void m41339eA() {
        synchronized (this) {
            m41350A();
            C1471i.m40840c(m41349B());
            C1471i.m40842b(getEmptyView());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ez */
    private void m41338ez() {
        m41331z();
        C1471i.m40840c(m41349B());
        C1471i.m40840c(getEmptyView());
        boolean m40261aS = C1618al.m40261aS(getContext());
        boolean isEmpty = C1626as.isEmpty(C1466e.m40905i(getApplicationContext()).m40957br());
        if (!m40261aS && isEmpty) {
            m41339eA();
            C1471i.m40855a(getContext(), C1298R.string.freshchat_error_message_not_connected_to_internet);
        }
        if (!isEmpty) {
            m41348E();
        }
    }

    /* renamed from: gD */
    private void m41335gD() {
        C1646be.m40116eC().m40113gx().execute(new RunnableC1443j(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int getColumnCount() {
        return Math.round(C1610af.m40302i(this, C1722p.m39830ar(this)) / (C1722p.m39832a(getApplicationContext(), getWindowManager()) ? 200 : 150));
    }

    private View getEmptyView() {
        if (this.f3722Q == null) {
            this.f3722Q = findViewById(C1298R.C1300id.empty);
        }
        return this.f3722Q;
    }

    /* renamed from: r */
    public C1730v m41334r() {
        return C1594aa.m40363a(getContext(), this.f3732g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: u */
    private void m41333u() {
        View findViewById;
        if (this.f3732g.shouldShowContactUsOnFaqScreens()) {
            ViewStub viewStub = (ViewStub) findViewById(C1298R.C1300id.freshchat_contact_us_stub);
            viewStub.setInflatedId(C1298R.C1300id.freshchat_contact_us_group);
            viewStub.setLayoutResource(C1298R.layout.freshchat_partial_start_conversation_frame);
            this.f3731am = (ProgressBar) findViewById(C1298R.C1300id.freshchat_activity_category_list_progressbar);
            if (!this.f3732g.shouldShowContactUsOnAppBar()) {
                View inflate = viewStub.inflate();
                this.f3723S = inflate;
                if (inflate != null && (findViewById = inflate.findViewById(C1298R.C1300id.freshchat_contact_us_btn)) != null) {
                    findViewById.setOnClickListener(this.f3724ac);
                }
            }
        }
        this.mLayoutManager = this.f3732g.shouldShowFaqCategoriesAsGrid() ? new GridLayoutManager(this, getColumnCount()) : new LinearLayoutManager(this);
        m41349B().setLayoutManager(this.mLayoutManager);
        this.f3726ag = new C1310b<>(this, this.f3727ah, this.f3732g.shouldShowFaqCategoriesAsGrid(), this.f3729aj);
        m41349B().setAdapter(this.f3726ag);
    }

    /* renamed from: x */
    public void m41332x() {
        synchronized (this) {
            if (C1716k.isEmpty(this.f3727ah)) {
                m41339eA();
            } else {
                m41350A();
                C1471i.m40842b(m41349B());
                C1471i.m40840c(getEmptyView());
            }
        }
    }

    /* renamed from: z */
    private void m41331z() {
        C1471i.m40842b(this.f3731am);
    }

    /* renamed from: B */
    public RecyclerView m41349B() {
        if (this.f3725af == null) {
            this.f3725af = (RecyclerView) findViewById(C1298R.C1300id.freshchat_activity_category_list_recycler_view);
        }
        return this.f3725af;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
        if ("com.freshchat.consumer.sdk.actions.SolutionsUpdated".equals(intent.getAction())) {
            m41348E();
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return new String[]{"com.freshchat.consumer.sdk.actions.SolutionsUpdated", "com.freshchat.consumer.sdk.actions.TokenWaitTimeout", "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged"};
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1298R.layout.freshchat_activity_category_list);
        m41347a(getIntent());
        m41100e(this.f3721M);
        m41107C();
        m41333u();
        m41338ez();
        if (C1618al.m40261aS(getContext())) {
            C1638b.m40151a(getApplicationContext(), C1901f.EnumC1902a.NORMAL);
        }
        new C1867b(getApplicationContext(), C1867b.EnumC1868a.faqs_launch).m39395dB();
        C1649bg.m40079c(getContext(), this.f3733lE);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1298R.C1302menu.freshchat_categories_list, menu);
        menu.findItem(C1298R.C1300id.freshchat_categories_menu_item_contact_us).setVisible(this.f3732g.shouldShowContactUsOnFaqScreens() && this.f3732g.shouldShowContactUsOnAppBar());
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != C1298R.C1300id.freshchat_categories_menu_item_search_solutions) {
            if (menuItem.getItemId() != C1298R.C1300id.freshchat_categories_menu_item_contact_us) {
                return super.onOptionsItemSelected(menuItem);
            }
            m41334r().m39810aE();
            return true;
        }
        if (this.f3728ai) {
            m41335gD();
        } else {
            m41334r().m39808e(this.f3733lE);
        }
        new C1867b(getApplicationContext(), C1867b.EnumC1868a.faq_search_launch).m39394g("source", "category_list").m39395dB();
        return true;
    }
}
