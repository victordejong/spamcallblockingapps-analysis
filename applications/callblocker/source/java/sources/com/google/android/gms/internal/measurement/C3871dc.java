package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.dc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dc.class */
public final class C3871dc {

    /* renamed from: a */
    private final zzes f17975a;

    /* renamed from: b */
    private final byte[] f17976b;

    private C3871dc(int i) {
        this.f17976b = new byte[i];
        this.f17975a = zzes.m4930a(this.f17976b);
    }

    public /* synthetic */ C3871dc(int i, C3863cx c3863cx) {
        this(i);
    }

    /* renamed from: a */
    public final AbstractC3859ct m5756a() {
        this.f17975a.m4929b();
        return new C3873de(this.f17976b);
    }

    /* renamed from: b */
    public final zzes m5755b() {
        return this.f17975a;
    }
}
