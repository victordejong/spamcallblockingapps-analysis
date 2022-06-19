package com.pgl.sys.ces.p480a;

import java.io.File;
import java.io.FileFilter;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* renamed from: com.pgl.sys.ces.a.b */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/b.class */
public final class C17066b {

    /* renamed from: a */
    private static final FileFilter f60588a = new FileFilter() { // from class: com.pgl.sys.ces.a.b.1
        @Override // java.io.FileFilter
        public final boolean accept(File file) {
            return Pattern.matches("cpu[0-9]", file.getName());
        }
    };

    /* renamed from: a */
    public static String m5934a() {
        JSONObject jSONObject = new JSONObject();
        try {
            HashMap<String, String> m5931b = m5931b();
            jSONObject.put("core", m5930c());
            jSONObject.put("hw", m5932a(m5931b, "Hardware"));
            jSONObject.put("max", m5933a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"));
            jSONObject.put("min", m5933a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"));
            jSONObject.put("ft", m5932a(m5931b, "Features"));
        } catch (Throwable th) {
        }
        String jSONObject2 = jSONObject.toString();
        return jSONObject2 == null ? "{}" : jSONObject2.trim();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m5933a(java.lang.String r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = 0
            r5 = r0
            java.io.FileReader r0 = new java.io.FileReader     // Catch: java.lang.Throwable -> L44
            r6 = r0
            r0 = r6
            r1 = r3
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L44
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L44
            r7 = r0
            r0 = r7
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L3b
            r0 = r7
            java.lang.String r0 = r0.readLine()     // Catch: java.lang.Throwable -> L35
            r8 = r0
            r0 = r7
            r0.close()     // Catch: java.lang.Throwable -> L75
            r0 = r6
            r3 = r0
            r0 = r8
            r7 = r0
        L2a:
            r0 = r3
            r0.close()     // Catch: java.lang.Throwable -> L31
            goto L67
        L31:
            r3 = move-exception
            goto L67
        L35:
            r3 = move-exception
            r0 = r6
            r3 = r0
            goto L4b
        L3b:
            r3 = move-exception
            r0 = 0
            r7 = r0
            r0 = r6
            r3 = r0
            goto L4b
        L44:
            r3 = move-exception
            r0 = 0
            r7 = r0
            r0 = r7
            r3 = r0
        L4b:
            r0 = r7
            if (r0 == 0) goto L5a
            r0 = r7
            r0.close()     // Catch: java.lang.Throwable -> L58
            goto L5a
        L58:
            r7 = move-exception
        L5a:
            r0 = r4
            r7 = r0
            r0 = r3
            if (r0 == 0) goto L67
            r0 = r5
            r7 = r0
            goto L2a
        L67:
            r0 = r7
            if (r0 != 0) goto L6f
            java.lang.String r0 = "0"
            return r0
        L6f:
            r0 = r7
            java.lang.String r0 = r0.trim()
            return r0
        L75:
            r3 = move-exception
            r0 = r8
            r7 = r0
            r0 = r6
            r3 = r0
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.sys.ces.p480a.C17066b.m5933a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    private static String m5932a(HashMap<String, String> hashMap, String str) {
        String str2;
        try {
            str2 = hashMap.get(str);
        } catch (Throwable th) {
            str2 = null;
        }
        return str2 == null ? "" : str2.trim();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
        if (r6 == null) goto L28;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.HashMap<java.lang.String, java.lang.String> m5931b() {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = 0
            r5 = r0
            java.io.FileReader r0 = new java.io.FileReader     // Catch: java.lang.Throwable -> L6f
            r6 = r0
            r0 = r6
            java.lang.String r1 = "/proc/cpuinfo"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6f
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L69 java.lang.Throwable -> L6f
            r7 = r0
            r0 = r7
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L69
        L1d:
            r0 = r7
            java.lang.String r0 = r0.readLine()     // Catch: java.lang.Throwable -> L65
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L5a
            r0 = r5
            java.lang.String r1 = ":"
            r2 = 2
            java.lang.String[] r0 = r0.split(r1, r2)     // Catch: java.lang.Throwable -> L65
            r8 = r0
            r0 = r8
            int r0 = r0.length     // Catch: java.lang.Throwable -> L65
            r1 = 2
            if (r0 < r1) goto L1d
            r0 = r8
            r1 = 0
            r0 = r0[r1]     // Catch: java.lang.Throwable -> L65
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L65
            r5 = r0
            r0 = r8
            r1 = 1
            r0 = r0[r1]     // Catch: java.lang.Throwable -> L65
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L65
            r8 = r0
            r0 = r4
            r1 = r5
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L65
            if (r0 != 0) goto L1d
            r0 = r4
            r1 = r5
            r2 = r8
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> L65
            goto L1d
        L5a:
            r0 = r7
            r0.close()     // Catch: java.lang.Throwable -> L89
        L5e:
            r0 = r6
            r0.close()     // Catch: java.lang.Throwable -> L8d
            goto L87
        L65:
            r5 = move-exception
            goto L74
        L69:
            r7 = move-exception
            r0 = r5
            r7 = r0
            goto L74
        L6f:
            r6 = move-exception
            r0 = 0
            r6 = r0
            r0 = r5
            r7 = r0
        L74:
            r0 = r7
            if (r0 == 0) goto L80
            r0 = r7
            r0.close()     // Catch: java.lang.Throwable -> L7f
            goto L80
        L7f:
            r7 = move-exception
        L80:
            r0 = r6
            if (r0 == 0) goto L87
            goto L5e
        L87:
            r0 = r4
            return r0
        L89:
            r7 = move-exception
            goto L5e
        L8d:
            r6 = move-exception
            goto L87
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.sys.ces.p480a.C17066b.m5931b():java.util.HashMap");
    }

    /* renamed from: c */
    private static int m5930c() {
        int i;
        try {
            i = new File("/sys/devices/system/cpu/").listFiles(f60588a).length;
        } catch (Throwable th) {
            i = -1;
        }
        return i;
    }
}
