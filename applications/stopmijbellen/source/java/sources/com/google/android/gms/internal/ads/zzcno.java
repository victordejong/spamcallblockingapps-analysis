package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import com.google.android.gms.ads.internal.util.zzt;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcno.class */
public final class zzcno extends zzcnf implements zzckx {
    public static final /* synthetic */ int zzd = 0;
    private zzcky zze;
    private String zzf;
    private boolean zzg;
    private boolean zzh;
    private zzcmx zzi;
    private long zzj;
    private long zzk;

    public zzcno(zzclh zzclhVar, zzclg zzclgVar) {
        super(zzclhVar);
        Context context = zzclhVar.getContext();
        zzcof zzcofVar = zzclgVar.zzm ? new zzcof(context, zzclgVar, this.zzc.get()) : new zzcmn(context, zzclgVar, this.zzc.get());
        this.zze = zzcofVar;
        zzcofVar.zzG(this);
    }

    public static final String zzu(String str) {
        String valueOf = String.valueOf(zzcis.zze(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    private static String zzw(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 2 + length + String.valueOf(message).length());
        C0082b.m8749m(sb, str, "/", canonicalName, ":");
        sb.append(message);
        return sb.toString();
    }

    private final void zzx(long j) {
        zzt.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnn
            @Override // java.lang.Runnable
            public final void run() {
                zzcno.this.zzt();
            }
        }, j);
    }

    @Override // com.google.android.gms.internal.ads.zzcnf, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzcky zzckyVar = this.zze;
        if (zzckyVar != null) {
            zzckyVar.zzG(null);
            this.zze.zzC();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzC(int i, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final void zzb() {
        synchronized (this) {
            this.zzg = true;
            notify();
            release();
        }
        String str = this.zzf;
        if (str != null) {
            zzc(this.zzf, zzu(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final void zzh(int i) {
        this.zze.zzE(i);
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzi(final boolean z, final long j) {
        final zzclh zzclhVar = this.zzc.get();
        if (zzclhVar != null) {
            zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnm
                @Override // java.lang.Runnable
                public final void run() {
                    zzclh.this.zzx(z, j);
                }
            });
        }
    }

    public final zzcky zzj() {
        synchronized (this) {
            this.zzh = true;
            notify();
        }
        this.zze.zzG(null);
        zzcky zzckyVar = this.zze;
        this.zze = null;
        return zzckyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzk(String str, Exception exc) {
        zzciz.zzk("Precache error", exc);
        com.google.android.gms.ads.internal.zzt.zzo().zzr(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzl(String str, Exception exc) {
        zzciz.zzk("Precache exception", exc);
        com.google.android.gms.ads.internal.zzt.zzo().zzr(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzm(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final void zzn(int i) {
        this.zze.zzF(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final void zzo(int i) {
        this.zze.zzH(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final void zzp(int i) {
        this.zze.zzI(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final boolean zzq(String str) {
        return zzr(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v264, types: [long] */
    /* JADX WARN: Type inference failed for: r0v327, types: [long] */
    /* JADX WARN: Type inference failed for: r0v331, types: [long] */
    /* JADX WARN: Type inference failed for: r0v335, types: [long] */
    /* JADX WARN: Type inference failed for: r19v30 */
    /* JADX WARN: Type inference failed for: r19v31 */
    @Override // com.google.android.gms.internal.ads.zzcnf
    public final boolean zzr(String str, String[] strArr) {
        zzcno zzcnoVar;
        Exception e;
        zzcno zzcnoVar2;
        Throwable th;
        zzcno zzcnoVar3;
        char c;
        String str2;
        String str3;
        zzcno zzcnoVar4;
        zzcno zzcnoVar5 = this;
        String str4 = str;
        zzcnoVar5.zzf = str4;
        String zzu = zzu(str);
        String str5 = str4;
        String str6 = zzu;
        zzcno zzcnoVar6 = zzcnoVar5;
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            zzcnoVar5.zze.zzA(uriArr, zzcnoVar5.zzb);
            zzclh zzclhVar = zzcnoVar5.zzc.get();
            if (zzclhVar != null) {
                zzclhVar.zzv(zzu, zzcnoVar5);
            }
            Clock zzA = com.google.android.gms.ads.internal.zzt.zzA();
            long currentTimeMillis = zzA.currentTimeMillis();
            long longValue = ((Long) zzbgq.zzc().zzb(zzblj.zzt)).longValue();
            long longValue2 = ((Long) zzbgq.zzc().zzb(zzblj.zzs)).longValue() * 1000;
            long intValue = ((Integer) zzbgq.zzc().zzb(zzblj.zzr)).intValue();
            boolean booleanValue = ((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue();
            char c2 = 65535;
            String str7 = zzu;
            while (true) {
                String str8 = str7;
                str5 = str4;
                str6 = str8;
                zzcnoVar6 = zzcnoVar5;
                synchronized (this) {
                    try {
                        if (zzA.currentTimeMillis() - currentTimeMillis > longValue2) {
                            String str9 = str4;
                            StringBuilder sb = new StringBuilder(47);
                            sb.append("Timeout reached. Limit: ");
                            sb.append(longValue2);
                            sb.append(" ms");
                            throw new IOException(sb.toString());
                        } else if (zzcnoVar5.zzg) {
                            String str10 = str4;
                            throw new IOException("Abort requested before buffering finished. ");
                        } else if (zzcnoVar5.zzh) {
                            return true;
                        } else {
                            if (!zzcnoVar5.zze.zzP()) {
                                String str11 = str4;
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long zzx = zzcnoVar5.zze.zzx();
                            if (zzx > 0) {
                                ?? zzt = zzcnoVar5.zze.zzt();
                                int i2 = (zzt > c2 ? 1 : (zzt == c2 ? 0 : -1));
                                char c3 = c2;
                                if (i2 != 0) {
                                    try {
                                        try {
                                            zzg(str, str8, zzt, zzx, zzt > 0, booleanValue ? zzcnoVar5.zze.zzy() : true ? 1L : 0L, booleanValue ? zzcnoVar5.zze.zzv() : true ? 1L : 0L, booleanValue ? zzcnoVar5.zze.zzz() : true ? 1L : 0L, zzcky.zzq(), zzcky.zzs());
                                            c3 = zzt;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            zzcnoVar2 = str;
                                            str4 = str8;
                                            zzcnoVar3 = this;
                                            zzcnoVar = "error";
                                            throw th;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        zzcnoVar2 = str;
                                        str4 = str8;
                                        zzcnoVar3 = this;
                                        zzcnoVar = "error";
                                    }
                                }
                                if (zzt >= zzx) {
                                    zze(str, str8, zzx);
                                    return true;
                                }
                                zzcnoVar4 = this;
                                str3 = str;
                                str2 = str8;
                                try {
                                    c = c3;
                                    if (zzcnoVar4.zze.zzu() >= intValue) {
                                        c = c3;
                                        if (zzt > 0) {
                                            return true;
                                        }
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    zzcnoVar3 = zzcnoVar4;
                                    zzcnoVar2 = str3;
                                    str4 = str2;
                                    zzcnoVar = "error";
                                    throw th;
                                }
                            } else {
                                str2 = str8;
                                str3 = str4;
                                zzcnoVar4 = zzcnoVar5;
                                c = c2;
                            }
                            try {
                                try {
                                    zzcnoVar4.wait(longValue);
                                    zzcno zzcnoVar7 = zzcnoVar4;
                                } catch (Throwable th5) {
                                    zzcnoVar = zzcnoVar6;
                                    th = th5;
                                    zzcnoVar3 = str8;
                                    zzcnoVar2 = zzcnoVar5;
                                    throw th;
                                }
                            } catch (InterruptedException e2) {
                                throw new IOException("Wait interrupted.");
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        String str12 = str4;
                        str4 = str8;
                        zzcnoVar3 = zzcnoVar5;
                        zzcnoVar = "error";
                        zzcnoVar2 = str12;
                    }
                }
                try {
                    throw th;
                } catch (Exception e3) {
                    e = e3;
                    zzcnoVar6 = zzcnoVar3;
                    String message = e.getMessage();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
                    sb2.append("Failed to preload url ");
                    sb2.append(zzcnoVar2);
                    sb2.append(" Exception: ");
                    sb2.append(message);
                    zzciz.zzj(sb2.toString());
                    com.google.android.gms.ads.internal.zzt.zzo().zzr(e, "VideoStreamExoPlayerCache.preload");
                    release();
                    zzcnoVar6.zzc(zzcnoVar2, str4, zzcnoVar, zzw(zzcnoVar, e));
                    return false;
                }
                zzcnoVar5 = zzcnoVar4;
                str4 = str3;
                str7 = str2;
                c2 = c;
            }
        } catch (Exception e4) {
            zzcnoVar2 = str5;
            str4 = str6;
            zzcnoVar = "error";
            e = e4;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final boolean zzs(String str, String[] strArr, zzcmx zzcmxVar) {
        this.zzf = str;
        this.zzi = zzcmxVar;
        String zzu = zzu(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.zze.zzA(uriArr, this.zzb);
            zzclh zzclhVar = this.zzc.get();
            if (zzclhVar != null) {
                zzclhVar.zzv(zzu, this);
            }
            this.zzj = com.google.android.gms.ads.internal.zzt.zzA().currentTimeMillis();
            this.zzk = -1L;
            zzx(0L);
            return true;
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
            sb.append("Failed to preload url ");
            sb.append(str);
            sb.append(" Exception: ");
            sb.append(message);
            zzciz.zzj(sb.toString());
            com.google.android.gms.ads.internal.zzt.zzo().zzr(e, "VideoStreamExoPlayerCache.preload");
            release();
            zzc(str, zzu, "error", zzw("error", e));
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 38, insn: 0x0265: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r38 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:100:0x0262 */
    /* JADX WARN: Not initialized variable reg: 40, insn: 0x0262: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r40 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:100:0x0262 */
    /* JADX WARN: Not initialized variable reg: 41, insn: 0x0268: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r41 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:100:0x0262 */
    /* JADX WARN: Type inference failed for: r0v171, types: [long] */
    /* JADX WARN: Type inference failed for: r0v175, types: [long] */
    /* JADX WARN: Type inference failed for: r0v179, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [com.google.android.gms.internal.ads.zzblb<java.lang.Boolean>, com.google.android.gms.internal.ads.zzblb] */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r31v2 */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r8v0 */
    public final /* synthetic */ void zzt() {
        zzcno zzcnoVar;
        Exception e;
        String str;
        long longValue;
        long intValue;
        ?? r0;
        boolean booleanValue;
        Throwable th;
        zzcno zzcnoVar2;
        String str2;
        String str3;
        String zzu = zzu(this.zzf);
        String str4 = "error";
        try {
            longValue = ((Long) zzbgq.zzc().zzb(zzblj.zzs)).longValue() * 1000;
            intValue = ((Integer) zzbgq.zzc().zzb(zzblj.zzr)).intValue();
            r0 = zzblj.zzbr;
            booleanValue = ((Boolean) zzbgq.zzc().zzb(r0)).booleanValue();
            try {
            } catch (Throwable th2) {
                th = th2;
                zzcnoVar = zzcnoVar2;
                str = str2;
                str4 = str3;
            }
        } catch (Exception e2) {
            e = e2;
            str = zzu;
            zzcnoVar = this;
        }
        synchronized (this) {
            try {
                if (com.google.android.gms.ads.internal.zzt.zzA().currentTimeMillis() - this.zzj <= longValue) {
                    boolean z = this.zzg;
                    try {
                        if (z) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!this.zzh) {
                            if (!this.zze.zzP()) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long zzx = this.zze.zzx();
                            if (zzx > 0) {
                                long zzt = this.zze.zzt();
                                if (zzt != this.zzk) {
                                    try {
                                        try {
                                            zzg(this.zzf, zzu, zzt, zzx, zzt > 0, (booleanValue ? this.zze.zzy() : true) == true ? 1L : 0L, (booleanValue ? this.zze.zzv() : true) == true ? 1L : 0L, (booleanValue ? this.zze.zzz() : true) == true ? 1L : 0L, zzcky.zzq(), zzcky.zzs());
                                        } catch (Throwable th3) {
                                            th = th3;
                                            str = zzu;
                                            zzcnoVar = this;
                                            throw th;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        str = zzu;
                                        zzcnoVar = this;
                                    }
                                    try {
                                        this.zzk = zzt;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        str = zzu;
                                        zzcnoVar = this;
                                        throw th;
                                    }
                                }
                                if (zzt >= zzx) {
                                    zze(this.zzf, zzu, zzx);
                                    zzcnoVar = this;
                                } else {
                                    zzu = zzu;
                                    if (this.zze.zzu() >= intValue) {
                                        zzu = zzu;
                                        if (zzt > 0) {
                                            zzcnoVar = this;
                                        }
                                    }
                                }
                            }
                            zzx(((Long) zzbgq.zzc().zzb(zzblj.zzt)).longValue());
                            return;
                        }
                        zzcnoVar = this;
                        com.google.android.gms.ads.internal.zzt.zzy().zzc(zzcnoVar.zzi);
                    } catch (Throwable th6) {
                        zzcnoVar = this;
                        th = z ? 1 : 0;
                        str = th6;
                        str4 = r0;
                    }
                } else {
                    str = zzu;
                    zzcnoVar = this;
                    try {
                        StringBuilder sb = new StringBuilder(47);
                        sb.append("Timeout reached. Limit: ");
                        sb.append(longValue);
                        sb.append(" ms");
                        throw new IOException(sb.toString());
                    } catch (Throwable th7) {
                        th = th7;
                        str4 = "downloadTimeout";
                    }
                }
            } catch (Throwable th8) {
                th = th8;
                str = zzu;
                zzcnoVar = this;
            }
            try {
                throw th;
            } catch (Exception e3) {
                e = e3;
                String str5 = zzcnoVar.zzf;
                String message = e.getMessage();
                StringBuilder sb2 = new StringBuilder(String.valueOf(str5).length() + 34 + String.valueOf(message).length());
                sb2.append("Failed to preload url ");
                sb2.append(str5);
                sb2.append(" Exception: ");
                sb2.append(message);
                zzciz.zzj(sb2.toString());
                com.google.android.gms.ads.internal.zzt.zzo().zzr(e, "VideoStreamExoPlayerCache.preload");
                release();
                zzcnoVar.zzc(zzcnoVar.zzf, str, str4, zzw(str4, e));
                com.google.android.gms.ads.internal.zzt.zzy().zzc(zzcnoVar.zzi);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzckx
    public final void zzv() {
        zzciz.zzj("Precache onRenderedFirstFrame");
    }
}
