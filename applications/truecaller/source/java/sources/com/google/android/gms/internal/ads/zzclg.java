package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.Clock;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.nio.ByteBuffer;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclg.class */
public final class zzclg extends zzcla implements zzauo<zzatz> {
    private String zzd;
    private final zzcja zze;
    private boolean zzf;
    private ByteBuffer zzi;
    private boolean zzj;
    private final String zzl;
    private final int zzm;
    private boolean zzn;
    private final zzclf zzg = new zzclf();
    private final zzckl zzh = new zzckl();
    private final Object zzk = new Object();

    public zzclg(zzcjb zzcjbVar, zzcja zzcjaVar) {
        super(zzcjbVar);
        this.zze = zzcjaVar;
        this.zzl = zzcjbVar != null ? zzcjbVar.zzn() : "";
        this.zzm = zzcjbVar != null ? zzcjbVar.zzp() : 0;
    }

    public static final String zzt(String str) {
        String valueOf = String.valueOf(zzcgm.zzd(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    private final void zzu() {
        int zza = (int) this.zzg.zza();
        int zza2 = (int) this.zzh.zza(this.zzi);
        int position = this.zzi.position();
        int round = Math.round((position / zza) * zza2);
        boolean z = round > 0;
        int zzP = zzcis.zzP();
        int zzQ = zzcis.zzQ();
        String str = this.zzd;
        zzo(str, zzt(str), position, zza, round, zza2, z, zzP, zzQ);
    }

    public final String zza() {
        return this.zzd;
    }

    public final boolean zzb() {
        return this.zzn;
    }

    public final ByteBuffer zzc() {
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

    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzcla
    public final boolean zzd(String str) {
        Exception e;
        zzatz zzatzVar;
        this.zzd = str;
        String zzt = zzt(str);
        try {
            String str2 = this.zzb;
            zzcja zzcjaVar = this.zze;
            zzaud zzaudVar = new zzaud(str2, null, this, zzcjaVar.zzd, zzcjaVar.zzf, true, null);
            zzatz zzatzVar2 = zzaudVar;
            if (this.zze.zzj) {
                zzatzVar2 = new zzcjx(this.zza, zzaudVar, this.zzl, this.zzm, null, null);
            }
            zzatzVar2.zza(new zzaub(Uri.parse(str), null, 0L, 0L, -1L, null, 0));
            zzcjb zzcjbVar = this.zzc.get();
            if (zzcjbVar != null) {
                zzcjbVar.zzu(zzt, this);
            }
            Clock zzj = zzt.zzj();
            ?? mo38787c = zzj.mo38787c();
            long longValue = ((Long) zzbet.zzc().zzc(zzbjl.zzt)).longValue();
            long longValue2 = ((Long) zzbet.zzc().zzc(zzbjl.zzs)).longValue();
            this.zzi = ByteBuffer.allocate(this.zze.zzc);
            byte[] bArr = new byte[8192];
            char c = mo38787c;
            while (true) {
                try {
                    char c2 = c;
                    int zzb = zzatzVar2.zzb(bArr, 0, Math.min(this.zzi.remaining(), 8192));
                    if (zzb == -1) {
                        this.zzn = true;
                        zzq(str, zzt, (int) this.zzh.zza(this.zzi));
                        return true;
                    }
                    synchronized (this.zzk) {
                        try {
                            if (!this.zzf) {
                                this.zzi.put(bArr, 0, zzb);
                            }
                        } catch (Throwable th) {
                            th = th;
                            zzatzVar = "error";
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
                                String canonicalName = e.getClass().getCanonicalName();
                                String message = e.getMessage();
                                String m8610j = C22128a.m8610j(new StringBuilder(String.valueOf(canonicalName).length() + 1 + String.valueOf(message).length()), canonicalName, StringConstant.COLON, message);
                                StringBuilder sb = new StringBuilder(m8610j.length() + String.valueOf(str).length() + 34);
                                sb.append("Failed to preload url ");
                                sb.append(str);
                                sb.append(" Exception: ");
                                sb.append(m8610j);
                                zzcgt.zzi(sb.toString());
                                zzr(str, zzt, zzatzVar, m8610j);
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
                        ?? mo38787c2 = zzj.mo38787c();
                        char c3 = c2;
                        if (mo38787c2 - c2 >= longValue) {
                            zzu();
                            c3 = mo38787c2;
                        }
                        if (mo38787c2 - mo38787c > 1000 * longValue2) {
                            StringBuilder sb3 = new StringBuilder(49);
                            sb3.append("Timeout exceeded. Limit: ");
                            sb3.append(longValue2);
                            sb3.append(" sec");
                            throw new IOException(sb3.toString());
                        }
                        c = c3;
                    } catch (Exception e3) {
                        zzatzVar = zzatzVar2;
                        e = e3;
                        String canonicalName2 = e.getClass().getCanonicalName();
                        String message2 = e.getMessage();
                        String m8610j2 = C22128a.m8610j(new StringBuilder(String.valueOf(canonicalName2).length() + 1 + String.valueOf(message2).length()), canonicalName2, StringConstant.COLON, message2);
                        StringBuilder sb4 = new StringBuilder(m8610j2.length() + String.valueOf(str).length() + 34);
                        sb4.append("Failed to preload url ");
                        sb4.append(str);
                        sb4.append(" Exception: ");
                        sb4.append(m8610j2);
                        zzcgt.zzi(sb4.toString());
                        zzr(str, zzt, zzatzVar, m8610j2);
                        return false;
                    }
                } catch (Exception e4) {
                    e = e4;
                    zzatzVar = "error";
                    String canonicalName22 = e.getClass().getCanonicalName();
                    String message22 = e.getMessage();
                    String m8610j22 = C22128a.m8610j(new StringBuilder(String.valueOf(canonicalName22).length() + 1 + String.valueOf(message22).length()), canonicalName22, StringConstant.COLON, message22);
                    StringBuilder sb42 = new StringBuilder(m8610j22.length() + String.valueOf(str).length() + 34);
                    sb42.append("Failed to preload url ");
                    sb42.append(str);
                    sb42.append(" Exception: ");
                    sb42.append(m8610j22);
                    zzcgt.zzi(sb42.toString());
                    zzr(str, zzt, zzatzVar, m8610j22);
                    return false;
                }
            }
        } catch (Exception e5) {
            e = e5;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final /* bridge */ /* synthetic */ void zzj(zzatz zzatzVar, zzaub zzaubVar) {
        this.zzg.zzb((zzaud) zzatzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final /* bridge */ /* synthetic */ void zzk(zzatz zzatzVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zzm() {
        this.zzf = true;
    }
}
