package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzji.class */
public class zzji {
    private int flags;

    public void clear() {
        this.flags = 0;
    }

    public final void setFlags(int i) {
        this.flags = i;
    }

    public final void zzaa(int i) {
        this.flags |= Integer.MIN_VALUE;
    }

    public final boolean zzab(int i) {
        return (this.flags & i) == i;
    }

    public final boolean zzgh() {
        return zzab(Integer.MIN_VALUE);
    }

    public final boolean zzgi() {
        return zzab(4);
    }

    public final boolean zzgj() {
        return zzab(1);
    }
}
