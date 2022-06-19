package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzov.class */
public class zzov extends IOException {

    /* renamed from: a */
    private final int f50243a;

    /* renamed from: b */
    private final ecf f50244b;

    public zzov(IOException iOException, ecf ecfVar, int i) {
        super(iOException);
        this.f50244b = ecfVar;
        this.f50243a = i;
    }

    public zzov(String str, ecf ecfVar, int i) {
        super(str);
        this.f50244b = ecfVar;
        this.f50243a = 1;
    }

    public zzov(String str, IOException iOException, ecf ecfVar, int i) {
        super(str, iOException);
        this.f50244b = ecfVar;
        this.f50243a = 1;
    }
}
