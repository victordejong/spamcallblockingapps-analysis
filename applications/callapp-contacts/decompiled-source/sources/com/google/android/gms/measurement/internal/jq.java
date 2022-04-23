package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.ap;
import com.google.android.gms.internal.measurement.ar;
import com.google.android.gms.internal.measurement.ax;
import com.google.android.gms.internal.measurement.az;
import com.google.android.gms.internal.measurement.be;
import com.google.android.gms.internal.measurement.br;
import com.google.android.gms.internal.measurement.bu;
import com.google.android.gms.internal.measurement.bv;
import com.google.android.gms.internal.measurement.bw;
import com.google.android.gms.internal.measurement.bz;
import com.google.android.gms.internal.measurement.ca;
import com.google.android.gms.internal.measurement.cc;
import com.google.android.gms.internal.measurement.cd;
import com.google.android.gms.internal.measurement.ce;
import com.google.android.gms.internal.measurement.cl;
import com.google.android.gms.internal.measurement.cn;
import com.google.android.gms.internal.measurement.co;
import com.google.android.gms.internal.measurement.cp;
import com.google.android.gms.internal.measurement.fy;
import com.google.android.gms.internal.measurement.gs;
import com.google.android.gms.internal.measurement.hn;
import com.google.android.gms.internal.measurement.zzib;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.network.ImpressionData;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jq.class */
public final class jq extends je {
    /* JADX INFO: Access modifiers changed from: package-private */
    public jq(jo joVar) {
        super(joVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(cd cdVar, String str) {
        for (int i = 0; i < cdVar.f(); i++) {
            if (str.equals(cdVar.c(i).zzf)) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final ca a(bw bwVar, String str) {
        for (ca caVar : bwVar.zze) {
            if (caVar.zze.equals(str)) {
                return caVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <Builder extends hn> Builder a(Builder builder, byte[] bArr) throws zzib {
        fy b2 = fy.b();
        return b2 != null ? (Builder) builder.a(bArr, b2) : (Builder) builder.a(bArr);
    }

    private static final String a(boolean z, boolean z2, boolean z3) {
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.Long> a(java.util.BitSet r6) {
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
            if (r0 >= r1) goto L_0x006d
            r0 = 0
            r10 = r0
            r0 = 0
            r12 = r0
        L_0x0021:
            r0 = r12
            r1 = 64
            if (r0 >= r1) goto L_0x005d
            r0 = r9
            r1 = 64
            int r0 = r0 * r1
            r1 = r12
            int r0 = r0 + r1
            r13 = r0
            r0 = r13
            r1 = r6
            int r1 = r1.length()
            if (r0 < r1) goto L_0x003d
            goto L_0x005d
        L_0x003d:
            r0 = r10
            r14 = r0
            r0 = r6
            r1 = r13
            boolean r0 = r0.get(r1)
            if (r0 == 0) goto L_0x0053
            r0 = r10
            r1 = 1
            r2 = r12
            long r1 = r1 << r2
            long r0 = r0 | r1
            r14 = r0
        L_0x0053:
            int r12 = r12 + 1
            r0 = r14
            r10 = r0
            goto L_0x0021
        L_0x005d:
            r0 = r8
            r1 = r10
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            boolean r0 = r0.add(r1)
            int r9 = r9 + 1
            goto L_0x0016
        L_0x006d:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.jq.a(java.util.BitSet):java.util.List");
    }

    private static List<ca> a(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                bz e = ca.e();
                for (String str : bundle.keySet()) {
                    bz e2 = ca.e();
                    e2.a(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        e2.a(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        e2.b((String) obj);
                    } else if (obj instanceof Double) {
                        e2.a(((Double) obj).doubleValue());
                    }
                    e.a(e2);
                }
                if (e.d() > 0) {
                    arrayList.add(e.A());
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void a(bv bvVar, String str, Object obj) {
        List<ca> a2 = bvVar.a();
        int i = 0;
        while (true) {
            if (i >= a2.size()) {
                i = -1;
                break;
            } else if (str.equals(a2.get(i).zze)) {
                break;
            } else {
                i++;
            }
        }
        bz e = ca.e();
        e.a(str);
        if (obj instanceof Long) {
            e.a(((Long) obj).longValue());
        } else if (obj instanceof String) {
            e.b((String) obj);
        } else if (obj instanceof Double) {
            e.a(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            e.a(a((Bundle[]) obj));
        }
        if (i >= 0) {
            bvVar.a(i, e);
        } else {
            bvVar.a(e);
        }
    }

    private static final void a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private final void a(StringBuilder sb, int i, ar arVar) {
        if (arVar != null) {
            a(sb, i);
            sb.append("filter {\n");
            if (arVar.e()) {
                a(sb, i, "complement", Boolean.valueOf(arVar.zzg));
            }
            boolean z = false;
            if ((arVar.zza & 8) != 0) {
                a(sb, i, "param_name", this.t.h().b(arVar.zzh));
            }
            if (arVar.a()) {
                int i2 = i + 1;
                be b2 = arVar.b();
                if (b2 != null) {
                    a(sb, i2);
                    sb.append("string_filter {\n");
                    if (b2.a()) {
                        a(sb, i2, "match_type", b2.b().name());
                    }
                    if (b2.c()) {
                        a(sb, i2, "expression", b2.zzf);
                    }
                    if ((b2.zza & 4) != 0) {
                        z = true;
                    }
                    if (z) {
                        a(sb, i2, "case_sensitive", Boolean.valueOf(b2.zzg));
                    }
                    if (b2.d() > 0) {
                        a(sb, i2 + 1);
                        sb.append("expression_list {\n");
                        for (String str : b2.zzh) {
                            a(sb, i2 + 2);
                            sb.append(str);
                            sb.append(StringUtils.LF);
                        }
                        sb.append("}\n");
                    }
                    a(sb, i2);
                    sb.append("}\n");
                }
            }
            if (arVar.c()) {
                a(sb, i + 1, "number_filter", arVar.d());
            }
            a(sb, i);
            sb.append("}\n");
        }
    }

    private static final void a(StringBuilder sb, int i, String str, ax axVar) {
        if (axVar != null) {
            a(sb, i);
            sb.append(str);
            sb.append(" {\n");
            if (axVar.a()) {
                a(sb, i, "comparison_type", axVar.b().name());
            }
            if (axVar.c()) {
                a(sb, i, "match_as_float", Boolean.valueOf(axVar.zzf));
            }
            if (axVar.d()) {
                a(sb, i, "comparison_value", axVar.zzg);
            }
            if (axVar.e()) {
                a(sb, i, "min_comparison_value", axVar.zzh);
            }
            if (axVar.f()) {
                a(sb, i, "max_comparison_value", axVar.zzi);
            }
            a(sb, i);
            sb.append("}\n");
        }
    }

    private static final void a(StringBuilder sb, int i, String str, Object obj) {
        if (obj != null) {
            a(sb, i + 1);
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append('\n');
        }
    }

    private final void a(StringBuilder sb, int i, List<ca> list) {
        if (list != null) {
            int i2 = i + 1;
            for (ca caVar : list) {
                if (caVar != null) {
                    a(sb, i2);
                    sb.append("param {\n");
                    Double d2 = null;
                    a(sb, i2, "name", (caVar.zza & 1) != 0 ? this.t.h().b(caVar.zze) : null);
                    a(sb, i2, "string_value", caVar.a() ? caVar.zzf : null);
                    a(sb, i2, "int_value", caVar.b() ? Long.valueOf(caVar.zzg) : null);
                    if (caVar.c()) {
                        d2 = Double.valueOf(caVar.zzi);
                    }
                    a(sb, i2, "double_value", d2);
                    if (caVar.d() > 0) {
                        a(sb, i2, caVar.zzj);
                    }
                    a(sb, i2);
                    sb.append("}\n");
                }
            }
        }
    }

    private static final void a(StringBuilder sb, String str, cl clVar) {
        if (clVar != null) {
            a(sb, 3);
            sb.append(str);
            sb.append(" {\n");
            if (clVar.zze.size() != 0) {
                a(sb, 4);
                sb.append("results: ");
                int i = 0;
                for (Long l : clVar.zze) {
                    if (i != 0) {
                        sb.append(", ");
                    }
                    sb.append(l);
                    i++;
                }
                sb.append('\n');
            }
            if (clVar.a() != 0) {
                a(sb, 4);
                sb.append("status: ");
                int i2 = 0;
                for (Long l2 : clVar.zza) {
                    if (i2 != 0) {
                        sb.append(", ");
                    }
                    sb.append(l2);
                    i2++;
                }
                sb.append('\n');
            }
            if (clVar.b() != 0) {
                a(sb, 4);
                sb.append("dynamic_filter_timestamps: {");
                int i3 = 0;
                for (bu buVar : clVar.zzf) {
                    if (i3 != 0) {
                        sb.append(", ");
                    }
                    sb.append(buVar.a() ? Integer.valueOf(buVar.zze) : null);
                    sb.append(":");
                    sb.append(buVar.b() ? Long.valueOf(buVar.zzf) : null);
                    i3++;
                }
                sb.append("}\n");
            }
            if (clVar.c() != 0) {
                a(sb, 4);
                sb.append("sequence_filter_timestamps: {");
                int i4 = 0;
                for (cn cnVar : clVar.zzg) {
                    if (i4 != 0) {
                        sb.append(", ");
                    }
                    sb.append(cnVar.a() ? Integer.valueOf(cnVar.zze) : null);
                    sb.append(": [");
                    int i5 = 0;
                    for (Long l3 : cnVar.zzf) {
                        long longValue = l3.longValue();
                        if (i5 != 0) {
                            sb.append(", ");
                        }
                        sb.append(longValue);
                        i5++;
                    }
                    sb.append("]");
                    i4++;
                }
                sb.append("}\n");
            }
            a(sb, 3);
            sb.append("}\n");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final boolean a(zzas zzasVar, zzp zzpVar) {
        o.a(zzasVar);
        o.a(zzpVar);
        return !TextUtils.isEmpty(zzpVar.zzb) || !TextUtils.isEmpty(zzpVar.zzq);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(List<Long> list, int i) {
        return i < list.size() * 64 && ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Object b(bw bwVar, String str) {
        ca a2 = a(bwVar, str);
        if (a2 == null) {
            return null;
        }
        if (a2.a()) {
            return a2.zzf;
        }
        if (a2.b()) {
            return Long.valueOf(a2.zzg);
        }
        if (a2.c()) {
            return Double.valueOf(a2.zzi);
        }
        if (a2.d() <= 0) {
            return null;
        }
        gs<ca> gsVar = a2.zzj;
        ArrayList arrayList = new ArrayList();
        for (ca caVar : gsVar) {
            if (caVar != null) {
                Bundle bundle = new Bundle();
                for (ca caVar2 : caVar.zzj) {
                    if (caVar2.a()) {
                        bundle.putString(caVar2.zze, caVar2.zzf);
                    } else if (caVar2.b()) {
                        bundle.putLong(caVar2.zze, caVar2.zzg);
                    } else if (caVar2.c()) {
                        bundle.putDouble(caVar2.zze, caVar2.zzi);
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
    public final long a(byte[] bArr) {
        o.a(bArr);
        this.t.g().S_();
        MessageDigest m = ju.m();
        if (m != null) {
            return ju.a(m.digest(bArr));
        }
        this.t.c().f29506c.a("Failed to get MD5");
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    public final <T extends Parcelable> T a(byte[] bArr, Parcelable.Creator<T> creator) {
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
                this.t.c().f29506c.a("Failed to load parcelable from buffer");
                obtain.recycle();
                return null;
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final bw a(n nVar) {
        bv c2 = bw.c();
        c2.b(nVar.e);
        p pVar = new p(nVar.f);
        while (pVar.hasNext()) {
            String a2 = pVar.next();
            bz e = ca.e();
            e.a(a2);
            Object zza = nVar.f.zza(a2);
            o.a(zza);
            a(e, zza);
            c2.a(e);
        }
        return c2.A();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(ap apVar) {
        if (apVar == null) {
            return JsonReaderKt.NULL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (apVar.a()) {
            a(sb, 0, "filter_id", Integer.valueOf(apVar.zze));
        }
        a(sb, 0, "event_name", this.t.h().a(apVar.zzf));
        String a2 = a(apVar.zzj, apVar.zzk, apVar.zzl);
        if (!a2.isEmpty()) {
            a(sb, 0, "filter_type", a2);
        }
        if (apVar.c()) {
            a(sb, 1, "event_count_filter", apVar.d());
        }
        if (apVar.b() > 0) {
            sb.append("  filters {\n");
            for (ar arVar : apVar.zzg) {
                a(sb, 2, arVar);
            }
        }
        a(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(az azVar) {
        if (azVar == null) {
            return JsonReaderKt.NULL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (azVar.a()) {
            a(sb, 0, "filter_id", Integer.valueOf(azVar.zze));
        }
        a(sb, 0, "property_name", this.t.h().c(azVar.zzf));
        String a2 = a(azVar.zzh, azVar.zzi, azVar.zzj);
        if (!a2.isEmpty()) {
            a(sb, 0, "filter_type", a2);
        }
        a(sb, 1, azVar.b());
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(cc ccVar) {
        if (ccVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (ce ceVar : ccVar.zza) {
            if (ceVar != null) {
                a(sb, 1);
                sb.append("bundle {\n");
                if ((ceVar.zze & 1) != 0) {
                    a(sb, 1, "protocol_version", Integer.valueOf(ceVar.zzg));
                }
                a(sb, 1, "platform", ceVar.zzo);
                if ((ceVar.zze & 16384) != 0) {
                    a(sb, 1, "gmp_version", Long.valueOf(ceVar.zzw));
                }
                if ((ceVar.zze & 32768) != 0) {
                    a(sb, 1, "uploading_gmp_version", Long.valueOf(ceVar.zzx));
                }
                if ((ceVar.zzf & 16) != 0) {
                    a(sb, 1, "dynamite_version", Long.valueOf(ceVar.zzU));
                }
                if ((ceVar.zze & 536870912) != 0) {
                    a(sb, 1, "config_version", Long.valueOf(ceVar.zzM));
                }
                a(sb, 1, "gmp_app_id", ceVar.zzE);
                a(sb, 1, "admob_app_id", ceVar.zzR);
                a(sb, 1, PangleAdapterConfiguration.APP_ID_EXTRA_KEY, ceVar.zzu);
                a(sb, 1, ImpressionData.APP_VERSION, ceVar.zzv);
                if ((ceVar.zze & 33554432) != 0) {
                    a(sb, 1, "app_version_major", Integer.valueOf(ceVar.zzI));
                }
                a(sb, 1, "firebase_instance_id", ceVar.zzH);
                if ((ceVar.zze & 524288) != 0) {
                    a(sb, 1, "dev_cert_hash", Long.valueOf(ceVar.zzB));
                }
                a(sb, 1, "app_store", ceVar.zzt);
                if ((ceVar.zze & 2) != 0) {
                    a(sb, 1, "upload_timestamp_millis", Long.valueOf(ceVar.zzj));
                }
                if ((ceVar.zze & 4) != 0) {
                    a(sb, 1, "start_timestamp_millis", Long.valueOf(ceVar.zzk));
                }
                if (ceVar.a()) {
                    a(sb, 1, "end_timestamp_millis", Long.valueOf(ceVar.zzl));
                }
                if ((ceVar.zze & 16) != 0) {
                    a(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(ceVar.zzm));
                }
                if ((ceVar.zze & 32) != 0) {
                    a(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(ceVar.zzn));
                }
                a(sb, 1, "app_instance_id", ceVar.zzA);
                a(sb, 1, "resettable_device_id", ceVar.zzy);
                a(sb, 1, "ds_id", ceVar.zzO);
                if ((ceVar.zze & 131072) != 0) {
                    a(sb, 1, "limited_ad_tracking", Boolean.valueOf(ceVar.zzz));
                }
                a(sb, 1, "os_version", ceVar.zzp);
                a(sb, 1, "device_model", ceVar.zzq);
                a(sb, 1, "user_default_language", ceVar.zzr);
                if ((ceVar.zze & 1024) != 0) {
                    a(sb, 1, "time_zone_offset_minutes", Integer.valueOf(ceVar.zzs));
                }
                if ((ceVar.zze & 1048576) != 0) {
                    a(sb, 1, "bundle_sequential_index", Integer.valueOf(ceVar.zzC));
                }
                if ((ceVar.zze & 8388608) != 0) {
                    a(sb, 1, "service_upload", Boolean.valueOf(ceVar.zzF));
                }
                a(sb, 1, "health_monitor", ceVar.zzD);
                if (!this.t.g.d(null, dc.at)) {
                    if (((ceVar.zze & 1073741824) != 0) && ceVar.zzN != 0) {
                        a(sb, 1, "android_id", Long.valueOf(ceVar.zzN));
                    }
                }
                if (ceVar.b()) {
                    a(sb, 1, "retry_counter", Integer.valueOf(ceVar.zzQ));
                }
                if ((ceVar.zzf & 128) != 0) {
                    a(sb, 1, "consent_signals", ceVar.zzX);
                }
                gs<cp> gsVar = ceVar.zzi;
                if (gsVar != null) {
                    for (cp cpVar : gsVar) {
                        if (cpVar != null) {
                            a(sb, 2);
                            sb.append("user_property {\n");
                            a(sb, 2, "set_timestamp_millis", cpVar.a() ? Long.valueOf(cpVar.zze) : null);
                            a(sb, 2, "name", this.t.h().c(cpVar.zzf));
                            a(sb, 2, "string_value", cpVar.zzg);
                            a(sb, 2, "int_value", cpVar.b() ? Long.valueOf(cpVar.zzh) : null);
                            a(sb, 2, "double_value", cpVar.c() ? Double.valueOf(cpVar.zzj) : null);
                            a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                gs<br> gsVar2 = ceVar.zzG;
                if (gsVar2 != null) {
                    for (br brVar : gsVar2) {
                        if (brVar != null) {
                            a(sb, 2);
                            sb.append("audience_membership {\n");
                            if ((brVar.zza & 1) != 0) {
                                a(sb, 2, "audience_id", Integer.valueOf(brVar.zze));
                            }
                            if ((brVar.zza & 8) != 0) {
                                a(sb, 2, "new_audience", Boolean.valueOf(brVar.zzh));
                            }
                            a(sb, "current_data", brVar.a());
                            if ((brVar.zza & 4) != 0) {
                                cl clVar = brVar.zzg;
                                cl clVar2 = clVar;
                                if (clVar == null) {
                                    clVar2 = cl.e();
                                }
                                a(sb, "previous_data", clVar2);
                            }
                            a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                gs<bw> gsVar3 = ceVar.zzh;
                if (gsVar3 != null) {
                    for (bw bwVar : gsVar3) {
                        if (bwVar != null) {
                            a(sb, 2);
                            sb.append("event {\n");
                            a(sb, 2, "name", this.t.h().a(bwVar.zzf));
                            if (bwVar.b()) {
                                a(sb, 2, "timestamp_millis", Long.valueOf(bwVar.zzg));
                            }
                            if ((bwVar.zza & 4) != 0) {
                                a(sb, 2, "previous_timestamp_millis", Long.valueOf(bwVar.zzh));
                            }
                            if ((bwVar.zza & 8) != 0) {
                                a(sb, 2, "count", Integer.valueOf(bwVar.zzi));
                            }
                            if (bwVar.a() != 0) {
                                a(sb, 2, bwVar.zze);
                            }
                            a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                a(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<Long> a(List<Long> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                this.t.c().f.a("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.t.c().f.a("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(bz bzVar, Object obj) {
        o.a(obj);
        bzVar.a();
        bzVar.b();
        bzVar.c();
        bzVar.e();
        if (obj instanceof String) {
            bzVar.b((String) obj);
        } else if (obj instanceof Long) {
            bzVar.a(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            bzVar.a(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            bzVar.a(a((Bundle[]) obj));
        } else {
            this.t.c().f29506c.a("Ignoring invalid (type) event param value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(co coVar, Object obj) {
        o.a(obj);
        coVar.a();
        coVar.b();
        coVar.c();
        if (obj instanceof String) {
            coVar.b((String) obj);
        } else if (obj instanceof Long) {
            coVar.b(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            coVar.a(((Double) obj).doubleValue());
        } else {
            this.t.c().f29506c.a("Ignoring invalid (type) user attribute value", obj);
        }
    }

    @Override // com.google.android.gms.measurement.internal.je
    protected final boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(this.t.j.a() - j) > j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] b(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            this.t.c().f29506c.a("Failed to gzip content", e);
            throw e;
        }
    }
}
