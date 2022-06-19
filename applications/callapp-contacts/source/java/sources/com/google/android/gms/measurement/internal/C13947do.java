package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
import com.sinch.verification.core.verification.VerificationLanguage;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.measurement.internal.do */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/do.class */
public final class C13947do extends AbstractC14001fn {

    /* renamed from: a */
    char f51393a = (char) 0;

    /* renamed from: b */
    long f51394b = -1;

    /* renamed from: c */
    public final C13945dm f51395c = new C13945dm(this, 6, false, false);

    /* renamed from: d */
    final C13945dm f51396d = new C13945dm(this, 6, true, false);

    /* renamed from: e */
    final C13945dm f51397e = new C13945dm(this, 6, false, true);

    /* renamed from: f */
    public final C13945dm f51398f = new C13945dm(this, 5, false, false);

    /* renamed from: g */
    final C13945dm f51399g = new C13945dm(this, 5, true, false);

    /* renamed from: h */
    final C13945dm f51400h = new C13945dm(this, 5, false, true);

    /* renamed from: i */
    final C13945dm f51401i = new C13945dm(this, 4, false, false);

    /* renamed from: j */
    final C13945dm f51402j = new C13945dm(this, 3, false, false);

    /* renamed from: k */
    public final C13945dm f51403k = new C13945dm(this, 2, false, false);

    /* renamed from: l */
    private String f51404l;

    public C13947do(C13979es c13979es) {
        super(c13979es);
    }

    /* renamed from: a */
    public static Object m12087a(String str) {
        if (str == null) {
            return null;
        }
        return new C13946dn(str);
    }

    /* renamed from: a */
    private static String m12086a(boolean z, Object obj) {
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
            String str = "";
            if (String.valueOf(l).charAt(0) == '-') {
                str = VerificationLanguage.REGION_PREFIX;
            }
            String valueOf = String.valueOf(Math.abs(l2.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str.length() + 43 + str.length());
            sb.append(str);
            sb.append(round);
            sb.append("...");
            sb.append(str);
            sb.append(round2);
            return sb.toString();
        } else if (l instanceof Boolean) {
            return String.valueOf(l);
        } else {
            if (!(l instanceof Throwable)) {
                return l instanceof C13946dn ? ((C13946dn) l).f51392a : z ? VerificationLanguage.REGION_PREFIX : String.valueOf(l);
            }
            Throwable th = (Throwable) l;
            StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
            String m12084b = m12084b(C13979es.class.getCanonicalName());
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i];
                if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && m12084b(className).equals(m12084b)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
                i++;
            }
            return sb2.toString();
        }
    }

    /* renamed from: a */
    public static String m12085a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        String m12086a = m12086a(z, obj);
        String m12086a2 = m12086a(z, obj2);
        String m12086a3 = m12086a(z, obj3);
        StringBuilder sb = new StringBuilder();
        String str3 = "";
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
            str3 = ": ";
        }
        String str4 = str3;
        if (!TextUtils.isEmpty(m12086a)) {
            sb.append(str3);
            sb.append(m12086a);
            str4 = ", ";
        }
        if (!TextUtils.isEmpty(m12086a2)) {
            sb.append(str4);
            sb.append(m12086a2);
            str4 = ", ";
        }
        if (!TextUtils.isEmpty(m12086a3)) {
            sb.append(str4);
            sb.append(m12086a3);
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static String m12084b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    /* renamed from: a */
    public final void m12088a(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(ag_(), i)) {
            Log.println(i, ag_(), m12085a(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        C12045o.m19162a(str);
        C13976ep c13976ep = this.f51637t.f51531i;
        if (c13976ep == null) {
            Log.println(6, ag_(), "Scheduler not set. Not logging error/warn");
        } else if (!c13976ep.m11882f()) {
            Log.println(6, ag_(), "Scheduler not initialized. Not logging error/warn");
        } else {
            if (i >= 9) {
                i = 8;
            }
            c13976ep.m12011a(new RunnableC13944dl(this, i, str, obj, obj2, obj3));
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14001fn
    /* renamed from: a */
    protected final boolean mo11519a() {
        return false;
    }

    @EnsuresNonNull({"logTagDoNotUseDirectly"})
    public final String ag_() {
        String str;
        synchronized (this) {
            if (this.f51404l == null) {
                if (this.f51637t.f51526d != null) {
                    this.f51404l = this.f51637t.f51526d;
                } else {
                    C13959e c13959e = this.f51637t.f51529g;
                    this.f51404l = "FA";
                }
            }
            C12045o.m19162a(this.f51404l);
            str = this.f51404l;
        }
        return str;
    }
}
