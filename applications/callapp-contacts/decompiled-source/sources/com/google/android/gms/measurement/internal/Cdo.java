package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.sinch.verification.core.verification.VerificationLanguage;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.measurement.internal.do  reason: invalid class name */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/do.class */
public final class Cdo extends fn {

    /* renamed from: a  reason: collision with root package name */
    char f29504a = (char) 0;

    /* renamed from: b  reason: collision with root package name */
    long f29505b = -1;

    /* renamed from: c  reason: collision with root package name */
    public final dm f29506c = new dm(this, 6, false, false);

    /* renamed from: d  reason: collision with root package name */
    final dm f29507d = new dm(this, 6, true, false);
    final dm e = new dm(this, 6, false, true);
    public final dm f = new dm(this, 5, false, false);
    final dm g = new dm(this, 5, true, false);
    final dm h = new dm(this, 5, false, true);
    final dm i = new dm(this, 4, false, false);
    final dm j = new dm(this, 3, false, false);
    public final dm k = new dm(this, 2, false, false);
    private String l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cdo(es esVar) {
        super(esVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object a(String str) {
        if (str == null) {
            return null;
        }
        return new dn(str);
    }

    private static String a(boolean z, Object obj) {
        String className;
        String str = "";
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
                str = VerificationLanguage.REGION_PREFIX;
            }
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str.length() + 43 + str.length());
            sb.append(str);
            sb.append(round);
            sb.append("...");
            sb.append(str);
            sb.append(round2);
            return sb.toString();
        } else if (obj2 instanceof Boolean) {
            return String.valueOf(obj2);
        } else {
            if (!(obj2 instanceof Throwable)) {
                return obj2 instanceof dn ? ((dn) obj2).f29503a : z ? VerificationLanguage.REGION_PREFIX : String.valueOf(obj2);
            }
            Throwable th = (Throwable) obj2;
            StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
            String b2 = b(es.class.getCanonicalName());
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i];
                if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && b(className).equals(b2)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
                i++;
            }
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String a2 = a(z, obj);
        String a3 = a(z, obj2);
        String a4 = a(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
            str2 = ": ";
        }
        r5 = ", ";
        String str4 = str2;
        if (!TextUtils.isEmpty(a2)) {
            sb.append(str2);
            sb.append(a2);
            str4 = ", ";
        }
        if (!TextUtils.isEmpty(a3)) {
            sb.append(str4);
            sb.append(a3);
        }
        if (!TextUtils.isEmpty(a4)) {
            sb.append(str4);
            sb.append(a4);
        }
        return sb.toString();
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(ag_(), i)) {
            Log.println(i, ag_(), a(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            o.a(str);
            ep epVar = this.t.i;
            if (epVar == null) {
                Log.println(6, ag_(), "Scheduler not set. Not logging error/warn");
            } else if (!epVar.f()) {
                Log.println(6, ag_(), "Scheduler not initialized. Not logging error/warn");
            } else {
                if (i >= 9) {
                    i = 8;
                }
                epVar.a(new dl(this, i, str, obj, obj2, obj3));
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.fn
    protected final boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @EnsuresNonNull({"logTagDoNotUseDirectly"})
    public final String ag_() {
        String str;
        synchronized (this) {
            if (this.l == null) {
                if (this.t.f29586d != null) {
                    this.l = this.t.f29586d;
                } else {
                    e eVar = this.t.g;
                    this.l = "FA";
                }
            }
            o.a(this.l);
            str = this.l;
        }
        return str;
    }
}
