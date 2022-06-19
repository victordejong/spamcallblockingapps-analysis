package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzov.class */
public class zzov extends IOException {
    private final int type;
    private final zzos zzbiy;

    public zzov(IOException iOException, zzos zzosVar, int i) {
        super(iOException);
        this.zzbiy = zzosVar;
        this.type = i;
    }

    public zzov(String str, zzos zzosVar, int i) {
        super(str);
        this.zzbiy = zzosVar;
        this.type = 1;
    }

    public zzov(String str, IOException iOException, zzos zzosVar, int i) {
        super(str, iOException);
        this.zzbiy = zzosVar;
        this.type = 1;
    }
}
