package com.google.android.gms.tagmanager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzaw.class */
final class zzaw implements Runnable {
    private final /* synthetic */ zzat zzbbf;
    private final /* synthetic */ String zzbbh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaw(zzat zzatVar, String str) {
        this.zzbbf = zzatVar;
        this.zzbbh = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbbf.zzdg(this.zzbbh);
    }
}
