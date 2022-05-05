package com.google.android.gms.tagmanager;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzau.class */
final class zzau implements Runnable {
    private final /* synthetic */ List zzbbd;
    private final /* synthetic */ long zzbbe;
    private final /* synthetic */ zzat zzbbf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzau(zzat zzatVar, List list, long j) {
        this.zzbbf = zzatVar;
        this.zzbbd = list;
        this.zzbbe = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbbf.zzb(this.zzbbd, this.zzbbe);
    }
}
