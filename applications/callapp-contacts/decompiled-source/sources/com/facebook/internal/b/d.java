package com.facebook.internal.b;

import android.content.Context;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.g;
import com.facebook.internal.ae;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.InputStream;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.h.l;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u0012\u0010\u0014\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u0013\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u0016H\u0007¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u0016H\u0007¢\u0006\u0002\u0010\u0017J\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001b\u001a\u00020\fH\u0007J$\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0007J\u001c\u0010#\u001a\u00020\u001d2\b\u0010\r\u001a\u0004\u0018\u00010\u00042\b\u0010$\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006%"}, d2 = {"Lcom/facebook/internal/instrument/InstrumentUtility;", "", "()V", "ANALYSIS_REPORT_PREFIX", "", "CRASH_REPORT_PREFIX", "CRASH_SHIELD_PREFIX", "ERROR_REPORT_PREFIX", "FBSDK_PREFIX", "INSTRUMENT_DIR", "THREAD_CHECK_PREFIX", "deleteFile", "", "filename", "getCause", "e", "", "getInstrumentReportDir", "Ljava/io/File;", "getStackTrace", "isSDKRelatedException", "listExceptionAnalysisReportFiles", "", "()[Ljava/io/File;", "listExceptionReportFiles", "readFile", "Lorg/json/JSONObject;", "deleteOnException", "sendReports", "", "key", "reports", "Lorg/json/JSONArray;", "callback", "Lcom/facebook/GraphRequest$Callback;", "writeFile", Constants.VAST_TRACKER_CONTENT, "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f19894a = new d();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Ljava/io/File;", "kotlin.jvm.PlatformType", "name", "", "accept"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/d$a.class */
    public static final class a implements FilenameFilter {

        /* renamed from: a  reason: collision with root package name */
        public static final a f19898a = new a();

        a() {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String name) {
            p.b(name, "name");
            ag agVar = ag.f36785a;
            String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"analysis_log_"}, 1));
            p.b(format, "java.lang.String.format(format, *args)");
            return new l(format).a(name);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Ljava/io/File;", "kotlin.jvm.PlatformType", "name", "", "accept"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/d$b.class */
    static final class b implements FilenameFilter {

        /* renamed from: a  reason: collision with root package name */
        public static final b f19899a = new b();

        b() {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String name) {
            p.b(name, "name");
            ag agVar = ag.f36785a;
            String format = String.format("^(%s|%s|%s)[0-9]+.json$", Arrays.copyOf(new Object[]{"crash_log_", "shield_log_", "thread_check_log_"}, 3));
            p.b(format, "java.lang.String.format(format, *args)");
            return new l(format).a(name);
        }
    }

    private d() {
    }

    public static final String a(Throwable th) {
        if (th == null) {
            return null;
        }
        return th.getCause() == null ? th.toString() : String.valueOf(th.getCause());
    }

    public static final JSONObject a(String str) {
        File c2 = c();
        if (c2 == null || str == null) {
            return null;
        }
        try {
            return new JSONObject(ae.a((InputStream) new FileInputStream(new File(c2, str))));
        } catch (Exception e) {
            b(str);
            return null;
        }
    }

    public static final void a(String str, String str2) {
        File c2 = c();
        if (c2 != null && str != null && str2 != null) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(c2, str));
                byte[] bytes = str2.getBytes(kotlin.h.d.f36719a);
                p.b(bytes, "(this as java.lang.String).getBytes(charset)");
                fileOutputStream.write(bytes);
                fileOutputStream.close();
            } catch (Exception e) {
            }
        }
    }

    public static final void a(String str, JSONArray reports, GraphRequest.b bVar) {
        p.d(reports, "reports");
        if (reports.length() != 0) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(str, reports.toString());
                ag agVar = ag.f36785a;
                String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{g.m()}, 1));
                p.b(format, "java.lang.String.format(format, *args)");
                GraphRequest.a((AccessToken) null, format, jSONObject, bVar).c();
            } catch (JSONException e) {
            }
        }
    }

    public static final File[] a() {
        File c2 = c();
        if (c2 == null) {
            return new File[0];
        }
        File[] listFiles = c2.listFiles(a.f19898a);
        File[] fileArr = listFiles;
        if (listFiles == null) {
            fileArr = new File[0];
        }
        return fileArr;
    }

    public static final String b(Throwable th) {
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

    public static final boolean b(String str) {
        File c2 = c();
        if (c2 == null || str == null) {
            return false;
        }
        return new File(c2, str).delete();
    }

    public static final File[] b() {
        File c2 = c();
        if (c2 == null) {
            return new File[0];
        }
        File[] listFiles = c2.listFiles(b.f19899a);
        File[] fileArr = listFiles;
        if (listFiles == null) {
            fileArr = new File[0];
        }
        return fileArr;
    }

    public static final File c() {
        Context i = g.i();
        p.b(i, "FacebookSdk.getApplicationContext()");
        File file = new File(i.getCacheDir(), "instrument");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    public static final boolean c(Throwable th) {
        StackTraceElement[] stackTrace;
        if (th == null) {
            return false;
        }
        for (Throwable th2 = null; th != null && th != th2; th2 = th) {
            for (StackTraceElement element : th.getStackTrace()) {
                p.b(element, "element");
                String className = element.getClassName();
                p.b(className, "element.className");
                if (kotlin.h.p.a(className, "com.facebook", false)) {
                    return true;
                }
            }
            th = th.getCause();
        }
        return false;
    }
}
