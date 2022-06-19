package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cxu;
import com.google.android.gms.internal.ads.cye;
import com.google.android.gms.internal.ads.cyf;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ctq.class */
public final class ctq {

    /* renamed from: a */
    private static final Charset f13693a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static cyf m10656a(cye cyeVar) {
        cyf.C2938a m10380a = cyf.m10386a().m10380a(cyeVar.m10397a());
        for (cye.C2935a c2935a : cyeVar.m10395b()) {
            m10380a.m10379a((cyf.C2939b) ((dcw) cyf.C2939b.m10378a().m10365a(c2935a.m10391b().m10425a()).m10367a(c2935a.m10390c()).m10366a(c2935a.m10388e()).m10368a(c2935a.m10389d()).mo9987g()));
        }
        return (cyf) ((dcw) m10380a.mo9987g());
    }

    /* renamed from: b */
    public static void m10655b(cye cyeVar) {
        int m10397a = cyeVar.m10397a();
        int i = 0;
        boolean z = true;
        boolean z2 = false;
        for (cye.C2935a c2935a : cyeVar.m10395b()) {
            if (c2935a.m10390c() == cxy.ENABLED) {
                if (!c2935a.m10392a()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(c2935a.m10389d())));
                }
                if (c2935a.m10388e() == cyq.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(c2935a.m10389d())));
                }
                if (c2935a.m10390c() == cxy.UNKNOWN_STATUS) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(c2935a.m10389d())));
                }
                boolean z3 = z2;
                if (c2935a.m10389d() == m10397a) {
                    if (z2) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z3 = true;
                }
                if (c2935a.m10391b().m10417c() != cxu.EnumC2931b.ASYMMETRIC_PUBLIC) {
                    z = false;
                }
                i++;
                z2 = z3;
            }
        }
        if (i == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z2 && !z) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }
}
