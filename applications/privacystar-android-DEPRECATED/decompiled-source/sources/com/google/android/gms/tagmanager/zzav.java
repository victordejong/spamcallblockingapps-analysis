package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.DataLayer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzav.class */
final class zzav implements Runnable {
    private final /* synthetic */ zzat zzbbf;
    private final /* synthetic */ zzaq zzbbg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzav(zzat zzatVar, zzaq zzaqVar) {
        this.zzbbf = zzatVar;
        this.zzbbg = zzaqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List<DataLayer.zza> zzny;
        zzaq zzaqVar = this.zzbbg;
        zzny = this.zzbbf.zzny();
        zzaqVar.zzd(zzny);
    }
}
