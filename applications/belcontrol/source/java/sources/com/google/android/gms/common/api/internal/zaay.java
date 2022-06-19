package com.google.android.gms.common.api.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaay.class */
public abstract class zaay {
    private final zaaw zaa;

    public zaay(zaaw zaawVar) {
        this.zaa = zaawVar;
    }

    public abstract void zaa();

    public final void zaa(zaaz zaazVar) {
        zaaz.zaa(zaazVar).lock();
        try {
            if (zaaz.zab(zaazVar) == this.zaa) {
                zaa();
            }
        } finally {
            zaaz.zaa(zaazVar).unlock();
        }
    }
}
