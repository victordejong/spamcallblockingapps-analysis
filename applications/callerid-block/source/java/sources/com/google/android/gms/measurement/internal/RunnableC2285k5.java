package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.k5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/k5.class */
final class RunnableC2285k5 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f10256b;

    /* renamed from: c */
    final /* synthetic */ String f10257c;

    /* renamed from: d */
    final /* synthetic */ String f10258d;

    /* renamed from: e */
    final /* synthetic */ long f10259e;

    /* renamed from: f */
    final /* synthetic */ l5 f10260f;

    RunnableC2285k5(l5 l5Var, String str, String str2, String str3, long j) {
        this.f10260f = l5Var;
        this.f10256b = str;
        this.f10257c = str2;
        this.f10258d = str3;
        this.f10259e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f10256b;
        if (str == null) {
            l5.w4(this.f10260f).r().Q().y(this.f10257c, (C2235c7) null);
            return;
        }
        l5.w4(this.f10260f).r().Q().y(this.f10257c, new C2235c7(this.f10258d, str, this.f10259e));
    }
}
