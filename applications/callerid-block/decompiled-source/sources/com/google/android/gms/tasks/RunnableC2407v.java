package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/v.class */
final class RunnableC2407v implements Runnable {

    /* renamed from: b */
    private final /* synthetic */ AbstractC2397g f10555b;

    /* renamed from: c */
    private final /* synthetic */ u f10556c;

    RunnableC2407v(u uVar, AbstractC2397g gVar) {
        this.f10556c = uVar;
        this.f10555b = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (u.a(this.f10556c)) {
            if (u.b(this.f10556c) != null) {
                u.b(this.f10556c).mo3264a(this.f10555b.m3776k());
            }
        }
    }
}
