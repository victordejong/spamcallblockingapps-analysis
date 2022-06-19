package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.AbstractC2708e;
/* renamed from: com.google.android.gms.measurement.internal.dy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dy.class */
public final class C4263dy extends AbstractC4317fy {

    /* renamed from: c */
    private String f18713c;

    /* renamed from: a */
    private char f18711a = (char) 0;

    /* renamed from: b */
    private long f18712b = -1;

    /* renamed from: d */
    private final C4266ea f18714d = new C4266ea(this, 6, false, false);

    /* renamed from: e */
    private final C4266ea f18715e = new C4266ea(this, 6, true, false);

    /* renamed from: f */
    private final C4266ea f18716f = new C4266ea(this, 6, false, true);

    /* renamed from: g */
    private final C4266ea f18717g = new C4266ea(this, 5, false, false);

    /* renamed from: h */
    private final C4266ea f18718h = new C4266ea(this, 5, true, false);

    /* renamed from: i */
    private final C4266ea f18719i = new C4266ea(this, 5, false, true);

    /* renamed from: j */
    private final C4266ea f18720j = new C4266ea(this, 4, false, false);

    /* renamed from: k */
    private final C4266ea f18721k = new C4266ea(this, 3, false, false);

    /* renamed from: l */
    private final C4266ea f18722l = new C4266ea(this, 2, false, false);

    public C4263dy(C4296fd c4296fd) {
        super(c4296fd);
    }

    /* renamed from: D */
    private final String m4676D() {
        String str;
        String str2;
        synchronized (this) {
            if (this.f18713c == null) {
                if (this.f18970z.m4541o() != null) {
                    str2 = this.f18970z.m4541o();
                } else {
                    mo4027x().mo4026y();
                    str2 = "FA";
                }
                this.f18713c = str2;
            }
            str = this.f18713c;
        }
        return str;
    }

    /* renamed from: a */
    public static Object m4669a(String str) {
        return str == null ? null : new C4269ed(str);
    }

    /* renamed from: a */
    private static String m4668a(boolean z, Object obj) {
        String valueOf;
        String str;
        String className;
        if (obj == null) {
            valueOf = "";
        } else {
            if (obj instanceof Integer) {
                obj = Long.valueOf(((Integer) obj).intValue());
            }
            if (obj instanceof Long) {
                if (!z) {
                    valueOf = String.valueOf(obj);
                } else if (Math.abs(((Long) obj).longValue()) < 100) {
                    valueOf = String.valueOf(obj);
                } else {
                    String str2 = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
                    String valueOf2 = String.valueOf(Math.abs(((Long) obj).longValue()));
                    valueOf = new StringBuilder(String.valueOf(str2).length() + 43 + String.valueOf(str2).length()).append(str2).append(Math.round(Math.pow(10.0d, valueOf2.length() - 1))).append("...").append(str2).append(Math.round(Math.pow(10.0d, valueOf2.length()) - 1.0d)).toString();
                }
            } else if (obj instanceof Boolean) {
                valueOf = String.valueOf(obj);
            } else if (obj instanceof Throwable) {
                Throwable th = (Throwable) obj;
                StringBuilder sb = new StringBuilder(z ? th.getClass().getName() : th.toString());
                String m4665b = m4665b(C4296fd.class.getCanonicalName());
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i];
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && m4665b(className).equals(m4665b)) {
                        sb.append(": ");
                        sb.append(stackTraceElement);
                        break;
                    }
                    i++;
                }
                valueOf = sb.toString();
            } else if (obj instanceof C4269ed) {
                str = ((C4269ed) obj).f18737a;
                valueOf = str;
            } else {
                valueOf = z ? "-" : String.valueOf(obj);
            }
        }
        return valueOf;
    }

    /* renamed from: a */
    public static String m4667a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        String m4668a = m4668a(z, obj);
        String m4668a2 = m4668a(z, obj2);
        String m4668a3 = m4668a(z, obj3);
        StringBuilder sb = new StringBuilder();
        String str3 = "";
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
            str3 = ": ";
        }
        String str4 = str3;
        if (!TextUtils.isEmpty(m4668a)) {
            sb.append(str3);
            sb.append(m4668a);
            str4 = ", ";
        }
        String str5 = str4;
        if (!TextUtils.isEmpty(m4668a2)) {
            sb.append(str4);
            sb.append(m4668a2);
            str5 = ", ";
        }
        if (!TextUtils.isEmpty(m4668a3)) {
            sb.append(str5);
            sb.append(m4668a3);
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static String m4665b(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            int lastIndexOf = str.lastIndexOf(46);
            str2 = str;
            if (lastIndexOf != -1) {
                str2 = str.substring(0, lastIndexOf);
            }
        }
        return str2;
    }

    /* renamed from: a */
    public final void m4674a(int i, String str) {
        Log.println(i, m4676D(), str);
    }

    /* renamed from: a */
    public final void m4673a(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && m4675a(i)) {
            m4674a(i, m4667a(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        C2662s.m13981a(str);
        C4293fa m4549g = this.f18970z.m4549g();
        if (m4549g == null) {
            m4674a(6, "Scheduler not set. Not logging error/warn");
        } else if (!m4549g.m4442z()) {
            m4674a(6, "Scheduler not initialized. Not logging error/warn");
        } else {
            if (i < 0) {
                i = 0;
            }
            int i2 = i;
            if (i >= 9) {
                i2 = 8;
            }
            m4549g.m4587a(new RunnableC4267eb(this, i2, str, obj, obj2, obj3));
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4317fy
    /* renamed from: a */
    protected final boolean mo4046a() {
        return false;
    }

    /* renamed from: a */
    public final boolean m4675a(int i) {
        return Log.isLoggable(m4676D(), i);
    }

    /* renamed from: c */
    public final C4266ea m4664c() {
        return this.f18715e;
    }

    /* renamed from: d */
    public final C4266ea m4663d() {
        return this.f18716f;
    }

    /* renamed from: e */
    public final C4266ea m4662e() {
        return this.f18717g;
    }

    /* renamed from: f */
    public final C4266ea m4661f() {
        return this.f18718h;
    }

    /* renamed from: g */
    public final C4266ea m4660g() {
        return this.f18719i;
    }

    /* renamed from: h */
    public final C4266ea m4659h() {
        return this.f18720j;
    }

    /* renamed from: i */
    public final C4266ea m4658i() {
        return this.f18721k;
    }

    /* renamed from: j */
    public final C4266ea m4657j() {
        return this.f18722l;
    }

    /* renamed from: k */
    public final String m4656k() {
        String str;
        Pair<String, Long> m4617a = mo4029w().f18760b.m4617a();
        if (m4617a == null || m4617a == C4277el.f18755a) {
            str = null;
        } else {
            String valueOf = String.valueOf(m4617a.second);
            String str2 = (String) m4617a.first;
            str = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str2).length()).append(valueOf).append(":").append(str2).toString();
        }
        return str;
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

    /* renamed from: x_ */
    public final C4266ea m4655x_() {
        return this.f18714d;
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ C4439kk mo4026y() {
        return super.mo4026y();
    }
}
