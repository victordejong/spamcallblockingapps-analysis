package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.Clock;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclj.class */
public final class zzclj extends zzcla implements zzcir {
    public static final /* synthetic */ int zzd = 0;
    private zzcis zze;
    private String zzf;
    private boolean zzg;
    private boolean zzh;
    private zzcks zzi;
    private long zzj;
    private long zzk;

    public zzclj(zzcjb zzcjbVar, zzcja zzcjaVar) {
        super(zzcjbVar);
        Context context = zzcjbVar.getContext();
        zzcmb zzcmbVar = zzcjaVar.zzm ? new zzcmb(context, zzcjaVar, this.zzc.get()) : new zzcki(context, zzcjaVar, this.zzc.get());
        this.zze = zzcmbVar;
        zzcmbVar.zzr(this);
    }

    public static final String zzt(String str) {
        String valueOf = String.valueOf(zzcgm.zzd(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    private final void zzw(long j) {
        zzs.zza.postDelayed(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcli
            private final zzclj zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzk();
            }
        }, j);
    }

    private static String zzx(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 2 + length + String.valueOf(message).length());
        C22128a.m8666T0(sb, str, StringConstant.SLASH, canonicalName, StringConstant.COLON);
        sb.append(message);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzcla, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzcis zzcisVar = this.zze;
        if (zzcisVar != null) {
            zzcisVar.zzr(null);
            this.zze.zzs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zzC() {
        zzcgt.zzi("Precache onRenderedFirstFrame");
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(boolean z, long j) {
        zzcjb zzcjbVar = this.zzc.get();
        if (zzcjbVar != null) {
            zzchg.zze.execute(new Runnable(zzcjbVar, z, j) { // from class: com.google.android.gms.internal.ads.zzclh
                private final zzcjb zza;
                private final boolean zzb;
                private final long zzc;

                {
                    this.zza = zzcjbVar;
                    this.zzb = z;
                    this.zzc = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzv(this.zzb, this.zzc);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zzb(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zzc(int i, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final boolean zzd(String str) {
        return zze(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v265, types: [long] */
    /* JADX WARN: Type inference failed for: r0v328, types: [long] */
    /* JADX WARN: Type inference failed for: r0v332, types: [long] */
    /* JADX WARN: Type inference failed for: r0v336, types: [long] */
    /* JADX WARN: Type inference failed for: r19v30 */
    /* JADX WARN: Type inference failed for: r19v31 */
    @Override // com.google.android.gms.internal.ads.zzcla
    public final boolean zze(String str, String[] strArr) {
        Exception e;
        zzclj zzcljVar;
        zzclj zzcljVar2;
        zzclj zzcljVar3;
        Throwable th;
        zzclj zzcljVar4;
        char c;
        String str2;
        String str3;
        zzclj zzcljVar5;
        zzclj zzcljVar6 = this;
        String str4 = str;
        zzcljVar6.zzf = str4;
        String zzt = zzt(str);
        String str5 = str4;
        String str6 = zzt;
        zzclj zzcljVar7 = zzcljVar6;
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            zzcljVar6.zze.zzp(uriArr, zzcljVar6.zzb);
            zzcjb zzcjbVar = zzcljVar6.zzc.get();
            if (zzcjbVar != null) {
                zzcjbVar.zzu(zzt, zzcljVar6);
            }
            Clock zzj = zzt.zzj();
            long mo38787c = zzj.mo38787c();
            long longValue = ((Long) zzbet.zzc().zzc(zzbjl.zzt)).longValue();
            long longValue2 = ((Long) zzbet.zzc().zzc(zzbjl.zzs)).longValue() * 1000;
            long intValue = ((Integer) zzbet.zzc().zzc(zzbjl.zzr)).intValue();
            boolean booleanValue = ((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue();
            char c2 = 65535;
            String str7 = zzt;
            while (true) {
                String str8 = str7;
                str5 = str4;
                str6 = str8;
                zzcljVar7 = zzcljVar6;
                synchronized (this) {
                    try {
                        if (zzj.mo38787c() - mo38787c > longValue2) {
                            String str9 = str4;
                            StringBuilder sb = new StringBuilder(47);
                            sb.append("Timeout reached. Limit: ");
                            sb.append(longValue2);
                            sb.append(" ms");
                            throw new IOException(sb.toString());
                        } else if (zzcljVar6.zzg) {
                            String str10 = str4;
                            throw new IOException("Abort requested before buffering finished. ");
                        } else if (zzcljVar6.zzh) {
                            return true;
                        } else {
                            if (!zzcljVar6.zze.zzA()) {
                                String str11 = str4;
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long zzH = zzcljVar6.zze.zzH();
                            if (zzH > 0) {
                                ?? zzN = zzcljVar6.zze.zzN();
                                int i2 = (zzN > c2 ? 1 : (zzN == c2 ? 0 : -1));
                                char c3 = c2;
                                if (i2 != 0) {
                                    try {
                                        try {
                                            zzn(str, str8, zzN, zzH, zzN > 0, booleanValue ? zzcljVar6.zze.zzI() : true ? 1L : 0L, booleanValue ? zzcljVar6.zze.zzJ() : true ? 1L : 0L, booleanValue ? zzcljVar6.zze.zzK() : true ? 1L : 0L, zzcis.zzP(), zzcis.zzQ());
                                            c3 = zzN;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            zzcljVar3 = str;
                                            str4 = str8;
                                            zzcljVar4 = this;
                                            zzcljVar = "error";
                                            throw th;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        zzcljVar3 = str;
                                        str4 = str8;
                                        zzcljVar4 = this;
                                        zzcljVar = "error";
                                    }
                                }
                                if (zzN >= zzH) {
                                    zzq(str, str8, zzH);
                                    return true;
                                }
                                zzcljVar5 = this;
                                str3 = str;
                                str2 = str8;
                                try {
                                    c = c3;
                                    if (zzcljVar5.zze.zzO() >= intValue) {
                                        c = c3;
                                        if (zzN > 0) {
                                            return true;
                                        }
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    zzcljVar4 = zzcljVar5;
                                    zzcljVar3 = str3;
                                    str4 = str2;
                                    zzcljVar = "error";
                                    throw th;
                                }
                            } else {
                                str2 = str8;
                                str3 = str4;
                                zzcljVar5 = zzcljVar6;
                                c = c2;
                            }
                            try {
                                try {
                                    zzcljVar5.wait(longValue);
                                    zzclj zzcljVar8 = zzcljVar5;
                                } catch (Throwable th5) {
                                    zzcljVar = zzcljVar7;
                                    th = th5;
                                    zzcljVar4 = str8;
                                    zzcljVar3 = zzcljVar6;
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
                        zzcljVar4 = zzcljVar6;
                        zzcljVar = "error";
                        zzcljVar3 = str12;
                    }
                }
                try {
                    throw th;
                } catch (Exception e3) {
                    e = e3;
                    zzcljVar2 = zzcljVar4;
                    String message = e.getMessage();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
                    sb2.append("Failed to preload url ");
                    sb2.append(zzcljVar3);
                    sb2.append(" Exception: ");
                    sb2.append(message);
                    zzcgt.zzi(sb2.toString());
                    zzt.zzg().zzl(e, "VideoStreamExoPlayerCache.preload");
                    release();
                    zzcljVar2.zzr(zzcljVar3, str4, zzcljVar, zzx(zzcljVar, e));
                    return false;
                }
                zzcljVar6 = zzcljVar5;
                str4 = str3;
                str7 = str2;
                c2 = c;
            }
        } catch (Exception e4) {
            zzcljVar3 = str5;
            str4 = str6;
            zzcljVar = "error";
            zzcljVar2 = zzcljVar7;
            e = e4;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final boolean zzf(String str, String[] strArr, zzcks zzcksVar) {
        this.zzf = str;
        this.zzi = zzcksVar;
        String zzt = zzt(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.zze.zzp(uriArr, this.zzb);
            zzcjb zzcjbVar = this.zzc.get();
            if (zzcjbVar != null) {
                zzcjbVar.zzu(zzt, this);
            }
            this.zzj = zzt.zzj().mo38787c();
            this.zzk = -1L;
            zzw(0L);
            return true;
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
            sb.append("Failed to preload url ");
            sb.append(str);
            sb.append(" Exception: ");
            sb.append(message);
            zzcgt.zzi(sb.toString());
            zzt.zzg().zzl(e, "VideoStreamExoPlayerCache.preload");
            release();
            zzr(str, zzt, "error", zzx("error", e));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zzg(int i) {
        this.zze.zzG(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zzh(int i) {
        this.zze.zzF(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zzi(int i) {
        this.zze.zzx(i);
    }

    public final zzcis zzj() {
        synchronized (this) {
            this.zzh = true;
            notify();
        }
        this.zze.zzr(null);
        zzcis zzcisVar = this.zze;
        this.zze = null;
        return zzcisVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 38, insn: 0x026b: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r38 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:100:0x0268 */
    /* JADX WARN: Not initialized variable reg: 40, insn: 0x0268: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r40 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:100:0x0268 */
    /* JADX WARN: Not initialized variable reg: 41, insn: 0x026e: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r41 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:100:0x0268 */
    /* JADX WARN: Type inference failed for: r0v172, types: [long] */
    /* JADX WARN: Type inference failed for: r0v176, types: [long] */
    /* JADX WARN: Type inference failed for: r0v180, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [com.google.android.gms.internal.ads.zzbjd<java.lang.Boolean>, com.google.android.gms.internal.ads.zzbjd] */
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
    public final /* synthetic */ void zzk() {
        zzclj zzcljVar;
        Exception e;
        String str;
        long longValue;
        long intValue;
        ?? r0;
        boolean booleanValue;
        Throwable th;
        zzclj zzcljVar2;
        String str2;
        String str3;
        String zzt = zzt(this.zzf);
        String str4 = "error";
        try {
            longValue = ((Long) zzbet.zzc().zzc(zzbjl.zzs)).longValue() * 1000;
            intValue = ((Integer) zzbet.zzc().zzc(zzbjl.zzr)).intValue();
            r0 = zzbjl.zzbl;
            booleanValue = ((Boolean) zzbet.zzc().zzc(r0)).booleanValue();
            try {
            } catch (Throwable th2) {
                th = th2;
                zzcljVar = zzcljVar2;
                str = str2;
                str4 = str3;
            }
        } catch (Exception e2) {
            e = e2;
            str = zzt;
            zzcljVar = this;
        }
        synchronized (this) {
            try {
                if (zzt.zzj().mo38787c() - this.zzj <= longValue) {
                    boolean z = this.zzg;
                    try {
                        if (z) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!this.zzh) {
                            if (!this.zze.zzA()) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long zzH = this.zze.zzH();
                            if (zzH > 0) {
                                long zzN = this.zze.zzN();
                                if (zzN != this.zzk) {
                                    try {
                                        try {
                                            zzn(this.zzf, zzt, zzN, zzH, zzN > 0, (booleanValue ? this.zze.zzI() : true) == true ? 1L : 0L, (booleanValue ? this.zze.zzJ() : true) == true ? 1L : 0L, (booleanValue ? this.zze.zzK() : true) == true ? 1L : 0L, zzcis.zzP(), zzcis.zzQ());
                                            try {
                                                this.zzk = zzN;
                                            } catch (Throwable th3) {
                                                th = th3;
                                                str = zzt;
                                                zzcljVar = this;
                                                throw th;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            str = zzt;
                                            zzcljVar = this;
                                            throw th;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        zzcljVar = this;
                                        str = zzt;
                                    }
                                }
                                if (zzN >= zzH) {
                                    zzq(this.zzf, zzt, zzH);
                                    zzcljVar = this;
                                } else {
                                    zzt = zzt;
                                    if (this.zze.zzO() >= intValue) {
                                        zzt = zzt;
                                        if (zzN > 0) {
                                            zzcljVar = this;
                                        }
                                    }
                                }
                            }
                            zzw(((Long) zzbet.zzc().zzc(zzbjl.zzt)).longValue());
                            return;
                        }
                        zzcljVar = this;
                        zzt.zzy().zzd(zzcljVar.zzi);
                    } catch (Throwable th6) {
                        zzcljVar = this;
                        th = z ? 1 : 0;
                        str = th6;
                        str4 = r0;
                    }
                } else {
                    str = zzt;
                    zzcljVar = this;
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
                str = zzt;
                zzcljVar = this;
            }
            try {
                throw th;
            } catch (Exception e3) {
                e = e3;
                String str5 = zzcljVar.zzf;
                String message = e.getMessage();
                StringBuilder sb2 = new StringBuilder(String.valueOf(str5).length() + 34 + String.valueOf(message).length());
                sb2.append("Failed to preload url ");
                sb2.append(str5);
                sb2.append(" Exception: ");
                sb2.append(message);
                zzcgt.zzi(sb2.toString());
                zzt.zzg().zzl(e, "VideoStreamExoPlayerCache.preload");
                release();
                zzcljVar.zzr(zzcljVar.zzf, str, str4, zzx(str4, e));
                zzt.zzy().zzd(zzcljVar.zzi);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zzl(int i) {
        this.zze.zzy(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zzm() {
        synchronized (this) {
            this.zzg = true;
            notify();
            release();
        }
        String str = this.zzf;
        if (str != null) {
            zzr(this.zzf, zzt(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zzu(String str, Exception exc) {
        zzcgt.zzj("Precache error", exc);
        zzt.zzg().zzl(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zzv(String str, Exception exc) {
        zzcgt.zzj("Precache exception", exc);
        zzt.zzg().zzl(exc, "VideoStreamExoPlayerCache.onException");
    }
}
