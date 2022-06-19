package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.WindowManager;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.FAQCategory;
import com.freshchat.consumer.sdk.beans.FAQCategoryFetchResponse;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1722p;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1730v;
import com.freshchat.consumer.sdk.service.Status;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.k.t */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/t.class */
public class C1758t extends AbstractC1753o {

    /* renamed from: M */
    private String f4583M;

    /* renamed from: ry */
    private final List<FAQCategory> f4584ry = new ArrayList();

    public C1758t(Context context) {
        super(context);
    }

    /* renamed from: a */
    public int m39672a(WindowManager windowManager) {
        return Math.round(C1610af.m40302i(getContext(), C1722p.m39830ar(getContext())) / (C1722p.m39832a(getContext(), windowManager) ? 200 : 150));
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1753o
    /* renamed from: aa */
    public void mo39641aa(int i) {
        C1638b.m40144b(getContext(), i, m39704ji());
    }

    /* renamed from: ab */
    public void m39671ab(int i) {
        FAQCategory fAQCategory;
        C1730v m39702r = m39702r();
        if (m39702r == null) {
            return;
        }
        List<FAQCategory> m39668jt = m39668jt();
        if (!C1716k.m39902a(m39668jt) || (fAQCategory = m39668jt.get(i)) == null) {
            return;
        }
        m39702r.m39811a(fAQCategory.getCategoryId(), fAQCategory.getTitle(), this.f4571lE);
    }

    /* renamed from: g */
    public Status m39670g(Bundle bundle) {
        Status status;
        try {
        } catch (Exception e) {
            C1723q.m39823a(e);
            status = Status.ERROR;
        }
        if (bundle != null) {
            FAQCategoryFetchResponse fAQCategoryFetchResponse = (FAQCategoryFetchResponse) bundle.getParcelable("RESPONSE");
            if (fAQCategoryFetchResponse == null) {
                throw new IllegalArgumentException("faqCategoryFetchResponse cannot be null in FAQCategoriesViewModel::processResponse()");
            }
            Status status2 = fAQCategoryFetchResponse.getStatus();
            status = status2;
            if (status2 == Status.SUCCESS) {
                if (C1716k.isEmpty(fAQCategoryFetchResponse.getCategoryList())) {
                    status = Status.COMPLETE;
                } else {
                    this.f4584ry.addAll(fAQCategoryFetchResponse.getCategoryList());
                    m39696jn();
                    status = status2;
                }
            }
            return m39699c(status);
        }
        throw new IllegalArgumentException("bundle cannot be null in FAQCategoriesViewModel::processResponse()");
    }

    public String getTitle() {
        return this.f4583M;
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: j */
    public void mo39623j(Intent intent) {
        super.mo39623j(intent);
        this.f4583M = C1626as.m40233a(getFilteredViewTitle()) ? getFilteredViewTitle() : getContext().getString(C1298R.string.freshchat_activity_title_category_list);
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: jc */
    public void mo39622jc() {
        m39695jo();
        this.f4584ry.clear();
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1753o
    /* renamed from: jk */
    public boolean mo39629jk() {
        return C1716k.isEmpty(this.f4584ry);
    }

    /* renamed from: js */
    public void m39669js() {
        C1649bg.m40079c(getContext(), this.f4571lE);
    }

    /* renamed from: jt */
    public List<FAQCategory> m39668jt() {
        return this.f4584ry;
    }

    /* renamed from: ju */
    public String m39667ju() {
        return getContext().getString(C1298R.string.freshchat_no_faq_categories);
    }
}
