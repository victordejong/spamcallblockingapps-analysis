package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djq.class */
public final class djq extends djz {
    public djq(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2) {
        super(dinVar, str, str2, c2799a, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        try {
            this.f14501b.m12578d(((Boolean) this.f14502c.invoke(null, this.f14500a.m9422a())).booleanValue() ? bce.ENUM_TRUE : bce.ENUM_FALSE);
        } catch (InvocationTargetException e) {
            this.f14501b.m12578d(bce.ENUM_FAILURE);
        }
    }
}
