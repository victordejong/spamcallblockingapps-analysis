package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzn.class */
final class zzn implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Task f9881f;

    /* renamed from: g */
    private final /* synthetic */ zzm f9882g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(zzm zzmVar, Task task) {
        this.f9882g = zzmVar;
        this.f9881f = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnSuccessListener onSuccessListener;
        OnSuccessListener onSuccessListener2;
        obj = this.f9882g.f9879b;
        synchronized (obj) {
            onSuccessListener = this.f9882g.f9880c;
            if (onSuccessListener != null) {
                onSuccessListener2 = this.f9882g.f9880c;
                onSuccessListener2.onSuccess(this.f9881f.mo10786j());
            }
        }
    }
}
