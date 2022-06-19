package com.freshchat.consumer.sdk.service.p066c;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.ConversationReadStatus;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p064a.C1805a;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
import com.freshchat.consumer.sdk.service.p068e.C1922x;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.c.u */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/u.class */
public class C1860u extends AbstractC1829a<C1922x, AbstractC1907k> {
    /* renamed from: b */
    private void m39413b(C1922x c1922x) {
        HashMap m8667T = C22128a.m8667T("fc_conv_read_status", new C1597ab().toJson(c1922x));
        StringBuilder m8728C = C22128a.m8728C("7_");
        m8728C.append(c1922x.getChannelId());
        C1594aa.m40346c(getContext(), new C1805a(7, m8728C.toString()).m39529b(m8667T));
    }

    /* renamed from: a */
    public AbstractC1907k mo39348b(C1922x c1922x) {
        DeletedException e;
        Exception e2;
        Context applicationContext = getContext().getApplicationContext();
        boolean z = true;
        try {
            ConversationReadStatus conversationReadStatus = new ConversationReadStatus(c1922x.getChannelId(), c1922x.getConversationId(), c1922x.getReadUpto());
            if (conversationReadStatus.getReadUpto() <= 0) {
                Message m40713l = new C1511g(applicationContext).m40713l(c1922x.getChannelId());
                if (m40713l != null) {
                    conversationReadStatus.setReadUpto(m40713l.getCreatedMillis());
                }
                if (conversationReadStatus.getReadUpto() <= 0) {
                    return new C1904h(true);
                }
            }
            new C1528a(applicationContext).m40635a(conversationReadStatus);
        } catch (DeletedException e3) {
            e = e3;
            z = false;
        } catch (Exception e4) {
            e2 = e4;
            z = false;
        }
        try {
            C1460a.m41035f(applicationContext);
            C1460a.m41052aJ(applicationContext);
            z = true;
        } catch (DeletedException e5) {
            e = e5;
            z = true;
            C1723q.m39823a(e);
            return new C1904h(z);
        } catch (Exception e6) {
            e2 = e6;
            m39413b(c1922x);
            C1723q.m39823a(e2);
            return new C1904h(z);
        }
        return new C1904h(z);
    }
}
