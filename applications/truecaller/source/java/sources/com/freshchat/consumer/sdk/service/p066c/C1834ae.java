package com.freshchat.consumer.sdk.service.p066c;

import android.os.Bundle;
import com.freshchat.consumer.sdk.beans.FAQCategoryFetchRequest;
import com.freshchat.consumer.sdk.beans.FAQCategoryFetchResponse;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.p057j.C1733y;
import com.freshchat.consumer.sdk.service.Status;
/* renamed from: com.freshchat.consumer.sdk.service.c.ae */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/ae.class */
public class C1834ae extends AbstractC1829a<FAQCategoryFetchRequest, FAQCategoryFetchResponse> {
    /* renamed from: a */
    private Bundle m39500a(FAQCategoryFetchResponse fAQCategoryFetchResponse) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("RESPONSE", fAQCategoryFetchResponse);
        return bundle;
    }

    /* renamed from: b */
    private void m39498b(FAQCategoryFetchResponse fAQCategoryFetchResponse) {
        C1460a.m41048b(getContext(), m39500a(fAQCategoryFetchResponse));
    }

    /* renamed from: a */
    public FAQCategoryFetchResponse mo39348b(FAQCategoryFetchRequest fAQCategoryFetchRequest) {
        Status status;
        FAQCategoryFetchResponse fAQCategoryFetchResponse = new FAQCategoryFetchResponse();
        if (!m39499b(fAQCategoryFetchRequest)) {
            status = Status.ERROR;
        } else if (C1618al.m40261aS(getContext())) {
            FAQCategoryFetchResponse m40636a = new C1528a(getContext()).m40636a(fAQCategoryFetchRequest.getPageIndex(), fAQCategoryFetchRequest.getTags());
            m39498b(m40636a);
            return m40636a;
        } else {
            status = Status.NO_INTERNET;
        }
        fAQCategoryFetchResponse.setStatus(status);
        m39498b(fAQCategoryFetchResponse);
        return fAQCategoryFetchResponse;
    }

    /* renamed from: b */
    public boolean m39499b(FAQCategoryFetchRequest fAQCategoryFetchRequest) {
        return C1731w.m39793ay(getContext()) && C1731w.m39792az(getContext()) && C1733y.m39775cp(getContext());
    }
}
