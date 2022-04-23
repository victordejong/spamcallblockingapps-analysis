package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvc.class */
public final class zzdvc extends Exception {
    public final int zzhop;

    public zzdvc(int i, String str) {
        super(str);
        this.zzhop = i;
    }

    public zzdvc(int i, Throwable th) {
        super(th);
        this.zzhop = i;
    }

    public final int zzaxb() {
        return this.zzhop;
    }
}
