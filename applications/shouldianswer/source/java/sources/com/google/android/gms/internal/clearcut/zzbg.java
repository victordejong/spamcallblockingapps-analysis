package com.google.android.gms.internal.clearcut;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbg.class */
public final class zzbg {
    private final byte[] buffer;
    private final zzbn zzfo;

    private zzbg(int i) {
        this.buffer = new byte[i];
        this.zzfo = zzbn.zzc(this.buffer);
    }

    public /* synthetic */ zzbg(int i, zzbc zzbcVar) {
        this(i);
    }

    public final zzbb zzad() {
        if (this.zzfo.zzag() == 0) {
            return new zzbi(this.buffer);
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final zzbn zzae() {
        return this.zzfo;
    }
}
