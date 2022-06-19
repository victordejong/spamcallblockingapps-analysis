package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
import java.lang.Thread;
/* renamed from: com.google.android.gms.measurement.internal.em */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/em.class */
public final class C13973em implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    final /* synthetic */ C13976ep f51490a;

    /* renamed from: b */
    private final String f51491b;

    public C13973em(C13976ep c13976ep, String str) {
        this.f51490a = c13976ep;
        C12045o.m19162a(str);
        this.f51491b = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.f51490a.f51637t.mo11661c().f51395c.m12091a(this.f51491b, th);
        }
    }
}
