package com.google.android.gms.internal.clearcut;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.clearcut.zzgw;
import com.google.android.gms.phenotype.Phenotype;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzp.class */
public final class zzp implements ClearcutLogger.zza {
    private static final zzao zzaq;
    @VisibleForTesting
    private static final zzae<Boolean> zzaw;
    private final Context zzh;
    private static final Charset UTF_8 = Charset.forName(StringConstant.UTF8);
    private static final zzao zzar = new zzao(Phenotype.m38551a("com.google.android.gms.clearcut.public")).zzc("gms:playlog:service:sampling_").zzd("LogSampling__");
    private static final ConcurrentHashMap<String, zzae<zzgw.zza>> zzas = new ConcurrentHashMap<>();
    private static final HashMap<String, zzae<String>> zzat = new HashMap<>();
    @VisibleForTesting
    private static Boolean zzau = null;
    @VisibleForTesting
    private static Long zzav = null;

    static {
        zzao zzd = new zzao(Phenotype.m38551a("com.google.android.gms.clearcut.public")).zzc("gms:playlog:service:samplingrules_").zzd("LogSamplingRules__");
        zzaq = zzd;
        zzaw = zzd.zzc("enable_log_sampling_rules", false);
    }

    public zzp(Context context) {
        this.zzh = context;
        if (context != null) {
            zzae.maybeInit(context);
        }
    }

    @VisibleForTesting
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

    @VisibleForTesting
    private static zzgw.zza.zzb zza(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(44);
        int i = 0;
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
            i = indexOf + 1;
        } else {
            str2 = "";
        }
        int indexOf2 = str.indexOf(47, i);
        if (indexOf2 <= 0) {
            if (str.length() != 0) {
                "Failed to parse the rule: ".concat(str);
                return null;
            }
            new String("Failed to parse the rule: ");
            return null;
        }
        try {
            long parseLong = Long.parseLong(str.substring(i, indexOf2));
            long parseLong2 = Long.parseLong(str.substring(indexOf2 + 1));
            if (parseLong >= 0 && parseLong2 >= 0) {
                return zzgw.zza.zzb.zzfz().zzn(str2).zzr(parseLong).zzs(parseLong2).zzbh();
            }
            return null;
        } catch (NumberFormatException e) {
            if (str.length() != 0) {
                "parseLong() failed while parsing: ".concat(str);
                return null;
            }
            new String("parseLong() failed while parsing: ");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    @VisibleForTesting
    private static boolean zzb(long j, long j2, long j3) {
        if (j2 < 0 || j3 <= 0) {
            return true;
        }
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        ?? r7 = j;
        if (i < 0) {
            r7 = ((j & RecyclerView.FOREVER_NS) % j3) + (RecyclerView.FOREVER_NS % j3) + 1;
        }
        return r7 % j3 < j2;
    }

    private static boolean zzc(Context context) {
        if (zzau == null) {
            zzau = Boolean.valueOf(Wrappers.m38764a(context).f6151a.checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return zzau.booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    @VisibleForTesting
    private static long zzd(Context context) {
        if (zzav == null) {
            ?? r6 = false;
            if (context == null) {
                return 0L;
            }
            if (zzc(context)) {
                r6 = zzy.getLong(context.getContentResolver(), AnalyticsConstants.ANDROID_ID, 0L);
            }
            zzav = Long.valueOf(r6 == true ? 1L : 0L);
        }
        return zzav.longValue();
    }

    @Override // com.google.android.gms.clearcut.ClearcutLogger.zza
    public final boolean zza(zze zzeVar) {
        List<zzgw.zza.zzb> list;
        zzr zzrVar = zzeVar.f5604a;
        String str = zzrVar.zzj;
        int i = zzrVar.zzk;
        zzha zzhaVar = zzeVar.f5612i;
        int i2 = zzhaVar != null ? zzhaVar.zzbji : 0;
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
                    HashMap<String, zzae<String>> hashMap = zzat;
                    zzae<String> zzaeVar = hashMap.get(valueOf);
                    zzae<String> zzaeVar2 = zzaeVar;
                    if (zzaeVar == null) {
                        zzaeVar2 = zzar.zza(valueOf, null);
                        hashMap.put(valueOf, zzaeVar2);
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
            ConcurrentHashMap<String, zzae<zzgw.zza>> concurrentHashMap = zzas;
            zzae<zzgw.zza> zzaeVar3 = concurrentHashMap.get(str);
            zzae<zzgw.zza> zzaeVar4 = zzaeVar3;
            if (zzaeVar3 == null) {
                zzaeVar4 = zzaq.zza(str, zzgw.zza.zzft(), zzq.zzax);
                zzae<zzgw.zza> putIfAbsent = concurrentHashMap.putIfAbsent(str, zzaeVar4);
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
