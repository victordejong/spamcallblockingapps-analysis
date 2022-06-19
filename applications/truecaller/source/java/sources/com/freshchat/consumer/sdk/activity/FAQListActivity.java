package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.FAQ;
import com.freshchat.consumer.sdk.p045a.C1349s;
import com.freshchat.consumer.sdk.p053f.AbstractC1539e;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p061k.C1760v;
import com.freshchat.consumer.sdk.service.Status;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/FAQListActivity.class */
public class FAQListActivity extends AbstractC1400ah<C1760v> {

    /* renamed from: pT */
    private RecyclerView f3852pT;

    /* renamed from: ql */
    private C1349s f3854ql;

    /* renamed from: ac */
    private final View.OnClickListener f3851ac = new View$OnClickListenerC1415aw(this);

    /* renamed from: qm */
    private final C1349s.AbstractC1351b f3855qm = new C1416ax(this);

    /* renamed from: po */
    private AbstractC1539e f3853po = new C1417ay(this);

    /* renamed from: s */
    public void m41145s(boolean z) {
        mo41095a(((C1760v) this.f3912pe).m39701B(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: V */
    public void m41147V(int i) {
        try {
            if (!C1716k.m39902a(((C1760v) this.f3912pe).m39648iV())) {
                return;
            }
            FAQ faq = ((C1760v) this.f3912pe).m39648iV().get(i);
            startActivity(((C1760v) this.f3912pe).m39644y(faq.getId(), faq.getTitle()));
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
        Status m39697jm;
        if ("com.freshchat.consumer.sdk.actions.FAQListFetched".equals(intent.getAction())) {
            m39697jm = ((C1760v) this.f3912pe).m39649g(intent.getExtras());
        } else if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            return;
        } else {
            m39697jm = ((C1760v) this.f3912pe).m39697jm();
        }
        mo41095a(m39697jm);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: a */
    public void mo41095a(Status status) {
        if (status == null) {
            return;
        }
        if (((C1760v) this.f3912pe).m39700b(status)) {
            super.mo41095a(status);
        } else {
            this.f3854ql.setStatus(status);
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
        return ((C1760v) this.f3912pe).m39647jE();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: dh */
    public void mo41091dh() {
        C1760v c1760v = new C1760v(getContext());
        this.f3912pe = c1760v;
        c1760v.mo39623j(getIntent());
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: hP */
    public void mo41089hP() {
        this.f3854ql.setStatus(Status.SUCCESS);
        m41087i(this.f3852pT);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: hV */
    public String mo41088hV() {
        return ((C1760v) this.f3912pe).m39646jF();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: ie */
    public void mo41086ie() {
        m41145s(false);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: if */
    public View mo41085if() {
        return this.f3852pT;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: ig */
    public String[] mo41084ig() {
        return new String[]{"com.freshchat.consumer.sdk.actions.FAQListFetched"};
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah, com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1298R.layout.freshchat_activity_faq_list);
        mo41082u();
        ((C1760v) this.f3912pe).m39645jG();
        m41145s(false);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1298R.C1302menu.freshchat_faq, menu);
        MenuItem findItem = menu.findItem(C1298R.C1300id.freshchat_menu_item_contact_us);
        boolean z = ((C1760v) this.f3912pe).shouldShowContactUsOnFaqScreens() && ((C1760v) this.f3912pe).shouldShowContactUsOnAppBar();
        if (findItem != null) {
            findItem.setVisible(z);
            return true;
        }
        return true;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah, com.freshchat.consumer.sdk.activity.C1392a
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == C1298R.C1300id.freshchat_menu_item_contact_us) {
            ((C1760v) this.f3912pe).m39706jg();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: u */
    public void mo41082u() {
        super.mo41082u();
        RecyclerView recyclerView = (RecyclerView) findViewById(C1298R.C1300id.list);
        this.f3852pT = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f3852pT.addOnScrollListener(new C1414av(this));
        C1349s c1349s = new C1349s(((C1760v) this.f3912pe).m39648iV(), this.f3855qm, this.f3853po);
        this.f3854ql = c1349s;
        this.f3852pT.setAdapter(c1349s);
        if (((C1760v) this.f3912pe).shouldShowContactUsOnFaqScreens()) {
            m41094a(((C1760v) this.f3912pe).shouldShowContactUsOnAppBar(), this.f3851ac);
        }
    }
}
