package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzle;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzid.class */
public final class zzid extends zzkb {
    public zzid(zzke zzkeVar) {
        super(zzkeVar);
    }

    private static String zza(String str, String str2) {
        throw new SecurityException("This implementation should not be used.");
    }

    /* JADX WARN: Type inference failed for: r0v189, types: [long] */
    public final byte[] zza(zzan zzanVar, String str) {
        zzkn zzknVar;
        char c;
        zzaj zzajVar;
        zzd();
        this.zzx.zzae();
        Preconditions.checkNotNull(zzanVar);
        Preconditions.checkNotEmpty(str);
        if (!zzt().zze(str, zzap.zzbe)) {
            zzr().zzw().zza("Generating ScionPayload disabled. packageName", str);
            return new byte[0];
        } else if (!"_iap".equals(zzanVar.zza) && !"_iapx".equals(zzanVar.zza)) {
            zzr().zzw().zza("Generating a payload for this event is not available. package_name, event_name", str, zzanVar.zza);
            return null;
        } else {
            zzbr.zzf.zza zzb = zzbr.zzf.zzb();
            zzi().zzf();
            try {
                zzg zzb2 = zzi().zzb(str);
                if (zzb2 == null) {
                    zzr().zzw().zza("Log and bundle not available. package_name", str);
                    zzi().zzh();
                    return new byte[0];
                } else if (!zzb2.zzr()) {
                    zzr().zzw().zza("Log and bundle disabled. package_name", str);
                    zzi().zzh();
                    return new byte[0];
                } else {
                    zzbr.zzg.zza zza = zzbr.zzg.zzbf().zza(1).zza(AbstractC1468a.ANDROID_CLIENT_TYPE);
                    if (!TextUtils.isEmpty(zzb2.zzc())) {
                        zza.zzf(zzb2.zzc());
                    }
                    if (!TextUtils.isEmpty(zzb2.zzn())) {
                        zza.zze(zzb2.zzn());
                    }
                    if (!TextUtils.isEmpty(zzb2.zzl())) {
                        zza.zzg(zzb2.zzl());
                    }
                    if (zzb2.zzm() != -2147483648L) {
                        zza.zzh((int) zzb2.zzm());
                    }
                    zza.zzf(zzb2.zzo()).zzk(zzb2.zzq());
                    if (!zzle.zzb() || !zzt().zze(zzb2.zzc(), zzap.zzcc)) {
                        if (!TextUtils.isEmpty(zzb2.zze())) {
                            zza.zzk(zzb2.zze());
                        } else if (!TextUtils.isEmpty(zzb2.zzf())) {
                            zza.zzo(zzb2.zzf());
                        }
                    } else if (!TextUtils.isEmpty(zzb2.zze())) {
                        zza.zzk(zzb2.zze());
                    } else if (!TextUtils.isEmpty(zzb2.zzg())) {
                        zza.zzp(zzb2.zzg());
                    } else if (!TextUtils.isEmpty(zzb2.zzf())) {
                        zza.zzo(zzb2.zzf());
                    }
                    zza.zzh(zzb2.zzp());
                    if (this.zzx.zzab() && zzt().zza(zzap.zza) && zzt().zzd(zza.zzj())) {
                        zza.zzj();
                        if (!TextUtils.isEmpty(null)) {
                            zza.zzn(null);
                        }
                    }
                    Pair<String, Boolean> zza2 = zzs().zza(zzb2.zzc());
                    if (zzb2.zzaf() && zza2 != null && !TextUtils.isEmpty((CharSequence) zza2.first)) {
                        try {
                            zza.zzh(zza((String) zza2.first, Long.toString(zzanVar.zzd)));
                            if (zza2.second != null) {
                                zza.zza(((Boolean) zza2.second).booleanValue());
                            }
                        } catch (SecurityException e) {
                            zzr().zzw().zza("Resettable device id encryption failed", e.getMessage());
                            zzi().zzh();
                            return new byte[0];
                        }
                    }
                    zzl().zzaa();
                    zzbr.zzg.zza zzc = zza.zzc(Build.MODEL);
                    zzl().zzaa();
                    zzc.zzb(Build.VERSION.RELEASE).zzf((int) zzl().zzf()).zzd(zzl().zzg());
                    try {
                        zza.zzi(zza(zzb2.zzd(), Long.toString(zzanVar.zzd)));
                        if (!TextUtils.isEmpty(zzb2.zzi())) {
                            zza.zzl(zzb2.zzi());
                        }
                        String zzc2 = zzb2.zzc();
                        List<zzkn> zza3 = zzi().zza(zzc2);
                        Iterator<zzkn> it = zza3.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                zzknVar = null;
                                break;
                            }
                            zzknVar = it.next();
                            if ("_lte".equals(zzknVar.zzc)) {
                                break;
                            }
                        }
                        if (zzknVar == null || zzknVar.zze == null) {
                            zzkn zzknVar2 = new zzkn(zzc2, "auto", "_lte", zzm().currentTimeMillis(), 0L);
                            zza3.add(zzknVar2);
                            zzi().zza(zzknVar2);
                        }
                        if (zzt().zze(zzc2, zzap.zzba)) {
                            zzki zzg = zzg();
                            zzg.zzr().zzx().zza("Checking account type status for ad personalization signals");
                            if (zzg.zzl().zzj()) {
                                String zzc3 = zzb2.zzc();
                                if (zzb2.zzaf() && zzg.zzj().zze(zzc3)) {
                                    zzg.zzr().zzw().zza("Turning off ad personalization due to account type");
                                    Iterator<zzkn> it2 = zza3.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            break;
                                        } else if ("_npa".equals(it2.next().zzc)) {
                                            it2.remove();
                                            break;
                                        }
                                    }
                                    zza3.add(new zzkn(zzc3, "auto", "_npa", zzg.zzm().currentTimeMillis(), 1L));
                                }
                            }
                        }
                        zzbr.zzk[] zzkVarArr = new zzbr.zzk[zza3.size()];
                        for (int i = 0; i < zza3.size(); i++) {
                            zzbr.zzk.zza zza4 = zzbr.zzk.zzj().zza(zza3.get(i).zzc).zza(zza3.get(i).zzd);
                            zzg().zza(zza4, zza3.get(i).zze);
                            zzkVarArr[i] = (zzbr.zzk) ((zzfd) zza4.zzu());
                        }
                        zza.zzb(Arrays.asList(zzkVarArr));
                        Bundle zzb3 = zzanVar.zzb.zzb();
                        zzb3.putLong("_c", 1L);
                        zzr().zzw().zza("Marking in-app purchase as real-time");
                        zzb3.putLong("_r", 1L);
                        zzb3.putString("_o", zzanVar.zzc);
                        if (zzp().zzf(zza.zzj())) {
                            zzp().zza(zzb3, "_dbg", (Object) 1L);
                            zzp().zza(zzb3, "_r", (Object) 1L);
                        }
                        zzaj zza5 = zzi().zza(str, zzanVar.zza);
                        if (zza5 == null) {
                            zzajVar = new zzaj(str, zzanVar.zza, 0L, 0L, zzanVar.zzd, 0L, null, null, null, null);
                            c = 0;
                        } else {
                            c = zza5.zzf;
                            zzajVar = zza5.zza(zzanVar.zzd);
                        }
                        zzi().zza(zzajVar);
                        zzak zzakVar = new zzak(this.zzx, zzanVar.zzc, str, zzanVar.zza, zzanVar.zzd, c, zzb3);
                        zzbr.zzc.zza zzb4 = zzbr.zzc.zzj().zza(zzakVar.zzc).zza(zzakVar.zzb).zzb(zzakVar.zzd);
                        Iterator<String> it3 = zzakVar.zze.iterator();
                        while (it3.hasNext()) {
                            String next = it3.next();
                            zzbr.zze.zza zza6 = zzbr.zze.zzh().zza(next);
                            zzg().zza(zza6, zzakVar.zze.zza(next));
                            zzb4.zza(zza6);
                        }
                        zza.zza(zzb4).zza(zzbr.zzh.zza().zza(zzbr.zzd.zza().zza(zzajVar.zzc).zza(zzanVar.zza)));
                        zza.zzc(mo3772e_().zza(zzb2.zzc(), Collections.emptyList(), zza.zzd(), Long.valueOf(zzb4.zzf())));
                        if (zzb4.zze()) {
                            zza.zzb(zzb4.zzf()).zzc(zzb4.zzf());
                        }
                        long zzk = zzb2.zzk();
                        int i2 = (zzk > 0L ? 1 : (zzk == 0L ? 0 : -1));
                        if (i2 != 0) {
                            zza.zze(zzk);
                        }
                        long zzj = zzb2.zzj();
                        if (zzj != 0) {
                            zza.zzd(zzj);
                        } else if (i2 != 0) {
                            zza.zzd(zzk);
                        }
                        zzb2.zzv();
                        zza.zzg((int) zzb2.zzs()).zzg(zzt().zze()).zza(zzm().currentTimeMillis()).zzb(Boolean.TRUE.booleanValue());
                        zzb.zza(zza);
                        zzb2.zza(zza.zzf());
                        zzb2.zzb(zza.zzg());
                        zzi().zza(zzb2);
                        zzi().m3775b_();
                        zzi().zzh();
                        try {
                            return zzg().zzc(((zzbr.zzf) ((zzfd) zzb.zzu())).zzbi());
                        } catch (IOException e2) {
                            zzr().zzf().zza("Data loss. Failed to bundle and serialize. appId", zzew.zza(str), e2);
                            return null;
                        }
                    } catch (SecurityException e3) {
                        zzr().zzw().zza("app instance id encryption failed", e3.getMessage());
                        zzi().zzh();
                        return new byte[0];
                    }
                }
            } catch (Throwable th) {
                zzi().zzh();
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkb
    protected final boolean zze() {
        return false;
    }
}
