package com.google.android.gms.common.api.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaap.class */
public abstract class zaap implements Runnable {
    private final /* synthetic */ zaaf zaa;

    private zaap(zaaf zaafVar) {
        this.zaa = zaafVar;
    }

    public /* synthetic */ zaap(zaaf zaafVar, zaae zaaeVar) {
        this(zaafVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        zaaf.zac(this.zaa).lock();
        try {
            try {
                if (!Thread.interrupted()) {
                    zaa();
                }
            } catch (RuntimeException e) {
                zaaf.zad(this.zaa).zaa(e);
            }
        } finally {
            zaaf.zac(this.zaa).unlock();
        }
    }

    public abstract void zaa();
}
