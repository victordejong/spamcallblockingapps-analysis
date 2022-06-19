package com.google.android.gms.common.api.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zar.class */
public final class zar implements Runnable {
    private final /* synthetic */ zas zaa;

    public zar(zas zasVar) {
        this.zaa = zasVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zas.zaa(this.zaa).lock();
        try {
            zas.zab(this.zaa);
        } finally {
            zas.zaa(this.zaa).unlock();
        }
    }
}
