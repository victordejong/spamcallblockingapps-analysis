package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.freshchat.consumer.sdk.activity.FAQDetailsActivity;
import com.freshchat.consumer.sdk.beans.FAQ;
import com.freshchat.consumer.sdk.p056i.AbstractCountDownTimerC1566d;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.Status;
import com.freshchat.consumer.sdk.service.p068e.C1886ai;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.k.w */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/w.class */
public class C1761w extends AbstractC1753o {

    /* renamed from: rj */
    private String f4600rj;

    /* renamed from: h */
    private Bundle f4596h = null;

    /* renamed from: rB */
    private final int f4597rB = 250;

    /* renamed from: ri */
    private final List<FAQ> f4599ri = new ArrayList();

    /* renamed from: rC */
    private final AbstractCountDownTimerC1566d f4598rC = new CountDownTimerC1762x(this, 250);

    public C1761w(Context context) {
        super(context);
    }

    /* renamed from: jI */
    private boolean m39632jI() {
        return m39636bz(this.f4600rj);
    }

    /* renamed from: C */
    public void m39643C(boolean z) {
        C1649bg.m40095a(getContext(), this.f4600rj, C1716k.m39900b(this.f4599ri), z);
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1753o
    /* renamed from: aa */
    public void mo39641aa(int i) {
        List<String> m39703jj = m39703jj();
        StringBuilder m8728C = C22128a.m8728C("fetchPageData called for search term : ");
        m8728C.append(this.f4600rj);
        m8728C.append(" page index : ");
        m8728C.append(i);
        C1613ai.m40284d("FAQSearchViewModel", m8728C.toString());
        C1638b.m40149a(getContext(), this.f4600rj, i, m39703jj);
    }

    /* renamed from: ac */
    public Intent m39640ac(int i) {
        FAQ faq = m39634iV().get(i);
        if (faq == null) {
            return null;
        }
        Intent intent = new Intent(getContext(), FAQDetailsActivity.class);
        Bundle bundle = this.f4596h;
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra("article_id", faq.getId());
        intent.putExtra("category_id", faq.getCategoryId());
        intent.putExtra("EXTRA_FAQ_VIEW_TITLE", faq.getTitle());
        return intent;
    }

    /* renamed from: bA */
    public boolean m39639bA(String str) {
        String m40230aH = C1626as.m40230aH(str);
        this.f4600rj = m40230aH;
        return m39636bz(m40230aH);
    }

    /* renamed from: bB */
    public boolean m39638bB(String str) {
        return C1626as.m40223o(this.f4600rj, C1626as.m40230aH(str));
    }

    /* renamed from: bC */
    public void m39637bC(String str) {
        if (!C1626as.m40233a(this.f4600rj) || this.f4600rj.length() == 1 || !C1626as.isEmpty(str)) {
            return;
        }
        m39643C(false);
    }

    /* renamed from: bz */
    public boolean m39636bz(String str) {
        return C1626as.m40228b(str) >= 3;
    }

    /* renamed from: g */
    public Status m39635g(Bundle bundle) {
        Status status;
        if (!m39632jI()) {
            return null;
        }
        StringBuilder m8728C = C22128a.m8728C("processResponse called for search string  : ");
        m8728C.append(this.f4600rj);
        C1613ai.m40284d("FAQSearchViewModel", m8728C.toString());
        try {
        } catch (Exception e) {
            status = Status.ERROR;
            C1723q.m39823a(e);
        }
        if (bundle == null) {
            throw new IllegalArgumentException("bundle cannot be null in FAQSearchViewModel::processResponse()");
        }
        if (C1626as.m40222p(bundle.getString("SEARCH_TERM"), this.f4600rj)) {
            return null;
        }
        C1886ai c1886ai = (C1886ai) bundle.getParcelable("RESPONSE");
        if (c1886ai == null) {
            throw new IllegalArgumentException("faqListFetchResponse cannot be null in FAQSearchViewModel::processResponse()");
        }
        Status status2 = c1886ai.getStatus();
        status = status2;
        if (status2 == Status.SUCCESS) {
            if (C1716k.isEmpty(c1886ai.m39356iV())) {
                status = Status.COMPLETE;
            } else {
                this.f4599ri.addAll(c1886ai.m39356iV());
                C1613ai.m40284d("FAQSearchViewModel", " process result list size  : " + c1886ai.m39356iV().size());
                m39696jn();
                status = status2;
            }
        }
        return m39699c(status);
    }

    /* renamed from: iV */
    public List<FAQ> m39634iV() {
        return this.f4599ri;
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: j */
    public void mo39623j(Intent intent) {
        super.mo39623j(intent);
        this.f4596h = intent.getExtras();
        this.f4600rj = intent.getStringExtra("search_key");
    }

    /* renamed from: jH */
    public Status m39633jH() {
        Status status;
        if (C1618al.m40261aS(getContext())) {
            this.f4598rC.run();
            status = Status.INIT_LOADING;
        } else {
            status = Status.NO_INTERNET;
        }
        return m39699c(status);
    }

    /* renamed from: jJ */
    public void m39631jJ() {
        m39695jo();
        this.f4599ri.clear();
        m39708je();
    }

    /* renamed from: jK */
    public boolean m39630jK() {
        return mo39629jk() && this.f4573rr == Status.COMPLETE;
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: jc */
    public void mo39622jc() {
        m39695jo();
        this.f4599ri.clear();
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1753o
    /* renamed from: jk */
    public boolean mo39629jk() {
        return C1716k.isEmpty(this.f4599ri);
    }
}
