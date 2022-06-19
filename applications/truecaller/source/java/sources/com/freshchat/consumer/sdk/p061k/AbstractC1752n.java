package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import android.content.Intent;
import com.freshchat.consumer.sdk.FaqOptions;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1729u;
import com.freshchat.consumer.sdk.p057j.C1730v;
import com.freshchat.consumer.sdk.service.Status;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.k.n */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/n.class */
public abstract class AbstractC1752n extends AbstractC1735a {

    /* renamed from: g */
    private FaqOptions f4570g = new FaqOptions();

    /* renamed from: lE */
    public String[] f4571lE;

    /* renamed from: rq */
    private String f4572rq;

    /* renamed from: rr */
    public Status f4573rr;

    public AbstractC1752n(Context context) {
        super(context);
    }

    public String getFilteredViewTitle() {
        return this.f4570g.getFilteredViewTitle();
    }

    /* renamed from: j */
    public void mo39623j(Intent intent) {
        if (intent.getExtras() == null) {
            return;
        }
        this.f4570g = C1729u.m39812d(intent.getExtras());
        this.f4571lE = intent.getStringArrayExtra("INPUT_TAGS");
    }

    /* renamed from: jc */
    public abstract void mo39622jc();

    /* renamed from: jd */
    public abstract Status mo39621jd();

    /* renamed from: je */
    public void m39708je() {
        this.f4573rr = null;
    }

    /* renamed from: jf */
    public Status m39707jf() {
        String m40289bc = C1612ah.m40289bc(getContext());
        if (C1626as.isEmpty(this.f4572rq)) {
            this.f4572rq = m40289bc;
            return null;
        } else if (C1626as.m40223o(this.f4572rq, m40289bc)) {
            return null;
        } else {
            this.f4572rq = m40289bc;
            mo39622jc();
            m39708je();
            return mo39621jd();
        }
    }

    /* renamed from: jg */
    public void m39706jg() {
        C1730v m39702r = m39702r();
        if (m39702r != null) {
            m39702r.m39810aE();
        }
    }

    /* renamed from: jh */
    public void m39705jh() {
        C1730v m39702r = m39702r();
        if (m39702r != null) {
            m39702r.m39802iZ();
        }
    }

    /* renamed from: ji */
    public List<String> m39704ji() {
        if (!C1716k.m39902a(this.f4570g.getTags()) || this.f4570g.getFilterType() != FaqOptions.FilterType.CATEGORY) {
            return null;
        }
        return new ArrayList(this.f4570g.getTags());
    }

    /* renamed from: jj */
    public List<String> m39703jj() {
        if (!C1716k.m39902a(this.f4570g.getTags()) || this.f4570g.getFilterType() != FaqOptions.FilterType.ARTICLE) {
            return null;
        }
        return new ArrayList(this.f4570g.getTags());
    }

    /* renamed from: r */
    public C1730v m39702r() {
        return C1594aa.m40363a(getContext(), this.f4570g);
    }

    public boolean shouldShowContactUsOnAppBar() {
        return this.f4570g.shouldShowContactUsOnAppBar();
    }

    public boolean shouldShowContactUsOnFaqNotHelpful() {
        return this.f4570g.shouldShowContactUsOnFaqNotHelpful();
    }

    public boolean shouldShowContactUsOnFaqScreens() {
        return this.f4570g.shouldShowContactUsOnFaqScreens();
    }

    public boolean shouldShowFaqCategoriesAsGrid() {
        return this.f4570g.shouldShowFaqCategoriesAsGrid();
    }
}
