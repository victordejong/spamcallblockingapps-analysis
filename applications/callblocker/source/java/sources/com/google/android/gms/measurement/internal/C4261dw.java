package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.internal.measurement.C4028in;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.dw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dw.class */
public final class C4261dw extends AbstractC4317fy {

    /* renamed from: a */
    private static final AtomicReference<String[]> f18707a = new AtomicReference<>();

    /* renamed from: b */
    private static final AtomicReference<String[]> f18708b = new AtomicReference<>();

    /* renamed from: c */
    private static final AtomicReference<String[]> f18709c = new AtomicReference<>();

    public C4261dw(C4296fd c4296fd) {
        super(c4296fd);
    }

    /* renamed from: a */
    private static String m4681a(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        int i = 0;
        C2662s.m13981a(strArr);
        C2662s.m13981a(strArr2);
        C2662s.m13981a(atomicReference);
        C2662s.m13973b(strArr.length == strArr2.length);
        while (true) {
            str2 = str;
            if (i >= strArr.length) {
                break;
            } else if (C4424jw.m4089c(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    String[] strArr4 = strArr3;
                    if (strArr3 == null) {
                        strArr4 = new String[strArr2.length];
                        atomicReference.set(strArr4);
                    }
                    if (strArr4[i] == null) {
                        strArr4[i] = strArr2[i] + "(" + strArr[i] + ")";
                    }
                    str2 = strArr4[i];
                }
            } else {
                i++;
            }
        }
        return str2;
    }

    /* renamed from: a */
    private final String m4680a(Object[] objArr) {
        String sb;
        if (objArr == null) {
            sb = "[]";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            for (Object obj : objArr) {
                String m4684a = obj instanceof Bundle ? m4684a((Bundle) obj) : String.valueOf(obj);
                if (m4684a != null) {
                    if (sb2.length() != 1) {
                        sb2.append(", ");
                    }
                    sb2.append(m4684a);
                }
            }
            sb2.append("]");
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: c */
    private final boolean m4678c() {
        mo4026y();
        return this.f18970z.m4544l() && this.f18970z.mo4030v().m4675a(3);
    }

    /* renamed from: a */
    public final String m4684a(Bundle bundle) {
        String sb;
        if (bundle == null) {
            sb = null;
        } else if (!m4678c()) {
            sb = bundle.toString();
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Bundle[{");
            for (String str : bundle.keySet()) {
                if (sb2.length() != 8) {
                    sb2.append(", ");
                }
                sb2.append(m4679b(str));
                sb2.append("=");
                if (!C4028in.m5084b() || !mo4027x().m4804a(C4452t.f19422aE)) {
                    sb2.append(bundle.get(str));
                } else {
                    Object obj = bundle.get(str);
                    sb2.append(obj instanceof Bundle ? m4680a(new Object[]{obj}) : obj instanceof Object[] ? m4680a((Object[]) obj) : obj instanceof ArrayList ? m4680a(((ArrayList) obj).toArray()) : String.valueOf(obj));
                }
            }
            sb2.append("}]");
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: a */
    public final String m4683a(C4450r c4450r) {
        String sb;
        if (c4450r == null) {
            sb = null;
        } else if (!m4678c()) {
            sb = c4450r.toString();
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("origin=");
            sb2.append(c4450r.f19388c);
            sb2.append(",name=");
            sb2.append(m4682a(c4450r.f19386a));
            sb2.append(",params=");
            C4445m c4445m = c4450r.f19387b;
            sb2.append(c4445m == null ? null : !m4678c() ? c4445m.toString() : m4684a(c4445m.m4022b()));
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: a */
    public final String m4682a(String str) {
        String str2;
        if (str == null) {
            str2 = null;
        } else {
            str2 = str;
            if (m4678c()) {
                str2 = m4681a(str, C4323gd.f18976b, C4323gd.f18975a, f18707a);
            }
        }
        return str2;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4317fy
    /* renamed from: a */
    protected final boolean mo4046a() {
        return false;
    }

    /* renamed from: b */
    public final String m4679b(String str) {
        String str2;
        if (str == null) {
            str2 = null;
        } else {
            str2 = str;
            if (m4678c()) {
                str2 = m4681a(str, C4322gc.f18972b, C4322gc.f18971a, f18708b);
            }
        }
        return str2;
    }

    /* renamed from: c */
    public final String m4677c(String str) {
        String str2;
        if (str == null) {
            str2 = null;
        } else {
            str2 = str;
            if (m4678c()) {
                if (str.startsWith("_exp_")) {
                    str2 = "experiment_id(" + str + ")";
                } else {
                    str2 = m4681a(str, C4325gf.f18979b, C4325gf.f18978a, f18709c);
                }
            }
        }
        return str2;
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

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
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
