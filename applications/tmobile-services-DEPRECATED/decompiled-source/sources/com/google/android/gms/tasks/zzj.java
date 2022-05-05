package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzj.class */
final class zzj implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Task f9871f;

    /* renamed from: g */
    private final /* synthetic */ zzi f9872g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(zzi zziVar, Task task) {
        this.f9872g = zziVar;
        this.f9871f = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCompleteListener onCompleteListener;
        OnCompleteListener onCompleteListener2;
        obj = this.f9872g.f9869b;
        synchronized (obj) {
            onCompleteListener = this.f9872g.f9870c;
            if (onCompleteListener != null) {
                onCompleteListener2 = this.f9872g.f9870c;
                onCompleteListener2.onComplete(this.f9871f);
            }
        }
    }
}
