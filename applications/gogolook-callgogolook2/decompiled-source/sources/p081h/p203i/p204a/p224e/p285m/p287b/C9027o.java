package p081h.p203i.p204a.p224e.p285m.p287b;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import com.google.android.gms.measurement.AppMeasurement;
import gogolook.callgogolook2.gson.UserProfile;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.o */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/o.class */
public final class C9027o extends AbstractC9035p1 {
    @GuardedBy("this")

    /* renamed from: e */
    public String f20521e;

    /* renamed from: c */
    public char f20519c = (char) 0;

    /* renamed from: d */
    public long f20520d = -1;

    /* renamed from: f */
    public final C9039q f20522f = new C9039q(this, 6, false, false);

    /* renamed from: g */
    public final C9039q f20523g = new C9039q(this, 6, true, false);

    /* renamed from: h */
    public final C9039q f20524h = new C9039q(this, 6, false, true);

    /* renamed from: i */
    public final C9039q f20525i = new C9039q(this, 5, false, false);

    /* renamed from: j */
    public final C9039q f20526j = new C9039q(this, 5, true, false);

    /* renamed from: k */
    public final C9039q f20527k = new C9039q(this, 5, false, true);

    /* renamed from: l */
    public final C9039q f20528l = new C9039q(this, 4, false, false);

    /* renamed from: m */
    public final C9039q f20529m = new C9039q(this, 3, false, false);

    /* renamed from: n */
    public final C9039q f20530n = new C9039q(this, 2, false, false);

    public C9027o(C9052s0 s0Var) {
        super(s0Var);
    }

    /* renamed from: a */
    public static Object m16380a(String str) {
        if (str == null) {
            return null;
        }
        return new C9045r(str);
    }

    /* renamed from: a */
    public static String m16379a(boolean z, Object obj) {
        String str;
        StackTraceElement[] stackTrace;
        String className;
        String str2 = "";
        if (obj == null) {
            return "";
        }
        Object obj2 = obj;
        if (obj instanceof Integer) {
            obj2 = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj2 instanceof Long) {
            if (!z) {
                return String.valueOf(obj2);
            }
            Long l = (Long) obj2;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj2);
            }
            if (String.valueOf(obj2).charAt(0) == '-') {
                str2 = "-";
            }
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str2.length() + 43 + str2.length());
            sb.append(str2);
            sb.append(round);
            sb.append("...");
            sb.append(str2);
            sb.append(round2);
            return sb.toString();
        } else if (obj2 instanceof Boolean) {
            return String.valueOf(obj2);
        } else {
            if (obj2 instanceof Throwable) {
                Throwable th = (Throwable) obj2;
                StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
                String b = m16376b(AppMeasurement.class.getCanonicalName());
                String b2 = m16376b(C9052s0.class.getCanonicalName());
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                        String b3 = m16376b(className);
                        if (b3.equals(b) || b3.equals(b2)) {
                            sb2.append(": ");
                            sb2.append(stackTraceElement);
                            break;
                        }
                    }
                }
                return sb2.toString();
            } else if (!(obj2 instanceof C9045r)) {
                return z ? "-" : String.valueOf(obj2);
            } else {
                str = ((C9045r) obj2).f20580a;
                return str;
            }
        }
    }

    /* renamed from: a */
    public static String m16378a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String a = m16379a(z, obj);
        String a2 = m16379a(z, obj2);
        String a3 = m16379a(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
            str2 = ": ";
        }
        String str4 = str2;
        if (!TextUtils.isEmpty(a)) {
            sb.append(str2);
            sb.append(a);
            str4 = UserProfile.CARD_CATE_SEPARATOR;
        }
        String str5 = str4;
        if (!TextUtils.isEmpty(a2)) {
            sb.append(str4);
            sb.append(a2);
            str5 = UserProfile.CARD_CATE_SEPARATOR;
        }
        if (!TextUtils.isEmpty(a3)) {
            sb.append(str5);
            sb.append(a3);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m16376b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    /* renamed from: A */
    public final C9039q m16389A() {
        return this.f20530n;
    }

    /* renamed from: B */
    public final String m16388B() {
        String str;
        synchronized (this) {
            if (this.f20521e == null) {
                if (this.f20541a.m16304C() != null) {
                    this.f20521e = this.f20541a.m16304C();
                } else {
                    this.f20521e = C9008k4.m16483s();
                }
            }
            str = this.f20521e;
        }
        return str;
    }

    /* renamed from: C */
    public final String m16387C() {
        Pair<String, Long> b = m16350k().f20199d.m16665b();
        if (b == null || b == C8943a0.f20197w) {
            return null;
        }
        String valueOf = String.valueOf(b.second);
        String str = (String) b.first;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
        sb.append(valueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m16385a(int i, String str) {
        Log.println(i, m16388B(), str);
    }

    /* renamed from: a */
    public final void m16384a(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && m16386a(i)) {
            m16385a(i, m16378a(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            C7021t.m21290a(str);
            C9028o0 x = this.f20541a.m16269x();
            if (x == null) {
                m16385a(6, "Scheduler not set. Not logging error/warn");
            } else if (!x.m16343m()) {
                m16385a(6, "Scheduler not initialized. Not logging error/warn");
            } else {
                int i2 = i;
                if (i < 0) {
                    i2 = 0;
                }
                if (i2 >= 9) {
                    i2 = 8;
                }
                x.m16364a(new RunnableC9033p(this, i2, str, obj, obj2, obj3));
            }
        }
    }

    /* renamed from: a */
    public final boolean m16386a(int i) {
        return Log.isLoggable(m16388B(), i);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9035p1
    /* renamed from: p */
    public final boolean mo16126p() {
        return false;
    }

    /* renamed from: s */
    public final C9039q m16375s() {
        return this.f20522f;
    }

    /* renamed from: t */
    public final C9039q m16374t() {
        return this.f20523g;
    }

    /* renamed from: u */
    public final C9039q m16373u() {
        return this.f20524h;
    }

    /* renamed from: v */
    public final C9039q m16372v() {
        return this.f20525i;
    }

    /* renamed from: w */
    public final C9039q m16371w() {
        return this.f20526j;
    }

    /* renamed from: x */
    public final C9039q m16370x() {
        return this.f20527k;
    }

    /* renamed from: y */
    public final C9039q m16369y() {
        return this.f20528l;
    }

    /* renamed from: z */
    public final C9039q m16368z() {
        return this.f20529m;
    }
}
