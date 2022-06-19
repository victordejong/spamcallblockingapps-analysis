package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauf.class */
public class zzauf extends IOException {
    public final C6923rh zza;

    public zzauf(IOException iOException, C6923rh c6923rh, int i) {
        super(iOException);
        this.zza = c6923rh;
    }

    public zzauf(String str, C6923rh c6923rh, int i) {
        super(str);
        this.zza = c6923rh;
    }

    public zzauf(String str, IOException iOException, C6923rh c6923rh, int i) {
        super(str, iOException);
        this.zza = c6923rh;
    }
}
