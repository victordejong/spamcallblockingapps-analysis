package com.callerid.block.util;

import com.callerid.block.main.EZCallApplication;
import com.tencent.mmkv.MMKV;
/* renamed from: com.callerid.block.util.y */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/y.class */
public class C1235y {

    /* renamed from: a */
    public static String f5092a = m9496d();

    /* renamed from: a */
    public static boolean m9499a(String str, boolean z) {
        try {
            if (MMKV.n() == null) {
                MMKV.o(f5092a, new c());
            }
            if (MMKV.n() != null) {
                return MMKV.t("CallerIdMain", 2).c(str, z);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return z;
    }

    /* renamed from: b */
    public static int m9498b(String str, int i) {
        try {
            if (MMKV.n() == null) {
                MMKV.o(f5092a, new e());
            }
            if (MMKV.n() != null) {
                return MMKV.t("CallerIdMain", 2).d(str, i);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return i;
    }

    /* renamed from: c */
    public static long m9497c(String str, long j) {
        try {
            if (MMKV.n() == null) {
                MMKV.o(f5092a, new g());
            }
            if (MMKV.n() != null) {
                return MMKV.t("CallerIdMain", 2).e(str, j);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return j;
    }

    /* renamed from: d */
    private static String m9496d() {
        String str;
        try {
            str = EZCallApplication.m10163c().getFilesDir().getAbsolutePath() + "/mmkv";
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return str;
    }

    /* renamed from: e */
    public static String m9495e(String str, String str2) {
        try {
            if (MMKV.n() == null) {
                MMKV.o(f5092a, new a());
            }
            if (MMKV.n() != null) {
                return MMKV.t("CallerIdMain", 2).f(str, str2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return str2;
    }

    /* renamed from: f */
    public static void m9494f(String str, boolean z) {
        try {
            if (MMKV.n() == null) {
                MMKV.o(f5092a, new d());
            }
            if (MMKV.n() != null) {
                MMKV.t("CallerIdMain", 2).m(str, z);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: g */
    public static void m9493g(String str, int i) {
        try {
            if (MMKV.n() == null) {
                MMKV.o(f5092a, new f());
            }
            if (MMKV.n() != null) {
                MMKV.t("CallerIdMain", 2).i(str, i);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: h */
    public static void m9492h(String str, long j) {
        try {
            if (MMKV.n() == null) {
                MMKV.o(f5092a, new h());
            }
            if (MMKV.n() != null) {
                MMKV.t("CallerIdMain", 2).j(str, j);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: i */
    public static void m9491i(String str, String str2) {
        try {
            if (MMKV.n() == null) {
                MMKV.o(f5092a, new b());
            }
            if (MMKV.n() != null) {
                MMKV.t("CallerIdMain", 2).k(str, str2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
