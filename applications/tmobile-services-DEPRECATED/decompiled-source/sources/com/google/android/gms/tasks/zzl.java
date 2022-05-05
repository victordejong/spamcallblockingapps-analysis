package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzl.class */
final class zzl implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Task f9876f;

    /* renamed from: g */
    private final /* synthetic */ zzk f9877g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(zzk zzkVar, Task task) {
        this.f9877g = zzkVar;
        this.f9876f = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnFailureListener onFailureListener;
        OnFailureListener onFailureListener2;
        obj = this.f9877g.f9874b;
        synchronized (obj) {
            onFailureListener = this.f9877g.f9875c;
            if (onFailureListener != null) {
                onFailureListener2 = this.f9877g.f9875c;
                onFailureListener2.onFailure(this.f9876f.mo10787i());
            }
        }
    }
}
