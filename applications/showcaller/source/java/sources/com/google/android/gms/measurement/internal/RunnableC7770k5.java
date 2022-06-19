package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.k5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/k5.class */
final class RunnableC7770k5 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f35383d;

    /* renamed from: e */
    final /* synthetic */ String f35384e;

    /* renamed from: f */
    final /* synthetic */ String f35385f;

    /* renamed from: g */
    final /* synthetic */ long f35386g;

    /* renamed from: h */
    final /* synthetic */ BinderC7782l5 f35387h;

    public RunnableC7770k5(BinderC7782l5 binderC7782l5, String str, String str2, String str3, long j) {
        this.f35387h = binderC7782l5;
        this.f35383d = str;
        this.f35384e = str2;
        this.f35385f = str3;
        this.f35386g = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7819o9 c7819o9;
        C7819o9 c7819o92;
        String str = this.f35383d;
        if (str == null) {
            c7819o92 = this.f35387h.f35423d;
            c7819o92.m6128r().m6033Q().m6294w(this.f35384e, null);
            return;
        }
        C7676c7 c7676c7 = new C7676c7(this.f35385f, str, this.f35386g);
        c7819o9 = this.f35387h.f35423d;
        c7819o9.m6128r().m6033Q().m6294w(this.f35384e, c7676c7);
    }
}
