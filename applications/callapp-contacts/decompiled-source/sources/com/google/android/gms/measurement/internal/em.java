package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/em.class */
public final class em implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ep f29566a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29567b;

    public em(ep epVar, String str) {
        this.f29566a = epVar;
        o.a(str);
        this.f29567b = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.f29566a.t.c().f29506c.a(this.f29567b, th);
        }
    }
}
