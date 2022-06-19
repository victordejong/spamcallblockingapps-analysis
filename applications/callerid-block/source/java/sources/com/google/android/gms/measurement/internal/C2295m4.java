package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
import java.lang.Thread;
/* renamed from: com.google.android.gms.measurement.internal.m4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/m4.class */
final class C2295m4 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final String f10289a;

    /* renamed from: b */
    final /* synthetic */ p4 f10290b;

    public C2295m4(p4 p4Var, String str) {
        this.f10290b = p4Var;
        C1581h.m8347h(str);
        this.f10289a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            ((m5) this.f10290b).a.t().m().m3875b(this.f10289a, th);
        }
    }
}
