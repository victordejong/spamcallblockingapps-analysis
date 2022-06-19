package com.freshchat.consumer.sdk.service.p066c;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1669by;
import com.freshchat.consumer.sdk.p057j.C1704d;
import com.freshchat.consumer.sdk.p057j.C1707e;
import com.freshchat.consumer.sdk.p057j.C1710g;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.p057j.C1732x;
import com.freshchat.consumer.sdk.p057j.C1733y;
import com.freshchat.consumer.sdk.p062l.C1764a;
import com.freshchat.consumer.sdk.service.p064a.C1807c;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1883af;
import com.freshchat.consumer.sdk.service.p068e.C1895b;
import com.freshchat.consumer.sdk.service.p068e.C1898d;
import com.freshchat.consumer.sdk.service.p068e.C1901f;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
import com.freshchat.consumer.sdk.service.p068e.C1908l;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.freshchat.consumer.sdk.service.c.k */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/k.class */
public class C1850k extends AbstractC1841b<C1908l, AbstractC1907k> {

    /* renamed from: fL */
    private static AtomicBoolean f4700fL = new AtomicBoolean(false);

    /* renamed from: b */
    private static void m39442b(Context context, C1908l c1908l) {
        C1613ai.m40281i("AppStateListener", "Initialise SDK called ");
        C1733y.m39779a(context, c1908l);
        f4700fL.set(true);
        C1466e m40905i = C1466e.m40905i(context);
        if (C1626as.isEmpty(m40905i.m40966bj())) {
            m40905i.m40886t(C1704d.m39979C(context));
        }
        C1638b.m40170L(context);
        C1638b.m40166S(context);
        C1638b.m40153a(context, C1895b.EnumC1896a.LAID_BACK);
        if (m40905i.m40964bl()) {
            C1511g c1511g = new C1511g(context);
            RemoteConfig m40245bD = C1622ap.m40245bD(context);
            boolean z = false;
            if (m40245bD != null) {
                z = false;
                if (m40245bD.getConversationConfig() != null) {
                    z = c1511g.m40709p(m40245bD.getConversationConfig().getActiveConvWindow());
                }
            }
            if (z || C1731w.m39794aC(context)) {
                C1638b.m40162a(context, 2, C1898d.EnumC1899a.LAID_BACK);
            }
        } else if (C1731w.m39795aB(context)) {
            C1638b.m40156a(context, (User) null, true);
        }
        C1638b.m40151a(context, C1901f.EnumC1902a.LAID_BACK);
        if (C1612ah.m40294aQ(context) || C1710g.m39955ag(context)) {
            C1638b.m40136u(context);
        }
        C1638b.m40165T(context);
        C1669by.m40045gN().m40047d(context, true);
        C1638b.m40167R(context);
        if (m40905i.m39913eO()) {
            C1613ai.m40281i("FRESHCHAT", "Scheduling Prefs Migration");
            C1870d.m39385b(context, new C1883af());
        }
    }

    /* renamed from: a */
    public AbstractC1907k mo39348b(C1908l c1908l) {
        Context context = getContext();
        C1466e m40905i = C1466e.m40905i(context);
        boolean z = false;
        if (!f4700fL.get() || !m40905i.m40964bl()) {
            boolean z2 = (C1626as.m40224m(m40905i.getAppId(), c1908l.getAppId()) ^ true) || (C1626as.m40224m(m40905i.getAppKey(), c1908l.getAppKey()) ^ true) || (C1626as.m40221q(m40905i.getDomain(), c1908l.getDomain()) ^ true);
            if (C1626as.isEmpty(m40905i.getAppId()) || C1626as.isEmpty(m40905i.getAppKey())) {
                z = true;
            }
            if (z) {
                m39442b(context, c1908l);
                return new C1904h(true);
            } else if (z2) {
                C1594aa.m40353aK(context);
                m39442b(context, c1908l);
                return new C1904h(true);
            } else {
                C1764a m39612gR = C1764a.m39612gR();
                if (m39612gR.m39614bW(context)) {
                    m39442b(context, c1908l);
                } else {
                    m39612gR.m39613bX(context);
                }
                if (C1807c.m39519s(context)) {
                    if (C1618al.m40261aS(context)) {
                        C1638b.m40169M(context);
                    }
                    C1594aa.m40351aM(context);
                    C1707e.m39966Y(context);
                } else {
                    C1594aa.m40350aN(context);
                }
                C1594aa.m40360a(context, new C1511g(context).m40725cC());
                C1732x.m39783cl(context);
                return new C1904h(true);
            }
        }
        return new C1904h(false);
    }
}
