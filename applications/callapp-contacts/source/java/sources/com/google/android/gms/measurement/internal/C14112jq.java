package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.AbstractC13533gs;
import com.google.android.gms.internal.measurement.AbstractC13555hn;
import com.google.android.gms.internal.measurement.C13368ap;
import com.google.android.gms.internal.measurement.C13370ar;
import com.google.android.gms.internal.measurement.C13376ax;
import com.google.android.gms.internal.measurement.C13378az;
import com.google.android.gms.internal.measurement.C13384be;
import com.google.android.gms.internal.measurement.C13397br;
import com.google.android.gms.internal.measurement.C13400bu;
import com.google.android.gms.internal.measurement.C13401bv;
import com.google.android.gms.internal.measurement.C13402bw;
import com.google.android.gms.internal.measurement.C13405bz;
import com.google.android.gms.internal.measurement.C13407ca;
import com.google.android.gms.internal.measurement.C13409cc;
import com.google.android.gms.internal.measurement.C13410cd;
import com.google.android.gms.internal.measurement.C13411ce;
import com.google.android.gms.internal.measurement.C13418cl;
import com.google.android.gms.internal.measurement.C13420cn;
import com.google.android.gms.internal.measurement.C13421co;
import com.google.android.gms.internal.measurement.C13422cp;
import com.google.android.gms.internal.measurement.C13512fy;
import com.google.android.gms.internal.measurement.zzib;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.network.ImpressionData;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.android.gms.measurement.internal.jq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jq.class */
public final class C14112jq extends AbstractC14100je {
    public C14112jq(C14110jo c14110jo) {
        super(c14110jo);
    }

    /* renamed from: a */
    public static int m11634a(C13410cd c13410cd, String str) {
        for (int i = 0; i < c13410cd.m13084f(); i++) {
            if (str.equals(c13410cd.m13097c(i).zzf)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static final C13407ca m11637a(C13402bw c13402bw, String str) {
        for (C13407ca c13407ca : c13402bw.zze) {
            if (c13407ca.zze.equals(str)) {
                return c13407ca;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static <Builder extends AbstractC13555hn> Builder m11632a(Builder builder, byte[] bArr) throws zzib {
        C13512fy m12796b = C13512fy.m12796b();
        return m12796b != null ? (Builder) builder.mo12710a(bArr, m12796b) : (Builder) builder.mo12711a(bArr);
    }

    /* renamed from: a */
    private static final String m11619a(boolean z, boolean z2, boolean z3) {
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

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: a */
    public static List<Long> m11622a(BitSet bitSet) {
        int i;
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            char c = 0;
            int i3 = 0;
            while (i3 < 64 && (i = (i2 * 64) + i3) < bitSet.length()) {
                char c2 = c;
                if (bitSet.get(i)) {
                    c2 = c | (1 << i3);
                }
                i3++;
                c = c2;
            }
            arrayList.add(Long.valueOf(c));
        }
        return arrayList;
    }

    /* renamed from: a */
    private static List<C13407ca> m11616a(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                C13405bz m13124e = C13407ca.m13124e();
                for (String str : bundle.keySet()) {
                    C13405bz m13124e2 = C13407ca.m13124e();
                    m13124e2.m13144a(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        m13124e2.m13147a(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        m13124e2.m13142b((String) obj);
                    } else if (obj instanceof Double) {
                        m13124e2.m13148a(((Double) obj).doubleValue());
                    }
                    m13124e.m13146a(m13124e2);
                }
                if (m13124e.m13140d() > 0) {
                    arrayList.add(m13124e.m12779A());
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static final void m11638a(C13401bv c13401bv, String str, Object obj) {
        List<C13407ca> m13185a = c13401bv.m13185a();
        int i = 0;
        while (true) {
            if (i >= m13185a.size()) {
                i = -1;
                break;
            } else if (str.equals(m13185a.get(i).zze)) {
                break;
            } else {
                i++;
            }
        }
        C13405bz m13124e = C13407ca.m13124e();
        m13124e.m13144a(str);
        if (obj instanceof Long) {
            m13124e.m13147a(((Long) obj).longValue());
        } else if (obj instanceof String) {
            m13124e.m13142b((String) obj);
        } else if (obj instanceof Double) {
            m13124e.m13148a(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            m13124e.m13145a(m11616a((Bundle[]) obj));
        }
        if (i >= 0) {
            c13401bv.m13183a(i, m13124e);
        } else {
            c13401bv.m13180a(m13124e);
        }
    }

    /* renamed from: a */
    private static final void m11628a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    /* renamed from: a */
    private final void m11627a(StringBuilder sb, int i, C13370ar c13370ar) {
        if (c13370ar == null) {
            return;
        }
        m11628a(sb, i);
        sb.append("filter {\n");
        if (c13370ar.m13253e()) {
            m11625a(sb, i, "complement", Boolean.valueOf(c13370ar.zzg));
        }
        if ((c13370ar.zza & 8) != 0) {
            m11625a(sb, i, "param_name", this.f51637t.m11987h().m12094b(c13370ar.zzh));
        }
        if (c13370ar.m13258a()) {
            int i2 = i + 1;
            C13384be m13256b = c13370ar.m13256b();
            if (m13256b != null) {
                m11628a(sb, i2);
                sb.append("string_filter {\n");
                if (m13256b.m13230a()) {
                    m11625a(sb, i2, "match_type", m13256b.m13229b().name());
                }
                if (m13256b.m13228c()) {
                    m11625a(sb, i2, "expression", m13256b.zzf);
                }
                boolean z = false;
                if ((m13256b.zza & 4) != 0) {
                    z = true;
                }
                if (z) {
                    m11625a(sb, i2, "case_sensitive", Boolean.valueOf(m13256b.zzg));
                }
                if (m13256b.m13227d() > 0) {
                    m11628a(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str : m13256b.zzh) {
                        m11628a(sb, i2 + 2);
                        sb.append(str);
                        sb.append(StringUtils.f67179LF);
                    }
                    sb.append("}\n");
                }
                m11628a(sb, i2);
                sb.append("}\n");
            }
        }
        if (c13370ar.m13255c()) {
            m11626a(sb, i + 1, "number_filter", c13370ar.m13254d());
        }
        m11628a(sb, i);
        sb.append("}\n");
    }

    /* renamed from: a */
    private static final void m11626a(StringBuilder sb, int i, String str, C13376ax c13376ax) {
        if (c13376ax == null) {
            return;
        }
        m11628a(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (c13376ax.m13244a()) {
            m11625a(sb, i, "comparison_type", c13376ax.m13243b().name());
        }
        if (c13376ax.m13242c()) {
            m11625a(sb, i, "match_as_float", Boolean.valueOf(c13376ax.zzf));
        }
        if (c13376ax.m13241d()) {
            m11625a(sb, i, "comparison_value", c13376ax.zzg);
        }
        if (c13376ax.m13240e()) {
            m11625a(sb, i, "min_comparison_value", c13376ax.zzh);
        }
        if (c13376ax.m13239f()) {
            m11625a(sb, i, "max_comparison_value", c13376ax.zzi);
        }
        m11628a(sb, i);
        sb.append("}\n");
    }

    /* renamed from: a */
    private static final void m11625a(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        m11628a(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    /* renamed from: a */
    private final void m11624a(StringBuilder sb, int i, List<C13407ca> list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        for (C13407ca c13407ca : list) {
            if (c13407ca != null) {
                m11628a(sb, i2);
                sb.append("param {\n");
                m11625a(sb, i2, "name", (c13407ca.zza & 1) != 0 ? this.f51637t.m11987h().m12094b(c13407ca.zze) : null);
                m11625a(sb, i2, "string_value", c13407ca.m13138a() ? c13407ca.zzf : null);
                m11625a(sb, i2, "int_value", c13407ca.m13131b() ? Long.valueOf(c13407ca.zzg) : null);
                Double d = null;
                if (c13407ca.m13128c()) {
                    d = Double.valueOf(c13407ca.zzi);
                }
                m11625a(sb, i2, "double_value", d);
                if (c13407ca.m13126d() > 0) {
                    m11624a(sb, i2, c13407ca.zzj);
                }
                m11628a(sb, i2);
                sb.append("}\n");
            }
        }
    }

    /* renamed from: a */
    private static final void m11623a(StringBuilder sb, String str, C13418cl c13418cl) {
        if (c13418cl == null) {
            return;
        }
        m11628a(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (c13418cl.zze.size() != 0) {
            m11628a(sb, 4);
            sb.append("results: ");
            int i = 0;
            for (Long l : c13418cl.zze) {
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i++;
            }
            sb.append('\n');
        }
        if (c13418cl.m12975a() != 0) {
            m11628a(sb, 4);
            sb.append("status: ");
            int i2 = 0;
            for (Long l2 : c13418cl.zza) {
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i2++;
            }
            sb.append('\n');
        }
        if (c13418cl.m12971b() != 0) {
            m11628a(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i3 = 0;
            for (C13400bu c13400bu : c13418cl.zzf) {
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(c13400bu.m13191a() ? Integer.valueOf(c13400bu.zze) : null);
                sb.append(":");
                sb.append(c13400bu.m13188b() ? Long.valueOf(c13400bu.zzf) : null);
                i3++;
            }
            sb.append("}\n");
        }
        if (c13418cl.m12967c() != 0) {
            m11628a(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i4 = 0;
            for (C13420cn c13420cn : c13418cl.zzg) {
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(c13420cn.m12957a() ? Integer.valueOf(c13420cn.zze) : null);
                sb.append(": [");
                int i5 = 0;
                for (Long l3 : c13420cn.zzf) {
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
        m11628a(sb, 3);
        sb.append("}\n");
    }

    /* renamed from: a */
    public static final boolean m11630a(zzas zzasVar, zzp zzpVar) {
        C12045o.m19162a(zzasVar);
        C12045o.m19162a(zzpVar);
        return !TextUtils.isEmpty(zzpVar.zzb) || !TextUtils.isEmpty(zzpVar.zzq);
    }

    /* renamed from: a */
    public static boolean m11629a(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* renamed from: a */
    public static boolean m11621a(List<Long> list, int i) {
        return i < list.size() * 64 && ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
    }

    /* renamed from: b */
    public static final Object m11615b(C13402bw c13402bw, String str) {
        C13407ca m11637a = m11637a(c13402bw, str);
        if (m11637a != null) {
            if (m11637a.m13138a()) {
                return m11637a.zzf;
            }
            if (m11637a.m13131b()) {
                return Long.valueOf(m11637a.zzg);
            }
            if (m11637a.m13128c()) {
                return Double.valueOf(m11637a.zzi);
            }
            if (m11637a.m13126d() <= 0) {
                return null;
            }
            AbstractC13533gs<C13407ca> abstractC13533gs = m11637a.zzj;
            ArrayList arrayList = new ArrayList();
            for (C13407ca c13407ca : abstractC13533gs) {
                if (c13407ca != null) {
                    Bundle bundle = new Bundle();
                    for (C13407ca c13407ca2 : c13407ca.zzj) {
                        if (c13407ca2.m13138a()) {
                            bundle.putString(c13407ca2.zze, c13407ca2.zzf);
                        } else if (c13407ca2.m13131b()) {
                            bundle.putLong(c13407ca2.zze, c13407ca2.zzg);
                        } else if (c13407ca2.m13128c()) {
                            bundle.putDouble(c13407ca2.zze, c13407ca2.zzi);
                        }
                    }
                    if (!bundle.isEmpty()) {
                        arrayList.add(bundle);
                    }
                }
            }
            return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
        }
        return null;
    }

    /* renamed from: a */
    public final long m11618a(byte[] bArr) {
        C12045o.m19162a(bArr);
        this.f51637t.m11988g().mo11884S_();
        MessageDigest m11553m = C14116ju.m11553m();
        if (m11553m == null) {
            this.f51637t.mo11661c().f51395c.m12092a("Failed to get MD5");
            return 0L;
        }
        return C14116ju.m11573a(m11553m.digest(bArr));
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final <T extends Parcelable> T m11617a(byte[] bArr, Parcelable.Creator<T> creator) {
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
                this.f51637t.mo11661c().f51395c.m12092a("Failed to load parcelable from buffer");
                obtain.recycle();
                return null;
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public final C13402bw m11631a(C14136n c14136n) {
        C13401bv m13158c = C13402bw.m13158c();
        m13158c.m13174b(c14136n.f52059e);
        C14138p c14138p = new C14138p(c14136n.f52060f);
        while (c14138p.hasNext()) {
            String next = c14138p.next();
            C13405bz m13124e = C13407ca.m13124e();
            m13124e.m13144a(next);
            Object zza = c14136n.f52060f.zza(next);
            C12045o.m19162a(zza);
            m11636a(m13124e, zza);
            m13158c.m13180a(m13124e);
        }
        return m13158c.m12779A();
    }

    /* renamed from: a */
    public final String m11640a(C13368ap c13368ap) {
        if (c13368ap == null) {
            return JsonReaderKt.NULL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (c13368ap.m13267a()) {
            m11625a(sb, 0, "filter_id", Integer.valueOf(c13368ap.zze));
        }
        m11625a(sb, 0, "event_name", this.f51637t.m11987h().m12097a(c13368ap.zzf));
        String m11619a = m11619a(c13368ap.zzj, c13368ap.zzk, c13368ap.zzl);
        if (!m11619a.isEmpty()) {
            m11625a(sb, 0, "filter_type", m11619a);
        }
        if (c13368ap.m13263c()) {
            m11626a(sb, 1, "event_count_filter", c13368ap.m13262d());
        }
        if (c13368ap.m13264b() > 0) {
            sb.append("  filters {\n");
            for (C13370ar c13370ar : c13368ap.zzg) {
                m11627a(sb, 2, c13370ar);
            }
        }
        m11628a(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* renamed from: a */
    public final String m11639a(C13378az c13378az) {
        if (c13378az == null) {
            return JsonReaderKt.NULL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (c13378az.m13235a()) {
            m11625a(sb, 0, "filter_id", Integer.valueOf(c13378az.zze));
        }
        m11625a(sb, 0, "property_name", this.f51637t.m11987h().m12093c(c13378az.zzf));
        String m11619a = m11619a(c13378az.zzh, c13378az.zzi, c13378az.zzj);
        if (!m11619a.isEmpty()) {
            m11625a(sb, 0, "filter_type", m11619a);
        }
        m11627a(sb, 1, c13378az.m13233b());
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: a */
    public final String m11635a(C13409cc c13409cc) {
        if (c13409cc == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (C13411ce c13411ce : c13409cc.zza) {
            if (c13411ce != null) {
                m11628a(sb, 1);
                sb.append("bundle {\n");
                if ((c13411ce.zze & 1) != 0) {
                    m11625a(sb, 1, "protocol_version", Integer.valueOf(c13411ce.zzg));
                }
                m11625a(sb, 1, "platform", c13411ce.zzo);
                if ((c13411ce.zze & 16384) != 0) {
                    m11625a(sb, 1, "gmp_version", Long.valueOf(c13411ce.zzw));
                }
                if ((c13411ce.zze & 32768) != 0) {
                    m11625a(sb, 1, "uploading_gmp_version", Long.valueOf(c13411ce.zzx));
                }
                if ((c13411ce.zzf & 16) != 0) {
                    m11625a(sb, 1, "dynamite_version", Long.valueOf(c13411ce.zzU));
                }
                if ((c13411ce.zze & 536870912) != 0) {
                    m11625a(sb, 1, "config_version", Long.valueOf(c13411ce.zzM));
                }
                m11625a(sb, 1, "gmp_app_id", c13411ce.zzE);
                m11625a(sb, 1, "admob_app_id", c13411ce.zzR);
                m11625a(sb, 1, PangleAdapterConfiguration.APP_ID_EXTRA_KEY, c13411ce.zzu);
                m11625a(sb, 1, ImpressionData.APP_VERSION, c13411ce.zzv);
                if ((c13411ce.zze & 33554432) != 0) {
                    m11625a(sb, 1, "app_version_major", Integer.valueOf(c13411ce.zzI));
                }
                m11625a(sb, 1, "firebase_instance_id", c13411ce.zzH);
                if ((c13411ce.zze & 524288) != 0) {
                    m11625a(sb, 1, "dev_cert_hash", Long.valueOf(c13411ce.zzB));
                }
                m11625a(sb, 1, "app_store", c13411ce.zzt);
                if ((c13411ce.zze & 2) != 0) {
                    m11625a(sb, 1, "upload_timestamp_millis", Long.valueOf(c13411ce.zzj));
                }
                if ((c13411ce.zze & 4) != 0) {
                    m11625a(sb, 1, "start_timestamp_millis", Long.valueOf(c13411ce.zzk));
                }
                if (c13411ce.m13048a()) {
                    m11625a(sb, 1, "end_timestamp_millis", Long.valueOf(c13411ce.zzl));
                }
                if ((c13411ce.zze & 16) != 0) {
                    m11625a(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(c13411ce.zzm));
                }
                if ((c13411ce.zze & 32) != 0) {
                    m11625a(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(c13411ce.zzn));
                }
                m11625a(sb, 1, "app_instance_id", c13411ce.zzA);
                m11625a(sb, 1, "resettable_device_id", c13411ce.zzy);
                m11625a(sb, 1, "ds_id", c13411ce.zzO);
                if ((c13411ce.zze & 131072) != 0) {
                    m11625a(sb, 1, "limited_ad_tracking", Boolean.valueOf(c13411ce.zzz));
                }
                m11625a(sb, 1, "os_version", c13411ce.zzp);
                m11625a(sb, 1, "device_model", c13411ce.zzq);
                m11625a(sb, 1, "user_default_language", c13411ce.zzr);
                if ((c13411ce.zze & 1024) != 0) {
                    m11625a(sb, 1, "time_zone_offset_minutes", Integer.valueOf(c13411ce.zzs));
                }
                if ((c13411ce.zze & 1048576) != 0) {
                    m11625a(sb, 1, "bundle_sequential_index", Integer.valueOf(c13411ce.zzC));
                }
                if ((c13411ce.zze & 8388608) != 0) {
                    m11625a(sb, 1, "service_upload", Boolean.valueOf(c13411ce.zzF));
                }
                m11625a(sb, 1, "health_monitor", c13411ce.zzD);
                if (!this.f51637t.f51529g.m12061d(null, C13935dc.f51332at)) {
                    if (((c13411ce.zze & 1073741824) != 0) && c13411ce.zzN != 0) {
                        m11625a(sb, 1, "android_id", Long.valueOf(c13411ce.zzN));
                    }
                }
                if (c13411ce.m13036b()) {
                    m11625a(sb, 1, "retry_counter", Integer.valueOf(c13411ce.zzQ));
                }
                if ((c13411ce.zzf & 128) != 0) {
                    m11625a(sb, 1, "consent_signals", c13411ce.zzX);
                }
                AbstractC13533gs<C13422cp> abstractC13533gs = c13411ce.zzi;
                if (abstractC13533gs != null) {
                    for (C13422cp c13422cp : abstractC13533gs) {
                        if (c13422cp != null) {
                            m11628a(sb, 2);
                            sb.append("user_property {\n");
                            m11625a(sb, 2, "set_timestamp_millis", c13422cp.m12943a() ? Long.valueOf(c13422cp.zze) : null);
                            m11625a(sb, 2, "name", this.f51637t.m11987h().m12093c(c13422cp.zzf));
                            m11625a(sb, 2, "string_value", c13422cp.zzg);
                            m11625a(sb, 2, "int_value", c13422cp.m12938b() ? Long.valueOf(c13422cp.zzh) : null);
                            m11625a(sb, 2, "double_value", c13422cp.m12934c() ? Double.valueOf(c13422cp.zzj) : null);
                            m11628a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                AbstractC13533gs<C13397br> abstractC13533gs2 = c13411ce.zzG;
                if (abstractC13533gs2 != null) {
                    for (C13397br c13397br : abstractC13533gs2) {
                        if (c13397br != null) {
                            m11628a(sb, 2);
                            sb.append("audience_membership {\n");
                            if ((c13397br.zza & 1) != 0) {
                                m11625a(sb, 2, "audience_id", Integer.valueOf(c13397br.zze));
                            }
                            if ((c13397br.zza & 8) != 0) {
                                m11625a(sb, 2, "new_audience", Boolean.valueOf(c13397br.zzh));
                            }
                            m11623a(sb, "current_data", c13397br.m13200a());
                            if ((c13397br.zza & 4) != 0) {
                                C13418cl c13418cl = c13397br.zzg;
                                C13418cl c13418cl2 = c13418cl;
                                if (c13418cl == null) {
                                    c13418cl2 = C13418cl.m12963e();
                                }
                                m11623a(sb, "previous_data", c13418cl2);
                            }
                            m11628a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                AbstractC13533gs<C13402bw> abstractC13533gs3 = c13411ce.zzh;
                if (abstractC13533gs3 != null) {
                    for (C13402bw c13402bw : abstractC13533gs3) {
                        if (c13402bw != null) {
                            m11628a(sb, 2);
                            sb.append("event {\n");
                            m11625a(sb, 2, "name", this.f51637t.m11987h().m12097a(c13402bw.zzf));
                            if (c13402bw.m13160b()) {
                                m11625a(sb, 2, "timestamp_millis", Long.valueOf(c13402bw.zzg));
                            }
                            if ((c13402bw.zza & 4) != 0) {
                                m11625a(sb, 2, "previous_timestamp_millis", Long.valueOf(c13402bw.zzh));
                            }
                            if ((c13402bw.zza & 8) != 0) {
                                m11625a(sb, 2, "count", Integer.valueOf(c13402bw.zzi));
                            }
                            if (c13402bw.m13168a() != 0) {
                                m11624a(sb, 2, c13402bw.zze);
                            }
                            m11628a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                m11628a(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: a */
    public final List<Long> m11620a(List<Long> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                this.f51637t.mo11661c().f51398f.m12091a("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.f51637t.mo11661c().f51398f.m12090a("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & ((1 << (num.intValue() % 64)) ^ (-1))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i = size2;
            if (i < 0 || ((Long) arrayList.get(i)).longValue() != 0) {
                break;
            }
            size = i;
            size2 = i - 1;
        }
        return arrayList.subList(0, size);
    }

    /* renamed from: a */
    public final void m11636a(C13405bz c13405bz, Object obj) {
        C12045o.m19162a(obj);
        c13405bz.m13149a();
        c13405bz.m13143b();
        c13405bz.m13141c();
        c13405bz.m13139e();
        if (obj instanceof String) {
            c13405bz.m13142b((String) obj);
        } else if (obj instanceof Long) {
            c13405bz.m13147a(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            c13405bz.m13148a(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            c13405bz.m13145a(m11616a((Bundle[]) obj));
        } else {
            this.f51637t.mo11661c().f51395c.m12091a("Ignoring invalid (type) event param value", obj);
        }
    }

    /* renamed from: a */
    public final void m11633a(C13421co c13421co, Object obj) {
        C12045o.m19162a(obj);
        c13421co.m12951a();
        c13421co.m12947b();
        c13421co.m12944c();
        if (obj instanceof String) {
            c13421co.m12945b((String) obj);
        } else if (obj instanceof Long) {
            c13421co.m12946b(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            c13421co.m12950a(((Double) obj).doubleValue());
        } else {
            this.f51637t.mo11661c().f51395c.m12091a("Ignoring invalid (type) user attribute value", obj);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14100je
    /* renamed from: a */
    protected final boolean mo11531a() {
        return false;
    }

    /* renamed from: a */
    public final boolean m11641a(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(this.f51637t.f51532j.mo19039a() - j) > j2;
    }

    /* renamed from: b */
    public final byte[] m11614b(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            this.f51637t.mo11661c().f51395c.m12091a("Failed to gzip content", e);
            throw e;
        }
    }
}
