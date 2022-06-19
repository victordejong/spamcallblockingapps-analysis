package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.activity.FAQDetailsActivity;
import com.freshchat.consumer.sdk.beans.FAQ;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.Status;
import com.freshchat.consumer.sdk.service.p068e.C1886ai;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.k.v */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/v.class */
public class C1760v extends AbstractC1753o {

    /* renamed from: h */
    private Bundle f4594h = null;

    /* renamed from: M */
    private String f4593M = "";
    private String categoryName = "";
    private String categoryId = "";

    /* renamed from: ri */
    private final List<FAQ> f4595ri = new ArrayList();

    public C1760v(Context context) {
        super(context);
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1753o
    /* renamed from: aa */
    public void mo39641aa(int i) {
        C1638b.m40141c(getContext(), i, this.categoryId, m39703jj());
    }

    /* renamed from: g */
    public Status m39649g(Bundle bundle) {
        Status status;
        try {
        } catch (Exception e) {
            status = Status.ERROR;
            C1723q.m39823a(e);
        }
        if (bundle != null) {
            C1886ai c1886ai = (C1886ai) bundle.getParcelable("RESPONSE");
            if (c1886ai == null) {
                throw new IllegalArgumentException("faqListFetchResponse cannot be null in FAQListViewModel::processResponse()");
            }
            Status status2 = c1886ai.getStatus();
            status = status2;
            if (status2 == Status.SUCCESS) {
                if (C1716k.isEmpty(c1886ai.m39356iV())) {
                    status = Status.COMPLETE;
                } else {
                    this.f4595ri.addAll(c1886ai.m39356iV());
                    m39696jn();
                    status = status2;
                }
            }
            return m39699c(status);
        }
        throw new IllegalArgumentException("bundle cannot be null in FAQListViewModel::processResponse()");
    }

    /* renamed from: iV */
    public List<FAQ> m39648iV() {
        return this.f4595ri;
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: j */
    public void mo39623j(Intent intent) {
        super.mo39623j(intent);
        if (intent.hasExtra("category_name")) {
            this.categoryName = intent.getStringExtra("category_name");
        }
        if (intent.hasExtra("category_ids")) {
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("category_ids");
            if (C1716k.m39900b(stringArrayListExtra) == 1) {
                this.categoryId = stringArrayListExtra.get(0);
            }
        }
        this.f4594h = intent.getExtras();
        this.f4593M = C1626as.m40233a(this.categoryName) ? this.categoryName : getContext().getString(C1298R.string.freshchat_activity_title_article_list);
    }

    /* renamed from: jE */
    public String m39647jE() {
        return this.f4593M;
    }

    /* renamed from: jF */
    public String m39646jF() {
        return getContext().getString(C1298R.string.freshchat_no_faqs, this.f4593M);
    }

    /* renamed from: jG */
    public void m39645jG() {
        C1649bg.m40091a(getContext(), this.categoryId, this.categoryName, this.f4571lE);
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: jc */
    public void mo39622jc() {
        m39695jo();
        this.f4595ri.clear();
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1753o
    /* renamed from: jk */
    public boolean mo39629jk() {
        return C1716k.isEmpty(this.f4595ri);
    }

    /* renamed from: y */
    public Intent m39644y(String str, String str2) {
        Intent intent = new Intent(getContext(), FAQDetailsActivity.class);
        Bundle bundle = this.f4594h;
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra("article_id", str);
        intent.putExtra("category_id", this.categoryId);
        intent.putExtra("EXTRA_FAQ_VIEW_TITLE", str2);
        return intent;
    }
}
