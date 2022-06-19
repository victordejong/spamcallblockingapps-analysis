package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p045a.C1349s;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p053f.AbstractC1539e;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p061k.C1761w;
import com.freshchat.consumer.sdk.service.Status;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/FAQSearchActivity.class */
public class FAQSearchActivity extends AbstractC1400ah<C1761w> {

    /* renamed from: pT */
    private RecyclerView f3858pT;

    /* renamed from: ql */
    private C1349s f3861ql;

    /* renamed from: qo */
    private View f3863qo;

    /* renamed from: qp */
    private TextView f3864qp;

    /* renamed from: rE */
    private boolean f3865rE = false;

    /* renamed from: qm */
    private final C1349s.AbstractC1351b f3862qm = new C1421ba(this);

    /* renamed from: po */
    private AbstractC1539e f3859po = new C1422bb(this);

    /* renamed from: ad */
    private final SearchView.AbstractC0071l f3857ad = new C1424bd(this);

    /* renamed from: qK */
    private final MenuItem.OnActionExpandListener f3860qK = new MenuItem$OnActionExpandListenerC1425be(this);

    /* renamed from: ac */
    private final View.OnClickListener f3856ac = new View$OnClickListenerC1426bf(this);

    /* renamed from: bw */
    public void m41139bw(String str) {
        if (((C1761w) this.f3912pe).m39638bB(str)) {
            return;
        }
        if (!((C1761w) this.f3912pe).m39639bA(str)) {
            m41144A(false);
            return;
        }
        ((C1761w) this.f3912pe).m39631jJ();
        this.f3858pT.setAdapter(this.f3861ql);
        mo41095a(((C1761w) this.f3912pe).m39633jH());
        C1471i.m40840c(this.f3863qo);
    }

    /* renamed from: s */
    public void m41138s(boolean z) {
        mo41095a(((C1761w) this.f3912pe).m39701B(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: A */
    public void m41144A(boolean z) {
        String mo41088hV = z ? mo41088hV() : getString(C1298R.string.freshchat_minimum_search_criteria);
        m41090h(this.f3863qo);
        this.f3864qp.setText(mo41088hV);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: V */
    public void m41143V(int i) {
        Intent m39640ac;
        try {
            if (!C1716k.m39902a(((C1761w) this.f3912pe).m39634iV()) || (m39640ac = ((C1761w) this.f3912pe).m39640ac(i)) == null) {
                return;
            }
            startActivity(m39640ac);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
        Status m39697jm;
        if ("com.freshchat.consumer.sdk.actions.FAQSearchResultFetched".equals(intent.getAction())) {
            m39697jm = ((C1761w) this.f3912pe).m39635g(intent.getExtras());
        } else if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            return;
        } else {
            m39697jm = ((C1761w) this.f3912pe).m39697jm();
        }
        mo41095a(m39697jm);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: a */
    public void mo41095a(Status status) {
        if (status == null) {
            return;
        }
        if (((C1761w) this.f3912pe).m39700b(status)) {
            super.mo41095a(status);
        } else {
            this.f3861ql.setStatus(status);
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return new String[]{"com.freshchat.consumer.sdk.actions.TokenWaitTimeout", "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged"};
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: bv */
    public void mo41093bv(String str) {
        if (this.f3865rE) {
            m41144A(true);
            return;
        }
        C1471i.m40840c(this.f3863qo);
        super.mo41093bv(str);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: dA */
    public String mo41092dA() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: dh */
    public void mo41091dh() {
        C1761w c1761w = new C1761w(getContext());
        this.f3912pe = c1761w;
        c1761w.mo39623j(getIntent());
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: hP */
    public void mo41089hP() {
        C1471i.m40840c(this.f3863qo);
        this.f3861ql.setStatus(Status.SUCCESS);
        m41087i(this.f3858pT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: hV */
    public String mo41088hV() {
        return getString(C1298R.string.freshchat_no_articles_found);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: ie */
    public void mo41086ie() {
        m41138s(false);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: if */
    public View mo41085if() {
        return this.f3858pT;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: ig */
    public String[] mo41084ig() {
        return new String[]{"com.freshchat.consumer.sdk.actions.FAQSearchResultFetched"};
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah, com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1298R.layout.freshchat_activity_faq_search);
        mo41082u();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1298R.C1302menu.freshchat_articles_list, menu);
        MenuItem findItem = menu.findItem(C1298R.C1300id.freshchat_menu_item_contact_us);
        MenuItem findItem2 = menu.findItem(C1298R.C1300id.freshchat_menu_item_search_solutions);
        SearchView searchView = (SearchView) findItem2.getActionView();
        searchView.setOnQueryTextListener(this.f3857ad);
        searchView.setQueryHint(getString(C1298R.string.freshchat_faq_search_query_hint));
        searchView.setOnQueryTextFocusChangeListener(new View$OnFocusChangeListenerC1423bc(this));
        findItem2.setOnActionExpandListener(this.f3860qK);
        findItem2.expandActionView();
        C1471i.m40844a(searchView, getSupportActionBar());
        boolean z = ((C1761w) this.f3912pe).shouldShowContactUsOnFaqScreens() && ((C1761w) this.f3912pe).shouldShowContactUsOnAppBar();
        if (findItem != null) {
            findItem.setVisible(z);
            return true;
        }
        return true;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah, com.freshchat.consumer.sdk.activity.C1392a
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == C1298R.C1300id.freshchat_categories_menu_item_contact_us) {
            ((C1761w) this.f3912pe).m39706jg();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: u */
    public void mo41082u() {
        super.mo41082u();
        RecyclerView recyclerView = (RecyclerView) findViewById(C1298R.C1300id.search_faq_recycler_view);
        this.f3858pT = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        C1349s c1349s = new C1349s(((C1761w) this.f3912pe).m39634iV(), this.f3862qm, this.f3859po);
        this.f3861ql = c1349s;
        this.f3858pT.setAdapter(c1349s);
        this.f3858pT.addOnScrollListener(new C1418az(this));
        this.f3863qo = findViewById(C1298R.C1300id.search_description_view);
        this.f3864qp = (TextView) findViewById(C1298R.C1300id.search_description);
        if (((C1761w) this.f3912pe).shouldShowContactUsOnFaqScreens()) {
            m41094a(((C1761w) this.f3912pe).shouldShowContactUsOnAppBar(), this.f3856ac);
        }
        m41144A(false);
    }
}
