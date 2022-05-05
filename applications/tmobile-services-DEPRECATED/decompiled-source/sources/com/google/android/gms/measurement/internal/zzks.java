package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzbv;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzhm;
import com.google.android.gms.internal.measurement.zzhz;
import com.google.android.gms.internal.measurement.zzih;
import com.google.android.gms.internal.measurement.zzjk;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzks.class */
public final class zzks extends zzkj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzks(zzki zzkiVar) {
        super(zzkiVar);
    }

    /* renamed from: C */
    private static String m11032C(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.Long> m11031D(java.util.BitSet r6) {
        /*
            r0 = r6
            int r0 = r0.length()
            r1 = 63
            int r0 = r0 + r1
            r1 = 64
            int r0 = r0 / r1
            r7 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0016:
            r0 = r9
            r1 = r7
            if (r0 >= r1) goto L_0x006a
            r0 = 0
            r10 = r0
            r0 = 0
            r12 = r0
        L_0x0021:
            r0 = r12
            r1 = 64
            if (r0 >= r1) goto L_0x005a
            r0 = r9
            r1 = 6
            int r0 = r0 << r1
            r1 = r12
            int r0 = r0 + r1
            r13 = r0
            r0 = r13
            r1 = r6
            int r1 = r1.length()
            if (r0 >= r1) goto L_0x005a
            r0 = r10
            r14 = r0
            r0 = r6
            r1 = r13
            boolean r0 = r0.get(r1)
            if (r0 == 0) goto L_0x0050
            r0 = r10
            r1 = 1
            r2 = r12
            long r1 = r1 << r2
            long r0 = r0 | r1
            r14 = r0
        L_0x0050:
            int r12 = r12 + 1
            r0 = r14
            r10 = r0
            goto L_0x0021
        L_0x005a:
            r0 = r8
            r1 = r10
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            boolean r0 = r0.add(r1)
            int r9 = r9 + 1
            goto L_0x0016
        L_0x006a:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzks.m11031D(java.util.BitSet):java.util.List");
    }

    /* renamed from: F */
    private static List<zzcd.zze> m11029F(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                zzcd.zze.zza e0 = zzcd.zze.m13161e0();
                for (String str : bundle.keySet()) {
                    zzcd.zze.zza e02 = zzcd.zze.m13161e0();
                    e02.m13152D(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        e02.m13144z(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        e02.m13150F((String) obj);
                    } else if (obj instanceof Double) {
                        e02.m13145y(((Double) obj).doubleValue());
                    }
                    e0.m13154A(e02);
                }
                if (e0.m13148H() > 0) {
                    arrayList.add((zzcd.zze) ((zzhz) e0.mo12321k()));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public static void m11028G(zzcd.zzc.zza zzaVar, String str, Object obj) {
        List<zzcd.zze> G = zzaVar.m13201G();
        int i = 0;
        while (true) {
            if (i >= G.size()) {
                i = -1;
                break;
            } else if (str.equals(G.get(i).m13178N())) {
                break;
            } else {
                i++;
            }
        }
        zzcd.zze.zza e0 = zzcd.zze.m13161e0();
        e0.m13152D(str);
        if (obj instanceof Long) {
            e0.m13144z(((Long) obj).longValue());
        } else if (obj instanceof String) {
            e0.m13150F((String) obj);
        } else if (obj instanceof Double) {
            e0.m13145y(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            e0.m13153C(m11029F((Bundle[]) obj));
        }
        if (i >= 0) {
            zzaVar.m13193x(i, e0);
        } else {
            zzaVar.m13206A(e0);
        }
    }

    /* renamed from: J */
    private static void m11025J(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    /* renamed from: K */
    private final void m11024K(StringBuilder sb, int i, zzbv.zzc zzcVar) {
        if (zzcVar != null) {
            m11025J(sb, i);
            sb.append("filter {\n");
            if (zzcVar.m13348H()) {
                m11021N(sb, i, "complement", Boolean.valueOf(zzcVar.m13347J()));
            }
            if (zzcVar.m13346K()) {
                m11021N(sb, i, "param_name", m11314i().m11566x(zzcVar.m13345L()));
            }
            if (zzcVar.m13352D()) {
                int i2 = i + 1;
                zzbv.zzf E = zzcVar.m13351E();
                if (E != null) {
                    m11025J(sb, i2);
                    sb.append("string_filter");
                    sb.append(" {\n");
                    if (E.m13316A()) {
                        m11021N(sb, i2, "match_type", E.m13315C().name());
                    }
                    if (E.m13314D()) {
                        m11021N(sb, i2, "expression", E.m13313E());
                    }
                    if (E.m13312F()) {
                        m11021N(sb, i2, "case_sensitive", Boolean.valueOf(E.m13311G()));
                    }
                    if (E.m13309J() > 0) {
                        m11025J(sb, i2 + 1);
                        sb.append("expression_list {\n");
                        for (String str : E.m13310H()) {
                            m11025J(sb, i2 + 2);
                            sb.append(str);
                            sb.append("\n");
                        }
                        sb.append("}\n");
                    }
                    m11025J(sb, i2);
                    sb.append("}\n");
                }
            }
            if (zzcVar.m13350F()) {
                m11023L(sb, i + 1, "number_filter", zzcVar.m13349G());
            }
            m11025J(sb, i);
            sb.append("}\n");
        }
    }

    /* renamed from: L */
    private static void m11023L(StringBuilder sb, int i, String str, zzbv.zzd zzdVar) {
        if (zzdVar != null) {
            m11025J(sb, i);
            sb.append(str);
            sb.append(" {\n");
            if (zzdVar.m13341A()) {
                m11021N(sb, i, "comparison_type", zzdVar.m13340C().name());
            }
            if (zzdVar.m13339D()) {
                m11021N(sb, i, "match_as_float", Boolean.valueOf(zzdVar.m13338E()));
            }
            if (zzdVar.m13337F()) {
                m11021N(sb, i, "comparison_value", zzdVar.m13336G());
            }
            if (zzdVar.m13335H()) {
                m11021N(sb, i, "min_comparison_value", zzdVar.m13334J());
            }
            if (zzdVar.m13333K()) {
                m11021N(sb, i, "max_comparison_value", zzdVar.m13332L());
            }
            m11025J(sb, i);
            sb.append("}\n");
        }
    }

    /* renamed from: M */
    private static void m11022M(StringBuilder sb, int i, String str, zzcd.zzi zziVar, String str2) {
        if (zziVar != null) {
            m11025J(sb, 3);
            sb.append(str);
            sb.append(" {\n");
            if (zziVar.m12877R() != 0) {
                m11025J(sb, 4);
                sb.append("results: ");
                int i2 = 0;
                for (Long l : zziVar.m12880O()) {
                    if (i2 != 0) {
                        sb.append(", ");
                    }
                    sb.append(l);
                    i2++;
                }
                sb.append('\n');
            }
            if (zziVar.m12886H() != 0) {
                m11025J(sb, 4);
                sb.append("status: ");
                int i3 = 0;
                for (Long l2 : zziVar.m12891C()) {
                    if (i3 != 0) {
                        sb.append(", ");
                    }
                    sb.append(l2);
                    i3++;
                }
                sb.append('\n');
            }
            if (zziVar.m12871X() != 0) {
                m11025J(sb, 4);
                sb.append("dynamic_filter_timestamps: {");
                int i4 = 0;
                for (zzcd.zzb zzbVar : zziVar.m12873V()) {
                    if (i4 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzbVar.m13243F() ? Integer.valueOf(zzbVar.m13242G()) : null);
                    sb.append(":");
                    sb.append(zzbVar.m13241H() ? Long.valueOf(zzbVar.m13240J()) : null);
                    i4++;
                }
                sb.append("}\n");
            }
            if (zziVar.m12869Z() != 0) {
                m11025J(sb, 4);
                sb.append("sequence_filter_timestamps: {");
                int i5 = 0;
                for (zzcd.zzj zzjVar : zziVar.m12870Y()) {
                    if (i5 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzjVar.m12849F() ? Integer.valueOf(zzjVar.m12848G()) : null);
                    sb.append(": [");
                    int i6 = 0;
                    for (Long l3 : zzjVar.m12846J()) {
                        long longValue = l3.longValue();
                        if (i6 != 0) {
                            sb.append(", ");
                        }
                        sb.append(longValue);
                        i6++;
                    }
                    sb.append("]");
                    i5++;
                }
                sb.append("}\n");
            }
            m11025J(sb, 3);
            sb.append("}\n");
        }
    }

    /* renamed from: N */
    private static void m11021N(StringBuilder sb, int i, String str, Object obj) {
        if (obj != null) {
            m11025J(sb, i + 1);
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append('\n');
        }
    }

    /* renamed from: O */
    private final void m11020O(StringBuilder sb, int i, List<zzcd.zze> list) {
        if (list != null) {
            int i2 = i + 1;
            for (zzcd.zze zzeVar : list) {
                if (zzeVar != null) {
                    m11025J(sb, i2);
                    sb.append("param {\n");
                    Double d = null;
                    m11021N(sb, i2, "name", zzeVar.m13179M() ? m11314i().m11566x(zzeVar.m13178N()) : null);
                    m11021N(sb, i2, "string_value", zzeVar.m13173S() ? zzeVar.m13172T() : null);
                    m11021N(sb, i2, "int_value", zzeVar.m13169W() ? Long.valueOf(zzeVar.m13168X()) : null);
                    if (zzeVar.m13165a0()) {
                        d = Double.valueOf(zzeVar.m13164b0());
                    }
                    m11021N(sb, i2, "double_value", d);
                    if (zzeVar.m13162d0() > 0) {
                        m11020O(sb, i2, zzeVar.m13163c0());
                    }
                    m11025J(sb, i2);
                    sb.append("}\n");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: Q */
    public static boolean m11018Q(zzar zzarVar, zzn zznVar) {
        Preconditions.m14523k(zzarVar);
        Preconditions.m14523k(zznVar);
        return !TextUtils.isEmpty(zznVar.f9726g) || !TextUtils.isEmpty(zznVar.f9742w);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: R */
    public static boolean m11017R(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S */
    public static boolean m11016S(List<Long> list, int i) {
        return i < (list.size() << 6) && ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: T */
    public static Object m11015T(zzcd.zzc zzcVar, String str) {
        zzcd.zze x = m11007x(zzcVar, str);
        if (x == null) {
            return null;
        }
        if (x.m13173S()) {
            return x.m13172T();
        }
        if (x.m13169W()) {
            return Long.valueOf(x.m13168X());
        }
        if (x.m13165a0()) {
            return Double.valueOf(x.m13164b0());
        }
        if (x.m13162d0() <= 0) {
            return null;
        }
        List<zzcd.zze> c0 = x.m13163c0();
        ArrayList arrayList = new ArrayList();
        for (zzcd.zze zzeVar : c0) {
            if (zzeVar != null) {
                Bundle bundle = new Bundle();
                for (zzcd.zze zzeVar2 : zzeVar.m13163c0()) {
                    if (zzeVar2.m13173S()) {
                        bundle.putString(zzeVar2.m13178N(), zzeVar2.m13172T());
                    } else if (zzeVar2.m13169W()) {
                        bundle.putLong(zzeVar2.m13178N(), zzeVar2.m13168X());
                    } else if (zzeVar2.m13165a0()) {
                        bundle.putDouble(zzeVar2.m13178N(), zzeVar2.m13164b0());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static int m11011t(zzcd.zzg.zza zzaVar, String str) {
        if (zzaVar == null) {
            return -1;
        }
        for (int i = 0; i < zzaVar.m12919b0(); i++) {
            if (str.equals(zzaVar.m12921Z(i).m12826Q())) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public static zzcd.zze m11007x(zzcd.zzc zzcVar, String str) {
        for (zzcd.zze zzeVar : zzcVar.m13234C()) {
            if (zzeVar.m13178N().equals(str)) {
                return zzeVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public static <Builder extends zzjk> Builder m11006y(Builder builder, byte[] bArr) throws zzih {
        zzhm c = zzhm.m12473c();
        return c != null ? (Builder) builder.mo12322j0(bArr, c) : (Builder) builder.mo12324I(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public final String m11034A(zzbv.zze zzeVar) {
        if (zzeVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (zzeVar.m13327D()) {
            m11021N(sb, 0, "filter_id", Integer.valueOf(zzeVar.m13326E()));
        }
        m11021N(sb, 0, "property_name", m11314i().m11565y(zzeVar.m13325F()));
        String C = m11032C(zzeVar.m13323H(), zzeVar.m13322J(), zzeVar.m13320L());
        if (!C.isEmpty()) {
            m11021N(sb, 0, "filter_type", C);
        }
        m11024K(sb, 1, zzeVar.m13324G());
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public final String m11033B(zzcd.zzf zzfVar) {
        if (zzfVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (zzcd.zzg zzgVar : zzfVar.m13142C()) {
            if (zzgVar != null) {
                m11025J(sb, 1);
                sb.append("bundle {\n");
                if (zzgVar.m13049W()) {
                    m11021N(sb, 1, "protocol_version", Integer.valueOf(zzgVar.m12969x0()));
                }
                m11021N(sb, 1, "platform", zzgVar.m13094K2());
                if (zzgVar.m13050V2()) {
                    m11021N(sb, 1, "gmp_version", Long.valueOf(zzgVar.m13135A()));
                }
                if (zzgVar.m13046X()) {
                    m11021N(sb, 1, "uploading_gmp_version", Long.valueOf(zzgVar.m13043Y()));
                }
                if (zzgVar.m13100J0()) {
                    m11021N(sb, 1, "dynamite_version", Long.valueOf(zzgVar.m13096K0()));
                }
                if (zzgVar.m12987r0()) {
                    m11021N(sb, 1, "config_version", Long.valueOf(zzgVar.m12984s0()));
                }
                m11021N(sb, 1, "gmp_app_id", zzgVar.m13013i0());
                m11021N(sb, 1, "admob_app_id", zzgVar.m13104I0());
                m11021N(sb, 1, "app_id", zzgVar.m13058T2());
                m11021N(sb, 1, "app_version", zzgVar.m13054U2());
                if (zzgVar.m12996o0()) {
                    m11021N(sb, 1, "app_version_major", Integer.valueOf(zzgVar.m12993p0()));
                }
                m11021N(sb, 1, "firebase_instance_id", zzgVar.m12999n0());
                if (zzgVar.m13028d0()) {
                    m11021N(sb, 1, "dev_cert_hash", Long.valueOf(zzgVar.m13025e0()));
                }
                m11021N(sb, 1, "app_store", zzgVar.m13062S2());
                if (zzgVar.m13063S1()) {
                    m11021N(sb, 1, "upload_timestamp_millis", Long.valueOf(zzgVar.m13059T1()));
                }
                if (zzgVar.m13017g2()) {
                    m11021N(sb, 1, "start_timestamp_millis", Long.valueOf(zzgVar.m13014h2()));
                }
                if (zzgVar.m12982s2()) {
                    m11021N(sb, 1, "end_timestamp_millis", Long.valueOf(zzgVar.m12979t2()));
                }
                if (zzgVar.m13132A2()) {
                    m11021N(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzgVar.m13129B2()));
                }
                if (zzgVar.m13109G2()) {
                    m11021N(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzgVar.m13105H2()));
                }
                m11021N(sb, 1, "app_instance_id", zzgVar.m13031c0());
                m11021N(sb, 1, "resettable_device_id", zzgVar.m13040Z());
                m11021N(sb, 1, "device_id", zzgVar.m12990q0());
                m11021N(sb, 1, "ds_id", zzgVar.m12975v0());
                if (zzgVar.m13037a0()) {
                    m11021N(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzgVar.m13034b0()));
                }
                m11021N(sb, 1, "os_version", zzgVar.m13082N2());
                m11021N(sb, 1, "device_model", zzgVar.m13078O2());
                m11021N(sb, 1, "user_default_language", zzgVar.m13074P2());
                if (zzgVar.m13070Q2()) {
                    m11021N(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzgVar.m13066R2()));
                }
                if (zzgVar.m13022f0()) {
                    m11021N(sb, 1, "bundle_sequential_index", Integer.valueOf(zzgVar.m13019g0()));
                }
                if (zzgVar.m13008k0()) {
                    m11021N(sb, 1, "service_upload", Boolean.valueOf(zzgVar.m13005l0()));
                }
                m11021N(sb, 1, "health_monitor", zzgVar.m13016h0());
                if (!m11311l().m10880r(zzat.f8977y0) && zzgVar.m12981t0() && zzgVar.m12978u0() != 0) {
                    m11021N(sb, 1, "android_id", Long.valueOf(zzgVar.m12978u0()));
                }
                if (zzgVar.m12972w0()) {
                    m11021N(sb, 1, "retry_counter", Integer.valueOf(zzgVar.m13107H0()));
                }
                if (zzgVar.m13088M0()) {
                    m11021N(sb, 1, "consent_signals", zzgVar.m13084N0());
                }
                List<zzcd.zzk> v1 = zzgVar.m12974v1();
                if (v1 != null) {
                    for (zzcd.zzk zzkVar : v1) {
                        if (zzkVar != null) {
                            m11025J(sb, 2);
                            sb.append("user_property {\n");
                            Double d = null;
                            m11021N(sb, 2, "set_timestamp_millis", zzkVar.m12833J() ? Long.valueOf(zzkVar.m12832K()) : null);
                            m11021N(sb, 2, "name", m11314i().m11565y(zzkVar.m12826Q()));
                            m11021N(sb, 2, "string_value", zzkVar.m12823T());
                            m11021N(sb, 2, "int_value", zzkVar.m12822U() ? Long.valueOf(zzkVar.m12821V()) : null);
                            if (zzkVar.m12820W()) {
                                d = Double.valueOf(zzkVar.m12819X());
                            }
                            m11021N(sb, 2, "double_value", d);
                            m11025J(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzcd.zza> m0 = zzgVar.m13002m0();
                String T2 = zzgVar.m13058T2();
                if (m0 != null) {
                    for (zzcd.zza zzaVar : m0) {
                        if (zzaVar != null) {
                            m11025J(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzaVar.m13262H()) {
                                m11021N(sb, 2, "audience_id", Integer.valueOf(zzaVar.m13261J()));
                            }
                            if (zzaVar.m13255P()) {
                                m11021N(sb, 2, "new_audience", Boolean.valueOf(zzaVar.m13254Q()));
                            }
                            m11022M(sb, 2, "current_data", zzaVar.m13258M(), T2);
                            if (zzaVar.m13257N()) {
                                m11022M(sb, 2, "previous_data", zzaVar.m13256O(), T2);
                            }
                            m11025J(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzcd.zzc> W0 = zzgVar.m13048W0();
                if (W0 != null) {
                    for (zzcd.zzc zzcVar : W0) {
                        if (zzcVar != null) {
                            m11025J(sb, 2);
                            sb.append("event {\n");
                            m11021N(sb, 2, "name", m11314i().m11569u(zzcVar.m13217U()));
                            if (zzcVar.m13216V()) {
                                m11021N(sb, 2, "timestamp_millis", Long.valueOf(zzcVar.m13215W()));
                            }
                            if (zzcVar.m13214X()) {
                                m11021N(sb, 2, "previous_timestamp_millis", Long.valueOf(zzcVar.m13213Y()));
                            }
                            if (zzcVar.m13212Z()) {
                                m11021N(sb, 2, "count", Integer.valueOf(zzcVar.m13211a0()));
                            }
                            if (zzcVar.m13221Q() != 0) {
                                m11020O(sb, 2, zzcVar.m13234C());
                            }
                            m11025J(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                m11025J(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public final List<Long> m11030E(List<Long> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                mo11081c().m11557G().m11539b("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    mo11081c().m11557G().m11538c("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & ((1 << (num.intValue() % 64)) ^ (-1))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (size2 >= 0 && ((Long) arrayList.get(size2)).longValue() == 0) {
            size2--;
            size = size2;
        }
        return arrayList.subList(0, size);
    }

    /* renamed from: H */
    final void m11027H(zzcd.zze.zza zzaVar, Object obj) {
        Preconditions.m14523k(obj);
        zzaVar.m13146x();
        zzaVar.m13151E();
        zzaVar.m13149G();
        zzaVar.m13147J();
        if (obj instanceof String) {
            zzaVar.m13150F((String) obj);
        } else if (obj instanceof Long) {
            zzaVar.m13144z(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.m13145y(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            zzaVar.m13153C(m11029F((Bundle[]) obj));
        } else {
            mo11081c().m11560D().m11539b("Ignoring invalid (type) event param value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public final void m11026I(zzcd.zzk.zza zzaVar, Object obj) {
        Preconditions.m14523k(obj);
        zzaVar.m12808x();
        zzaVar.m12812C();
        zzaVar.m12809F();
        if (obj instanceof String) {
            zzaVar.m12810E((String) obj);
        } else if (obj instanceof Long) {
            zzaVar.m12811D(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.m12807y(((Double) obj).doubleValue());
        } else {
            mo11081c().m11560D().m11539b("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: P */
    public final boolean m11019P(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(mo11085a().mo14335a() - j) > j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: U */
    public final byte[] m11014U(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            mo11081c().m11560D().m11539b("Failed to ungzip content", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V */
    public final byte[] m11013V(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            mo11081c().m11560D().m11539b("Failed to gzip content", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: W */
    public final List<Integer> m11012W() {
        Map<String, String> c = zzat.m11650c(this.f9652b.mo11075f());
        if (c == null || c.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int intValue = zzat.f8917P.m11594a(null).intValue();
        for (Map.Entry<String, String> entry : c.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int parseInt = Integer.parseInt(entry.getValue());
                    if (parseInt != 0) {
                        arrayList.add(Integer.valueOf(parseInt));
                        if (arrayList.size() >= intValue) {
                            mo11081c().m11557G().m11539b("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e) {
                    mo11081c().m11557G().m11539b("Experiment ID NumberFormatException", e);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzkj
    /* renamed from: s */
    protected final boolean mo10928s() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: u */
    public final long m11010u(byte[] bArr) {
        Preconditions.m14523k(bArr);
        m11313j().mo11316e();
        MessageDigest H0 = zzkw.m10988H0();
        if (H0 != null) {
            return zzkw.m10933y(H0.digest(bArr));
        }
        mo11081c().m11560D().m11540a("Failed to get MD5");
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    /* renamed from: v */
    public final <T extends Parcelable> T m11009v(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            try {
                obtain.unmarshall(bArr, 0, bArr.length);
                obtain.setDataPosition(0);
                T createFromParcel = creator.createFromParcel(obtain);
                obtain.recycle();
                return createFromParcel;
            } catch (SafeParcelReader.ParseException e) {
                mo11081c().m11560D().m11540a("Failed to load parcelable from buffer");
                obtain.recycle();
                return null;
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public final zzcd.zzc m11008w(zzak zzakVar) {
        zzcd.zzc.zza b0 = zzcd.zzc.m13210b0();
        b0.m13198K(zzakVar.f8860e);
        Iterator<String> it = zzakVar.f8861f.iterator();
        while (it.hasNext()) {
            String next = it.next();
            zzcd.zze.zza e0 = zzcd.zze.m13161e0();
            e0.m13152D(next);
            m11027H(e0, zzakVar.f8861f.m11702W(next));
            b0.m13206A(e0);
        }
        return (zzcd.zzc) ((zzhz) b0.mo12321k());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public final String m11005z(zzbv.zzb zzbVar) {
        if (zzbVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zzbVar.m13372G()) {
            m11021N(sb, 0, "filter_id", Integer.valueOf(zzbVar.m13371H()));
        }
        m11021N(sb, 0, "event_name", m11314i().m11569u(zzbVar.m13370J()));
        String C = m11032C(zzbVar.m13365O(), zzbVar.m13364P(), zzbVar.m13362R());
        if (!C.isEmpty()) {
            m11021N(sb, 0, "filter_type", C);
        }
        if (zzbVar.m13367M()) {
            m11023L(sb, 1, "event_count_filter", zzbVar.m13366N());
        }
        if (zzbVar.m13368L() > 0) {
            sb.append("  filters {\n");
            for (zzbv.zzc zzcVar : zzbVar.m13369K()) {
                m11024K(sb, 2, zzcVar);
            }
        }
        m11025J(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }
}
