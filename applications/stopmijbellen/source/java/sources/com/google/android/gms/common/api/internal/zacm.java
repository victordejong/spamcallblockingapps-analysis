package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zak;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacm.class */
final class zacm implements Runnable {
    public final /* synthetic */ zak zaa;
    public final /* synthetic */ zaco zab;

    public zacm(zaco zacoVar, zak zakVar) {
        this.zab = zacoVar;
        this.zaa = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zaco.zaf(this.zab, this.zaa);
    }
}
