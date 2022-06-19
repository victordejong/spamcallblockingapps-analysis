package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzs.class */
final class zzs implements OnTokenCanceledListener {
    private final /* synthetic */ TaskCompletionSource zzv;

    public zzs(TaskCompletionSource taskCompletionSource) {
        this.zzv = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnTokenCanceledListener
    public final void onCanceled() {
        zzu zzuVar;
        zzuVar = this.zzv.zza;
        zzuVar.zza();
    }
}
