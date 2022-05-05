package com.facebook.internal.p042k0;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.internal.C2408g0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.InputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.internal.k0.b */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/b.class */
public final class C2442b {

    /* renamed from: com.facebook.internal.k0.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/b$a.class */
    public static final class C2443a implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.matches(String.format("^%s[0-9]+.json$", "crash_log_"));
        }
    }

    @Nullable
    /* renamed from: a */
    public static File m34717a() {
        File file = new File(C6135n.m23746e().getCacheDir(), "instrument");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    @Nullable
    /* renamed from: a */
    public static String m34712a(Throwable th) {
        if (th == null) {
            return null;
        }
        return th.getCause() == null ? th.toString() : th.getCause().toString();
    }

    @Nullable
    /* renamed from: a */
    public static JSONObject m34713a(@Nullable String str, boolean z) {
        File a = m34717a();
        if (a == null || str == null) {
            return null;
        }
        try {
            return new JSONObject(C2408g0.m34861a((InputStream) new FileInputStream(new File(a, str))));
        } catch (Exception e) {
            if (!z) {
                return null;
            }
            m34716a(str);
            return null;
        }
    }

    /* renamed from: a */
    public static void m34715a(@Nullable String str, @Nullable String str2) {
        File a = m34717a();
        if (a != null && str != null && str2 != null) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(a, str));
                fileOutputStream.write(str2.getBytes());
                fileOutputStream.close();
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public static void m34714a(String str, JSONArray jSONArray, GraphRequest.AbstractC2230f fVar) {
        if (jSONArray.length() != 0) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(str, jSONArray.toString());
                GraphRequest.m35460a((AccessToken) null, String.format("%s/instruments", C6135n.m23745f()), jSONObject, fVar).m35430c();
            } catch (JSONException e) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m34716a(@Nullable String str) {
        File a = m34717a();
        if (a == null || str == null) {
            return false;
        }
        return new File(a, str).delete();
    }

    @Nullable
    /* renamed from: b */
    public static String m34710b(Throwable th) {
        if (th == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (Throwable th2 = null; th != null && th != th2; th2 = th) {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                jSONArray.put(stackTraceElement.toString());
            }
            th = th.getCause();
        }
        return jSONArray.toString();
    }

    /* renamed from: b */
    public static File[] m34711b() {
        File a = m34717a();
        if (a == null) {
            return new File[0];
        }
        File[] listFiles = a.listFiles(new C2443a());
        if (listFiles == null) {
            listFiles = new File[0];
        }
        return listFiles;
    }

    /* renamed from: c */
    public static boolean m34709c(@Nullable Throwable th) {
        if (th == null) {
            return false;
        }
        for (Throwable th2 = null; th != null && th != th2; th2 = th) {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                if (stackTraceElement.getClassName().startsWith("com.facebook")) {
                    return true;
                }
            }
            th = th.getCause();
        }
        return false;
    }
}
