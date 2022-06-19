package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import com.google.android.gms.internal.ads.dip;
import com.google.android.gms.internal.ads.dis;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddq.class */
final class ddq {

    /* renamed from: a */
    private static final Charset f46992a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static dis m16825a(dip dipVar) {
        dis.C12367b m16605a = dis.m16619a().m16605a(dipVar.zzikt);
        for (dip.C12363b c12363b : dipVar.zziku) {
            m16605a.m16604a(dis.C12365a.m16615a().m16606a(c12363b.m16623a().zzijv).m16608a(c12363b.m16622b()).m16607a(c12363b.m16621c()).m16609a(c12363b.zziky).mo16259f());
        }
        return m16605a.mo16259f();
    }

    /* renamed from: b */
    public static void m16824b(dip dipVar) throws GeneralSecurityException {
        int i = dipVar.zzikt;
        int i2 = 0;
        boolean z = false;
        boolean z2 = true;
        for (dip.C12363b c12363b : dipVar.zziku) {
            if (c12363b.m16622b() == dii.ENABLED) {
                if (!(c12363b.zzikw != null)) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(c12363b.zziky)));
                }
                if (c12363b.m16621c() == djb.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(c12363b.zziky)));
                }
                if (c12363b.m16622b() == dii.UNKNOWN_STATUS) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(c12363b.zziky)));
                }
                boolean z3 = z;
                if (c12363b.zziky == i) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z3 = true;
                }
                if (c12363b.m16623a().m16638a() != dih.EnumC12358a.ASYMMETRIC_PUBLIC) {
                    z2 = false;
                }
                i2++;
                z = z3;
            }
        }
        if (i2 != 0) {
            if (!z && !z2) {
                throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
            }
            return;
        }
        throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
    }
}
