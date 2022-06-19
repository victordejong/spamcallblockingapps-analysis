package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlu.class */
final class zzlu {
    public int zzaxc;
    public zzlg zzbao;
    public long zzbap;
    public long zzbaq;
    public long zzbar;
    public int zzbas;
    public long[] zzbat;
    public int[] zzbau;
    public int[] zzbav;
    public int[] zzbaw;
    public long[] zzbax;
    public boolean[] zzbay;
    public boolean zzbaz;
    public boolean[] zzbba;
    public zzlr zzbbb;
    public int zzbbc;
    public zzpn zzbbd;
    public boolean zzbbe;
    public long zzbbf;

    public final void zzau(int i) {
        zzpn zzpnVar = this.zzbbd;
        if (zzpnVar == null || zzpnVar.limit() < i) {
            this.zzbbd = new zzpn(i);
        }
        this.zzbbc = i;
        this.zzbaz = true;
        this.zzbbe = true;
    }

    public final long zzav(int i) {
        return this.zzbax[i] + this.zzbaw[i];
    }
}
