package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawc.class */
public class zzawc extends IOException {
    public final zzavy zza;

    public zzawc(IOException iOException, zzavy zzavyVar, int i) {
        super(iOException);
        this.zza = zzavyVar;
    }

    public zzawc(String str, zzavy zzavyVar, int i) {
        super(str);
        this.zza = zzavyVar;
    }

    public zzawc(String str, IOException iOException, zzavy zzavyVar, int i) {
        super(str, iOException);
        this.zza = zzavyVar;
    }
}
