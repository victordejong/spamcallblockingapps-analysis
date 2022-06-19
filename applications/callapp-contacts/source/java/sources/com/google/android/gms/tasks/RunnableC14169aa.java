package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
/* renamed from: com.google.android.gms.tasks.aa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/aa.class */
final class RunnableC14169aa implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC14185h f52123a;

    /* renamed from: b */
    final /* synthetic */ C14170ab f52124b;

    public RunnableC14169aa(C14170ab c14170ab, AbstractC14185h abstractC14185h) {
        this.f52124b = c14170ab;
        this.f52123a = abstractC14185h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC14184g abstractC14184g;
        try {
            abstractC14184g = this.f52124b.f52126b;
            AbstractC14185h then = abstractC14184g.then(this.f52123a.mo11475d());
            if (then == null) {
                this.f52124b.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            then.mo11480a(C14187j.f52144b, (AbstractC14183f) this.f52124b);
            then.mo11481a(C14187j.f52144b, (AbstractC14182e) this.f52124b);
            then.mo11483a(C14187j.f52144b, (AbstractC14180c) this.f52124b);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f52124b.onFailure((Exception) e.getCause());
            } else {
                this.f52124b.onFailure(e);
            }
        } catch (CancellationException e2) {
            this.f52124b.mo8074a();
        } catch (Exception e3) {
            this.f52124b.onFailure(e3);
        }
    }
}
