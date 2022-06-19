package com.freshchat.consumer.sdk.service.p064a;

import android.content.Context;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1877a;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.service.a.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/a/e.class */
public class C1809e extends AbstractC1808d {
    public C1809e(Context context, C1805a c1805a) {
        super(context, c1805a);
    }

    @Override // com.freshchat.consumer.sdk.service.p064a.AbstractC1806b
    /* renamed from: ds */
    public void mo39515ds() {
        try {
            final C1805a m39516dt = m39516dt();
            Map<String, String> meta = m39516dt.getMeta();
            C1870d.m39383c(getContext(), (C1877a) m39517ch().fromJson(C1716k.m39894d(meta) ? meta.get("fc_create_or_update_user") : "{}", (Class<Object>) C1877a.class), new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.service.a.e.1
                @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
                /* renamed from: a */
                public void mo39382a(AbstractC1907k abstractC1907k) {
                    if (abstractC1907k == null || !abstractC1907k.isSuccess()) {
                        return;
                    }
                    C1594aa.m40338l(C1809e.this.getContext(), m39516dt.m39528dr());
                }
            });
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }
}
