package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import com.google.android.gms.internal.ads.dip;
import com.google.android.gms.internal.ads.dis;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddq.class */
public final class ddq {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f26761a = Charset.forName("UTF-8");

    public static dis a(dip dipVar) {
        dis.b a2 = dis.a().a(dipVar.zzikt);
        for (dip.b bVar : dipVar.zziku) {
            a2.a(dis.a.a().a(bVar.a().zzijv).a(bVar.b()).a(bVar.c()).a(bVar.zziky).f());
        }
        return a2.f();
    }

    public static void b(dip dipVar) throws GeneralSecurityException {
        int i = dipVar.zzikt;
        int i2 = 0;
        boolean z = false;
        boolean z2 = true;
        for (dip.b bVar : dipVar.zziku) {
            if (bVar.b() == dii.ENABLED) {
                if (!(bVar.zzikw != null)) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(bVar.zziky)));
                } else if (bVar.c() == djb.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(bVar.zziky)));
                } else if (bVar.b() != dii.UNKNOWN_STATUS) {
                    z = z;
                    if (bVar.zziky == i) {
                        if (!z) {
                            z = true;
                        } else {
                            throw new GeneralSecurityException("keyset contains multiple primary keys");
                        }
                    }
                    if (bVar.a().a() != dih.a.ASYMMETRIC_PUBLIC) {
                        z2 = false;
                    }
                    i2++;
                } else {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(bVar.zziky)));
                }
            }
        }
        if (i2 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        } else if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }
}
