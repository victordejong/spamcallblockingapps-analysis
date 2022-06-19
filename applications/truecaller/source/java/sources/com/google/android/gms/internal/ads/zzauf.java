package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauf.class */
public class zzauf extends IOException {
    public final zzaub zza;

    public zzauf(IOException iOException, zzaub zzaubVar, int i) {
        super(iOException);
        this.zza = zzaubVar;
    }

    public zzauf(String str, zzaub zzaubVar, int i) {
        super(str);
        this.zza = zzaubVar;
    }

    public zzauf(String str, IOException iOException, zzaub zzaubVar, int i) {
        super(str, iOException);
        this.zza = zzaubVar;
    }
}
