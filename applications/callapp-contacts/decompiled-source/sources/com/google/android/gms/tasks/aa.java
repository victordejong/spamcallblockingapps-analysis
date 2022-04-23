package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/aa.class */
final class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f29997a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ab f29998b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(ab abVar, h hVar) {
        this.f29998b = abVar;
        this.f29997a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g gVar;
        try {
            gVar = this.f29998b.f30000b;
            h then = gVar.then(this.f29997a.d());
            if (then == null) {
                this.f29998b.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            then.a(j.f30016b, (f) this.f29998b);
            then.a(j.f30016b, (e) this.f29998b);
            then.a(j.f30016b, (c) this.f29998b);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f29998b.onFailure((Exception) e.getCause());
            } else {
                this.f29998b.onFailure(e);
            }
        } catch (CancellationException e2) {
            this.f29998b.a();
        } catch (Exception e3) {
            this.f29998b.onFailure(e3);
        }
    }
}
