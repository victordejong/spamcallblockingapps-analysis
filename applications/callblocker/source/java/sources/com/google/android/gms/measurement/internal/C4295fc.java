package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C2662s;
import java.lang.Thread;
/* renamed from: com.google.android.gms.measurement.internal.fc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fc.class */
public final class C4295fc implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final String f18845a;

    /* renamed from: b */
    private final /* synthetic */ C4293fa f18846b;

    public C4295fc(C4293fa c4293fa, String str) {
        this.f18846b = c4293fa;
        C2662s.m13981a(str);
        this.f18845a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.f18846b.mo4030v().m4655x_().m4653a(this.f18845a, th);
        }
    }
}
