package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/m.class */
final class RunnableC2402m implements Runnable {

    /* renamed from: b */
    private final /* synthetic */ AbstractC2397g f10546b;

    /* renamed from: c */
    private final /* synthetic */ k f10547c;

    RunnableC2402m(k kVar, AbstractC2397g abstractC2397g) {
        this.f10547c = kVar;
        this.f10546b = abstractC2397g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f10546b.m3774m()) {
            k.a(this.f10547c).t();
            return;
        }
        try {
            k.a(this.f10547c).s(k.b(this.f10547c).mo3246a(this.f10546b));
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                k.a(this.f10547c).r((Exception) e.getCause());
            } else {
                k.a(this.f10547c).r(e);
            }
        } catch (Exception e2) {
            k.a(this.f10547c).r(e2);
        }
    }
}
