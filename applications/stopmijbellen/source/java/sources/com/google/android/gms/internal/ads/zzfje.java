package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfje.class */
public final class zzfje {
    private final Context zza;
    private long zzb;
    private boolean zzc = false;
    private int zzl = 2;
    private int zzm = 2;
    private int zzd = 0;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private final String zzh = "";
    private String zzi = "";
    private boolean zzj = false;
    private boolean zzk = false;

    private zzfje(Context context, int i) {
        this.zza = context;
    }

    public static /* bridge */ /* synthetic */ int zza(zzfje zzfjeVar) {
        return zzfjeVar.zzd;
    }

    public static /* bridge */ /* synthetic */ long zzb(zzfje zzfjeVar) {
        return zzfjeVar.zzb;
    }

    public static /* bridge */ /* synthetic */ String zzj(zzfje zzfjeVar) {
        return zzfjeVar.zzf;
    }

    public static /* bridge */ /* synthetic */ String zzk(zzfje zzfjeVar) {
        return zzfjeVar.zze;
    }

    public static /* bridge */ /* synthetic */ String zzl(zzfje zzfjeVar) {
        return zzfjeVar.zzg;
    }

    public static /* bridge */ /* synthetic */ String zzm(zzfje zzfjeVar) {
        return zzfjeVar.zzh;
    }

    public static /* bridge */ /* synthetic */ String zzn(zzfje zzfjeVar) {
        return zzfjeVar.zzi;
    }

    public static /* bridge */ /* synthetic */ boolean zzo(zzfje zzfjeVar) {
        return zzfjeVar.zzc;
    }

    public static zzfje zzp(Context context, int i, int i2, zzbfd zzbfdVar) {
        zzfje zzfjeVar = zzfjg.zzb() ? new zzfje(context, 7) : null;
        if (zzfjeVar == null) {
            return null;
        }
        zzfjeVar.zzh();
        zzfjeVar.zzq(i2);
        String str = zzbfdVar.zzp;
        if (!TextUtils.isEmpty(str)) {
            if (Pattern.matches((String) zzbgq.zzc().zzb(zzblj.zzgw), str)) {
                zzfjeVar.zzf(zzbfdVar.zzp);
            }
        }
        return zzfjeVar;
    }

    public static /* bridge */ /* synthetic */ int zzr(zzfje zzfjeVar) {
        return zzfjeVar.zzl;
    }

    public static /* bridge */ /* synthetic */ int zzs(zzfje zzfjeVar) {
        return zzfjeVar.zzm;
    }

    public final zzfje zzc(zzbew zzbewVar) {
        synchronized (this) {
            IBinder iBinder = zzbewVar.zze;
            if (iBinder == null) {
                return this;
            }
            zzdek zzdekVar = (zzdek) iBinder;
            String zzh = zzdekVar.zzh();
            if (!TextUtils.isEmpty(zzh)) {
                this.zze = zzh;
            }
            String zzf = zzdekVar.zzf();
            if (!TextUtils.isEmpty(zzf)) {
                this.zzf = zzf;
            }
            return this;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0041, code lost:
        r3.zzf = r0.zzY;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzfje zzd(com.google.android.gms.internal.ads.zzfdy r4) {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r4
            com.google.android.gms.internal.ads.zzfdq r0 = r0.zzb     // Catch: java.lang.Throwable -> L4d
            java.lang.String r0 = r0.zzb     // Catch: java.lang.Throwable -> L4d
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L4d
            if (r0 != 0) goto L1a
            r0 = r3
            r1 = r4
            com.google.android.gms.internal.ads.zzfdq r1 = r1.zzb     // Catch: java.lang.Throwable -> L4d
            java.lang.String r1 = r1.zzb     // Catch: java.lang.Throwable -> L4d
            r0.zze = r1     // Catch: java.lang.Throwable -> L4d
        L1a:
            r0 = r4
            java.util.List<com.google.android.gms.internal.ads.zzfdn> r0 = r0.zza     // Catch: java.lang.Throwable -> L4d
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L4d
            r5 = r0
        L24:
            r0 = r5
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L49
            r0 = r5
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L4d
            com.google.android.gms.internal.ads.zzfdn r0 = (com.google.android.gms.internal.ads.zzfdn) r0     // Catch: java.lang.Throwable -> L4d
            r4 = r0
            r0 = r4
            java.lang.String r0 = r0.zzY     // Catch: java.lang.Throwable -> L4d
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L4d
            if (r0 != 0) goto L24
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.zzY     // Catch: java.lang.Throwable -> L4d
            r0.zzf = r1     // Catch: java.lang.Throwable -> L4d
        L49:
            r0 = r3
            monitor-exit(r0)
            r0 = r3
            return r0
        L4d:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfje.zzd(com.google.android.gms.internal.ads.zzfdy):com.google.android.gms.internal.ads.zzfje");
    }

    public final zzfje zze(String str) {
        synchronized (this) {
            this.zzg = str;
        }
        return this;
    }

    public final zzfje zzf(String str) {
        synchronized (this) {
            this.zzi = str;
        }
        return this;
    }

    public final zzfje zzg(boolean z) {
        synchronized (this) {
            this.zzc = z;
        }
        return this;
    }

    public final zzfje zzh() {
        Configuration configuration;
        synchronized (this) {
            zzt.zzp();
            this.zzd = com.google.android.gms.ads.internal.util.zzt.zzC(this.zza);
            Resources resources = this.zza.getResources();
            int i = 2;
            if (resources != null && (configuration = resources.getConfiguration()) != null) {
                i = configuration.orientation == 2 ? 4 : 3;
            }
            this.zzm = i;
            this.zzb = zzt.zzA().currentTimeMillis();
            this.zzk = true;
        }
        return this;
    }

    public final zzfjf zzi() {
        synchronized (this) {
            if (this.zzj) {
                return null;
            }
            this.zzj = true;
            if (!this.zzk) {
                zzh();
            }
            return new zzfjf(this);
        }
    }

    public final zzfje zzq(int i) {
        synchronized (this) {
            this.zzl = i;
        }
        return this;
    }
}
