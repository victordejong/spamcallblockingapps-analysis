package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnl.class */
public final class zzcnl extends zzcnf implements zzawl<zzavw> {
    private String zzd;
    private final zzclg zze;
    private boolean zzf;
    private ByteBuffer zzi;
    private boolean zzj;
    private final String zzl;
    private final int zzm;
    private boolean zzn;
    private final zzcnk zzg = new zzcnk();
    private final zzcmq zzh = new zzcmq();
    private final Object zzk = new Object();

    public zzcnl(zzclh zzclhVar, zzclg zzclgVar) {
        super(zzclhVar);
        this.zze = zzclgVar;
        this.zzl = zzclhVar != null ? zzclhVar.zzt() : "";
        this.zzm = zzclhVar != null ? zzclhVar.zzh() : 0;
    }

    public static final String zzt(String str) {
        String valueOf = String.valueOf(zzcis.zze(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    private final void zzu() {
        int zza = (int) this.zzg.zza();
        int zza2 = (int) this.zzh.zza(this.zzi);
        int position = this.zzi.position();
        int round = Math.round((position / zza) * zza2);
        boolean z = round > 0;
        int zzq = zzcky.zzq();
        int zzs = zzcky.zzs();
        String str = this.zzd;
        zzf(str, zzt(str), position, zza, round, zza2, z, zzq, zzs);
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final void zzb() {
        this.zzf = true;
    }

    public final String zzi() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    public final /* bridge */ /* synthetic */ void zzj(zzavw zzavwVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    public final /* bridge */ /* synthetic */ void zzk(zzavw zzavwVar, zzavy zzavyVar) {
        this.zzg.zzb((zzawa) zzavwVar);
    }

    public final ByteBuffer zzl() {
        synchronized (this.zzk) {
            ByteBuffer byteBuffer = this.zzi;
            if (byteBuffer != null && !this.zzj) {
                byteBuffer.flip();
                this.zzj = true;
            }
            this.zzf = true;
        }
        return this.zzi;
    }

    public final boolean zzm() {
        return this.zzn;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzcnf
    public final boolean zzq(String str) {
        Exception e;
        this.zzd = str;
        String zzt = zzt(str);
        try {
            String str2 = this.zzb;
            zzclg zzclgVar = this.zze;
            zzawa zzawaVar = new zzawa(str2, null, this, zzclgVar.zzd, zzclgVar.zzf, true, null);
            zzavw zzavwVar = zzawaVar;
            if (this.zze.zzj) {
                zzavwVar = new zzcmc(this.zza, zzawaVar, this.zzl, this.zzm, null, null, null);
            }
            zzavwVar.zzb(new zzavy(Uri.parse(str), null, 0L, 0L, -1L, null, 0));
            zzclh zzclhVar = this.zzc.get();
            if (zzclhVar != null) {
                zzclhVar.zzv(zzt, this);
            }
            Clock zzA = zzt.zzA();
            ?? currentTimeMillis = zzA.currentTimeMillis();
            long longValue = ((Long) zzbgq.zzc().zzb(zzblj.zzt)).longValue();
            long longValue2 = ((Long) zzbgq.zzc().zzb(zzblj.zzs)).longValue();
            this.zzi = ByteBuffer.allocate(this.zze.zzc);
            byte[] bArr = new byte[8192];
            char c = currentTimeMillis;
            while (true) {
                try {
                    char c2 = c;
                    int zza = zzavwVar.zza(bArr, 0, Math.min(this.zzi.remaining(), 8192));
                    if (zza == -1) {
                        this.zzn = true;
                        zze(str, zzt, (int) this.zzh.zza(this.zzi));
                        return true;
                    }
                    synchronized (this.zzk) {
                        try {
                            if (!this.zzf) {
                                this.zzi.put(bArr, 0, zza);
                            }
                        } catch (Throwable th) {
                            th = th;
                            while (true) {
                                try {
                                    break;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                            try {
                                throw th;
                            } catch (Exception e2) {
                                e = e2;
                                zzavwVar = "error";
                                String canonicalName = e.getClass().getCanonicalName();
                                String message = e.getMessage();
                                String m7625j = C0608b.m7625j(new StringBuilder(String.valueOf(canonicalName).length() + 1 + String.valueOf(message).length()), canonicalName, ":", message);
                                StringBuilder sb = new StringBuilder(m7625j.length() + String.valueOf(str).length() + 34);
                                sb.append("Failed to preload url ");
                                sb.append(str);
                                sb.append(" Exception: ");
                                sb.append(m7625j);
                                zzciz.zzj(sb.toString());
                                zzc(str, zzt, zzavwVar, m7625j);
                                return false;
                            }
                        }
                    }
                    if (this.zzi.remaining() <= 0) {
                        zzu();
                        return true;
                    }
                    try {
                        if (this.zzf) {
                            int limit = this.zzi.limit();
                            StringBuilder sb2 = new StringBuilder(35);
                            sb2.append("Precache abort at ");
                            sb2.append(limit);
                            sb2.append(" bytes");
                            throw new IOException(sb2.toString());
                        }
                        ?? currentTimeMillis2 = zzA.currentTimeMillis();
                        char c3 = c2;
                        if (currentTimeMillis2 - c2 >= longValue) {
                            zzu();
                            c3 = currentTimeMillis2;
                        }
                        if (currentTimeMillis2 - currentTimeMillis > 1000 * longValue2) {
                            StringBuilder sb3 = new StringBuilder(49);
                            sb3.append("Timeout exceeded. Limit: ");
                            sb3.append(longValue2);
                            sb3.append(" sec");
                            throw new IOException(sb3.toString());
                        }
                        c = c3;
                    } catch (Exception e3) {
                        e = e3;
                        String canonicalName2 = e.getClass().getCanonicalName();
                        String message2 = e.getMessage();
                        String m7625j2 = C0608b.m7625j(new StringBuilder(String.valueOf(canonicalName2).length() + 1 + String.valueOf(message2).length()), canonicalName2, ":", message2);
                        StringBuilder sb4 = new StringBuilder(m7625j2.length() + String.valueOf(str).length() + 34);
                        sb4.append("Failed to preload url ");
                        sb4.append(str);
                        sb4.append(" Exception: ");
                        sb4.append(m7625j2);
                        zzciz.zzj(sb4.toString());
                        zzc(str, zzt, zzavwVar, m7625j2);
                        return false;
                    }
                } catch (Exception e4) {
                    e = e4;
                    zzavwVar = "error";
                    String canonicalName22 = e.getClass().getCanonicalName();
                    String message22 = e.getMessage();
                    String m7625j22 = C0608b.m7625j(new StringBuilder(String.valueOf(canonicalName22).length() + 1 + String.valueOf(message22).length()), canonicalName22, ":", message22);
                    StringBuilder sb42 = new StringBuilder(m7625j22.length() + String.valueOf(str).length() + 34);
                    sb42.append("Failed to preload url ");
                    sb42.append(str);
                    sb42.append(" Exception: ");
                    sb42.append(m7625j22);
                    zzciz.zzj(sb42.toString());
                    zzc(str, zzt, zzavwVar, m7625j22);
                    return false;
                }
            }
        } catch (Exception e5) {
            e = e5;
        }
    }
}
