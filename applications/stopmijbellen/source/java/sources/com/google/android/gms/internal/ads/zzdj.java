package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdj.class */
public class zzdj extends IOException {
    public final int zza;

    public zzdj(int i) {
        this.zza = i;
    }

    public zzdj(String str, int i) {
        super(str);
        this.zza = i;
    }

    public zzdj(String str, Throwable th, int i) {
        super(str, th);
        this.zza = i;
    }

    public zzdj(Throwable th, int i) {
        super(th);
        this.zza = i;
    }
}
