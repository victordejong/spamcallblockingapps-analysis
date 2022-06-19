package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.bi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bi.class */
public final class C3820bi {
    /* renamed from: a */
    private static C3817bf m5880a(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            HashMap hashMap = new HashMap();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    String valueOf = String.valueOf(file);
                    Log.i("HermeticFileOverrides", new StringBuilder(String.valueOf(valueOf).length() + 7).append("Parsed ").append(valueOf).toString());
                    C3817bf c3817bf = new C3817bf(hashMap);
                    bufferedReader.close();
                    return c3817bf;
                }
                String[] split = readLine.split(" ", 3);
                if (split.length != 3) {
                    String valueOf2 = String.valueOf(readLine);
                    Log.e("HermeticFileOverrides", valueOf2.length() != 0 ? "Invalid: ".concat(valueOf2) : new String("Invalid: "));
                } else {
                    String str = split[0];
                    String decode = Uri.decode(split[1]);
                    String decode2 = Uri.decode(split[2]);
                    if (!hashMap.containsKey(str)) {
                        hashMap.put(str, new HashMap());
                    }
                    ((Map) hashMap.get(str)).put(decode, decode2);
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004d, code lost:
        if (r0.equals("robolectric") != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
        if (r0.contains("test-keys") != false) goto L22;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.measurement.AbstractC3835bx<com.google.android.gms.internal.measurement.C3817bf> m5881a(android.content.Context r3) {
        /*
            r0 = 0
            r4 = r0
            java.lang.String r0 = android.os.Build.TYPE
            r5 = r0
            java.lang.String r0 = android.os.Build.TAGS
            r6 = r0
            java.lang.String r0 = android.os.Build.HARDWARE
            r7 = r0
            r0 = r5
            java.lang.String r1 = "eng"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L2f
            r0 = r5
            java.lang.String r1 = "userdebug"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L2f
            r0 = r4
            r8 = r0
        L24:
            r0 = r8
            if (r0 != 0) goto L6b
            com.google.android.gms.internal.measurement.bx r0 = com.google.android.gms.internal.measurement.AbstractC3835bx.m5849c()
            r3 = r0
        L2d:
            r0 = r3
            return r0
        L2f:
            r0 = r7
            java.lang.String r1 = "goldfish"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L50
            r0 = r7
            java.lang.String r1 = "ranchu"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L50
            r0 = r4
            r8 = r0
            r0 = r7
            java.lang.String r1 = "robolectric"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L24
        L50:
            r0 = r6
            java.lang.String r1 = "dev-keys"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L65
            r0 = r4
            r8 = r0
            r0 = r6
            java.lang.String r1 = "test-keys"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L24
        L65:
            r0 = 1
            r8 = r0
            goto L24
        L6b:
            r0 = r3
            r7 = r0
            boolean r0 = com.google.android.gms.internal.measurement.C3807aw.m5895a()
            if (r0 == 0) goto L7e
            r0 = r3
            boolean r0 = r0.isDeviceProtectedStorage()
            if (r0 == 0) goto L9c
            r0 = r3
            r7 = r0
        L7e:
            r0 = r7
            com.google.android.gms.internal.measurement.bx r0 = m5879b(r0)
            r3 = r0
            r0 = r3
            boolean r0 = r0.mo5848a()
            if (r0 == 0) goto La5
            r0 = r3
            java.lang.Object r0 = r0.mo5847b()
            java.io.File r0 = (java.io.File) r0
            com.google.android.gms.internal.measurement.bf r0 = m5880a(r0)
            com.google.android.gms.internal.measurement.bx r0 = com.google.android.gms.internal.measurement.AbstractC3835bx.m5850a(r0)
            r3 = r0
            goto L2d
        L9c:
            r0 = r3
            android.content.Context r0 = r0.createDeviceProtectedStorageContext()
            r7 = r0
            goto L7e
        La5:
            com.google.android.gms.internal.measurement.bx r0 = com.google.android.gms.internal.measurement.AbstractC3835bx.m5849c()
            r3 = r0
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3820bi.m5881a(android.content.Context):com.google.android.gms.internal.measurement.bx");
    }

    /* renamed from: b */
    private static AbstractC3835bx<File> m5879b(Context context) {
        AbstractC3835bx<File> m5849c;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
            m5849c = file.exists() ? AbstractC3835bx.m5850a(file) : AbstractC3835bx.m5849c();
        } catch (RuntimeException e) {
            Log.e("HermeticFileOverrides", "no data dir", e);
            m5849c = AbstractC3835bx.m5849c();
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
        return m5849c;
    }
}
