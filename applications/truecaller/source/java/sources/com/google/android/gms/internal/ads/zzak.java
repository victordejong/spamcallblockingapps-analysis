package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzak.class */
public class zzak extends IOException {
    public final int zza;

    public zzak(int i) {
        this.zza = i;
    }

    public zzak(String str, int i) {
        super(str);
        this.zza = i;
    }

    public zzak(String str, Throwable th, int i) {
        super(str, th);
        this.zza = i;
    }

    public zzak(Throwable th, int i) {
        super(th);
        this.zza = i;
    }
}
