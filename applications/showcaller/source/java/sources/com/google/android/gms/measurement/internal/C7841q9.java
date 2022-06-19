package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.AbstractC7610x6;
import com.google.android.gms.internal.measurement.C7291a2;
import com.google.android.gms.internal.measurement.C7304b1;
import com.google.android.gms.internal.measurement.C7375g2;
import com.google.android.gms.internal.measurement.C7403i2;
import com.google.android.gms.internal.measurement.C7417j2;
import com.google.android.gms.internal.measurement.C7431k2;
import com.google.android.gms.internal.measurement.C7448l5;
import com.google.android.gms.internal.measurement.C7472n1;
import com.google.android.gms.internal.measurement.C7485o0;
import com.google.android.gms.internal.measurement.C7513q0;
import com.google.android.gms.internal.measurement.C7514q1;
import com.google.android.gms.internal.measurement.C7527r1;
import com.google.android.gms.internal.measurement.C7540s1;
import com.google.android.gms.internal.measurement.C7578v0;
import com.google.android.gms.internal.measurement.C7579v1;
import com.google.android.gms.internal.measurement.C7592w1;
import com.google.android.gms.internal.measurement.C7604x0;
import com.google.android.gms.internal.measurement.C7618y1;
import com.google.android.gms.internal.measurement.C7631z1;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.google.android.gms.measurement.internal.q9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/q9.class */
public final class C7841q9 extends AbstractC7702e9 {
    public C7841q9(C7819o9 c7819o9) {
        super(c7819o9);
    }

    /* renamed from: A */
    public static boolean m6080A(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* renamed from: B */
    public static boolean m6079B(List<Long> list, int i) {
        return i < list.size() * 64 && ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: D */
    public static List<Long> m6078D(BitSet bitSet) {
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

    /* renamed from: I */
    public static <Builder extends AbstractC7610x6> Builder m6073I(Builder builder, byte[] bArr) {
        C7448l5 m7187b = C7448l5.m7187b();
        return m7187b != null ? (Builder) builder.mo6757e(bArr, m7187b) : (Builder) builder.mo6754z(bArr);
    }

    /* renamed from: J */
    public static int m6072J(C7631z1 c7631z1, String str) {
        for (int i = 0; i < c7631z1.m6650w0(); i++) {
            if (str.equals(c7631z1.m6648x0(i).m7231C())) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: K */
    static List<C7592w1> m6071K(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                C7579v1 m6811M = C7592w1.m6811M();
                for (String str : bundle.keySet()) {
                    C7579v1 m6811M2 = C7592w1.m6811M();
                    m6811M2.m6841t(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        m6811M2.m6838x(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        m6811M2.m6840v((String) obj);
                    } else if (obj instanceof Double) {
                        m6811M2.m6847A(((Double) obj).doubleValue());
                    }
                    m6811M.m6844D(m6811M2);
                }
                if (m6811M.m6845C() > 0) {
                    arrayList.add(m6811M.m6886n());
                }
            }
        }
        return arrayList;
    }

    /* renamed from: L */
    public static final void m6070L(C7527r1 c7527r1, String str, Object obj) {
        List<C7592w1> m6971t = c7527r1.m6971t();
        int i = 0;
        while (true) {
            if (i >= m6971t.size()) {
                i = -1;
                break;
            } else if (str.equals(m6971t.get(i).m6822B())) {
                break;
            } else {
                i++;
            }
        }
        C7579v1 m6811M = C7592w1.m6811M();
        m6811M.m6841t(str);
        if (obj instanceof Long) {
            m6811M.m6838x(((Long) obj).longValue());
        } else if (obj instanceof String) {
            m6811M.m6840v((String) obj);
        } else if (obj instanceof Double) {
            m6811M.m6847A(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            m6811M.m6843E(m6071K((Bundle[]) obj));
        }
        if (i >= 0) {
            c7527r1.m6967y(i, m6811M);
        } else {
            c7527r1.m6982B(m6811M);
        }
    }

    /* renamed from: M */
    public static final boolean m6069M(zzas zzasVar, zzp zzpVar) {
        C6155o.m17018j(zzasVar);
        C6155o.m17018j(zzpVar);
        return !TextUtils.isEmpty(zzpVar.f35884e) || !TextUtils.isEmpty(zzpVar.f35899t);
    }

    /* renamed from: N */
    public static final C7592w1 m6068N(C7540s1 c7540s1, String str) {
        for (C7592w1 c7592w1 : c7540s1.m6954A()) {
            if (c7592w1.m6822B().equals(str)) {
                return c7592w1;
            }
        }
        return null;
    }

    /* renamed from: k */
    public static final Object m6067k(C7540s1 c7540s1, String str) {
        C7592w1 m6068N = m6068N(c7540s1, str);
        if (m6068N != null) {
            if (m6068N.m6821C()) {
                return m6068N.m6820D();
            }
            if (m6068N.m6819E()) {
                return Long.valueOf(m6068N.m6818F());
            }
            if (m6068N.m6815I()) {
                return Double.valueOf(m6068N.m6814J());
            }
            if (m6068N.m6812L() <= 0) {
                return null;
            }
            List<C7592w1> m6813K = m6068N.m6813K();
            ArrayList arrayList = new ArrayList();
            for (C7592w1 c7592w1 : m6813K) {
                if (c7592w1 != null) {
                    Bundle bundle = new Bundle();
                    for (C7592w1 c7592w12 : c7592w1.m6813K()) {
                        if (c7592w12.m6821C()) {
                            bundle.putString(c7592w12.m6822B(), c7592w12.m6820D());
                        } else if (c7592w12.m6819E()) {
                            bundle.putLong(c7592w12.m6822B(), c7592w12.m6818F());
                        } else if (c7592w12.m6815I()) {
                            bundle.putDouble(c7592w12.m6822B(), c7592w12.m6814J());
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

    /* renamed from: l */
    private final void m6066l(StringBuilder sb, int i, List<C7592w1> list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        for (C7592w1 c7592w1 : list) {
            if (c7592w1 != null) {
                m6064n(sb, i2);
                sb.append("param {\n");
                m6061q(sb, i2, ShortCut.NAME, c7592w1.m6823A() ? this.f35460a.m6042H().m6344o(c7592w1.m6822B()) : null);
                m6061q(sb, i2, "string_value", c7592w1.m6821C() ? c7592w1.m6820D() : null);
                m6061q(sb, i2, "int_value", c7592w1.m6819E() ? Long.valueOf(c7592w1.m6818F()) : null);
                Double d = null;
                if (c7592w1.m6815I()) {
                    d = Double.valueOf(c7592w1.m6814J());
                }
                m6061q(sb, i2, "double_value", d);
                if (c7592w1.m6812L() > 0) {
                    m6066l(sb, i2, c7592w1.m6813K());
                }
                m6064n(sb, i2);
                sb.append("}\n");
            }
        }
    }

    /* renamed from: m */
    private final void m6065m(StringBuilder sb, int i, C7513q0 c7513q0) {
        if (c7513q0 == null) {
            return;
        }
        m6064n(sb, i);
        sb.append("filter {\n");
        if (c7513q0.m7017E()) {
            m6061q(sb, i, "complement", Boolean.valueOf(c7513q0.m7016F()));
        }
        if (c7513q0.m7015G()) {
            m6061q(sb, i, "param_name", this.f35460a.m6042H().m6344o(c7513q0.m7014H()));
        }
        if (c7513q0.m7021A()) {
            int i2 = i + 1;
            C7304b1 m7020B = c7513q0.m7020B();
            if (m7020B != null) {
                m6064n(sb, i2);
                sb.append("string_filter {\n");
                if (m7020B.m7677A()) {
                    m6061q(sb, i2, "match_type", m7020B.m7676B().name());
                }
                if (m7020B.m7675C()) {
                    m6061q(sb, i2, "expression", m7020B.m7674D());
                }
                if (m7020B.m7673E()) {
                    m6061q(sb, i2, "case_sensitive", Boolean.valueOf(m7020B.m7672F()));
                }
                if (m7020B.m7670H() > 0) {
                    m6064n(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str : m7020B.m7671G()) {
                        m6064n(sb, i2 + 2);
                        sb.append(str);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                m6064n(sb, i2);
                sb.append("}\n");
            }
        }
        if (c7513q0.m7019C()) {
            m6060r(sb, i + 1, "number_filter", c7513q0.m7018D());
        }
        m6064n(sb, i);
        sb.append("}\n");
    }

    /* renamed from: n */
    private static final void m6064n(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    /* renamed from: o */
    private static final String m6063o(boolean z, boolean z2, boolean z3) {
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

    /* renamed from: p */
    private static final void m6062p(StringBuilder sb, int i, String str, C7375g2 c7375g2) {
        if (c7375g2 == null) {
            return;
        }
        m6064n(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (c7375g2.m7443D() != 0) {
            m6064n(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l : c7375g2.m7444C()) {
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i2++;
            }
            sb.append('\n');
        }
        if (c7375g2.m7445B() != 0) {
            m6064n(sb, 4);
            sb.append("status: ");
            int i3 = 0;
            for (Long l2 : c7375g2.m7446A()) {
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i3++;
            }
            sb.append('\n');
        }
        if (c7375g2.m7441F() != 0) {
            m6064n(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i4 = 0;
            for (C7514q1 c7514q1 : c7375g2.m7442E()) {
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(c7514q1.m7010A() ? Integer.valueOf(c7514q1.m7009B()) : null);
                sb.append(":");
                sb.append(c7514q1.m7008C() ? Long.valueOf(c7514q1.m7007D()) : null);
                i4++;
            }
            sb.append("}\n");
        }
        if (c7375g2.m7438I() != 0) {
            m6064n(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i5 = 0;
            for (C7403i2 c7403i2 : c7375g2.m7439H()) {
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(c7403i2.m7345A() ? Integer.valueOf(c7403i2.m7344B()) : null);
                sb.append(": [");
                int i6 = 0;
                for (Long l3 : c7403i2.m7343C()) {
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
        m6064n(sb, 3);
        sb.append("}\n");
    }

    /* renamed from: q */
    private static final void m6061q(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        m6064n(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    /* renamed from: r */
    private static final void m6060r(StringBuilder sb, int i, String str, C7578v0 c7578v0) {
        if (c7578v0 == null) {
            return;
        }
        m6064n(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (c7578v0.m6859A()) {
            m6061q(sb, i, "comparison_type", c7578v0.m6858B().name());
        }
        if (c7578v0.m6857C()) {
            m6061q(sb, i, "match_as_float", Boolean.valueOf(c7578v0.m6856D()));
        }
        if (c7578v0.m6855E()) {
            m6061q(sb, i, "comparison_value", c7578v0.m6854F());
        }
        if (c7578v0.m6853G()) {
            m6061q(sb, i, "min_comparison_value", c7578v0.m6852H());
        }
        if (c7578v0.m6851I()) {
            m6061q(sb, i, "max_comparison_value", c7578v0.m6850J());
        }
        m6064n(sb, i);
        sb.append("}\n");
    }

    /* renamed from: E */
    public final List<Long> m6077E(List<Long> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                this.f35460a.mo6047C().m6192p().m6215b("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.f35460a.mo6047C().m6192p().m6214c("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
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

    /* renamed from: F */
    public final boolean m6076F(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(this.f35460a.mo6007x().mo16807a() - j) > j2;
    }

    /* renamed from: G */
    public final long m6075G(byte[] bArr) {
        C6155o.m17018j(bArr);
        this.f35460a.m6043G().mo6113f();
        MessageDigest m6000A = C7885u9.m6000A();
        if (m6000A == null) {
            this.f35460a.mo6047C().m6195m().m6216a("Failed to get MD5");
            return 0L;
        }
        return C7885u9.m5999B(m6000A.digest(bArr));
    }

    /* renamed from: H */
    public final byte[] m6074H(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            this.f35460a.mo6047C().m6195m().m6215b("Failed to gzip content", e);
            throw e;
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7702e9
    /* renamed from: i */
    protected final boolean mo6003i() {
        return false;
    }

    /* renamed from: s */
    public final void m6059s(C7417j2 c7417j2, Object obj) {
        C6155o.m17018j(obj);
        c7417j2.m7247x();
        c7417j2.m7253A();
        c7417j2.m7251C();
        if (obj instanceof String) {
            c7417j2.m7248w((String) obj);
        } else if (obj instanceof Long) {
            c7417j2.m7246y(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            c7417j2.m7252B(((Double) obj).doubleValue());
        } else {
            this.f35460a.mo6047C().m6195m().m6215b("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* renamed from: t */
    public final void m6058t(C7579v1 c7579v1, Object obj) {
        C6155o.m17018j(obj);
        c7579v1.m6839w();
        c7579v1.m6837y();
        c7579v1.m6846B();
        c7579v1.m6842F();
        if (obj instanceof String) {
            c7579v1.m6840v((String) obj);
        } else if (obj instanceof Long) {
            c7579v1.m6838x(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            c7579v1.m6847A(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            c7579v1.m6843E(m6071K((Bundle[]) obj));
        } else {
            this.f35460a.mo6047C().m6195m().m6215b("Ignoring invalid (type) event param value", obj);
        }
    }

    /* renamed from: u */
    public final C7540s1 m6057u(C7798n c7798n) {
        C7527r1 m6944K = C7540s1.m6944K();
        m6944K.m6972L(c7798n.f35476e);
        C7820p c7820p = new C7820p(c7798n.f35477f);
        while (c7820p.hasNext()) {
            String next = c7820p.next();
            C7579v1 m6811M = C7592w1.m6811M();
            m6811M.m6841t(next);
            Object m5869k0 = c7798n.f35477f.m5869k0(next);
            C6155o.m17018j(m5869k0);
            m6058t(m6811M, m5869k0);
            m6944K.m6982B(m6811M);
        }
        return m6944K.m6886n();
    }

    /* renamed from: v */
    public final String m6056v(C7618y1 c7618y1) {
        if (c7618y1 == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (C7291a2 c7291a2 : c7618y1.m6750A()) {
            if (c7291a2 != null) {
                m6064n(sb, 1);
                sb.append("bundle {\n");
                if (c7291a2.m7737a0()) {
                    m6061q(sb, 1, "protocol_version", Integer.valueOf(c7291a2.m7734b1()));
                }
                m6061q(sb, 1, "platform", c7291a2.m7778I1());
                if (c7291a2.m7798C()) {
                    m6061q(sb, 1, "gmp_version", Long.valueOf(c7291a2.m7795D()));
                }
                if (c7291a2.m7792E()) {
                    m6061q(sb, 1, "uploading_gmp_version", Long.valueOf(c7291a2.m7789F()));
                }
                if (c7291a2.m7788F0()) {
                    m6061q(sb, 1, "dynamite_version", Long.valueOf(c7291a2.m7785G0()));
                }
                if (c7291a2.m7745W()) {
                    m6061q(sb, 1, "config_version", Long.valueOf(c7291a2.m7743X()));
                }
                m6061q(sb, 1, "gmp_app_id", c7291a2.m7759P());
                m6061q(sb, 1, "admob_app_id", c7291a2.m7791E0());
                m6061q(sb, 1, "app_id", c7291a2.m7804A());
                m6061q(sb, 1, "app_version", c7291a2.m7801B());
                if (c7291a2.m7749U()) {
                    m6061q(sb, 1, "app_version_major", Integer.valueOf(c7291a2.m7747V()));
                }
                m6061q(sb, 1, "firebase_instance_id", c7291a2.m7751T());
                if (c7291a2.m7774K()) {
                    m6061q(sb, 1, "dev_cert_hash", Long.valueOf(c7291a2.m7771L()));
                }
                m6061q(sb, 1, "app_store", c7291a2.m7760O1());
                if (c7291a2.m7688y1()) {
                    m6061q(sb, 1, "upload_timestamp_millis", Long.valueOf(c7291a2.m7686z1()));
                }
                if (c7291a2.m7802A1()) {
                    m6061q(sb, 1, "start_timestamp_millis", Long.valueOf(c7291a2.m7799B1()));
                }
                if (c7291a2.m7796C1()) {
                    m6061q(sb, 1, "end_timestamp_millis", Long.valueOf(c7291a2.m7793D1()));
                }
                if (c7291a2.m7790E1()) {
                    m6061q(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(c7291a2.m7787F1()));
                }
                if (c7291a2.m7784G1()) {
                    m6061q(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(c7291a2.m7781H1()));
                }
                m6061q(sb, 1, "app_instance_id", c7291a2.m7777J());
                m6061q(sb, 1, "resettable_device_id", c7291a2.m7786G());
                m6061q(sb, 1, "ds_id", c7291a2.m7800B0());
                if (c7291a2.m7783H()) {
                    m6061q(sb, 1, "limited_ad_tracking", Boolean.valueOf(c7291a2.m7780I()));
                }
                m6061q(sb, 1, "os_version", c7291a2.m7775J1());
                m6061q(sb, 1, "device_model", c7291a2.m7772K1());
                m6061q(sb, 1, "user_default_language", c7291a2.m7769L1());
                if (c7291a2.m7766M1()) {
                    m6061q(sb, 1, "time_zone_offset_minutes", Integer.valueOf(c7291a2.m7763N1()));
                }
                if (c7291a2.m7768M()) {
                    m6061q(sb, 1, "bundle_sequential_index", Integer.valueOf(c7291a2.m7765N()));
                }
                if (c7291a2.m7757Q()) {
                    m6061q(sb, 1, "service_upload", Boolean.valueOf(c7291a2.m7755R()));
                }
                m6061q(sb, 1, "health_monitor", c7291a2.m7762O());
                if (!this.f35460a.m6006y().m6471u(null, C7672c3.f35105v0) && c7291a2.m7741Y() && c7291a2.m7739Z() != 0) {
                    m6061q(sb, 1, "android_id", Long.valueOf(c7291a2.m7739Z()));
                }
                if (c7291a2.m7797C0()) {
                    m6061q(sb, 1, "retry_counter", Integer.valueOf(c7291a2.m7794D0()));
                }
                if (c7291a2.m7779I0()) {
                    m6061q(sb, 1, "consent_signals", c7291a2.m7776J0());
                }
                List<C7431k2> m7694v1 = c7291a2.m7694v1();
                if (m7694v1 != null) {
                    for (C7431k2 c7431k2 : m7694v1) {
                        if (c7431k2 != null) {
                            m6064n(sb, 2);
                            sb.append("user_property {\n");
                            m6061q(sb, 2, "set_timestamp_millis", c7431k2.m7233A() ? Long.valueOf(c7431k2.m7232B()) : null);
                            m6061q(sb, 2, ShortCut.NAME, this.f35460a.m6042H().m6343p(c7431k2.m7231C()));
                            m6061q(sb, 2, "string_value", c7431k2.m7229E());
                            m6061q(sb, 2, "int_value", c7431k2.m7228F() ? Long.valueOf(c7431k2.m7227G()) : null);
                            m6061q(sb, 2, "double_value", c7431k2.m7226H() ? Double.valueOf(c7431k2.m7225I()) : null);
                            m6064n(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<C7472n1> m7753S = c7291a2.m7753S();
                if (m7753S != null) {
                    for (C7472n1 c7472n1 : m7753S) {
                        if (c7472n1 != null) {
                            m6064n(sb, 2);
                            sb.append("audience_membership {\n");
                            if (c7472n1.m7094A()) {
                                m6061q(sb, 2, "audience_id", Integer.valueOf(c7472n1.m7093B()));
                            }
                            if (c7472n1.m7089F()) {
                                m6061q(sb, 2, "new_audience", Boolean.valueOf(c7472n1.m7088G()));
                            }
                            m6062p(sb, 2, "current_data", c7472n1.m7092C());
                            if (c7472n1.m7091D()) {
                                m6062p(sb, 2, "previous_data", c7472n1.m7090E());
                            }
                            m6064n(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<C7540s1> m7700s1 = c7291a2.m7700s1();
                if (m7700s1 != null) {
                    for (C7540s1 c7540s1 : m7700s1) {
                        if (c7540s1 != null) {
                            m6064n(sb, 2);
                            sb.append("event {\n");
                            m6061q(sb, 2, ShortCut.NAME, this.f35460a.m6042H().m6345n(c7540s1.m6951D()));
                            if (c7540s1.m6950E()) {
                                m6061q(sb, 2, "timestamp_millis", Long.valueOf(c7540s1.m6949F()));
                            }
                            if (c7540s1.m6948G()) {
                                m6061q(sb, 2, "previous_timestamp_millis", Long.valueOf(c7540s1.m6947H()));
                            }
                            if (c7540s1.m6946I()) {
                                m6061q(sb, 2, "count", Integer.valueOf(c7540s1.m6945J()));
                            }
                            if (c7540s1.m6953B() != 0) {
                                m6066l(sb, 2, c7540s1.m6954A());
                            }
                            m6064n(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                m6064n(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: w */
    public final String m6055w(C7485o0 c7485o0) {
        if (c7485o0 == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (c7485o0.m7063A()) {
            m6061q(sb, 0, "filter_id", Integer.valueOf(c7485o0.m7062B()));
        }
        m6061q(sb, 0, "event_name", this.f35460a.m6042H().m6345n(c7485o0.m7061C()));
        String m6063o = m6063o(c7485o0.m7055I(), c7485o0.m7054J(), c7485o0.m7052L());
        if (!m6063o.isEmpty()) {
            m6061q(sb, 0, "filter_type", m6063o);
        }
        if (c7485o0.m7057G()) {
            m6060r(sb, 1, "event_count_filter", c7485o0.m7056H());
        }
        if (c7485o0.m7059E() > 0) {
            sb.append("  filters {\n");
            for (C7513q0 c7513q0 : c7485o0.m7060D()) {
                m6065m(sb, 2, c7513q0);
            }
        }
        m6064n(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* renamed from: y */
    public final String m6054y(C7604x0 c7604x0) {
        if (c7604x0 == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (c7604x0.m6788A()) {
            m6061q(sb, 0, "filter_id", Integer.valueOf(c7604x0.m6787B()));
        }
        m6061q(sb, 0, "property_name", this.f35460a.m6042H().m6343p(c7604x0.m6786C()));
        String m6063o = m6063o(c7604x0.m6784E(), c7604x0.m6783F(), c7604x0.m6781H());
        if (!m6063o.isEmpty()) {
            m6061q(sb, 0, "filter_type", m6063o);
        }
        m6065m(sb, 1, c7604x0.m6785D());
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: z */
    public final <T extends Parcelable> T m6053z(byte[] bArr, Parcelable.Creator<T> creator) {
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
                this.f35460a.mo6047C().m6195m().m6216a("Failed to load parcelable from buffer");
                obtain.recycle();
                return null;
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }
}
