package com.google.android.gms.tagmanager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfp.class */
final class zzfp implements Runnable {
    private final /* synthetic */ zzfn zzbfz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfp(zzfn zzfnVar) {
        this.zzbfz = zzfnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcb zzcbVar;
        zzcbVar = this.zzbfz.zzbfp;
        zzcbVar.dispatch();
    }
}
