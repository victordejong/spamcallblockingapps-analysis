package com.freshchat.consumer.sdk.service.p066c;

import android.os.Bundle;
import com.freshchat.consumer.sdk.beans.FAQFetchRequest;
import com.freshchat.consumer.sdk.beans.reqres.FAQFetchResponse;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.p057j.C1733y;
import com.freshchat.consumer.sdk.service.Status;
/* renamed from: com.freshchat.consumer.sdk.service.c.af */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/af.class */
public class C1835af extends AbstractC1829a<FAQFetchRequest, FAQFetchResponse> {
    /* renamed from: a */
    private Bundle m39496a(FAQFetchResponse fAQFetchResponse) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("RESPONSE", fAQFetchResponse);
        return bundle;
    }

    /* renamed from: b */
    private void m39494b(FAQFetchResponse fAQFetchResponse) {
        C1460a.m41038d(getContext(), m39496a(fAQFetchResponse));
    }

    /* renamed from: a */
    public FAQFetchResponse mo39348b(FAQFetchRequest fAQFetchRequest) {
        Status status;
        FAQFetchResponse fAQFetchResponse = new FAQFetchResponse();
        if (!m39495b(fAQFetchRequest)) {
            status = Status.ERROR;
        } else if (C1618al.m40261aS(getContext())) {
            String categoryId = fAQFetchRequest.getCategoryId();
            FAQFetchResponse m40612l = new C1528a(getContext()).m40612l(fAQFetchRequest.getFaqId(), categoryId);
            m39494b(m40612l);
            return m40612l;
        } else {
            status = Status.NO_INTERNET;
        }
        fAQFetchResponse.setStatus(status);
        m39494b(fAQFetchResponse);
        return fAQFetchResponse;
    }

    /* renamed from: b */
    public boolean m39495b(FAQFetchRequest fAQFetchRequest) {
        return C1731w.m39793ay(getContext()) && C1731w.m39792az(getContext()) && C1733y.m39775cp(getContext());
    }
}
