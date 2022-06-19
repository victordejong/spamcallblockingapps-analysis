package com.freshchat.consumer.sdk.service.p066c;

import android.content.Context;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p049c.C1507d;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1900e;
import com.freshchat.consumer.sdk.service.p068e.C1901f;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
/* renamed from: com.freshchat.consumer.sdk.service.c.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/g.class */
public class C1846g extends AbstractC1829a<C1900e, AbstractC1907k> {
    /* renamed from: a */
    private static void m39452a(Context context, RemoteConfig remoteConfig, RemoteConfig remoteConfig2) {
        if (remoteConfig == null || remoteConfig2 == null || remoteConfig.getUserAuthConfig().isJwtAuthEnabled() || !remoteConfig2.getUserAuthConfig().isJwtAuthEnabled()) {
            return;
        }
        C1460a.m41051aY(context);
    }

    /* renamed from: b */
    private void m39450b(Context context, RemoteConfig remoteConfig, RemoteConfig remoteConfig2) {
        if ((remoteConfig == null || remoteConfig2 == null || remoteConfig.getAccountConfig().getFcFaqApiVersion() == remoteConfig2.getAccountConfig().getFcFaqApiVersion()) ? false : true) {
            C1466e m40905i = C1466e.m40905i(context);
            int i = C1838ai.f4698rg[remoteConfig2.getAccountConfig().getFcFaqApiVersion().ordinal()];
            if (i == 1) {
                m40905i.m40902iL();
                C1638b.m40151a(context, C1901f.EnumC1902a.NORMAL);
            } else if (i == 2) {
                new C1507d(context).m40767iR();
                C1466e.m40905i(context).m40898iP();
            }
            m40905i.m40899iO();
            C1460a.m41039co(context);
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: a */
    public boolean m39451a(C1900e c1900e) {
        String m40949bz = m39479dw().m40949bz();
        if (C1626as.isEmpty(m40949bz)) {
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long parseLong = Long.parseLong(m40949bz);
        ?? remoteConfigFetchInterval = getRefreshIntervals().getRemoteConfigFetchInterval();
        char c = remoteConfigFetchInterval;
        if (!C1731w.m39793ay(getContext())) {
            c = Math.max((long) DtbConstants.SIS_CHECKIN_INTERVAL, (long) remoteConfigFetchInterval);
        }
        return currentTimeMillis - parseLong > c;
    }

    /* renamed from: b */
    public AbstractC1907k mo39348b(C1900e c1900e) {
        boolean z;
        Throwable e;
        boolean z2 = false;
        boolean z3 = false;
        try {
        } catch (DeletedException e2) {
            e = e2;
            C1723q.m39823a(e);
            z = z3;
            return new C1904h(z);
        } catch (Exception e3) {
            e = e3;
            z3 = false;
            C1723q.m39823a(e);
            z = z3;
            return new C1904h(z);
        }
        if (!m39451a(c1900e)) {
            return new C1904h(false);
        }
        RemoteConfig m40245bD = C1622ap.m40245bD(getContext());
        boolean m40246aZ = C1622ap.m40246aZ(getContext());
        RemoteConfig m40614gg = new C1528a(getContext()).m40614gg();
        if (m40614gg != null) {
            C1622ap.m40247a(getContext(), m40614gg);
            m39452a(getContext(), m40245bD, m40614gg);
            m39450b(getContext(), m40245bD, m40614gg);
            z2 = true;
        }
        z = z2;
        if (C1622ap.m40246aZ(getContext())) {
            if (!m40246aZ) {
                C1460a.m41041cm(getContext());
            }
            boolean z4 = z2;
            m39479dw().m40993bA();
            z = z2;
        }
        return new C1904h(z);
    }
}
