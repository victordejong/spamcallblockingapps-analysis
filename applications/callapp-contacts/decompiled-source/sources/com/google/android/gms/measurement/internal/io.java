package com.google.android.gms.measurement.internal;

import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/io.class */
final class io implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ jo f29856a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Runnable f29857b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public io(iq iqVar, jo joVar, Runnable runnable) {
        this.f29856a = joVar;
        this.f29857b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29856a.n();
        jo joVar = this.f29856a;
        Runnable runnable = this.f29857b;
        joVar.d().S_();
        if (joVar.h == null) {
            joVar.h = new ArrayList();
        }
        joVar.h.add(runnable);
        this.f29856a.l();
    }
}
