package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzd.class */
final class zzd implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Task f9857f;

    /* renamed from: g */
    private final /* synthetic */ zzc f9858g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zzc zzcVar, Task task) {
        this.f9858g = zzcVar;
        this.f9857f = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzu zzuVar;
        zzu zzuVar2;
        zzu zzuVar3;
        Continuation continuation;
        zzu zzuVar4;
        zzu zzuVar5;
        if (this.f9857f.mo10784l()) {
            zzuVar5 = this.f9858g.f9856c;
            zzuVar5.m10775u();
            return;
        }
        try {
            continuation = this.f9858g.f9855b;
            Object then = continuation.then(this.f9857f);
            zzuVar4 = this.f9858g.f9856c;
            zzuVar4.m10778r(then);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzuVar2 = this.f9858g.f9856c;
                zzuVar2.m10779q((Exception) e.getCause());
                return;
            }
            zzuVar = this.f9858g.f9856c;
            zzuVar.m10779q(e);
        } catch (Exception e2) {
            zzuVar3 = this.f9858g.f9856c;
            zzuVar3.m10779q(e2);
        }
    }
}
