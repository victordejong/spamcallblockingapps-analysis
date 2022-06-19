package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/csy.class */
public final class csy {

    /* renamed from: a */
    private cye f13651a;

    private csy(cye cyeVar) {
        this.f13651a = cyeVar;
    }

    /* renamed from: a */
    public static final csy m10719a(cye cyeVar) {
        if (cyeVar == null || cyeVar.m10394c() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new csy(cyeVar);
    }

    /* renamed from: a */
    public final cye m10720a() {
        return this.f13651a;
    }

    public final String toString() {
        return ctq.m10656a(this.f13651a).toString();
    }
}
