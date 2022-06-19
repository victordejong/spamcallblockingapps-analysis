package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.FAQCategory;
import com.freshchat.consumer.sdk.p045a.C1310b;
import com.freshchat.consumer.sdk.p045a.C1347q;
import com.freshchat.consumer.sdk.p053f.AbstractC1539e;
import com.freshchat.consumer.sdk.p061k.C1758t;
import com.freshchat.consumer.sdk.service.Status;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/FAQCategoriesActivity.class */
public class FAQCategoriesActivity extends AbstractC1400ah<C1758t> {

    /* renamed from: pj */
    private RecyclerView f3842pj;

    /* renamed from: pk */
    private C1347q<FAQCategory> f3843pk;

    /* renamed from: aj */
    private C1310b.AbstractC1312a f3841aj = new C1404al(this);

    /* renamed from: ac */
    private View.OnClickListener f3840ac = new View$OnClickListenerC1405am(this);

    /* renamed from: po */
    private AbstractC1539e f3844po = new C1406an(this);

    /* renamed from: iA */
    private RecyclerView.AbstractC0329o m41164iA() {
        return ((C1758t) this.f3912pe).shouldShowFaqCategoriesAsGrid() ? m41163iB() : new LinearLayoutManager(getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: iB */
    private GridLayoutManager m41163iB() {
        int m39672a = ((C1758t) this.f3912pe).m39672a(getWindowManager());
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), m39672a);
        gridLayoutManager.setSpanSizeLookup(new C1408ap(this, m39672a));
        return gridLayoutManager;
    }

    /* renamed from: s */
    public void m41162s(boolean z) {
        mo41095a(((C1758t) this.f3912pe).m39701B(z));
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: U */
    public void mo41096U(int i) {
        super.mo41096U(i);
        if (((C1758t) this.f3912pe).shouldShowFaqCategoriesAsGrid()) {
            this.f3842pj.setLayoutManager(m41163iB());
            this.f3843pk.notifyDataSetChanged();
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
        Status m39697jm;
        if ("com.freshchat.consumer.sdk.actions.FAQCategoriesFetched".equals(intent.getAction())) {
            m39697jm = ((C1758t) this.f3912pe).m39670g(intent.getExtras());
        } else if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            return;
        } else {
            m39697jm = ((C1758t) this.f3912pe).m39697jm();
        }
        mo41095a(m39697jm);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: a */
    public void mo41095a(Status status) {
        if (status == null) {
            return;
        }
        if (((C1758t) this.f3912pe).m39700b(status)) {
            super.mo41095a(status);
        } else {
            this.f3843pk.setStatus(status);
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return new String[]{"com.freshchat.consumer.sdk.actions.TokenWaitTimeout", "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged"};
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: dA */
    public String mo41092dA() {
        return ((C1758t) this.f3912pe).getTitle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: dh */
    public void mo41091dh() {
        C1758t c1758t = new C1758t(getContext());
        this.f3912pe = c1758t;
        c1758t.mo39623j(getIntent());
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: hP */
    public void mo41089hP() {
        this.f3843pk.setStatus(Status.SUCCESS);
        m41087i(this.f3842pj);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: hV */
    public String mo41088hV() {
        return ((C1758t) this.f3912pe).m39667ju();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: ie */
    public void mo41086ie() {
        m41162s(false);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: if */
    public View mo41085if() {
        return this.f3842pj;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: ig */
    public String[] mo41084ig() {
        return new String[]{"com.freshchat.consumer.sdk.actions.FAQCategoriesFetched"};
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah, com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1298R.layout.freshchat_activity_faq_categories);
        mo41082u();
        ((C1758t) this.f3912pe).m39669js();
        m41162s(false);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1298R.C1302menu.freshchat_faq, menu);
        MenuItem findItem = menu.findItem(C1298R.C1300id.freshchat_menu_item_contact_us);
        boolean z = ((C1758t) this.f3912pe).shouldShowContactUsOnFaqScreens() && ((C1758t) this.f3912pe).shouldShowContactUsOnAppBar();
        if (findItem != null) {
            findItem.setVisible(z);
            return true;
        }
        return true;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah, com.freshchat.consumer.sdk.activity.C1392a
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == C1298R.C1300id.freshchat_menu_item_contact_us) {
            ((C1758t) this.f3912pe).m39706jg();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: u */
    public void mo41082u() {
        RecyclerView recyclerView = (RecyclerView) findViewById(C1298R.C1300id.freshchat_activity_category_list_recycler_view);
        this.f3842pj = recyclerView;
        recyclerView.setLayoutManager(m41164iA());
        this.f3842pj.addOnScrollListener(new C1407ao(this));
        C1347q<FAQCategory> c1347q = new C1347q<>(getContext(), ((C1758t) this.f3912pe).m39668jt(), ((C1758t) this.f3912pe).shouldShowFaqCategoriesAsGrid(), this.f3841aj, this.f3844po);
        this.f3843pk = c1347q;
        this.f3842pj.setAdapter(c1347q);
        super.mo41082u();
        if (((C1758t) this.f3912pe).shouldShowContactUsOnFaqScreens()) {
            m41094a(((C1758t) this.f3912pe).shouldShowContactUsOnAppBar(), this.f3840ac);
        }
    }
}
