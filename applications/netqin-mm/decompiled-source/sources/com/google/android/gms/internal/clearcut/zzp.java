package com.google.android.gms.internal.clearcut;

import android.content.Context;
import android.util.Log;
import com.android.volley.Request;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.clearcut.zzgw;
import com.google.android.gms.phenotype.Phenotype;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p170b.p224d.p252g.p255c.C4393o3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzp.class */
public final class zzp implements ClearcutLogger.zza {

    /* renamed from: b */
    public static final Charset f29323b = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: c */
    public static final zzao f29324c = new zzao(Phenotype.m8661a("com.google.android.gms.clearcut.public")).m10844a("gms:playlog:service:samplingrules_").m10839b("LogSamplingRules__");

    /* renamed from: d */
    public static final zzao f29325d = new zzao(Phenotype.m8661a("com.google.android.gms.clearcut.public")).m10844a("gms:playlog:service:sampling_").m10839b("LogSampling__");

    /* renamed from: e */
    public static final ConcurrentHashMap<String, zzae<zzgw.zza>> f29326e = new ConcurrentHashMap<>();

    /* renamed from: f */
    public static final HashMap<String, zzae<String>> f29327f = new HashMap<>();
    @VisibleForTesting

    /* renamed from: g */
    public static Boolean f29328g = null;
    @VisibleForTesting

    /* renamed from: h */
    public static Long f29329h = null;
    @VisibleForTesting

    /* renamed from: i */
    public static final zzae<Boolean> f29330i = f29324c.m10841a("enable_log_sampling_rules", false);

    /* renamed from: a */
    public final Context f29331a;

    public zzp(Context context) {
        this.f29331a = context;
        if (context != null) {
            zzae.m10862a(context);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static long m10537a(String str, long j) {
        if (str == null || str.isEmpty()) {
            return zzk.m10556a(ByteBuffer.allocate(8).putLong(j).array());
        }
        byte[] bytes = str.getBytes(f29323b);
        ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
        allocate.put(bytes);
        allocate.putLong(j);
        return zzk.m10556a(allocate.array());
    }

    @VisibleForTesting
    /* renamed from: a */
    public static zzgw.zza.zzb m10538a(String str) {
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
            String valueOf = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf.length() != 0 ? "Failed to parse the rule: ".concat(valueOf) : new String("Failed to parse the rule: "));
            return null;
        }
        try {
            long parseLong = Long.parseLong(str.substring(i, indexOf2));
            long parseLong2 = Long.parseLong(str.substring(indexOf2 + 1));
            if (parseLong < 0 || parseLong2 < 0) {
                StringBuilder sb = new StringBuilder(72);
                sb.append("negative values not supported: ");
                sb.append(parseLong);
                sb.append("/");
                sb.append(parseLong2);
                Log.e("LogSamplerImpl", sb.toString());
                return null;
            }
            zzgw.zza.zzb.C10513zza o = zzgw.zza.zzb.m10571o();
            o.m10568a(str2);
            o.m10569a(parseLong);
            o.m10567b(parseLong2);
            return o.m10708m();
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf2.length() != 0 ? "parseLong() failed while parsing: ".concat(valueOf2) : new String("parseLong() failed while parsing: "), e);
            return null;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static boolean m10541a(long j, long j2, long j3) {
        if (j2 < 0 || j3 <= 0) {
            return true;
        }
        return ((j > 0L ? 1 : (j == 0L ? 0 : -1)) >= 0 ? j % j3 : (((Long.MAX_VALUE % j3) + 1) + ((j & Long.MAX_VALUE) % j3)) % j3) < j2;
    }

    /* renamed from: a */
    public static boolean m10540a(Context context) {
        if (f29328g == null) {
            f29328g = Boolean.valueOf(Wrappers.m17026b(context).m17033a("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return f29328g.booleanValue();
    }

    @VisibleForTesting
    /* renamed from: b */
    public static long m10536b(Context context) {
        if (f29329h == null) {
            long j = 0;
            if (context == null) {
                return 0L;
            }
            if (m10540a(context)) {
                j = zzy.m10531a(context.getContentResolver(), "android_id", 0L);
            }
            f29329h = Long.valueOf(j);
        }
        return f29329h.longValue();
    }

    @Override // com.google.android.gms.clearcut.ClearcutLogger.zza
    /* renamed from: a */
    public final boolean mo10539a(zze zzeVar) {
        List<zzgw.zza.zzb> list;
        zzr zzrVar = zzeVar.f22993a;
        String str = zzrVar.f29338g;
        int i = zzrVar.f29334c;
        zzha zzhaVar = zzeVar.f23001i;
        int i2 = zzhaVar != null ? zzhaVar.f29303f : 0;
        if (!f29330i.m10863a().booleanValue()) {
            String valueOf = (str == null || str.isEmpty()) ? i >= 0 ? String.valueOf(i) : null : str;
            if (valueOf == null) {
                return true;
            }
            Context context = this.f29331a;
            String str2 = null;
            if (context != null) {
                if (!m10540a(context)) {
                    str2 = null;
                } else {
                    zzae<String> zzaeVar = f29327f.get(valueOf);
                    zzae<String> zzaeVar2 = zzaeVar;
                    if (zzaeVar == null) {
                        zzaeVar2 = f29325d.m10842a(valueOf, (String) null);
                        f29327f.put(valueOf, zzaeVar2);
                    }
                    str2 = zzaeVar2.m10863a();
                }
            }
            zzgw.zza.zzb a = m10538a(str2);
            if (a != null) {
                return m10541a(m10537a(a.m10574l(), m10536b(this.f29331a)), a.m10573m(), a.m10572n());
            }
            return true;
        }
        String valueOf2 = (str == null || str.isEmpty()) ? i >= 0 ? String.valueOf(i) : null : str;
        if (valueOf2 == null) {
            return true;
        }
        if (this.f29331a == null) {
            list = Collections.emptyList();
        } else {
            zzae<zzgw.zza> zzaeVar3 = f29326e.get(valueOf2);
            zzae<zzgw.zza> zzaeVar4 = zzaeVar3;
            if (zzaeVar3 == null) {
                zzaeVar4 = f29324c.m10843a(valueOf2, zzgw.zza.m10584k(), C4393o3.f16607a);
                zzae<zzgw.zza> putIfAbsent = f29326e.putIfAbsent(valueOf2, zzaeVar4);
                if (putIfAbsent != null) {
                    zzaeVar4 = putIfAbsent;
                }
            }
            list = zzaeVar4.m10863a().m10585j();
        }
        for (zzgw.zza.zzb zzbVar : list) {
            if (!zzbVar.m10575k() || zzbVar.m10576j() == 0 || zzbVar.m10576j() == i2) {
                if (!m10541a(m10537a(zzbVar.m10574l(), m10536b(this.f29331a)), zzbVar.m10573m(), zzbVar.m10572n())) {
                    return false;
                }
            }
        }
        return true;
    }
}
