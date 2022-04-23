package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzbv;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzhl;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzij;
import com.google.android.gms.internal.measurement.zzji;
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
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkr.class */
public final class zzkr extends AbstractC4750l7 {
    public zzkr(zzkl zzklVar) {
        super(zzklVar);
    }

    /* renamed from: a */
    public static int m8768a(zzcd.zzg.zza zzaVar, String str) {
        if (zzaVar == null) {
            return -1;
        }
        for (int i = 0; i < zzaVar.m9956r(); i++) {
            if (str.equals(zzaVar.m9988d(i).m9884q())) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static zzcd.zze m8771a(zzcd.zzc zzcVar, String str) {
        for (zzcd.zze zzeVar : zzcVar.zza()) {
            if (zzeVar.m10216p().equals(str)) {
                return zzeVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static <Builder extends zzji> Builder m8766a(Builder builder, byte[] bArr) throws zzij {
        zzhl b = zzhl.m9674b();
        return b != null ? (Builder) builder.mo9620a(bArr, b) : (Builder) builder.mo9618b(bArr);
    }

    /* renamed from: a */
    public static String m8753a(boolean z, boolean z2, boolean z3) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.Long> m8756a(java.util.BitSet r6) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkr.m8756a(java.util.BitSet):java.util.List");
    }

    /* renamed from: a */
    public static List<zzcd.zze> m8750a(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                zzcd.zze.zza F = zzcd.zze.m10234F();
                for (String str : bundle.keySet()) {
                    zzcd.zze.zza F2 = zzcd.zze.m10234F();
                    F2.mo9794a(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        F2.m10204a(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        F2.m10201b((String) obj);
                    } else if (obj instanceof Double) {
                        F2.m10205a(((Double) obj).doubleValue());
                    }
                    F.m10203a(F2);
                }
                if (F.m10198q() > 0) {
                    arrayList.add((zzcd.zze) ((zzhy) F.mo9619b()));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m8772a(zzcd.zzc.zza zzaVar, String str, Object obj) {
        List<zzcd.zze> zza = zzaVar.zza();
        int i = 0;
        while (true) {
            if (i >= zza.size()) {
                i = -1;
                break;
            } else if (str.equals(zza.get(i).m10216p())) {
                break;
            } else {
                i++;
            }
        }
        zzcd.zze.zza F = zzcd.zze.m10234F();
        F.mo9794a(str);
        if (obj instanceof Long) {
            F.m10204a(((Long) obj).longValue());
        } else if (obj instanceof String) {
            F.m10201b((String) obj);
        } else if (obj instanceof Double) {
            F.m10205a(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            F.m10202a(m8750a((Bundle[]) obj));
        }
        if (i >= 0) {
            zzaVar.m10253a(i, F);
        } else {
            zzaVar.m10250a(F);
        }
    }

    /* renamed from: a */
    public static void m8762a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    /* renamed from: a */
    public static void m8760a(StringBuilder sb, int i, String str, zzbv.zzd zzdVar) {
        if (zzdVar != null) {
            m8762a(sb, i);
            sb.append(str);
            sb.append(" {\n");
            if (zzdVar.zza()) {
                m8758a(sb, i, "comparison_type", zzdVar.m10376p().name());
            }
            if (zzdVar.m10375q()) {
                m8758a(sb, i, "match_as_float", Boolean.valueOf(zzdVar.m10374r()));
            }
            if (zzdVar.m10373s()) {
                m8758a(sb, i, "comparison_value", zzdVar.m10372t());
            }
            if (zzdVar.m10371u()) {
                m8758a(sb, i, "min_comparison_value", zzdVar.m10370v());
            }
            if (zzdVar.m10369w()) {
                m8758a(sb, i, "max_comparison_value", zzdVar.m10368x());
            }
            m8762a(sb, i);
            sb.append("}\n");
        }
    }

    /* renamed from: a */
    public static void m8759a(StringBuilder sb, int i, String str, zzcd.zzi zziVar, String str2) {
        if (zziVar != null) {
            m8762a(sb, 3);
            sb.append(str);
            sb.append(" {\n");
            if (zziVar.m9928r() != 0) {
                m8762a(sb, 4);
                sb.append("results: ");
                int i2 = 0;
                for (Long l : zziVar.m9929q()) {
                    if (i2 != 0) {
                        sb.append(", ");
                    }
                    sb.append(l);
                    i2++;
                }
                sb.append('\n');
            }
            if (zziVar.m9930p() != 0) {
                m8762a(sb, 4);
                sb.append("status: ");
                int i3 = 0;
                for (Long l2 : zziVar.zza()) {
                    if (i3 != 0) {
                        sb.append(", ");
                    }
                    sb.append(l2);
                    i3++;
                }
                sb.append('\n');
            }
            if (zziVar.m9926t() != 0) {
                m8762a(sb, 4);
                sb.append("dynamic_filter_timestamps: {");
                int i4 = 0;
                for (zzcd.zzb zzbVar : zziVar.m9927s()) {
                    if (i4 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzbVar.zza() ? Integer.valueOf(zzbVar.m10289p()) : null);
                    sb.append(":");
                    sb.append(zzbVar.m10288q() ? Long.valueOf(zzbVar.m10287r()) : null);
                    i4++;
                }
                sb.append("}\n");
            }
            if (zziVar.m9924v() != 0) {
                m8762a(sb, 4);
                sb.append("sequence_filter_timestamps: {");
                int i5 = 0;
                for (zzcd.zzj zzjVar : zziVar.m9925u()) {
                    if (i5 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzjVar.zza() ? Integer.valueOf(zzjVar.m9907p()) : null);
                    sb.append(": [");
                    int i6 = 0;
                    for (Long l3 : zzjVar.m9906q()) {
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
            m8762a(sb, 3);
            sb.append("}\n");
        }
    }

    /* renamed from: a */
    public static void m8758a(StringBuilder sb, int i, String str, Object obj) {
        if (obj != null) {
            m8762a(sb, i + 1);
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append('\n');
        }
    }

    /* renamed from: a */
    public static boolean m8764a(zzaq zzaqVar, zzn zznVar) {
        Preconditions.m17288a(zzaqVar);
        Preconditions.m17288a(zznVar);
        return !TextUtils.isEmpty(zznVar.f30155b) || !TextUtils.isEmpty(zznVar.f30171r);
    }

    /* renamed from: a */
    public static boolean m8763a(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* renamed from: a */
    public static boolean m8755a(List<Long> list, int i) {
        return i < (list.size() << 6) && ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
    }

    /* renamed from: b */
    public static Object m8749b(zzcd.zzc zzcVar, String str) {
        zzcd.zze a = m8771a(zzcVar, str);
        if (a == null) {
            return null;
        }
        if (a.m10215q()) {
            return a.m10214r();
        }
        if (a.m10213s()) {
            return Long.valueOf(a.m10212t());
        }
        if (a.m10209w()) {
            return Double.valueOf(a.m10208x());
        }
        if (a.m10206z() <= 0) {
            return null;
        }
        List<zzcd.zze> y = a.m10207y();
        ArrayList arrayList = new ArrayList();
        for (zzcd.zze zzeVar : y) {
            if (zzeVar != null) {
                Bundle bundle = new Bundle();
                for (zzcd.zze zzeVar2 : zzeVar.m10207y()) {
                    if (zzeVar2.m10215q()) {
                        bundle.putString(zzeVar2.m10216p(), zzeVar2.m10214r());
                    } else if (zzeVar2.m10213s()) {
                        bundle.putLong(zzeVar2.m10216p(), zzeVar2.m10212t());
                    } else if (zzeVar2.m10209w()) {
                        bundle.putDouble(zzeVar2.m10216p(), zzeVar2.m10208x());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    /* renamed from: a */
    public final long m8752a(byte[] bArr) {
        Preconditions.m17288a(bArr);
        m24899f().mo9085c();
        MessageDigest u = zzkv.m8671u();
        if (u != null) {
            return zzkv.m8697a(u.digest(bArr));
        }
        mo8789p().m9152q().m9143a("Failed to get MD5");
        return 0L;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final <T extends Parcelable> T m8751a(byte[] bArr, Parcelable.Creator<T> creator) {
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
                mo8789p().m9152q().m9143a("Failed to load parcelable from buffer");
                obtain.recycle();
                return null;
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public final zzcd.zzc m8765a(zzan zzanVar) {
        zzcd.zzc.zza z = zzcd.zzc.m10255z();
        z.m10246b(zzanVar.f29809e);
        Iterator<String> it = zzanVar.f29810f.iterator();
        while (it.hasNext()) {
            String next = it.next();
            zzcd.zze.zza F = zzcd.zze.m10234F();
            F.mo9794a(next);
            m8770a(F, zzanVar.f29810f.m9293a(next));
            z.m10250a(F);
        }
        return (zzcd.zzc) ((zzhy) z.mo9619b());
    }

    /* renamed from: a */
    public final String m8774a(zzbv.zzb zzbVar) {
        if (zzbVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zzbVar.zza()) {
            m8758a(sb, 0, "filter_id", Integer.valueOf(zzbVar.m10401p()));
        }
        m8758a(sb, 0, "event_name", m24900e().m9171a(zzbVar.m10400q()));
        String a = m8753a(zzbVar.m10395v(), zzbVar.m10394w(), zzbVar.m10392y());
        if (!a.isEmpty()) {
            m8758a(sb, 0, "filter_type", a);
        }
        if (zzbVar.m10397t()) {
            m8760a(sb, 1, "event_count_filter", zzbVar.m10396u());
        }
        if (zzbVar.m10398s() > 0) {
            sb.append("  filters {\n");
            for (zzbv.zzc zzcVar : zzbVar.m10399r()) {
                m8761a(sb, 2, zzcVar);
            }
        }
        m8762a(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* renamed from: a */
    public final String m8773a(zzbv.zze zzeVar) {
        if (zzeVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (zzeVar.zza()) {
            m8758a(sb, 0, "filter_id", Integer.valueOf(zzeVar.m10363p()));
        }
        m8758a(sb, 0, "property_name", m24900e().m9167c(zzeVar.m10362q()));
        String a = m8753a(zzeVar.m10360s(), zzeVar.m10359t(), zzeVar.m10357v());
        if (!a.isEmpty()) {
            m8758a(sb, 0, "filter_type", a);
        }
        m8761a(sb, 1, zzeVar.m10361r());
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: a */
    public final String m8769a(zzcd.zzf zzfVar) {
        if (zzfVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (zzcd.zzg zzgVar : zzfVar.zza()) {
            if (zzgVar != null) {
                m8762a(sb, 1);
                sb.append("bundle {\n");
                if (zzgVar.zza()) {
                    m8758a(sb, 1, "protocol_version", Integer.valueOf(zzgVar.m10167P()));
                }
                m8758a(sb, 1, "platform", zzgVar.m10020x0());
                if (zzgVar.m10180E0()) {
                    m8758a(sb, 1, "gmp_version", Long.valueOf(zzgVar.m10041p()));
                }
                if (zzgVar.m10037q()) {
                    m8758a(sb, 1, "uploading_gmp_version", Long.valueOf(zzgVar.m10033r()));
                }
                if (zzgVar.m10164S()) {
                    m8758a(sb, 1, "dynamite_version", Long.valueOf(zzgVar.m10163T()));
                }
                if (zzgVar.m10173J()) {
                    m8758a(sb, 1, "config_version", Long.valueOf(zzgVar.m10172K()));
                }
                m8758a(sb, 1, "gmp_app_id", zzgVar.m10187B());
                m8758a(sb, 1, "admob_app_id", zzgVar.m10165R());
                m8758a(sb, 1, "app_id", zzgVar.m10098f());
                m8758a(sb, 1, "app_version", zzgVar.m10137b());
                if (zzgVar.m10177G()) {
                    m8758a(sb, 1, "app_version_major", Integer.valueOf(zzgVar.m10175H()));
                }
                m8758a(sb, 1, "firebase_instance_id", zzgVar.m10179F());
                if (zzgVar.m10023w()) {
                    m8758a(sb, 1, "dev_cert_hash", Long.valueOf(zzgVar.m10021x()));
                }
                m8758a(sb, 1, "app_store", zzgVar.m10182D0());
                if (zzgVar.m10045n0()) {
                    m8758a(sb, 1, "upload_timestamp_millis", Long.valueOf(zzgVar.m10042o0()));
                }
                if (zzgVar.m10038p0()) {
                    m8758a(sb, 1, "start_timestamp_millis", Long.valueOf(zzgVar.m10034q0()));
                }
                if (zzgVar.m10032r0()) {
                    m8758a(sb, 1, "end_timestamp_millis", Long.valueOf(zzgVar.m10030s0()));
                }
                if (zzgVar.m10028t0()) {
                    m8758a(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzgVar.m10026u0()));
                }
                if (zzgVar.m10024v0()) {
                    m8758a(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzgVar.m10022w0()));
                }
                m8758a(sb, 1, "app_instance_id", zzgVar.m10025v());
                m8758a(sb, 1, "resettable_device_id", zzgVar.m10031s());
                m8758a(sb, 1, "device_id", zzgVar.m10174I());
                m8758a(sb, 1, "ds_id", zzgVar.m10169N());
                if (zzgVar.m10029t()) {
                    m8758a(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzgVar.m10027u()));
                }
                m8758a(sb, 1, "os_version", zzgVar.m10018y0());
                m8758a(sb, 1, "device_model", zzgVar.m10016z0());
                m8758a(sb, 1, "user_default_language", zzgVar.m10188A0());
                if (zzgVar.m10186B0()) {
                    m8758a(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzgVar.m10184C0()));
                }
                if (zzgVar.m10019y()) {
                    m8758a(sb, 1, "bundle_sequential_index", Integer.valueOf(zzgVar.m10017z()));
                }
                if (zzgVar.m10185C()) {
                    m8758a(sb, 1, "service_upload", Boolean.valueOf(zzgVar.m10183D()));
                }
                m8758a(sb, 1, "health_monitor", zzgVar.m10189A());
                if (!m24897h().m9354a(zzas.f29906y0) && zzgVar.m10171L() && zzgVar.m10170M() != 0) {
                    m8758a(sb, 1, "android_id", Long.valueOf(zzgVar.m10170M()));
                }
                if (zzgVar.m10168O()) {
                    m8758a(sb, 1, "retry_counter", Integer.valueOf(zzgVar.m10166Q()));
                }
                if (zzgVar.m10161V()) {
                    m8758a(sb, 1, "consent_signals", zzgVar.m10160W());
                }
                List<zzcd.zzk> l0 = zzgVar.m10051l0();
                if (l0 != null) {
                    for (zzcd.zzk zzkVar : l0) {
                        if (zzkVar != null) {
                            m8762a(sb, 2);
                            sb.append("user_property {\n");
                            Double d = null;
                            m8758a(sb, 2, "set_timestamp_millis", zzkVar.zza() ? Long.valueOf(zzkVar.m9885p()) : null);
                            m8758a(sb, 2, "name", m24900e().m9167c(zzkVar.m9884q()));
                            m8758a(sb, 2, "string_value", zzkVar.m9882s());
                            m8758a(sb, 2, "int_value", zzkVar.m9881t() ? Long.valueOf(zzkVar.m9880u()) : null);
                            if (zzkVar.m9879v()) {
                                d = Double.valueOf(zzkVar.m9878w());
                            }
                            m8758a(sb, 2, "double_value", d);
                            m8762a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzcd.zza> E = zzgVar.m10181E();
                String f = zzgVar.m10098f();
                if (E != null) {
                    for (zzcd.zza zzaVar : E) {
                        if (zzaVar != null) {
                            m8762a(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzaVar.zza()) {
                                m8758a(sb, 2, "audience_id", Integer.valueOf(zzaVar.m10305p()));
                            }
                            if (zzaVar.m10301t()) {
                                m8758a(sb, 2, "new_audience", Boolean.valueOf(zzaVar.m10300u()));
                            }
                            m8759a(sb, 2, "current_data", zzaVar.m10304q(), f);
                            if (zzaVar.m10303r()) {
                                m8759a(sb, 2, "previous_data", zzaVar.m10302s(), f);
                            }
                            m8762a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzcd.zzc> b0 = zzgVar.m10125b0();
                if (b0 != null) {
                    for (zzcd.zzc zzcVar : b0) {
                        if (zzcVar != null) {
                            m8762a(sb, 2);
                            sb.append("event {\n");
                            m8758a(sb, 2, "name", m24900e().m9171a(zzcVar.m10264q()));
                            if (zzcVar.m10263r()) {
                                m8758a(sb, 2, "timestamp_millis", Long.valueOf(zzcVar.m10262s()));
                            }
                            if (zzcVar.m10261t()) {
                                m8758a(sb, 2, "previous_timestamp_millis", Long.valueOf(zzcVar.m10260u()));
                            }
                            if (zzcVar.m10259v()) {
                                m8758a(sb, 2, "count", Integer.valueOf(zzcVar.m10258w()));
                            }
                            if (zzcVar.m10265p() != 0) {
                                m8757a(sb, 2, zzcVar.zza());
                            }
                            m8762a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                m8762a(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: a */
    public final List<Long> m8754a(List<Long> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                mo8789p().m9149t().m9142a("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    mo8789p().m9149t().m9141a("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
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

    /* renamed from: a */
    public final void m8770a(zzcd.zze.zza zzaVar, Object obj) {
        Preconditions.m17288a(obj);
        zzaVar.zza();
        zzaVar.m10200o();
        zzaVar.m10199p();
        zzaVar.m10197r();
        if (obj instanceof String) {
            zzaVar.m10201b((String) obj);
        } else if (obj instanceof Long) {
            zzaVar.m10204a(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.m10205a(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            zzaVar.m10202a(m8750a((Bundle[]) obj));
        } else {
            mo8789p().m9152q().m9142a("Ignoring invalid (type) event param value", obj);
        }
    }

    /* renamed from: a */
    public final void m8767a(zzcd.zzk.zza zzaVar, Object obj) {
        Preconditions.m17288a(obj);
        zzaVar.zza();
        zzaVar.m9870o();
        zzaVar.m9869p();
        if (obj instanceof String) {
            zzaVar.m9871b((String) obj);
        } else if (obj instanceof Long) {
            zzaVar.m9872b(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.m9874a(((Double) obj).doubleValue());
        } else {
            mo8789p().m9152q().m9142a("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* renamed from: a */
    public final void m8761a(StringBuilder sb, int i, zzbv.zzc zzcVar) {
        if (zzcVar != null) {
            m8762a(sb, i);
            sb.append("filter {\n");
            if (zzcVar.m10382s()) {
                m8758a(sb, i, "complement", Boolean.valueOf(zzcVar.m10381t()));
            }
            if (zzcVar.m10380u()) {
                m8758a(sb, i, "param_name", m24900e().m9168b(zzcVar.m10379v()));
            }
            if (zzcVar.zza()) {
                int i2 = i + 1;
                zzbv.zzf p = zzcVar.m10385p();
                if (p != null) {
                    m8762a(sb, i2);
                    sb.append("string_filter");
                    sb.append(" {\n");
                    if (p.zza()) {
                        m8758a(sb, i2, "match_type", p.m10354p().name());
                    }
                    if (p.m10353q()) {
                        m8758a(sb, i2, "expression", p.m10352r());
                    }
                    if (p.m10351s()) {
                        m8758a(sb, i2, "case_sensitive", Boolean.valueOf(p.m10350t()));
                    }
                    if (p.m10348v() > 0) {
                        m8762a(sb, i2 + 1);
                        sb.append("expression_list {\n");
                        for (String str : p.m10349u()) {
                            m8762a(sb, i2 + 2);
                            sb.append(str);
                            sb.append("\n");
                        }
                        sb.append("}\n");
                    }
                    m8762a(sb, i2);
                    sb.append("}\n");
                }
            }
            if (zzcVar.m10384q()) {
                m8760a(sb, i + 1, "number_filter", zzcVar.m10383r());
            }
            m8762a(sb, i);
            sb.append("}\n");
        }
    }

    /* renamed from: a */
    public final void m8757a(StringBuilder sb, int i, List<zzcd.zze> list) {
        if (list != null) {
            int i2 = i + 1;
            for (zzcd.zze zzeVar : list) {
                if (zzeVar != null) {
                    m8762a(sb, i2);
                    sb.append("param {\n");
                    Double d = null;
                    m8758a(sb, i2, "name", zzeVar.zza() ? m24900e().m9168b(zzeVar.m10216p()) : null);
                    m8758a(sb, i2, "string_value", zzeVar.m10215q() ? zzeVar.m10214r() : null);
                    m8758a(sb, i2, "int_value", zzeVar.m10213s() ? Long.valueOf(zzeVar.m10212t()) : null);
                    if (zzeVar.m10209w()) {
                        d = Double.valueOf(zzeVar.m10208x());
                    }
                    m8758a(sb, i2, "double_value", d);
                    if (zzeVar.m10206z() > 0) {
                        m8757a(sb, i2, zzeVar.m10207y());
                    }
                    m8762a(sb, i2);
                    sb.append("}\n");
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m8775a(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(mo8779z().mo17091b() - j) > j2;
    }

    /* renamed from: b */
    public final byte[] m8748b(byte[] bArr) throws IOException {
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
            mo8789p().m9152q().m9142a("Failed to ungzip content", e);
            throw e;
        }
    }

    /* renamed from: c */
    public final byte[] m8747c(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            mo8789p().m9152q().m9142a("Failed to gzip content", e);
            throw e;
        }
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7
    /* renamed from: q */
    public final boolean mo8746q() {
        return false;
    }

    /* renamed from: r */
    public final List<Integer> m8745r() {
        Map<String, String> a = zzas.m9250a(this.f17274b.mo8846B());
        if (a == null || a.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int intValue = zzas.f29846P.m9196a(null).intValue();
        for (Map.Entry<String, String> entry : a.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int parseInt = Integer.parseInt(entry.getValue());
                    if (parseInt != 0) {
                        arrayList.add(Integer.valueOf(parseInt));
                        if (arrayList.size() >= intValue) {
                            mo8789p().m9149t().m9142a("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e) {
                    mo8789p().m9149t().m9142a("Experiment ID NumberFormatException", e);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }
}
