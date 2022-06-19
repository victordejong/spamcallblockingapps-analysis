package com.callerid.block.util.p059w0;

import com.callerid.block.util.C1171d0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.C1235y;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* renamed from: com.callerid.block.util.w0.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/w0/a.class */
public class C1228a {
    /* renamed from: a */
    private static String m9524a() {
        return new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis()));
    }

    /* renamed from: b */
    public static String m9523b() {
        return C1235y.m9495e("MissCallInstallTime", null);
    }

    /* renamed from: c */
    public static boolean m9522c() {
        return C1171d0.m9868x() && !m9519f();
    }

    /* renamed from: d */
    public static boolean m9521d() {
        return C1171d0.m9867y() && !m9519f();
    }

    /* renamed from: e */
    public static boolean m9520e() {
        return C1171d0.m9866z() && !m9519f();
    }

    /* renamed from: f */
    private static boolean m9519f() {
        return m9524a().equals(m9523b());
    }

    /* renamed from: g */
    public static void m9518g() {
        if (m9523b() == null) {
            C1235y.m9491i("MissCallInstallTime", m9524a());
            if (!C1227w.f5084a) {
                return;
            }
            C1227w.m9527a("wbb", "保存用户第一次安装的时间");
        }
    }
}
