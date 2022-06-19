package androidx.recyclerview.widget;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.measurement.internal.zzfu;
import p237t.C4350g;
import sun.misc.Unsafe;
/* renamed from: androidx.recyclerview.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b.class */
public final /* synthetic */ class C0608b {
    /* renamed from: a */
    public static int[] m7634a() {
        return C4350g.m1020d(2);
    }

    /* renamed from: b */
    public static int[] m7633b() {
        return C4350g.m1020d(5);
    }

    /* renamed from: c */
    public static /* synthetic */ int m7632c(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            throw null;
        }
        return 2;
    }

    /* renamed from: d */
    public static /* synthetic */ int m7631d(int i) {
        if (i == 1) {
            return 96;
        }
        if (i == 2) {
            return 384;
        }
        if (i != 3) {
            throw null;
        }
        return -1;
    }

    /* renamed from: e */
    public static /* synthetic */ int m7630e(int i) {
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        if (i == 3) {
            return 3;
        }
        if (i != 4) {
            throw null;
        }
        return 4;
    }

    /* renamed from: f */
    public static /* synthetic */ int m7629f(int i) {
        if (i == 1) {
            return 96;
        }
        if (i == 2) {
            return AdRequest.MAX_CONTENT_URL_LENGTH;
        }
        if (i != 3) {
            throw null;
        }
        return -1;
    }

    /* renamed from: g */
    public static float m7628g(float f, float f2, float f3, float f4) {
        return ((f - f2) / f3) + f4;
    }

    /* renamed from: h */
    public static String m7627h(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.m7917A());
        return sb.toString();
    }

    /* renamed from: i */
    public static String m7626i(String str) {
        return str;
    }

    /* renamed from: j */
    public static String m7625j(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: k */
    public static StringBuilder m7624k(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    /* renamed from: l */
    public static void m7623l(zzfu zzfuVar, String str) {
        zzfuVar.zzau().zzk().zza(str);
    }

    /* renamed from: m */
    public static /* synthetic */ boolean m7622m(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: n */
    public static float m7621n(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    /* renamed from: o */
    public static /* synthetic */ String m7620o(int i) {
        return i == 1 ? "UNKNOWN" : i == 2 ? "HORIZONTAL_DIMENSION" : i == 3 ? "VERTICAL_DIMENSION" : i == 4 ? "LEFT" : i == 5 ? "RIGHT" : i == 6 ? "TOP" : i == 7 ? "BOTTOM" : i == 8 ? "BASELINE" : "null";
    }

    /* renamed from: p */
    public static /* synthetic */ String m7619p(int i) {
        return i == 1 ? "ATTEMPT_MIGRATION" : i == 2 ? "NOT_GENERATED" : i == 3 ? "UNREGISTERED" : i == 4 ? "REGISTERED" : i == 5 ? "REGISTER_ERROR" : "null";
    }
}
