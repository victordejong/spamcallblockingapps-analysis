package com.freshchat.consumer.sdk.service.p066c;

import android.os.Bundle;
import com.freshchat.consumer.sdk.beans.BotFAQFetchRequest;
import com.freshchat.consumer.sdk.beans.reqres.BotFAQFetchResponse;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.Status;
/* renamed from: com.freshchat.consumer.sdk.service.c.aj */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/aj.class */
public class C1839aj extends AbstractC1829a<BotFAQFetchRequest, BotFAQFetchResponse> {
    /* renamed from: a */
    private Bundle m39484a(BotFAQFetchResponse botFAQFetchResponse) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("RESPONSE", botFAQFetchResponse);
        return bundle;
    }

    /* renamed from: b */
    private void m39482b(BotFAQFetchResponse botFAQFetchResponse) {
        C1460a.m41032g(getContext(), m39484a(botFAQFetchResponse));
    }

    /* renamed from: a */
    public BotFAQFetchResponse mo39348b(BotFAQFetchRequest botFAQFetchRequest) {
        Status status;
        BotFAQFetchResponse botFAQFetchResponse = new BotFAQFetchResponse();
        if (!m39483b(botFAQFetchRequest)) {
            status = Status.ERROR;
        } else if (C1618al.m40261aS(getContext())) {
            BotFAQFetchResponse m40609z = new C1528a(getContext()).m40609z(botFAQFetchRequest.getReferenceId(), botFAQFetchRequest.getPlaceholderReferenceId());
            m39482b(m40609z);
            return m40609z;
        } else {
            status = Status.NO_INTERNET;
        }
        botFAQFetchResponse.setStatus(status);
        m39482b(botFAQFetchResponse);
        return botFAQFetchResponse;
    }

    /* renamed from: b */
    public boolean m39483b(BotFAQFetchRequest botFAQFetchRequest) {
        return C1731w.m39793ay(getContext());
    }
}
