package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzos.class */
public class zzos extends IOException {
    public final int type;
    public final zzon zzbio;

    public zzos(IOException iOException, zzon zzonVar, int i) {
        super(iOException);
        this.zzbio = zzonVar;
        this.type = i;
    }

    public zzos(String str, zzon zzonVar, int i) {
        super(str);
        this.zzbio = zzonVar;
        this.type = 1;
    }

    public zzos(String str, IOException iOException, zzon zzonVar, int i) {
        super(str, iOException);
        this.zzbio = zzonVar;
        this.type = 1;
    }
}
