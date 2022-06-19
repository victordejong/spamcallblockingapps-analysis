package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzt;
import com.tenor.android.core.constant.StringConstant;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfcd.class */
public final class zzfcd implements zzfcc {
    private final ConcurrentHashMap<zzfcm, zzfcb> zza;
    private final zzfcj zzb;
    private final zzfcf zzc = new zzfcf();

    public zzfcd(zzfcj zzfcjVar) {
        this.zza = new ConcurrentHashMap<>(zzfcjVar.zzd);
        this.zzb = zzfcjVar;
    }

    private final void zzf() {
        int i;
        Parcelable.Creator<zzfcj> creator = zzfcj.CREATOR;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeG)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.zzb.zzb);
            sb.append(" PoolCollection");
            sb.append(this.zzc.zzg());
            Iterator<Map.Entry<zzfcm, zzfcb>> it = this.zza.entrySet().iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                i = i3;
                if (it.hasNext()) {
                    Map.Entry<zzfcm, zzfcb> next = it.next();
                    int i4 = i3 + 1;
                    sb.append(i4);
                    sb.append(". ");
                    sb.append(next.getValue());
                    sb.append(StringConstant.HASH);
                    sb.append(next.getKey().hashCode());
                    sb.append("    ");
                    for (int i5 = 0; i5 < next.getValue().zzc(); i5++) {
                        sb.append("[O]");
                    }
                    for (int zzc = next.getValue().zzc(); zzc < this.zzb.zzd; zzc++) {
                        sb.append("[ ]");
                    }
                    sb.append(StringConstant.NEW_LINE);
                    sb.append(next.getValue().zzg());
                    sb.append(StringConstant.NEW_LINE);
                    i2 = i4;
                }
            }
            while (i < this.zzb.zzc) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            zzcgt.zzd(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfcc
    public final zzfcl<?, ?> zza(zzfcm zzfcmVar) {
        zzfcl<?, ?> zzfclVar;
        synchronized (this) {
            zzfcb zzfcbVar = this.zza.get(zzfcmVar);
            if (zzfcbVar != null) {
                zzfclVar = zzfcbVar.zzb();
                if (zzfclVar == null) {
                    this.zzc.zzb();
                }
                zzfcz zzh = zzfcbVar.zzh();
                if (zzfclVar != null) {
                    zzazo zza = zzazu.zza();
                    zzazm zza2 = zzazn.zza();
                    zza2.zzd(2);
                    zzazq zza3 = zzazr.zza();
                    zza3.zza(zzh.zza);
                    zza3.zzb(zzh.zzb);
                    zza2.zzb(zza3);
                    zza.zza(zza2);
                    zzfclVar.zza.zzP().zze().zzc(zza.zzah());
                }
                zzf();
            } else {
                this.zzc.zza();
                zzf();
                zzfclVar = null;
            }
        }
        return zzfclVar;
    }

    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzfcc
    public final boolean zzb(zzfcm zzfcmVar, zzfcl<?, ?> zzfclVar) {
        boolean zza;
        synchronized (this) {
            zzfcb zzfcbVar = this.zza.get(zzfcmVar);
            zzfclVar.zzd = zzt.zzj().mo38787c();
            zzfcb zzfcbVar2 = zzfcbVar;
            if (zzfcbVar == null) {
                zzfcj zzfcjVar = this.zzb;
                zzfcb zzfcbVar3 = new zzfcb(zzfcjVar.zzd, zzfcjVar.zze * 1000);
                int size = this.zza.size();
                zzfcj zzfcjVar2 = this.zzb;
                if (size == zzfcjVar2.zzc) {
                    int i = zzfcjVar2.zzg;
                    int i2 = i - 1;
                    zzfcm zzfcmVar2 = null;
                    if (i == 0) {
                        throw null;
                    }
                    char c = 65535;
                    if (i2 == 0) {
                        zzfcm zzfcmVar3 = null;
                        for (Map.Entry<zzfcm, zzfcb> entry : this.zza.entrySet()) {
                            if (entry.getValue().zzd() < c) {
                                c = entry.getValue().zzd();
                                zzfcmVar3 = entry.getKey();
                            }
                        }
                        if (zzfcmVar3 != null) {
                            this.zza.remove(zzfcmVar3);
                        }
                    } else if (i2 == 1) {
                        zzfcm zzfcmVar4 = null;
                        for (Map.Entry<zzfcm, zzfcb> entry2 : this.zza.entrySet()) {
                            if (entry2.getValue().zze() < c) {
                                c = entry2.getValue().zze();
                                zzfcmVar4 = entry2.getKey();
                            }
                        }
                        if (zzfcmVar4 != null) {
                            this.zza.remove(zzfcmVar4);
                        }
                    } else if (i2 == 2) {
                        int i3 = Integer.MAX_VALUE;
                        for (Map.Entry<zzfcm, zzfcb> entry3 : this.zza.entrySet()) {
                            if (entry3.getValue().zzf() < i3) {
                                i3 = entry3.getValue().zzf();
                                zzfcmVar2 = entry3.getKey();
                            }
                        }
                        if (zzfcmVar2 != null) {
                            this.zza.remove(zzfcmVar2);
                        }
                    }
                    this.zzc.zzd();
                }
                this.zza.put(zzfcmVar, zzfcbVar3);
                this.zzc.zzc();
                zzfcbVar2 = zzfcbVar3;
            }
            zza = zzfcbVar2.zza(zzfclVar);
            this.zzc.zze();
            zzfce zzf = this.zzc.zzf();
            zzfcz zzh = zzfcbVar2.zzh();
            zzazo zza2 = zzazu.zza();
            zzazm zza3 = zzazn.zza();
            zza3.zzd(2);
            zzazs zza4 = zzazt.zza();
            zza4.zza(zzf.zza);
            zza4.zzb(zzf.zzb);
            zza4.zzc(zzh.zzb);
            zza3.zzc(zza4);
            zza2.zza(zza3);
            zzfclVar.zza.zzP().zze().zzd(zza2.zzah());
            zzf();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfcc
    public final boolean zzc(zzfcm zzfcmVar) {
        synchronized (this) {
            zzfcb zzfcbVar = this.zza.get(zzfcmVar);
            if (zzfcbVar != null) {
                return zzfcbVar.zzc() < this.zzb.zzd;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfcc
    @Deprecated
    public final zzfcm zzd(zzbdg zzbdgVar, String str, zzbdr zzbdrVar) {
        return new zzfcn(zzbdgVar, str, new zzcbn(this.zzb.zza).zza().zzk, this.zzb.zzf, zzbdrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfcc
    public final zzfcj zze() {
        return this.zzb;
    }
}
