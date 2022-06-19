package com.bytedance.sdk.openadsdk.utils;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.p184l.C5054f;
import com.callapp.contacts.model.Constants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.openadsdk.utils.y */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/y.class */
public class C5487y {

    /* renamed from: a */
    public static boolean f19031a = false;

    /* renamed from: b */
    public static boolean f19032b = false;

    /* renamed from: c */
    private static final CharSequence f19033c = "sony";

    /* renamed from: d */
    private static final CharSequence f19034d = "amigo";

    /* renamed from: e */
    private static final CharSequence f19035e = "funtouch";

    /* renamed from: f */
    private static String f19036f;

    /* renamed from: g */
    private static int f19037g = Integer.MAX_VALUE;

    /* renamed from: com.bytedance.sdk.openadsdk.utils.y$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/y$a.class */
    public static class CallableC5489a implements Callable<String> {

        /* renamed from: a */
        private String f19039a;

        public CallableC5489a(String str) {
            this.f19039a = str;
        }

        /* renamed from: a */
        public String call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            String m32053c = C5487y.m32053c(this.f19039a);
            long currentTimeMillis2 = System.currentTimeMillis();
            C5478q.m32112b("RomUtils", "property:" + m32053c + ",getSystemProperty use time :" + (currentTimeMillis2 - currentTimeMillis));
            if (!TextUtils.isEmpty(m32053c)) {
                try {
                    if (C5094b.m33091b()) {
                        C5478q.m32107d("RomUtils", "SPMultiHelper-getPropertyFromSPMultiHelper:".concat(String.valueOf(m32053c)));
                        C5106a.m33041a("rom_info", "rom_property_info", m32053c);
                    } else {
                        C5478q.m32107d("RomUtils", "SP-getPropertyFromSP:".concat(String.valueOf(m32053c)));
                        C5490z.m32028a("rom_info", C4600n.m34815a()).m32027a("rom_property_info", m32053c);
                    }
                } catch (Throwable th) {
                }
            }
            return m32053c;
        }
    }

    /* renamed from: a */
    public static String m32058a() {
        if (!TextUtils.isEmpty(f19036f)) {
            return f19036f;
        }
        String m35024a = C4570g.m35024a("sdk_local_rom_info", (long) Constants.WEEK_IN_MILLIS);
        f19036f = m35024a;
        if (TextUtils.isEmpty(m35024a)) {
            String m32034u = m32034u();
            f19036f = m32034u;
            C4570g.m35023a("sdk_local_rom_info", m32034u);
        }
        return f19036f;
    }

    /* renamed from: a */
    public static boolean m32057a(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = m32041n();
        }
        return (!TextUtils.isEmpty(str2) && str2.toLowerCase().startsWith("emotionui")) || m32035t();
    }

    /* renamed from: b */
    public static boolean m32056b() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    /* renamed from: c */
    public static String m32054c() {
        return m32051d("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public static String m32053c(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2;
        Process exec;
        BufferedReader bufferedReader3;
        String str2;
        String str3;
        String str4 = "";
        Process process = null;
        try {
            try {
                try {
                    exec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
                    try {
                        bufferedReader2 = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
                        str2 = str4;
                        str3 = str4;
                    } catch (IllegalThreadStateException e) {
                        bufferedReader3 = null;
                    }
                } catch (IllegalThreadStateException e2) {
                    bufferedReader = null;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = null;
            }
        } catch (IOException e3) {
            C5478q.m32108c("ToolUtils", "Exception while closing InputStream", e3);
        }
        try {
            String readLine = bufferedReader2.readLine();
            str2 = readLine;
            str3 = readLine;
            exec.exitValue();
            bufferedReader2.close();
            str = readLine;
        } catch (IllegalThreadStateException e4) {
            str4 = str3;
            bufferedReader3 = bufferedReader2;
            process = exec;
            bufferedReader = bufferedReader3;
            try {
                process.destroy();
            } catch (Throwable th3) {
            }
            str = str4;
            if (bufferedReader != null) {
                bufferedReader.close();
                str = str4;
            }
            return str;
        } catch (Throwable th4) {
            str4 = str2;
            th = th4;
            try {
                C5478q.m32108c("ToolUtils", "Unable to read sysprop ".concat(String.valueOf(str)), th);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e5) {
                        C5478q.m32108c("ToolUtils", "Exception while closing InputStream", e5);
                    }
                }
                return str4;
            } catch (Throwable th5) {
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e6) {
                        C5478q.m32108c("ToolUtils", "Exception while closing InputStream", e6);
                    }
                }
                throw th5;
            }
        }
        return str;
    }

    /* renamed from: d */
    private static String m32051d(String str) {
        String str2;
        try {
            String m32033v = m32033v();
            str2 = m32033v;
            try {
                if (TextUtils.isEmpty(m32033v)) {
                    final C5054f c5054f = new C5054f(new CallableC5489a(str), 5, 2);
                    C5052e.m33162a(new AbstractRunnableC5055g("_getSystemPropertyTask") { // from class: com.bytedance.sdk.openadsdk.utils.y.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            c5054f.run();
                        }
                    });
                    str2 = (String) c5054f.get(1L, TimeUnit.SECONDS);
                }
            } catch (Throwable th) {
                str2 = m32033v;
            }
        } catch (Throwable th2) {
            str2 = "";
        }
        return str2 == null ? "" : str2;
    }

    /* renamed from: d */
    public static boolean m32052d() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    /* renamed from: e */
    public static boolean m32050e() {
        if (!f19032b) {
            try {
                if (Class.forName("miui.os.Build") != null) {
                    f19031a = true;
                    f19032b = true;
                    return true;
                }
            } catch (Exception e) {
            }
            f19032b = true;
        }
        return f19031a;
    }

    /* renamed from: f */
    public static String m32049f() {
        return m32051d("ro.vivo.os.build.display.id") + "_" + m32051d("ro.vivo.product.version");
    }

    /* renamed from: g */
    public static boolean m32048g() {
        String m32051d = m32051d("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(m32051d) && m32051d.toLowerCase().contains(f19035e);
    }

    /* renamed from: h */
    public static boolean m32047h() {
        return !TextUtils.isEmpty(Build.DISPLAY) && Build.DISPLAY.toLowerCase().contains(f19034d);
    }

    /* renamed from: i */
    public static String m32046i() {
        return Build.DISPLAY + "_" + m32051d("ro.gn.sv.version");
    }

    /* renamed from: j */
    public static String m32045j() {
        if (m32044k()) {
            return "eui_" + m32051d("ro.letv.release.version") + "_" + Build.DISPLAY;
        }
        return "";
    }

    /* renamed from: k */
    public static boolean m32044k() {
        return !TextUtils.isEmpty(m32051d("ro.letv.release.version"));
    }

    /* renamed from: l */
    public static String m32043l() {
        if (m32050e()) {
            return "miui_" + m32051d("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
        }
        return "";
    }

    /* renamed from: m */
    public static String m32042m() {
        String m32041n = m32041n();
        if (m32041n == null || !m32041n.toLowerCase().contains("emotionui")) {
            return "";
        }
        return m32041n + "_" + Build.DISPLAY;
    }

    /* renamed from: n */
    public static String m32041n() {
        return m32051d("ro.build.version.emui");
    }

    /* renamed from: o */
    public static boolean m32040o() {
        return "smartisan".equalsIgnoreCase(Build.MANUFACTURER) || "smartisan".equalsIgnoreCase(Build.BRAND);
    }

    /* renamed from: p */
    public static String m32039p() {
        if (m32040o()) {
            try {
                return "smartisan_".concat(String.valueOf(m32051d("ro.smartisan.version")));
            } catch (Throwable th) {
            }
        }
        return Build.DISPLAY;
    }

    /* renamed from: q */
    public static String m32038q() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    /* renamed from: r */
    public static boolean m32037r() {
        if (f19037g == Integer.MAX_VALUE) {
            String str = Build.MANUFACTURER;
            String m32250l = C5438af.m32250l("kllk");
            if (TextUtils.isEmpty(str) || !str.toLowerCase().contains(m32250l)) {
                f19037g = 0;
            } else {
                f19037g = 1;
            }
        }
        return f19037g == 1;
    }

    /* renamed from: s */
    public static String m32036s() {
        if (m32037r()) {
            String m32250l = C5438af.m32250l("ro.build.version.kllkrom");
            return "coloros_" + m32051d(m32250l) + "_" + Build.DISPLAY;
        }
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
        if (android.os.Build.MANUFACTURER.toLowerCase().startsWith(com.appsflyer.internal.referrer.Payload.SOURCE_HUAWEI) != false) goto L14;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m32035t() {
        /*
            r0 = 0
            r3 = r0
            java.lang.String r0 = android.os.Build.BRAND     // Catch: java.lang.Throwable -> L3e
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L3e
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L1c
            java.lang.String r0 = android.os.Build.BRAND     // Catch: java.lang.Throwable -> L3e
            java.lang.String r0 = r0.toLowerCase()     // Catch: java.lang.Throwable -> L3e
            java.lang.String r1 = "huawei"
            boolean r0 = r0.startsWith(r1)     // Catch: java.lang.Throwable -> L3e
            if (r0 != 0) goto L3a
        L1c:
            r0 = r3
            r4 = r0
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: java.lang.Throwable -> L3e
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L3e
            if (r0 != 0) goto L3c
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: java.lang.Throwable -> L3e
            java.lang.String r0 = r0.toLowerCase()     // Catch: java.lang.Throwable -> L3e
            java.lang.String r1 = "huawei"
            boolean r0 = r0.startsWith(r1)     // Catch: java.lang.Throwable -> L3e
            r5 = r0
            r0 = r3
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L3c
        L3a:
            r0 = 1
            r4 = r0
        L3c:
            r0 = r4
            return r0
        L3e:
            r6 = move-exception
            r0 = r3
            r4 = r0
            goto L3c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.C5487y.m32035t():boolean");
    }

    /* renamed from: u */
    private static String m32034u() {
        if (m32040o()) {
            return m32039p();
        }
        if (m32050e()) {
            return m32043l();
        }
        if (m32056b()) {
            return m32038q();
        }
        if (m32037r()) {
            return m32036s();
        }
        String m32042m = m32042m();
        if (!TextUtils.isEmpty(m32042m)) {
            return m32042m;
        }
        if (m32048g()) {
            return m32049f();
        }
        if (m32047h()) {
            return m32046i();
        }
        if (m32052d()) {
            return m32054c();
        }
        String m32045j = m32045j();
        return !TextUtils.isEmpty(m32045j) ? m32045j : Build.DISPLAY;
    }

    /* renamed from: v */
    private static String m32033v() {
        try {
            if (C5094b.m33091b()) {
                String m33035b = C5106a.m33035b("rom_info", "rom_property_info", "");
                C5478q.m32109c("RomUtils", "get Property From SPMultiHelper...".concat(String.valueOf(m33035b)));
                return m33035b;
            }
            String m32021b = C5490z.m32028a("rom_info", C4600n.m34815a()).m32021b("rom_property_info", "");
            C5478q.m32109c("RomUtils", "get Property From SP...=".concat(String.valueOf(m32021b)));
            return m32021b;
        } catch (Throwable th) {
            return "";
        }
    }
}
