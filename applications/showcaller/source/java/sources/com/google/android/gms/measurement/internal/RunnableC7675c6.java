package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.c6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/c6.class */
public final class RunnableC7675c6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f35117d;

    /* renamed from: e */
    final /* synthetic */ String f35118e;

    /* renamed from: f */
    final /* synthetic */ Object f35119f;

    /* renamed from: g */
    final /* synthetic */ long f35120g;

    /* renamed from: h */
    final /* synthetic */ C7893v6 f35121h;

    public RunnableC7675c6(C7893v6 c7893v6, String str, String str2, Object obj, long j) {
        this.f35121h = c7893v6;
        this.f35117d = str;
        this.f35118e = str2;
        this.f35119f = obj;
        this.f35120g = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35121h.m5909n(this.f35117d, this.f35118e, this.f35119f, this.f35120g);
    }
}
