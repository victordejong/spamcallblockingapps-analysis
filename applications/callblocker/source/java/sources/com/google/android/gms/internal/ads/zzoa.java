package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoa.class */
public class zzoa extends IOException {

    /* renamed from: a */
    private final int f17763a;

    /* renamed from: b */
    private final drq f17764b;

    public zzoa(IOException iOException, drq drqVar, int i) {
        super(iOException);
        this.f17764b = drqVar;
        this.f17763a = i;
    }

    public zzoa(String str, drq drqVar, int i) {
        super(str);
        this.f17764b = drqVar;
        this.f17763a = 1;
    }

    public zzoa(String str, IOException iOException, drq drqVar, int i) {
        super(str, iOException);
        this.f17764b = drqVar;
        this.f17763a = 1;
    }
}
