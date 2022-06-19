package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbft.class */
public final class zzbft {
    public final int heightPixels;
    private final int type;
    public final int widthPixels;

    private zzbft(int i, int i2, int i3) {
        this.type = i;
        this.widthPixels = i2;
        this.heightPixels = i3;
    }

    public static zzbft zzael() {
        return new zzbft(0, 0, 0);
    }

    public static zzbft zzaem() {
        return new zzbft(4, 0, 0);
    }

    public static zzbft zzaen() {
        return new zzbft(5, 0, 0);
    }

    public static zzbft zzb(zzvs zzvsVar) {
        return zzvsVar.zzcig ? new zzbft(3, 0, 0) : zzvsVar.zzcii ? new zzbft(2, 0, 0) : zzvsVar.zzbrr ? zzael() : zzq(zzvsVar.widthPixels, zzvsVar.heightPixels);
    }

    public static zzbft zzq(int i, int i2) {
        return new zzbft(1, i, i2);
    }

    public final boolean isFluid() {
        return this.type == 2;
    }

    public final boolean zzaeo() {
        return this.type == 3;
    }

    public final boolean zzaep() {
        return this.type == 0;
    }

    public final boolean zzaeq() {
        return this.type == 4;
    }

    public final boolean zzaer() {
        return this.type == 5;
    }
}
