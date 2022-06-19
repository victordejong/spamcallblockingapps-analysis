package android.support.p012v4.media;

import android.content.Context;
import ba.C0748b;
import p068d2.C2408t;
import p149k8.C3401q;
/* renamed from: android.support.v4.media.b */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/b.class */
public final /* synthetic */ class C0082b {
    /* renamed from: a */
    public static boolean m8761a(int i) {
        boolean z = true;
        if ((i & 1) != 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static int m8760b(int i, int i2, int i3, int i4) {
        return ((i * i2) / i3) + i4;
    }

    /* renamed from: c */
    public static C0748b m8759c(int i, C0748b c0748b) {
        c0748b.m7404g(new C3401q(i));
        return C0748b.m7409b();
    }

    /* renamed from: d */
    public static String m8758d(int i, String str, int i2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: e */
    public static String m8757e(int i, String str, int i2, String str2, int i3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i3);
        return sb.toString();
    }

    /* renamed from: f */
    public static String m8756f(Context context, int i, StringBuilder sb, String str) {
        sb.append(context.getString(i));
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: g */
    public static String m8755g(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    /* renamed from: h */
    public static String m8754h(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: i */
    public static StringBuilder m8753i(int i, String str, int i2, String str2, int i3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i3);
        return sb;
    }

    /* renamed from: j */
    public static StringBuilder m8752j(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    /* renamed from: k */
    public static StringBuilder m8751k(String str, int i, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    /* renamed from: l */
    public static void m8750l(int i, int i2, String str, boolean z) {
        C2408t.m3591d().m3718p().m3686e(i, i2, str, z);
    }

    /* renamed from: m */
    public static void m8749m(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    /* renamed from: n */
    public static /* synthetic */ String m8748n(int i) {
        return i == 1 ? "RUN_AS_NON_EXPEDITED_WORK_REQUEST" : i == 2 ? "DROP_WORK_REQUEST" : "null";
    }

    /* renamed from: o */
    public static /* synthetic */ String m8747o(int i) {
        return i == 1 ? "OK" : i == 2 ? "TRANSIENT_ERROR" : i == 3 ? "FATAL_ERROR" : "null";
    }

    /* renamed from: p */
    public static /* synthetic */ String m8746p(int i) {
        return i == 1 ? "BEGIN_ARRAY" : i == 2 ? "END_ARRAY" : i == 3 ? "BEGIN_OBJECT" : i == 4 ? "END_OBJECT" : i == 5 ? "NAME" : i == 6 ? "STRING" : i == 7 ? "NUMBER" : i == 8 ? "BOOLEAN" : i == 9 ? "NULL" : i == 10 ? "END_DOCUMENT" : "null";
    }
}
