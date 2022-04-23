package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dme.class */
public final class dme {

    /* renamed from: a  reason: collision with root package name */
    final zzemk f26947a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f26948b;

    private dme(int i) {
        byte[] bArr = new byte[i];
        this.f26948b = bArr;
        this.f26947a = zzemk.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dme(int i, dlv dlvVar) {
        this(i);
    }

    public final dlw a() {
        this.f26947a.i();
        return new dmh(this.f26948b);
    }
}
