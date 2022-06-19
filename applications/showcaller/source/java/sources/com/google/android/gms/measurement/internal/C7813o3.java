package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.C6155o;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.measurement.internal.o3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/o3.class */
public final class C7813o3 extends AbstractC7804n5 {

    /* renamed from: e */
    private String f35515e;

    /* renamed from: c */
    private char f35513c = (char) 0;

    /* renamed from: d */
    private long f35514d = -1;

    /* renamed from: f */
    private final C7791m3 f35516f = new C7791m3(this, 6, false, false);

    /* renamed from: g */
    private final C7791m3 f35517g = new C7791m3(this, 6, true, false);

    /* renamed from: h */
    private final C7791m3 f35518h = new C7791m3(this, 6, false, true);

    /* renamed from: i */
    private final C7791m3 f35519i = new C7791m3(this, 5, false, false);

    /* renamed from: j */
    private final C7791m3 f35520j = new C7791m3(this, 5, true, false);

    /* renamed from: k */
    private final C7791m3 f35521k = new C7791m3(this, 5, false, true);

    /* renamed from: l */
    private final C7791m3 f35522l = new C7791m3(this, 4, false, false);

    /* renamed from: m */
    private final C7791m3 f35523m = new C7791m3(this, 3, false, false);

    /* renamed from: n */
    private final C7791m3 f35524n = new C7791m3(this, 2, false, false);

    public C7813o3(C7858s4 c7858s4) {
        super(c7858s4);
    }

    /* renamed from: A */
    static String m6201A(boolean z, Object obj) {
        String str;
        String className;
        if (obj == null) {
            return "";
        }
        Long l = obj;
        if (obj instanceof Integer) {
            l = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (l instanceof Long) {
            if (!z) {
                return String.valueOf(l);
            }
            Long l2 = (Long) l;
            if (Math.abs(l2.longValue()) < 100) {
                return String.valueOf(l);
            }
            String str2 = "";
            if (String.valueOf(l).charAt(0) == '-') {
                str2 = "-";
            }
            String valueOf = String.valueOf(Math.abs(l2.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str2.length() + 43 + str2.length());
            sb.append(str2);
            sb.append(round);
            sb.append("...");
            sb.append(str2);
            sb.append(round2);
            return sb.toString();
        } else if (l instanceof Boolean) {
            return String.valueOf(l);
        } else {
            if (!(l instanceof Throwable)) {
                if (!(l instanceof C7802n3)) {
                    return z ? "-" : String.valueOf(l);
                }
                str = ((C7802n3) l).f35481a;
                return str;
            }
            Throwable th = (Throwable) l;
            StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
            String m6196G = m6196G(C7858s4.class.getCanonicalName());
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i];
                if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && m6196G(className).equals(m6196G)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
                i++;
            }
            return sb2.toString();
        }
    }

    /* renamed from: G */
    private static String m6196G(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    /* renamed from: v */
    public static Object m6186v(String str) {
        if (str == null) {
            return null;
        }
        return new C7802n3(str);
    }

    /* renamed from: z */
    public static String m6183z(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        String m6201A = m6201A(z, obj);
        String m6201A2 = m6201A(z, obj2);
        String m6201A3 = m6201A(z, obj3);
        StringBuilder sb = new StringBuilder();
        String str3 = "";
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
            str3 = ": ";
        }
        String str4 = str3;
        if (!TextUtils.isEmpty(m6201A)) {
            sb.append(str3);
            sb.append(m6201A);
            str4 = ", ";
        }
        if (!TextUtils.isEmpty(m6201A2)) {
            sb.append(str4);
            sb.append(m6201A2);
            str4 = ", ";
        }
        if (!TextUtils.isEmpty(m6201A3)) {
            sb.append(str4);
            sb.append(m6201A3);
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7804n5
    /* renamed from: g */
    protected final boolean mo5878g() {
        return false;
    }

    /* renamed from: m */
    public final C7791m3 m6195m() {
        return this.f35516f;
    }

    /* renamed from: n */
    public final C7791m3 m6194n() {
        return this.f35517g;
    }

    /* renamed from: o */
    public final C7791m3 m6193o() {
        return this.f35518h;
    }

    /* renamed from: p */
    public final C7791m3 m6192p() {
        return this.f35519i;
    }

    /* renamed from: q */
    public final C7791m3 m6191q() {
        return this.f35520j;
    }

    /* renamed from: r */
    public final C7791m3 m6190r() {
        return this.f35521k;
    }

    /* renamed from: s */
    public final C7791m3 m6189s() {
        return this.f35522l;
    }

    /* renamed from: t */
    public final C7791m3 m6188t() {
        return this.f35523m;
    }

    /* renamed from: u */
    public final C7791m3 m6187u() {
        return this.f35524n;
    }

    /* renamed from: w */
    public final void m6185w(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(m6184y(), i)) {
            Log.println(i, m6184y(), m6183z(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        C6155o.m17018j(str);
        C7825p4 m6045E = this.f35460a.m6045E();
        if (m6045E == null) {
            Log.println(6, m6184y(), "Scheduler not set. Not logging error/warn");
        } else if (!m6045E.m6210i()) {
            Log.println(6, m6184y(), "Scheduler not initialized. Not logging error/warn");
        } else {
            if (i >= 9) {
                i = 8;
            }
            m6045E.m6109p(new RunnableC7780l3(this, i, str, obj, obj2, obj3));
        }
    }

    @EnsuresNonNull({"logTagDoNotUseDirectly"})
    /* renamed from: y */
    public final String m6184y() {
        String str;
        synchronized (this) {
            if (this.f35515e == null) {
                if (this.f35460a.m6036N() != null) {
                    this.f35515e = this.f35460a.m6036N();
                } else {
                    this.f35515e = this.f35460a.m6006y().m6482j();
                }
            }
            C6155o.m17018j(this.f35515e);
            str = this.f35515e;
        }
        return str;
    }
}
