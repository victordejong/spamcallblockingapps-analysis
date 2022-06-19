package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlm.class */
final class zzlm {
    public final zzkh zzasp;
    public final zzlu zzazr = new zzlu();
    public zzls zzazs;
    public zzlg zzazt;
    public int zzazu;
    public int zzazv;
    public int zzazw;
    public zzkk zzazx;
    public zzlr zzazy;

    public zzlm(zzkh zzkhVar) {
        this.zzasp = zzkhVar;
    }

    public final void reset() {
        zzlu zzluVar = this.zzazr;
        zzluVar.zzbas = 0;
        zzluVar.zzbbf = 0L;
        zzluVar.zzbaz = false;
        zzluVar.zzbbe = false;
        zzluVar.zzbbb = null;
        this.zzazu = 0;
        this.zzazw = 0;
        this.zzazv = 0;
        this.zzazx = null;
        this.zzazy = null;
    }

    public final void zza(zzls zzlsVar, zzlg zzlgVar) {
        this.zzazs = (zzls) zzpg.checkNotNull(zzlsVar);
        this.zzazt = (zzlg) zzpg.checkNotNull(zzlgVar);
        this.zzasp.zze(zzlsVar.zzahz);
        reset();
    }
}
