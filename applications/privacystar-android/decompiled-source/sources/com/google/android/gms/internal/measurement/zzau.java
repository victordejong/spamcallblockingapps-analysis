package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzau.class */
public abstract class zzau extends zzat {
    private boolean zzvz;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzau(zzaw zzawVar) {
        super(zzawVar);
    }

    public final boolean isInitialized() {
        return this.zzvz;
    }

    protected abstract void zzag();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzcl() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzq() {
        zzag();
        this.zzvz = true;
    }
}
