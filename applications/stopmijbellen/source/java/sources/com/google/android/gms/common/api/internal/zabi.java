package com.google.android.gms.common.api.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabi.class */
public final class zabi implements Runnable {
    public final /* synthetic */ int zaa;
    public final /* synthetic */ zabl zab;

    public zabi(zabl zablVar, int i) {
        this.zab = zablVar;
        this.zaa = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zab.zaC(this.zaa);
    }
}
