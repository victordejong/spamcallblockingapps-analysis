package com.google.android.gms.internal.icing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbn.class */
public final class zzbn {
    private final byte[] buffer;
    private final zzbu zzdw;

    private zzbn(int i) {
        this.buffer = new byte[i];
        this.zzdw = zzbu.zzb(this.buffer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbn(int i, zzbj zzbjVar) {
        this(i);
    }

    public final zzbi zzy() {
        if (this.zzdw.zzab() == 0) {
            return new zzbp(this.buffer);
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final zzbu zzz() {
        return this.zzdw;
    }
}
