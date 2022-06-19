package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.internal.measurement.AbstractC3900ed;
import com.google.android.gms.internal.measurement.AbstractC3942fm;
import com.google.android.gms.internal.measurement.C3748ag;
import com.google.android.gms.internal.measurement.C3776ao;
import com.google.android.gms.internal.measurement.C3884dp;
import com.google.android.gms.internal.measurement.C4028in;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.google.android.gms.measurement.internal.js */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/js.class */
public final class C4420js extends AbstractC4412jl {
    public C4420js(C4415jo c4415jo) {
        super(c4415jo);
    }

    /* renamed from: a */
    public static int m4174a(C3776ao.C3789g.C3790a c3790a, String str) {
        int i;
        if (c3790a != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= c3790a.m6035e()) {
                    i = -1;
                    break;
                }
                i = i2;
                if (str.equals(c3790a.m6039d(i2).m5926c())) {
                    break;
                }
                i2++;
            }
        } else {
            i = -1;
        }
        return i;
    }

    /* renamed from: a */
    public static C3776ao.C3785e m4177a(C3776ao.C3781c c3781c, String str) {
        C3776ao.C3785e c3785e;
        Iterator<C3776ao.C3785e> it = c3781c.m6336a().iterator();
        while (true) {
            if (!it.hasNext()) {
                c3785e = null;
                break;
            }
            c3785e = it.next();
            if (c3785e.m6271b().equals(str)) {
                break;
            }
        }
        return c3785e;
    }

    /* renamed from: a */
    public static <Builder extends AbstractC3942fm> Builder m4172a(Builder builder, byte[] bArr) {
        C3884dp m5692b = C3884dp.m5692b();
        return (Builder) (m5692b != null ? builder.mo5546a(bArr, m5692b) : builder.mo5547a(bArr));
    }

    /* renamed from: a */
    private static String m4160a(boolean z, boolean z2, boolean z3) {
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

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: a */
    public static List<Long> m4163a(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            char c = 0;
            int i2 = 0;
            while (i2 < 64 && (i << 6) + i2 < bitSet.length()) {
                char c2 = c;
                if (bitSet.get((i << 6) + i2)) {
                    c2 = c | (1 << i2);
                }
                i2++;
                c = c2;
            }
            arrayList.add(Long.valueOf(c));
        }
        return arrayList;
    }

    /* renamed from: a */
    private static List<C3776ao.C3785e> m4157a(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                C3776ao.C3785e.C3786a m6256k = C3776ao.C3785e.m6256k();
                for (String str : bundle.keySet()) {
                    C3776ao.C3785e.C3786a m6244a = C3776ao.C3785e.m6256k().m6244a(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        m6244a.m6247a(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        m6244a.m6242b((String) obj);
                    } else if (obj instanceof Double) {
                        m6244a.m6248a(((Double) obj).doubleValue());
                    }
                    m6256k.m6246a(m6244a);
                }
                if (m6256k.m6240d() > 0) {
                    arrayList.add((C3776ao.C3785e) ((AbstractC3900ed) m6256k.mo5544u()));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m4169a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    /* renamed from: a */
    private final void m4168a(StringBuilder sb, int i, C3748ag.C3753c c3753c) {
        if (c3753c == null) {
            return;
        }
        m4169a(sb, i);
        sb.append("filter {\n");
        if (c3753c.m6453e()) {
            m4165a(sb, i, "complement", Boolean.valueOf(c3753c.m6452f()));
        }
        if (c3753c.m6451g()) {
            m4165a(sb, i, "param_name", mo4033s().m4679b(c3753c.m6450h()));
        }
        if (c3753c.m6459a()) {
            int i2 = i + 1;
            C3748ag.C3760f m6456b = c3753c.m6456b();
            if (m6456b != null) {
                m4169a(sb, i2);
                sb.append("string_filter");
                sb.append(" {\n");
                if (m6456b.m6419a()) {
                    m4165a(sb, i2, "match_type", m6456b.m6418b().name());
                }
                if (m6456b.m6417c()) {
                    m4165a(sb, i2, "expression", m6456b.m6416d());
                }
                if (m6456b.m6415e()) {
                    m4165a(sb, i2, "case_sensitive", Boolean.valueOf(m6456b.m6414f()));
                }
                if (m6456b.m6412h() > 0) {
                    m4169a(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str : m6456b.m6413g()) {
                        m4169a(sb, i2 + 2);
                        sb.append(str);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                m4169a(sb, i2);
                sb.append("}\n");
            }
        }
        if (c3753c.m6455c()) {
            m4167a(sb, i + 1, "number_filter", c3753c.m6454d());
        }
        m4169a(sb, i);
        sb.append("}\n");
    }

    /* renamed from: a */
    private final void m4167a(StringBuilder sb, int i, String str, C3748ag.C3755d c3755d) {
        if (c3755d == null) {
            return;
        }
        m4169a(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (c3755d.m6446a()) {
            m4165a(sb, i, "comparison_type", c3755d.m6445b().name());
        }
        if (c3755d.m6444c()) {
            m4165a(sb, i, "match_as_float", Boolean.valueOf(c3755d.m6443d()));
        }
        if (c3755d.m6442e()) {
            m4165a(sb, i, "comparison_value", c3755d.m6441f());
        }
        if (c3755d.m6440g()) {
            m4165a(sb, i, "min_comparison_value", c3755d.m6439h());
        }
        if (c3755d.m6438i()) {
            m4165a(sb, i, "max_comparison_value", c3755d.m6437j());
        }
        m4169a(sb, i);
        sb.append("}\n");
    }

    /* renamed from: a */
    private static void m4166a(StringBuilder sb, int i, String str, C3776ao.C3794i c3794i, String str2) {
        if (c3794i == null) {
            return;
        }
        m4169a(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (c3794i.m5977d() != 0) {
            m4169a(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l : c3794i.m5980c()) {
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i2++;
            }
            sb.append('\n');
        }
        if (c3794i.m5986b() != 0) {
            m4169a(sb, 4);
            sb.append("status: ");
            int i3 = 0;
            for (Long l2 : c3794i.m5992a()) {
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i3++;
            }
            sb.append('\n');
        }
        if (c3794i.m5971f() != 0) {
            m4169a(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i4 = 0;
            for (C3776ao.C3779b c3779b : c3794i.m5973e()) {
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(c3779b.m6348a() ? Integer.valueOf(c3779b.m6343b()) : null).append(":").append(c3779b.m6342c() ? Long.valueOf(c3779b.m6341d()) : null);
                i4++;
            }
            sb.append("}\n");
        }
        if (c3794i.m5969h() != 0) {
            m4169a(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i5 = 0;
            for (C3776ao.C3796j c3796j : c3794i.m5970g()) {
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(c3796j.m5953a() ? Integer.valueOf(c3796j.m5948b()) : null).append(": [");
                int i6 = 0;
                for (Long l3 : c3796j.m5946c()) {
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
        m4169a(sb, 3);
        sb.append("}\n");
    }

    /* renamed from: a */
    private static void m4165a(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        m4169a(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    /* renamed from: a */
    private final void m4164a(StringBuilder sb, int i, List<C3776ao.C3785e> list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        for (C3776ao.C3785e c3785e : list) {
            if (c3785e != null) {
                m4169a(sb, i2);
                sb.append("param {\n");
                if (!C4028in.m5084b() || !mo4027x().m4804a(C4452t.f19422aE)) {
                    m4165a(sb, i2, "name", mo4033s().m4679b(c3785e.m6271b()));
                    m4165a(sb, i2, "string_value", c3785e.m6265d());
                    m4165a(sb, i2, "int_value", c3785e.m6263e() ? Long.valueOf(c3785e.m6261f()) : null);
                    m4165a(sb, i2, "double_value", c3785e.m6260g() ? Double.valueOf(c3785e.m6259h()) : null);
                } else {
                    m4165a(sb, i2, "name", c3785e.m6282a() ? mo4033s().m4679b(c3785e.m6271b()) : null);
                    m4165a(sb, i2, "string_value", c3785e.m6267c() ? c3785e.m6265d() : null);
                    m4165a(sb, i2, "int_value", c3785e.m6263e() ? Long.valueOf(c3785e.m6261f()) : null);
                    m4165a(sb, i2, "double_value", c3785e.m6260g() ? Double.valueOf(c3785e.m6259h()) : null);
                    if (c3785e.m6257j() > 0) {
                        m4164a(sb, i2, c3785e.m6258i());
                    }
                }
                m4169a(sb, i2);
                sb.append("}\n");
            }
        }
    }

    /* renamed from: a */
    public static boolean m4171a(C4450r c4450r, C4430kb c4430kb) {
        C2662s.m13981a(c4450r);
        C2662s.m13981a(c4430kb);
        return !TextUtils.isEmpty(c4430kb.f19302b) || !TextUtils.isEmpty(c4430kb.f19318r);
    }

    /* renamed from: a */
    public static boolean m4170a(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* renamed from: a */
    public static boolean m4162a(List<Long> list, int i) {
        return i < (list.size() << 6) && (list.get(i / 64).longValue() & (1 << (i % 64))) != 0;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: a */
    public final long m4159a(byte[] bArr) {
        char m4104a;
        C2662s.m13981a(bArr);
        mo4032t().mo4037o();
        MessageDigest m4086e = C4424jw.m4086e();
        if (m4086e == null) {
            mo4030v().m4655x_().m4654a("Failed to get MD5");
            m4104a = 0;
        } else {
            m4104a = C4424jw.m4104a(m4086e.digest(bArr));
        }
        return m4104a;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final <T extends Parcelable> T m4158a(byte[] bArr, Parcelable.Creator<T> creator) {
        T t;
        if (bArr == null) {
            t = null;
        } else {
            Parcel obtain = Parcel.obtain();
            try {
                try {
                    obtain.unmarshall(bArr, 0, bArr.length);
                    obtain.setDataPosition(0);
                    t = creator.createFromParcel(obtain);
                    obtain.recycle();
                } catch (SafeParcelReader.ParseException e) {
                    mo4030v().m4655x_().m4654a("Failed to load parcelable from buffer");
                    obtain.recycle();
                    t = null;
                }
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        return t;
    }

    /* renamed from: a */
    public final String m4180a(C3748ag.C3751b c3751b) {
        String sb;
        if (c3751b == null) {
            sb = "null";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\nevent_filter {\n");
            if (c3751b.m6482a()) {
                m4165a(sb2, 0, "filter_id", Integer.valueOf(c3751b.m6476b()));
            }
            m4165a(sb2, 0, "event_name", mo4033s().m4682a(c3751b.m6475c()));
            String m4160a = m4160a(c3751b.m6470h(), c3751b.m6469i(), c3751b.m6467k());
            if (!m4160a.isEmpty()) {
                m4165a(sb2, 0, "filter_type", m4160a);
            }
            if (c3751b.m6472f()) {
                m4167a(sb2, 1, "event_count_filter", c3751b.m6471g());
            }
            if (c3751b.m6473e() > 0) {
                sb2.append("  filters {\n");
                for (C3748ag.C3753c c3753c : c3751b.m6474d()) {
                    m4168a(sb2, 2, c3753c);
                }
            }
            m4169a(sb2, 1);
            sb2.append("}\n}\n");
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: a */
    public final String m4179a(C3748ag.C3758e c3758e) {
        String sb;
        if (c3758e == null) {
            sb = "null";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\nproperty_filter {\n");
            if (c3758e.m6432a()) {
                m4165a(sb2, 0, "filter_id", Integer.valueOf(c3758e.m6429b()));
            }
            m4165a(sb2, 0, "property_name", mo4033s().m4677c(c3758e.m6428c()));
            String m4160a = m4160a(c3758e.m6426e(), c3758e.m6425f(), c3758e.m6423h());
            if (!m4160a.isEmpty()) {
                m4165a(sb2, 0, "filter_type", m4160a);
            }
            m4168a(sb2, 1, c3758e.m6427d());
            sb2.append("}\n");
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: a */
    public final String m4175a(C3776ao.C3787f c3787f) {
        String sb;
        if (c3787f == null) {
            sb = "";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\nbatch {\n");
            for (C3776ao.C3789g c3789g : c3787f.m6238a()) {
                if (c3789g != null) {
                    m4169a(sb2, 1);
                    sb2.append("bundle {\n");
                    if (c3789g.m6204a()) {
                        m4165a(sb2, 1, "protocol_version", Integer.valueOf(c3789g.m6167b()));
                    }
                    m4165a(sb2, 1, "platform", c3789g.m6073q());
                    if (c3789g.m6064z()) {
                        m4165a(sb2, 1, "gmp_version", Long.valueOf(c3789g.m6230A()));
                    }
                    if (c3789g.m6229B()) {
                        m4165a(sb2, 1, "uploading_gmp_version", Long.valueOf(c3789g.m6228C()));
                    }
                    if (c3789g.m6178ac()) {
                        m4165a(sb2, 1, "dynamite_version", Long.valueOf(c3789g.m6177ad()));
                    }
                    if (c3789g.m6210U()) {
                        m4165a(sb2, 1, "config_version", Long.valueOf(c3789g.m6209V()));
                    }
                    m4165a(sb2, 1, "gmp_app_id", c3789g.m6218M());
                    m4165a(sb2, 1, "admob_app_id", c3789g.m6179ab());
                    m4165a(sb2, 1, "app_id", c3789g.m6066x());
                    m4165a(sb2, 1, "app_version", c3789g.m6065y());
                    if (c3789g.m6213R()) {
                        m4165a(sb2, 1, "app_version_major", Integer.valueOf(c3789g.m6212S()));
                    }
                    m4165a(sb2, 1, "firebase_instance_id", c3789g.m6214Q());
                    if (c3789g.m6223H()) {
                        m4165a(sb2, 1, "dev_cert_hash", Long.valueOf(c3789g.m6222I()));
                    }
                    m4165a(sb2, 1, "app_store", c3789g.m6067w());
                    if (c3789g.m6120g()) {
                        m4165a(sb2, 1, "upload_timestamp_millis", Long.valueOf(c3789g.m6113h()));
                    }
                    if (c3789g.m6107i()) {
                        m4165a(sb2, 1, "start_timestamp_millis", Long.valueOf(c3789g.m6101j()));
                    }
                    if (c3789g.m6095k()) {
                        m4165a(sb2, 1, "end_timestamp_millis", Long.valueOf(c3789g.m6090l()));
                    }
                    if (c3789g.m6085m()) {
                        m4165a(sb2, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(c3789g.m6082n()));
                    }
                    if (c3789g.m6079o()) {
                        m4165a(sb2, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(c3789g.m6076p()));
                    }
                    m4165a(sb2, 1, "app_instance_id", c3789g.m6224G());
                    m4165a(sb2, 1, "resettable_device_id", c3789g.m6227D());
                    m4165a(sb2, 1, "device_id", c3789g.m6211T());
                    m4165a(sb2, 1, "ds_id", c3789g.m6206Y());
                    if (c3789g.m6226E()) {
                        m4165a(sb2, 1, "limited_ad_tracking", Boolean.valueOf(c3789g.m6225F()));
                    }
                    m4165a(sb2, 1, "os_version", c3789g.m6072r());
                    m4165a(sb2, 1, "device_model", c3789g.m6071s());
                    m4165a(sb2, 1, "user_default_language", c3789g.m6070t());
                    if (c3789g.m6069u()) {
                        m4165a(sb2, 1, "time_zone_offset_minutes", Integer.valueOf(c3789g.m6068v()));
                    }
                    if (c3789g.m6221J()) {
                        m4165a(sb2, 1, "bundle_sequential_index", Integer.valueOf(c3789g.m6220K()));
                    }
                    if (c3789g.m6217N()) {
                        m4165a(sb2, 1, "service_upload", Boolean.valueOf(c3789g.m6216O()));
                    }
                    m4165a(sb2, 1, "health_monitor", c3789g.m6219L());
                    if (!mo4027x().m4804a(C4452t.f19430aM) && c3789g.m6208W() && c3789g.m6207X() != 0) {
                        m4165a(sb2, 1, "android_id", Long.valueOf(c3789g.m6207X()));
                    }
                    if (c3789g.m6205Z()) {
                        m4165a(sb2, 1, "retry_counter", Integer.valueOf(c3789g.m6180aa()));
                    }
                    List<C3776ao.C3798k> m6136e = c3789g.m6136e();
                    if (m6136e != null) {
                        for (C3776ao.C3798k c3798k : m6136e) {
                            if (c3798k != null) {
                                m4169a(sb2, 2);
                                sb2.append("user_property {\n");
                                m4165a(sb2, 2, "set_timestamp_millis", c3798k.m5940a() ? Long.valueOf(c3798k.m5932b()) : null);
                                m4165a(sb2, 2, "name", mo4033s().m4677c(c3798k.m5926c()));
                                m4165a(sb2, 2, "string_value", c3798k.m5923e());
                                m4165a(sb2, 2, "int_value", c3798k.m5922f() ? Long.valueOf(c3798k.m5921g()) : null);
                                m4165a(sb2, 2, "double_value", c3798k.m5920h() ? Double.valueOf(c3798k.m5919i()) : null);
                                m4169a(sb2, 2);
                                sb2.append("}\n");
                            }
                        }
                    }
                    List<C3776ao.C3777a> m6215P = c3789g.m6215P();
                    String m6066x = c3789g.m6066x();
                    if (m6215P != null) {
                        for (C3776ao.C3777a c3777a : m6215P) {
                            if (c3777a != null) {
                                m4169a(sb2, 2);
                                sb2.append("audience_membership {\n");
                                if (c3777a.m6369a()) {
                                    m4165a(sb2, 2, "audience_id", Integer.valueOf(c3777a.m6362b()));
                                }
                                if (c3777a.m6356f()) {
                                    m4165a(sb2, 2, "new_audience", Boolean.valueOf(c3777a.m6355g()));
                                }
                                m4166a(sb2, 2, "current_data", c3777a.m6359c(), m6066x);
                                if (c3777a.m6358d()) {
                                    m4166a(sb2, 2, "previous_data", c3777a.m6357e(), m6066x);
                                }
                                m4169a(sb2, 2);
                                sb2.append("}\n");
                            }
                        }
                    }
                    List<C3776ao.C3781c> m6155c = c3789g.m6155c();
                    if (m6155c != null) {
                        for (C3776ao.C3781c c3781c : m6155c) {
                            if (c3781c != null) {
                                m4169a(sb2, 2);
                                sb2.append("event {\n");
                                m4165a(sb2, 2, "name", mo4033s().m4682a(c3781c.m6318c()));
                                if (c3781c.m6317d()) {
                                    m4165a(sb2, 2, "timestamp_millis", Long.valueOf(c3781c.m6316e()));
                                }
                                if (c3781c.m6315f()) {
                                    m4165a(sb2, 2, "previous_timestamp_millis", Long.valueOf(c3781c.m6314g()));
                                }
                                if (c3781c.m6313h()) {
                                    m4165a(sb2, 2, "count", Integer.valueOf(c3781c.m6312i()));
                                }
                                if (c3781c.m6322b() != 0) {
                                    m4164a(sb2, 2, c3781c.m6336a());
                                }
                                m4169a(sb2, 2);
                                sb2.append("}\n");
                            }
                        }
                    }
                    m4169a(sb2, 1);
                    sb2.append("}\n");
                }
            }
            sb2.append("}\n");
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: a */
    public final List<Long> m4161a(List<Long> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                mo4030v().m4662e().m4653a("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    mo4030v().m4662e().m4652a("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((1 << (num.intValue() % 64)) ^ (-1)) & ((Long) arrayList.get(intValue)).longValue()));
                }
            }
        }
        int size = arrayList.size();
        for (int size2 = arrayList.size() - 1; size2 >= 0 && ((Long) arrayList.get(size2)).longValue() == 0; size2--) {
            size = size2;
        }
        return arrayList.subList(0, size);
    }

    /* renamed from: a */
    public final void m4178a(C3776ao.C3781c.C3782a c3782a, String str, Object obj) {
        List<C3776ao.C3785e> m6307a = c3782a.m6307a();
        int i = 0;
        while (true) {
            if (i >= m6307a.size()) {
                i = -1;
                break;
            } else if (str.equals(m6307a.get(i).m6271b())) {
                break;
            } else {
                i++;
            }
        }
        C3776ao.C3785e.C3786a m6244a = C3776ao.C3785e.m6256k().m6244a(str);
        if (obj instanceof Long) {
            m6244a.m6247a(((Long) obj).longValue());
        } else if (obj instanceof String) {
            m6244a.m6242b((String) obj);
        } else if (obj instanceof Double) {
            m6244a.m6248a(((Double) obj).doubleValue());
        } else if (C4028in.m5084b() && mo4027x().m4804a(C4452t.f19424aG) && (obj instanceof Bundle[])) {
            m6244a.m6245a(m4157a((Bundle[]) obj));
        }
        if (i >= 0) {
            c3782a.m6305a(i, m6244a);
        } else {
            c3782a.m6302a(m6244a);
        }
    }

    /* renamed from: a */
    public final void m4176a(C3776ao.C3785e.C3786a c3786a, Object obj) {
        C2662s.m13981a(obj);
        c3786a.m6249a().m6243b().m6241c().m6239e();
        if (obj instanceof String) {
            c3786a.m6242b((String) obj);
        } else if (obj instanceof Long) {
            c3786a.m6247a(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            c3786a.m6248a(((Double) obj).doubleValue());
        } else if (!C4028in.m5084b() || !mo4027x().m4804a(C4452t.f19424aG) || !(obj instanceof Bundle[])) {
            mo4030v().m4655x_().m4653a("Ignoring invalid (type) event param value", obj);
        } else {
            c3786a.m6245a(m4157a((Bundle[]) obj));
        }
    }

    /* renamed from: a */
    public final void m4173a(C3776ao.C3798k.C3799a c3799a, Object obj) {
        C2662s.m13981a(obj);
        c3799a.m5913a().m5909b().m5906c();
        if (obj instanceof String) {
            c3799a.m5907b((String) obj);
        } else if (obj instanceof Long) {
            c3799a.m5908b(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            c3799a.m5912a(((Double) obj).doubleValue());
        } else {
            mo4030v().m4655x_().m4653a("Ignoring invalid (type) user attribute value", obj);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4412jl
    /* renamed from: a */
    protected final boolean mo4068a() {
        return false;
    }

    /* renamed from: a */
    public final boolean m4181a(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(mo4035q().mo13862a() - j) > j2;
    }

    /* renamed from: b */
    public final Object m4155b(C3776ao.C3781c c3781c, String str) {
        Object obj;
        C3776ao.C3785e m4177a = m4177a(c3781c, str);
        if (m4177a != null) {
            if (m4177a.m6267c()) {
                obj = m4177a.m6265d();
            } else if (m4177a.m6263e()) {
                obj = Long.valueOf(m4177a.m6261f());
            } else if (m4177a.m6260g()) {
                obj = Double.valueOf(m4177a.m6259h());
            } else if (C4028in.m5084b() && mo4027x().m4804a(C4452t.f19424aG) && m4177a.m6257j() > 0) {
                List<C3776ao.C3785e> m6258i = m4177a.m6258i();
                ArrayList arrayList = new ArrayList();
                for (C3776ao.C3785e c3785e : m6258i) {
                    if (c3785e != null) {
                        Bundle bundle = new Bundle();
                        for (C3776ao.C3785e c3785e2 : c3785e.m6258i()) {
                            if (c3785e2.m6267c()) {
                                bundle.putString(c3785e2.m6271b(), c3785e2.m6265d());
                            } else if (c3785e2.m6263e()) {
                                bundle.putLong(c3785e2.m6271b(), c3785e2.m6261f());
                            } else if (c3785e2.m6260g()) {
                                bundle.putDouble(c3785e2.m6271b(), c3785e2.m6259h());
                            }
                        }
                        if (!bundle.isEmpty()) {
                            arrayList.add(bundle);
                        }
                    }
                }
                obj = (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
            }
            return obj;
        }
        obj = null;
        return obj;
    }

    /* renamed from: b */
    public final List<Integer> m4156b() {
        ArrayList arrayList;
        Map<String, String> m3988a = C4452t.m3988a(this.f19234a.mo4034r());
        if (m3988a == null || m3988a.size() == 0) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            int intValue = C4452t.f19405O.m4707a(null).intValue();
            for (Map.Entry<String, String> entry : m3988a.entrySet()) {
                if (entry.getKey().startsWith("measurement.id.")) {
                    try {
                        int parseInt = Integer.parseInt(entry.getValue());
                        if (parseInt != 0) {
                            arrayList.add(Integer.valueOf(parseInt));
                            if (arrayList.size() >= intValue) {
                                mo4030v().m4662e().m4653a("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                                break;
                            }
                            continue;
                        } else {
                            continue;
                        }
                    } catch (NumberFormatException e) {
                        mo4030v().m4662e().m4653a("Experiment ID NumberFormatException", e);
                    }
                }
            }
            if (arrayList.size() == 0) {
                arrayList = null;
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final byte[] m4154b(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read <= 0) {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
        } catch (IOException e) {
            mo4030v().m4655x_().m4653a("Failed to ungzip content", e);
            throw e;
        }
    }

    /* renamed from: c */
    public final byte[] m4153c(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            mo4030v().m4655x_().m4653a("Failed to gzip content", e);
            throw e;
        }
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C4434kf mo4152d() {
        return super.mo4152d();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo4040l() {
        super.mo4040l();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ void mo4039m() {
        super.mo4039m();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void mo4038n() {
        super.mo4038n();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: o */
    public final /* bridge */ /* synthetic */ void mo4037o() {
        super.mo4037o();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ C4444l mo4036p() {
        return super.mo4036p();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ AbstractC2708e mo4035q() {
        return super.mo4035q();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ Context mo4034r() {
        return super.mo4034r();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ C4261dw mo4033s() {
        return super.mo4033s();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: t */
    public final /* bridge */ /* synthetic */ C4424jw mo4032t() {
        return super.mo4032t();
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: t_ */
    public final /* bridge */ /* synthetic */ C4289ex mo4151t_() {
        return super.mo4151t_();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: u_ */
    public final /* bridge */ /* synthetic */ C4211c mo4150u_() {
        return super.mo4150u_();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: v_ */
    public final /* bridge */ /* synthetic */ C4420js mo4149v_() {
        return super.mo4149v_();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ C4277el mo4029w() {
        return super.mo4029w();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: x */
    public final /* bridge */ /* synthetic */ C4184b mo4027x() {
        return super.mo4027x();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ C4439kk mo4026y() {
        return super.mo4026y();
    }
}
