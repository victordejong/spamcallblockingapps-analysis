package com.pgl.sys.ces.a;

import java.io.File;
import java.io.FileFilter;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final FileFilter f34952a = new FileFilter() { // from class: com.pgl.sys.ces.a.b.1
        @Override // java.io.FileFilter
        public final boolean accept(File file) {
            return Pattern.matches("cpu[0-9]", file.getName());
        }
    };

    public static String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            HashMap<String, String> b2 = b();
            jSONObject.put("core", c());
            jSONObject.put("hw", a(b2, "Hardware"));
            jSONObject.put("max", a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"));
            jSONObject.put("min", a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"));
            jSONObject.put("ft", a(b2, "Features"));
        } catch (Throwable th) {
        }
        String jSONObject2 = jSONObject.toString();
        return jSONObject2 == null ? "{}" : jSONObject2.trim();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(java.lang.String r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = 0
            r5 = r0
            java.io.FileReader r0 = new java.io.FileReader     // Catch: all -> 0x0044
            r6 = r0
            r0 = r6
            r1 = r3
            r0.<init>(r1)     // Catch: all -> 0x0044
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: all -> 0x003b, all -> 0x0044
            r7 = r0
            r0 = r7
            r1 = r6
            r0.<init>(r1)     // Catch: all -> 0x003b
            r0 = r7
            java.lang.String r0 = r0.readLine()     // Catch: all -> 0x0035
            r8 = r0
            r0 = r7
            r0.close()     // Catch: all -> 0x0075
            r0 = r6
            r3 = r0
            r0 = r8
            r7 = r0
        L_0x002a:
            r0 = r3
            r0.close()     // Catch: all -> 0x0031
            goto L_0x0067
        L_0x0031:
            r3 = move-exception
            goto L_0x0067
        L_0x0035:
            r3 = move-exception
            r0 = r6
            r3 = r0
            goto L_0x004b
        L_0x003b:
            r3 = move-exception
            r0 = 0
            r7 = r0
            r0 = r6
            r3 = r0
            goto L_0x004b
        L_0x0044:
            r3 = move-exception
            r0 = 0
            r7 = r0
            r0 = r7
            r3 = r0
        L_0x004b:
            r0 = r7
            if (r0 == 0) goto L_0x005a
            r0 = r7
            r0.close()     // Catch: all -> 0x0058
            goto L_0x005a
        L_0x0058:
            r7 = move-exception
        L_0x005a:
            r0 = r4
            r7 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0067
            r0 = r5
            r7 = r0
            goto L_0x002a
        L_0x0067:
            r0 = r7
            if (r0 != 0) goto L_0x006f
            java.lang.String r0 = "0"
            return r0
        L_0x006f:
            r0 = r7
            java.lang.String r0 = r0.trim()
            return r0
        L_0x0075:
            r3 = move-exception
            r0 = r8
            r7 = r0
            r0 = r6
            r3 = r0
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.sys.ces.a.b.a(java.lang.String):java.lang.String");
    }

    private static String a(HashMap<String, String> hashMap, String str) {
        String str2;
        try {
            str2 = hashMap.get(str);
        } catch (Throwable th) {
            str2 = null;
        }
        return str2 == null ? "" : str2.trim();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
        if (r6 == null) goto L_0x0087;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.HashMap<java.lang.String, java.lang.String> b() {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = 0
            r5 = r0
            java.io.FileReader r0 = new java.io.FileReader     // Catch: all -> 0x006f
            r6 = r0
            r0 = r6
            java.lang.String r1 = "/proc/cpuinfo"
            r0.<init>(r1)     // Catch: all -> 0x006f
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: all -> 0x0069, all -> 0x006f
            r7 = r0
            r0 = r7
            r1 = r6
            r0.<init>(r1)     // Catch: all -> 0x0069
        L_0x001d:
            r0 = r7
            java.lang.String r0 = r0.readLine()     // Catch: all -> 0x0065
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x005a
            r0 = r5
            java.lang.String r1 = ":"
            r2 = 2
            java.lang.String[] r0 = r0.split(r1, r2)     // Catch: all -> 0x0065
            r8 = r0
            r0 = r8
            int r0 = r0.length     // Catch: all -> 0x0065
            r1 = 2
            if (r0 < r1) goto L_0x001d
            r0 = r8
            r1 = 0
            r0 = r0[r1]     // Catch: all -> 0x0065
            java.lang.String r0 = r0.trim()     // Catch: all -> 0x0065
            r5 = r0
            r0 = r8
            r1 = 1
            r0 = r0[r1]     // Catch: all -> 0x0065
            java.lang.String r0 = r0.trim()     // Catch: all -> 0x0065
            r8 = r0
            r0 = r4
            r1 = r5
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x0065
            if (r0 != 0) goto L_0x001d
            r0 = r4
            r1 = r5
            r2 = r8
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: all -> 0x0065
            goto L_0x001d
        L_0x005a:
            r0 = r7
            r0.close()     // Catch: all -> 0x0089
        L_0x005e:
            r0 = r6
            r0.close()     // Catch: all -> 0x008d
            goto L_0x0087
        L_0x0065:
            r5 = move-exception
            goto L_0x0074
        L_0x0069:
            r7 = move-exception
            r0 = r5
            r7 = r0
            goto L_0x0074
        L_0x006f:
            r6 = move-exception
            r0 = 0
            r6 = r0
            r0 = r5
            r7 = r0
        L_0x0074:
            r0 = r7
            if (r0 == 0) goto L_0x0080
            r0 = r7
            r0.close()     // Catch: all -> 0x007f
            goto L_0x0080
        L_0x007f:
            r7 = move-exception
        L_0x0080:
            r0 = r6
            if (r0 == 0) goto L_0x0087
            goto L_0x005e
        L_0x0087:
            r0 = r4
            return r0
        L_0x0089:
            r7 = move-exception
            goto L_0x005e
        L_0x008d:
            r6 = move-exception
            goto L_0x0087
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.sys.ces.a.b.b():java.util.HashMap");
    }

    private static int c() {
        int i;
        try {
            i = new File("/sys/devices/system/cpu/").listFiles(f34952a).length;
        } catch (Throwable th) {
            i = -1;
        }
        return i;
    }
}
