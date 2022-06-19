package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
import java.lang.Thread;
/* renamed from: com.google.android.gms.measurement.internal.m4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/m4.class */
public final class C7792m4 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final String f35458a;

    /* renamed from: b */
    final /* synthetic */ C7825p4 f35459b;

    public C7792m4(C7825p4 c7825p4, String str) {
        this.f35459b = c7825p4;
        C6155o.m17018j(str);
        this.f35458a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.f35459b.f35460a.mo6047C().m6195m().m6215b(this.f35458a, th);
        }
    }
}
