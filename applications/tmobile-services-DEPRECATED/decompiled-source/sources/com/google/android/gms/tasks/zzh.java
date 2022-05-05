package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzh.class */
final class zzh implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzg f9867f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzg zzgVar) {
        this.f9867f = zzgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCanceledListener onCanceledListener;
        OnCanceledListener onCanceledListener2;
        obj = this.f9867f.f9865b;
        synchronized (obj) {
            onCanceledListener = this.f9867f.f9866c;
            if (onCanceledListener != null) {
                onCanceledListener2 = this.f9867f.f9866c;
                onCanceledListener2.mo10800a();
            }
        }
    }
}
