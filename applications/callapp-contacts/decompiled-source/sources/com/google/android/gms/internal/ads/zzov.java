package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzov.class */
public class zzov extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private final int f28645a;

    /* renamed from: b  reason: collision with root package name */
    private final ecf f28646b;

    public zzov(IOException iOException, ecf ecfVar, int i) {
        super(iOException);
        this.f28646b = ecfVar;
        this.f28645a = i;
    }

    public zzov(String str, ecf ecfVar, int i) {
        super(str);
        this.f28646b = ecfVar;
        this.f28645a = 1;
    }

    public zzov(String str, IOException iOException, ecf ecfVar, int i) {
        super(str, iOException);
        this.f28646b = ecfVar;
        this.f28645a = 1;
    }
}
