package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.z20;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeah.class */
public final class zzeah {

    /* renamed from: a */
    public final zzefj f27966a;

    public zzeah(zzefj zzefjVar) {
        this.f27966a = zzefjVar;
    }

    /* renamed from: a */
    public static final zzeah m12947a(zzefj zzefjVar) throws GeneralSecurityException {
        if (zzefjVar != null && zzefjVar.m12668o() > 0) {
            return new zzeah(zzefjVar);
        }
        throw new GeneralSecurityException("empty keyset");
    }

    /* renamed from: a */
    public final zzefj m12948a() {
        return this.f27966a;
    }

    public final String toString() {
        return z20.m26106a(this.f27966a).toString();
    }
}
