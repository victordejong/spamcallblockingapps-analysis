package p007a6;

import android.os.Parcel;
import ba.C0748b;
import com.applovin.impl.sdk.p055c.C1314b;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.measurement.internal.zzfu;
import java.util.concurrent.TimeUnit;
import p149k8.C3387c0;
import p237t.C4350g;
/* renamed from: a6.h */
/* loaded from: classes-dex2jar.jar:a6/h.class */
public final /* synthetic */ class C0033h {
    /* renamed from: a */
    public static int m8896a(int i) {
        int[] m8893d;
        for (int i2 : m8893d()) {
            if (m8892e(i2) == i) {
                return i2;
            }
        }
        return 0;
    }

    /* renamed from: b */
    public static int[] m8895b() {
        return C4350g.m1020d(6);
    }

    /* renamed from: c */
    public static int[] m8894c() {
        return C4350g.m1020d(2);
    }

    /* renamed from: d */
    public static int[] m8893d() {
        return C4350g.m1020d(11);
    }

    /* renamed from: e */
    public static /* synthetic */ int m8892e(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        if (i == 5) {
            return 7;
        }
        if (i == 6) {
            return 8;
        }
        if (i == 7) {
            return 9;
        }
        if (i == 8) {
            return 10;
        }
        if (i == 9) {
            return 11;
        }
        if (i == 10) {
            return 12;
        }
        if (i != 11) {
            throw null;
        }
        return 13;
    }

    /* renamed from: f */
    public static /* synthetic */ String m8891f(int i) {
        if (i == 1) {
            return "_as";
        }
        if (i == 2) {
            return "_astui";
        }
        if (i == 3) {
            return "_astfd";
        }
        if (i == 4) {
            return "_asti";
        }
        if (i == 5) {
            return "_fs";
        }
        if (i != 6) {
            throw null;
        }
        return "_bs";
    }

    /* renamed from: g */
    public static int m8890g(int i, int i2, int i3, int i4) {
        return i + i2 + i3 + i4;
    }

    /* renamed from: h */
    public static int m8889h(String str, int i, int i2) {
        return str.length() + i + i2;
    }

    /* renamed from: i */
    public static C1314b m8888i(TimeUnit timeUnit, long j, String str) {
        return C1314b.m5830a(str, Long.valueOf(timeUnit.toMillis(j)));
    }

    /* renamed from: j */
    public static IObjectWrapper m8887j(Parcel parcel) {
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        parcel.recycle();
        return asInterface;
    }

    /* renamed from: k */
    public static String m8886k(String str, int i) {
        return str + i;
    }

    /* renamed from: l */
    public static String m8885l(StringBuilder sb, int i, String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: m */
    public static void m8884m(int i, C0748b c0748b) {
        c0748b.m7404g(new C3387c0(i));
    }

    /* renamed from: n */
    public static void m8883n(zzfu zzfuVar, String str) {
        zzfuVar.zzau().zzb().zza(str);
    }

    /* renamed from: o */
    public static void m8882o(StringBuilder sb, String str, char c, String str2) {
        sb.append(str);
        sb.append(c);
        sb.append(str2);
    }

    /* renamed from: p */
    public static /* synthetic */ String m8881p(int i) {
        return i == 1 ? "OK" : i == 2 ? "BAD_CONFIG" : i == 3 ? "AUTH_ERROR" : "null";
    }

    /* renamed from: q */
    public static /* synthetic */ String m8880q(int i) {
        return i == 1 ? "EXPONENTIAL" : i == 2 ? "LINEAR" : "null";
    }

    /* renamed from: r */
    public static /* synthetic */ String m8879r(int i) {
        return i == 1 ? "NO_ERROR" : i == 2 ? "PROTOCOL_ERROR" : i == 3 ? "INTERNAL_ERROR" : i == 4 ? "FLOW_CONTROL_ERROR" : i == 5 ? "REFUSED_STREAM" : i == 6 ? "CANCEL" : i == 7 ? "COMPRESSION_ERROR" : i == 8 ? "CONNECT_ERROR" : i == 9 ? "ENHANCE_YOUR_CALM" : i == 10 ? "INADEQUATE_SECURITY" : i == 11 ? "HTTP_1_1_REQUIRED" : "null";
    }
}
