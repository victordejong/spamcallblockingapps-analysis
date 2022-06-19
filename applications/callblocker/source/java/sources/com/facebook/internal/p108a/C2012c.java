package com.facebook.internal.p108a;

import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.internal.C2079x;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.InputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.a.c */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/a/c.class */
public final class C2012c {
    /* renamed from: a */
    public static String m15658a(Throwable th) {
        return th == null ? null : th.getCause() == null ? th.toString() : th.getCause().toString();
    }

    /* renamed from: a */
    public static JSONObject m15659a(String str, boolean z) {
        JSONObject jSONObject;
        File m15657b = m15657b();
        if (m15657b == null || str == null) {
            jSONObject = null;
        } else {
            try {
                jSONObject = new JSONObject(C2079x.m15478a((InputStream) new FileInputStream(new File(m15657b, str))));
            } catch (Exception e) {
                if (z) {
                    m15662a(str);
                }
                jSONObject = null;
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m15661a(String str, String str2) {
        File m15657b = m15657b();
        if (m15657b == null || str == null || str2 == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(m15657b, str));
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.close();
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static void m15660a(String str, JSONArray jSONArray, C2102k.AbstractC2108b abstractC2108b) {
        if (jSONArray.length() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, jSONArray.toString());
            C2102k.m15337a((C1803a) null, String.format("%s/instruments", C2095j.m15356l()), jSONObject, abstractC2108b).m15292j();
        } catch (JSONException e) {
        }
    }

    /* renamed from: a */
    public static boolean m15662a(String str) {
        File m15657b = m15657b();
        return (m15657b == null || str == null) ? false : new File(m15657b, str).delete();
    }

    /* renamed from: a */
    public static File[] m15663a() {
        File[] fileArr;
        File m15657b = m15657b();
        if (m15657b == null) {
            fileArr = new File[0];
        } else {
            File[] listFiles = m15657b.listFiles(new FilenameFilter() { // from class: com.facebook.internal.a.c.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return str.matches(String.format("^%s[0-9]+.json$", "crash_log_"));
                }
            });
            fileArr = listFiles;
            if (listFiles == null) {
                fileArr = new File[0];
            }
        }
        return fileArr;
    }

    /* renamed from: b */
    public static File m15657b() {
        File file = new File(C2095j.m15360h().getCacheDir(), "instrument");
        File file2 = file;
        if (!file.exists()) {
            file2 = file.mkdirs() ? file : null;
        }
        return file2;
    }

    /* renamed from: b */
    public static String m15656b(Throwable th) {
        String jSONArray;
        if (th == null) {
            jSONArray = null;
        } else {
            JSONArray jSONArray2 = new JSONArray();
            Throwable th2 = null;
            while (th != null && th != th2) {
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    jSONArray2.put(stackTraceElement.toString());
                }
                th2 = th;
                th = th.getCause();
            }
            jSONArray = jSONArray2.toString();
        }
        return jSONArray;
    }

    /* renamed from: c */
    public static boolean m15655c(Throwable th) {
        boolean z;
        if (th != null) {
            Throwable th2 = null;
            loop0: while (true) {
                z = false;
                if (th == null) {
                    break;
                }
                z = false;
                if (th == th2) {
                    break;
                }
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (stackTraceElement.getClassName().startsWith("com.facebook")) {
                        z = true;
                        break loop0;
                    }
                }
                th2 = th;
                th = th.getCause();
            }
        } else {
            z = false;
        }
        return z;
    }
}
