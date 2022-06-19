package com.google.android.gms.internal.clearcut;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.clearcut.zzgw;
import com.google.android.gms.phenotype.Phenotype;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzp.class */
public final class zzp implements ClearcutLogger.zza {
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final zzao zzaq = new zzao(Phenotype.getContentProviderUri("com.google.android.gms.clearcut.public")).zzc("gms:playlog:service:samplingrules_").zzd("LogSamplingRules__");
    private static final zzao zzar = new zzao(Phenotype.getContentProviderUri("com.google.android.gms.clearcut.public")).zzc("gms:playlog:service:sampling_").zzd("LogSampling__");
    private static final ConcurrentHashMap<String, zzae<zzgw.zza>> zzas = new ConcurrentHashMap<>();
    private static final HashMap<String, zzae<String>> zzat = new HashMap<>();
    private static Boolean zzau = null;
    private static Long zzav = null;
    private static final zzae<Boolean> zzaw = zzaq.zzc("enable_log_sampling_rules", false);
    private final Context zzh;

    public zzp(Context context) {
        this.zzh = context;
        Context context2 = this.zzh;
        if (context2 != null) {
            zzae.maybeInit(context2);
        }
    }

    private static long zza(String str, long j) {
        if (str == null || str.isEmpty()) {
            return zzk.zza(ByteBuffer.allocate(8).putLong(j).array());
        }
        byte[] bytes = str.getBytes(UTF_8);
        ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
        allocate.put(bytes);
        allocate.putLong(j);
        return zzk.zza(allocate.array());
    }

    private static zzgw.zza.zzb zza(String str) {
        String str2;
        int i;
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(44);
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
            i = indexOf + 1;
        } else {
            str2 = "";
            i = 0;
        }
        int indexOf2 = str.indexOf(47, i);
        if (indexOf2 <= 0) {
            String valueOf = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf.length() != 0 ? "Failed to parse the rule: ".concat(valueOf) : new String("Failed to parse the rule: "));
            return null;
        }
        try {
            long parseLong = Long.parseLong(str.substring(i, indexOf2));
            long parseLong2 = Long.parseLong(str.substring(indexOf2 + 1));
            if (parseLong >= 0 && parseLong2 >= 0) {
                return zzgw.zza.zzb.zzfz().zzn(str2).zzr(parseLong).zzs(parseLong2).zzbh();
            }
            StringBuilder sb = new StringBuilder(72);
            sb.append("negative values not supported: ");
            sb.append(parseLong);
            sb.append("/");
            sb.append(parseLong2);
            Log.e("LogSamplerImpl", sb.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf2.length() != 0 ? "parseLong() failed while parsing: ".concat(valueOf2) : new String("parseLong() failed while parsing: "), e);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    private static boolean zzb(long j, long j2, long j3) {
        if (j2 < 0 || j3 <= 0) {
            return true;
        }
        return ((j > 0L ? 1 : (j == 0L ? 0 : -1)) >= 0 ? j % j3 : (((Long.MAX_VALUE % j3) + 1) + ((j & Long.MAX_VALUE) % j3)) % j3) < j2;
    }

    private static boolean zzc(Context context) {
        if (zzau == null) {
            zzau = Boolean.valueOf(Wrappers.packageManager(context).checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return zzau.booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    private static long zzd(Context context) {
        if (zzav == null) {
            ?? r6 = false;
            if (context == null) {
                return 0L;
            }
            if (zzc(context)) {
                r6 = zzy.getLong(context.getContentResolver(), "android_id", 0L);
            }
            zzav = Long.valueOf(r6 == true ? 1L : 0L);
        }
        return zzav.longValue();
    }

    @Override // com.google.android.gms.clearcut.ClearcutLogger.zza
    public final boolean zza(zze zzeVar) {
        List<zzgw.zza.zzb> list;
        String str = zzeVar.zzag.zzj;
        int i = zzeVar.zzag.zzk;
        int i2 = zzeVar.zzaa != null ? zzeVar.zzaa.zzbji : 0;
        if (!zzaw.get().booleanValue()) {
            String valueOf = (str == null || str.isEmpty()) ? i >= 0 ? String.valueOf(i) : null : str;
            if (valueOf == null) {
                return true;
            }
            Context context = this.zzh;
            String str2 = null;
            if (context != null) {
                if (!zzc(context)) {
                    str2 = null;
                } else {
                    zzae<String> zzaeVar = zzat.get(valueOf);
                    zzae<String> zzaeVar2 = zzaeVar;
                    if (zzaeVar == null) {
                        zzaeVar2 = zzar.zza(valueOf, null);
                        zzat.put(valueOf, zzaeVar2);
                    }
                    str2 = zzaeVar2.get();
                }
            }
            zzgw.zza.zzb zza = zza(str2);
            if (zza == null) {
                return true;
            }
            return zzb(zza(zza.zzfw(), zzd(this.zzh)), zza.zzfx(), zza.zzfy());
        }
        if (str == null || str.isEmpty()) {
            str = i >= 0 ? String.valueOf(i) : null;
        }
        if (str == null) {
            return true;
        }
        if (this.zzh == null) {
            list = Collections.emptyList();
        } else {
            zzae<zzgw.zza> zzaeVar3 = zzas.get(str);
            zzae<zzgw.zza> zzaeVar4 = zzaeVar3;
            if (zzaeVar3 == null) {
                zzaeVar4 = zzaq.zza(str, zzgw.zza.zzft(), zzq.zzax);
                zzae<zzgw.zza> putIfAbsent = zzas.putIfAbsent(str, zzaeVar4);
                if (putIfAbsent != null) {
                    zzaeVar4 = putIfAbsent;
                }
            }
            list = zzaeVar4.get().zzfs();
        }
        for (zzgw.zza.zzb zzbVar : list) {
            if (!zzbVar.zzfv() || zzbVar.getEventCode() == 0 || zzbVar.getEventCode() == i2) {
                if (!zzb(zza(zzbVar.zzfw(), zzd(this.zzh)), zzbVar.zzfx(), zzbVar.zzfy())) {
                    return false;
                }
            }
        }
        return true;
    }
}
