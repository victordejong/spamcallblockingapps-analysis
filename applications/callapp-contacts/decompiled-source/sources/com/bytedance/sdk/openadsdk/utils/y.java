package com.bytedance.sdk.openadsdk.utils;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.f;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.callapp.contacts.model.Constants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/y.class */
public class y {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f10320a = false;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f10321b = false;

    /* renamed from: c  reason: collision with root package name */
    private static final CharSequence f10322c = "sony";

    /* renamed from: d  reason: collision with root package name */
    private static final CharSequence f10323d = "amigo";
    private static final CharSequence e = "funtouch";
    private static String f;
    private static int g = Integer.MAX_VALUE;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/y$a.class */
    public static class a implements Callable<String> {

        /* renamed from: a  reason: collision with root package name */
        private String f10325a;

        public a(String str) {
            this.f10325a = str;
        }

        /* renamed from: a */
        public String call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            String c2 = y.c(this.f10325a);
            long currentTimeMillis2 = System.currentTimeMillis();
            q.b("RomUtils", "property:" + c2 + ",getSystemProperty use time :" + (currentTimeMillis2 - currentTimeMillis));
            if (!TextUtils.isEmpty(c2)) {
                try {
                    if (b.b()) {
                        q.d("RomUtils", "SPMultiHelper-getPropertyFromSPMultiHelper:".concat(String.valueOf(c2)));
                        com.bytedance.sdk.openadsdk.multipro.d.a.a("rom_info", "rom_property_info", c2);
                    } else {
                        q.d("RomUtils", "SP-getPropertyFromSP:".concat(String.valueOf(c2)));
                        z.a("rom_info", n.a()).a("rom_property_info", c2);
                    }
                } catch (Throwable th) {
                }
            }
            return c2;
        }
    }

    public static String a() {
        if (!TextUtils.isEmpty(f)) {
            return f;
        }
        String a2 = g.a("sdk_local_rom_info", (long) Constants.WEEK_IN_MILLIS);
        f = a2;
        if (TextUtils.isEmpty(a2)) {
            String u = u();
            f = u;
            g.a("sdk_local_rom_info", u);
        }
        return f;
    }

    public static boolean a(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = n();
        }
        return (!TextUtils.isEmpty(str2) && str2.toLowerCase().startsWith("emotionui")) || t();
    }

    public static boolean b() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static String c() {
        return d("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2;
        Process exec;
        String str2 = "";
        Process process = null;
        try {
            try {
                try {
                    exec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
                    try {
                        bufferedReader2 = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
                        str2 = str2;
                        str2 = str2;
                    } catch (IllegalThreadStateException e2) {
                        bufferedReader = null;
                    }
                } catch (IllegalThreadStateException e3) {
                    bufferedReader = null;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = null;
            }
        } catch (IOException e4) {
            q.c("ToolUtils", "Exception while closing InputStream", e4);
        }
        try {
            String readLine = bufferedReader2.readLine();
            str2 = readLine;
            str2 = readLine;
            exec.exitValue();
            bufferedReader2.close();
            str = readLine;
        } catch (IllegalThreadStateException e5) {
            bufferedReader = bufferedReader2;
            process = exec;
            try {
                process.destroy();
            } catch (Throwable th3) {
            }
            str = str2;
            if (bufferedReader != null) {
                bufferedReader.close();
                str = str2;
            }
            return str;
        } catch (Throwable th4) {
            th = th4;
            try {
                q.c("ToolUtils", "Unable to read sysprop ".concat(String.valueOf(str)), th);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e6) {
                        q.c("ToolUtils", "Exception while closing InputStream", e6);
                    }
                }
                return str2;
            } catch (Throwable th5) {
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e7) {
                        q.c("ToolUtils", "Exception while closing InputStream", e7);
                    }
                }
                throw th5;
            }
        }
        return str;
    }

    private static String d(String str) {
        String str2;
        try {
            String v = v();
            str2 = v;
            try {
                if (TextUtils.isEmpty(v)) {
                    final f fVar = new f(new a(str), 5, 2);
                    e.a(new com.bytedance.sdk.openadsdk.l.g("_getSystemPropertyTask") { // from class: com.bytedance.sdk.openadsdk.utils.y.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            fVar.run();
                        }
                    });
                    str2 = (String) fVar.get(1L, TimeUnit.SECONDS);
                }
            } catch (Throwable th) {
                str2 = v;
            }
        } catch (Throwable th2) {
            str2 = "";
        }
        return str2 == null ? "" : str2;
    }

    public static boolean d() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static boolean e() {
        if (!f10321b) {
            try {
                if (Class.forName("miui.os.Build") != null) {
                    f10320a = true;
                    f10321b = true;
                    return true;
                }
            } catch (Exception e2) {
            }
            f10321b = true;
        }
        return f10320a;
    }

    public static String f() {
        return d("ro.vivo.os.build.display.id") + "_" + d("ro.vivo.product.version");
    }

    public static boolean g() {
        String d2 = d("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(d2) && d2.toLowerCase().contains(e);
    }

    public static boolean h() {
        return !TextUtils.isEmpty(Build.DISPLAY) && Build.DISPLAY.toLowerCase().contains(f10323d);
    }

    public static String i() {
        return Build.DISPLAY + "_" + d("ro.gn.sv.version");
    }

    public static String j() {
        if (!k()) {
            return "";
        }
        return "eui_" + d("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static boolean k() {
        return !TextUtils.isEmpty(d("ro.letv.release.version"));
    }

    public static String l() {
        if (!e()) {
            return "";
        }
        return "miui_" + d("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    public static String m() {
        String n = n();
        if (n == null || !n.toLowerCase().contains("emotionui")) {
            return "";
        }
        return n + "_" + Build.DISPLAY;
    }

    public static String n() {
        return d("ro.build.version.emui");
    }

    public static boolean o() {
        return "smartisan".equalsIgnoreCase(Build.MANUFACTURER) || "smartisan".equalsIgnoreCase(Build.BRAND);
    }

    public static String p() {
        if (o()) {
            try {
                return "smartisan_".concat(String.valueOf(d("ro.smartisan.version")));
            } catch (Throwable th) {
            }
        }
        return Build.DISPLAY;
    }

    public static String q() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    public static boolean r() {
        if (g == Integer.MAX_VALUE) {
            String str = Build.MANUFACTURER;
            String l = af.l("kllk");
            if (TextUtils.isEmpty(str) || !str.toLowerCase().contains(l)) {
                g = 0;
            } else {
                g = 1;
            }
        }
        return g == 1;
    }

    public static String s() {
        if (!r()) {
            return "";
        }
        String l = af.l("ro.build.version.kllkrom");
        return "coloros_" + d(l) + "_" + Build.DISPLAY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
        if (android.os.Build.MANUFACTURER.toLowerCase().startsWith(com.appsflyer.internal.referrer.Payload.SOURCE_HUAWEI) != false) goto L_0x003a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean t() {
        /*
            r0 = 0
            r3 = r0
            java.lang.String r0 = android.os.Build.BRAND     // Catch: all -> 0x003e
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: all -> 0x003e
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x001c
            java.lang.String r0 = android.os.Build.BRAND     // Catch: all -> 0x003e
            java.lang.String r0 = r0.toLowerCase()     // Catch: all -> 0x003e
            java.lang.String r1 = "huawei"
            boolean r0 = r0.startsWith(r1)     // Catch: all -> 0x003e
            if (r0 != 0) goto L_0x003a
        L_0x001c:
            r0 = r3
            r4 = r0
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: all -> 0x003e
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: all -> 0x003e
            if (r0 != 0) goto L_0x003c
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: all -> 0x003e
            java.lang.String r0 = r0.toLowerCase()     // Catch: all -> 0x003e
            java.lang.String r1 = "huawei"
            boolean r0 = r0.startsWith(r1)     // Catch: all -> 0x003e
            r5 = r0
            r0 = r3
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L_0x003c
        L_0x003a:
            r0 = 1
            r4 = r0
        L_0x003c:
            r0 = r4
            return r0
        L_0x003e:
            r6 = move-exception
            r0 = r3
            r4 = r0
            goto L_0x003c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.y.t():boolean");
    }

    private static String u() {
        if (o()) {
            return p();
        }
        if (e()) {
            return l();
        }
        if (b()) {
            return q();
        }
        if (r()) {
            return s();
        }
        String m = m();
        if (!TextUtils.isEmpty(m)) {
            return m;
        }
        if (g()) {
            return f();
        }
        if (h()) {
            return i();
        }
        if (d()) {
            return c();
        }
        String j = j();
        return !TextUtils.isEmpty(j) ? j : Build.DISPLAY;
    }

    private static String v() {
        try {
            if (b.b()) {
                String b2 = com.bytedance.sdk.openadsdk.multipro.d.a.b("rom_info", "rom_property_info", "");
                q.c("RomUtils", "get Property From SPMultiHelper...".concat(String.valueOf(b2)));
                return b2;
            }
            String b3 = z.a("rom_info", n.a()).b("rom_property_info", "");
            q.c("RomUtils", "get Property From SP...=".concat(String.valueOf(b3)));
            return b3;
        } catch (Throwable th) {
            return "";
        }
    }
}
