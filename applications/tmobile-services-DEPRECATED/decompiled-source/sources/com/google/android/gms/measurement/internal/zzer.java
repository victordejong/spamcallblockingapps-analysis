package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzer.class */
public final class zzer extends zzgr {
    @GuardedBy

    /* renamed from: e */
    private String f9110e;

    /* renamed from: c */
    private char f9108c = (char) 0;

    /* renamed from: d */
    private long f9109d = -1;

    /* renamed from: f */
    private final zzet f9111f = new zzet(this, 6, false, false);

    /* renamed from: g */
    private final zzet f9112g = new zzet(this, 6, true, false);

    /* renamed from: h */
    private final zzet f9113h = new zzet(this, 6, false, true);

    /* renamed from: i */
    private final zzet f9114i = new zzet(this, 5, false, false);

    /* renamed from: j */
    private final zzet f9115j = new zzet(this, 5, true, false);

    /* renamed from: k */
    private final zzet f9116k = new zzet(this, 5, false, true);

    /* renamed from: l */
    private final zzet f9117l = new zzet(this, 4, false, false);

    /* renamed from: m */
    private final zzet f9118m = new zzet(this, 3, false, false);

    /* renamed from: n */
    private final zzet f9119n = new zzet(this, 2, false, false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzer(zzfv zzfvVar) {
        super(zzfvVar);
    }

    /* renamed from: C */
    private static String m11561C(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    @VisibleForTesting
    /* renamed from: N */
    private final String m11550N() {
        String str;
        synchronized (this) {
            if (this.f9110e == null) {
                this.f9110e = this.f9354a.m11375M() != null ? this.f9354a.m11375M() : "FA";
            }
            str = this.f9110e;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: v */
    public static Object m11546v(String str) {
        if (str == null) {
            return null;
        }
        return new zzes(str);
    }

    @VisibleForTesting
    /* renamed from: w */
    private static String m11545w(boolean z, Object obj) {
        String str;
        String className;
        String str2 = "";
        if (obj == null) {
            return "";
        }
        Object obj2 = obj;
        if (obj instanceof Integer) {
            obj2 = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (obj2 instanceof Long) {
            if (!z) {
                return String.valueOf(obj2);
            }
            Long l = (Long) obj2;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj2);
            }
            if (String.valueOf(obj2).charAt(0) == '-') {
                str2 = HelpFormatter.DEFAULT_OPT_PREFIX;
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
                String C = m11561C(zzfv.class.getCanonicalName());
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i];
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && m11561C(className).equals(C)) {
                        sb2.append(": ");
                        sb2.append(stackTraceElement);
                        break;
                    }
                    i++;
                }
                return sb2.toString();
            } else if (!(obj2 instanceof zzes)) {
                return z ? HelpFormatter.DEFAULT_OPT_PREFIX : String.valueOf(obj2);
            } else {
                str = ((zzes) obj2).f9120a;
                return str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public static String m11544x(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String w = m11545w(z, obj);
        String w2 = m11545w(z, obj2);
        String w3 = m11545w(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
            str2 = ": ";
        }
        String str4 = ", ";
        String str5 = str2;
        if (!TextUtils.isEmpty(w)) {
            sb.append(str2);
            sb.append(w);
            str5 = ", ";
        }
        if (!TextUtils.isEmpty(w2)) {
            sb.append(str5);
            sb.append(w2);
        } else {
            str4 = str5;
        }
        if (!TextUtils.isEmpty(w3)) {
            sb.append(str4);
            sb.append(w3);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    /* renamed from: A */
    public final boolean m11563A(int i) {
        return Log.isLoggable(m11550N(), i);
    }

    /* renamed from: D */
    public final zzet m11560D() {
        return this.f9111f;
    }

    /* renamed from: E */
    public final zzet m11559E() {
        return this.f9112g;
    }

    /* renamed from: F */
    public final zzet m11558F() {
        return this.f9113h;
    }

    /* renamed from: G */
    public final zzet m11557G() {
        return this.f9114i;
    }

    /* renamed from: H */
    public final zzet m11556H() {
        return this.f9115j;
    }

    /* renamed from: I */
    public final zzet m11555I() {
        return this.f9116k;
    }

    /* renamed from: J */
    public final zzet m11554J() {
        return this.f9117l;
    }

    /* renamed from: K */
    public final zzet m11553K() {
        return this.f9118m;
    }

    /* renamed from: L */
    public final zzet m11552L() {
        return this.f9119n;
    }

    /* renamed from: M */
    public final String m11551M() {
        Pair<String, Long> a = m11312k().f9185d.m11437a();
        if (a == null || a == zzfd.f9180D) {
            return null;
        }
        String valueOf = String.valueOf(a.second);
        String str = (String) a.first;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
        sb.append(valueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    /* renamed from: q */
    protected final boolean mo10948q() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    /* renamed from: y */
    public final void m11543y(int i, String str) {
        Log.println(i, m11550N(), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: z */
    public final void m11542z(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && m11563A(i)) {
            m11543y(i, m11544x(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            Preconditions.m14523k(str);
            zzfo E = this.f9354a.m11383E();
            if (E == null) {
                m11543y(6, "Scheduler not set. Not logging error/warn");
            } else if (!E.m11307r()) {
                m11543y(6, "Scheduler not initialized. Not logging error/warn");
            } else {
                int i2 = i;
                if (i < 0) {
                    i2 = 0;
                }
                if (i2 >= 9) {
                    i2 = 8;
                }
                E.m11409x(new zzeq(this, i2, str, obj, obj2, obj3));
            }
        }
    }
}
