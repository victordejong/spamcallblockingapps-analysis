package com.google.android.gms.internal.play_billing;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzv.class */
public final class zzv {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    public zzv(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    public final IllegalArgumentException zza() {
        String valueOf = String.valueOf(this.zza);
        String valueOf2 = String.valueOf(this.zzb);
        String valueOf3 = String.valueOf(this.zza);
        String valueOf4 = String.valueOf(this.zzc);
        StringBuilder sb = new StringBuilder(valueOf.length() + 39 + valueOf2.length() + valueOf3.length() + valueOf4.length());
        C0082b.m8749m(sb, "Multiple entries with same key: ", valueOf, "=", valueOf2);
        return new IllegalArgumentException(C1676a.m4788i(sb, " and ", valueOf3, "=", valueOf4));
    }
}
