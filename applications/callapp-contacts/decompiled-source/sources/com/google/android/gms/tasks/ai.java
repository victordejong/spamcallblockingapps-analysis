package com.google.android.gms.tasks;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/ai.class */
final class ai implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ah f30011a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Callable f30012b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(ah ahVar, Callable callable) {
        this.f30011a = ahVar;
        this.f30012b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f30011a.a((ah) this.f30012b.call());
        } catch (Exception e) {
            this.f30011a.a(e);
        } catch (Throwable th) {
            this.f30011a.a((Exception) new RuntimeException(th));
        }
    }
}
