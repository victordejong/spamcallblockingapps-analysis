package com.facebook.internal.p299b;

import android.content.Context;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.GraphRequest;
import com.facebook.internal.C10213ae;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.InputStream;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18405d;
import kotlin.p532h.C18418l;
import kotlin.p532h.C18425p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u0012\u0010\u0014\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u0013\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u0016H\u0007¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u0016H\u0007¢\u0006\u0002\u0010\u0017J\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001b\u001a\u00020\fH\u0007J$\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0007J\u001c\u0010#\u001a\u00020\u001d2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\b\u0010$\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006%"}, m4298d2 = {"Lcom/facebook/internal/instrument/InstrumentUtility;", "", "()V", "ANALYSIS_REPORT_PREFIX", "", "CRASH_REPORT_PREFIX", "CRASH_SHIELD_PREFIX", "ERROR_REPORT_PREFIX", "FBSDK_PREFIX", "INSTRUMENT_DIR", "THREAD_CHECK_PREFIX", "deleteFile", "", "filename", "getCause", "e", "", "getInstrumentReportDir", "Ljava/io/File;", "getStackTrace", "isSDKRelatedException", "listExceptionAnalysisReportFiles", "", "()[Ljava/io/File;", "listExceptionReportFiles", "readFile", "Lorg/json/JSONObject;", "deleteOnException", "sendReports", "", "key", "reports", "Lorg/json/JSONArray;", "callback", "Lcom/facebook/GraphRequest$Callback;", "writeFile", Constants.VAST_TRACKER_CONTENT, "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.b.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/d.class */
public final class C10259d {

    /* renamed from: a */
    public static final C10259d f33766a = new C10259d();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Ljava/io/File;", "kotlin.jvm.PlatformType", "name", "", "accept"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.d$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/d$a.class */
    public static final class C10260a implements FilenameFilter {

        /* renamed from: a */
        public static final C10260a f33767a = new C10260a();

        C10260a() {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String name) {
            C18524p.m3843b(name, "name");
            C18500ag c18500ag = C18500ag.f63594a;
            String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"analysis_log_"}, 1));
            C18524p.m3843b(format, "java.lang.String.format(format, *args)");
            return new C18418l(format).m3986a(name);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Ljava/io/File;", "kotlin.jvm.PlatformType", "name", "", "accept"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.d$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/d$b.class */
    public static final class C10261b implements FilenameFilter {

        /* renamed from: a */
        public static final C10261b f33768a = new C10261b();

        C10261b() {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String name) {
            C18524p.m3843b(name, "name");
            C18500ag c18500ag = C18500ag.f63594a;
            String format = String.format("^(%s|%s|%s)[0-9]+.json$", Arrays.copyOf(new Object[]{"crash_log_", "shield_log_", "thread_check_log_"}, 3));
            C18524p.m3843b(format, "java.lang.String.format(format, *args)");
            return new C18418l(format).m3986a(name);
        }
    }

    private C10259d() {
    }

    /* renamed from: a */
    public static final String m23095a(Throwable th) {
        if (th == null) {
            return null;
        }
        return th.getCause() == null ? th.toString() : String.valueOf(th.getCause());
    }

    /* renamed from: a */
    public static final JSONObject m23098a(String str) {
        File m23091c = m23091c();
        if (m23091c == null || str == null) {
            return null;
        }
        try {
            return new JSONObject(C10213ae.m23236a((InputStream) new FileInputStream(new File(m23091c, str))));
        } catch (Exception e) {
            m23093b(str);
            return null;
        }
    }

    /* renamed from: a */
    public static final void m23097a(String str, String str2) {
        File m23091c = m23091c();
        if (m23091c == null || str == null || str2 == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(m23091c, str));
            byte[] bytes = str2.getBytes(C18405d.f63516a);
            C18524p.m3843b(bytes, "(this as java.lang.String).getBytes(charset)");
            fileOutputStream.write(bytes);
            fileOutputStream.close();
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static final void m23096a(String str, JSONArray reports, GraphRequest.AbstractC9933b abstractC9933b) {
        C18524p.m3840d(reports, "reports");
        if (reports.length() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, reports.toString());
            C18500ag c18500ag = C18500ag.f63594a;
            String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{C10181g.m23286m()}, 1));
            C18524p.m3843b(format, "java.lang.String.format(format, *args)");
            GraphRequest.m23799a((AccessToken) null, format, jSONObject, abstractC9933b).m23778c();
        } catch (JSONException e) {
        }
    }

    /* renamed from: a */
    public static final File[] m23099a() {
        File m23091c = m23091c();
        if (m23091c == null) {
            return new File[0];
        }
        File[] listFiles = m23091c.listFiles(C10260a.f33767a);
        File[] fileArr = listFiles;
        if (listFiles == null) {
            fileArr = new File[0];
        }
        return fileArr;
    }

    /* renamed from: b */
    public static final String m23092b(Throwable th) {
        Throwable th2 = null;
        if (th == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        while (th != null && th != th2) {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                jSONArray.put(stackTraceElement.toString());
            }
            th2 = th;
            th = th.getCause();
        }
        return jSONArray.toString();
    }

    /* renamed from: b */
    public static final boolean m23093b(String str) {
        File m23091c = m23091c();
        if (m23091c == null || str == null) {
            return false;
        }
        return new File(m23091c, str).delete();
    }

    /* renamed from: b */
    public static final File[] m23094b() {
        File m23091c = m23091c();
        if (m23091c == null) {
            return new File[0];
        }
        File[] listFiles = m23091c.listFiles(C10261b.f33768a);
        File[] fileArr = listFiles;
        if (listFiles == null) {
            fileArr = new File[0];
        }
        return fileArr;
    }

    /* renamed from: c */
    public static final File m23091c() {
        Context m23290i = C10181g.m23290i();
        C18524p.m3843b(m23290i, "FacebookSdk.getApplicationContext()");
        File file = new File(m23290i.getCacheDir(), "instrument");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    /* renamed from: c */
    public static final boolean m23090c(Throwable th) {
        StackTraceElement[] stackTrace;
        if (th == null) {
            return false;
        }
        Throwable th2 = null;
        while (th != null && th != th2) {
            for (StackTraceElement element : th.getStackTrace()) {
                C18524p.m3843b(element, "element");
                String className = element.getClassName();
                C18524p.m3843b(className, "element.className");
                if (C18425p.m3957a(className, "com.facebook", false)) {
                    return true;
                }
            }
            th2 = th;
            th = th.getCause();
        }
        return false;
    }
}
