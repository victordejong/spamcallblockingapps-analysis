package com.facebook.internal.p037u0;

import com.facebook.GraphRequest;
import com.facebook.internal.C1168q0;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.f0.b;
import s1.f0.r;
import s1.z.c.l;
@Metadata(d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u0012\u0010\u0019\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u0012\u0010\u001a\u001a\u00020\u000f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0007J\u0013\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00150\u001cH\u0007¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00150\u001cH\u0007¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00150\u001cH\u0007¢\u0006\u0002\u0010\u001dJ\u001c\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\"\u001a\u00020\u000fH\u0007J$\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u00042\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0007J\u001c\u0010*\u001a\u00020$2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\u0010+\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006,"}, d2 = {"Lcom/facebook/internal/instrument/InstrumentUtility;", "", "()V", "ANALYSIS_REPORT_PREFIX", "", "ANR_REPORT_PREFIX", "CODELESS_PREFIX", "CRASH_REPORT_PREFIX", "CRASH_SHIELD_PREFIX", "ERROR_REPORT_PREFIX", "FBSDK_PREFIX", "INSTRUMENT_DIR", "SUGGESTED_EVENTS_PREFIX", "THREAD_CHECK_PREFIX", "deleteFile", "", "filename", "getCause", "e", "", "getInstrumentReportDir", "Ljava/io/File;", "getStackTrace", "thread", "Ljava/lang/Thread;", "isSDKRelatedException", "isSDKRelatedThread", "listAnrReportFiles", "", "()[Ljava/io/File;", "listExceptionAnalysisReportFiles", "listExceptionReportFiles", "readFile", "Lorg/json/JSONObject;", "deleteOnException", "sendReports", "", AnalyticsConstants.KEY, "reports", "Lorg/json/JSONArray;", "callback", "Lcom/facebook/GraphRequest$Callback;", "writeFile", "content", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.u0.j */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/j.class */
public final class C1210j {
    /* renamed from: a */
    public static final boolean m41633a(String str) {
        File m41632b = m41632b();
        if (m41632b == null || str == null) {
            return false;
        }
        return new File(m41632b, str).delete();
    }

    /* renamed from: b */
    public static final File m41632b() {
        C23228f0 c23228f0 = C23228f0.f64291a;
        File file = new File(C23228f0.m7354a().getCacheDir(), "instrument");
        File file2 = file;
        if (!file.exists()) {
            file2 = file.mkdirs() ? file : null;
        }
        return file2;
    }

    /* renamed from: c */
    public static final boolean m41631c(Thread thread) {
        StackTraceElement[] stackTrace = thread.getStackTrace();
        if (stackTrace == null) {
            return false;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            l.d(className, "element.className");
            if (r.y(className, "com.facebook", false, 2)) {
                String className2 = stackTraceElement.getClassName();
                l.d(className2, "element.className");
                if (!r.y(className2, "com.facebook.appevents.codeless", false, 2)) {
                    String className3 = stackTraceElement.getClassName();
                    l.d(className3, "element.className");
                    if (!r.y(className3, "com.facebook.appevents.suggestedevents", false, 2)) {
                        return true;
                    }
                }
                String methodName = stackTraceElement.getMethodName();
                l.d(methodName, "element.methodName");
                if (!r.y(methodName, "onClick", false, 2)) {
                    String methodName2 = stackTraceElement.getMethodName();
                    l.d(methodName2, "element.methodName");
                    if (!r.y(methodName2, "onItemClick", false, 2)) {
                        String methodName3 = stackTraceElement.getMethodName();
                        l.d(methodName3, "element.methodName");
                        if (!r.y(methodName3, "onTouch", false, 2)) {
                            return true;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    /* renamed from: d */
    public static final JSONObject m41630d(String str, boolean z) {
        File m41632b = m41632b();
        if (m41632b == null || str == null) {
            return null;
        }
        try {
            return new JSONObject(C1168q0.m41689M(new FileInputStream(new File(m41632b, str))));
        } catch (Exception e) {
            if (!z) {
                return null;
            }
            m41633a(str);
            return null;
        }
    }

    /* renamed from: e */
    public static final void m41629e(String str, JSONArray jSONArray, GraphRequest.AbstractC0922b abstractC0922b) {
        l.e(jSONArray, "reports");
        if (jSONArray.length() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, jSONArray.toString());
            JSONObject m41667p = C1168q0.m41667p();
            if (m41667p != null) {
                Iterator<String> keys = m41667p.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject.put(next, m41667p.get(next));
                }
            }
            GraphRequest.C0923c c0923c = GraphRequest.f2543k;
            C23228f0 c23228f0 = C23228f0.f64291a;
            String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{C23228f0.m7353b()}, 1));
            l.d(format, "java.lang.String.format(format, *args)");
            c0923c.m41999i(null, format, jSONObject, abstractC0922b).m42016d();
        } catch (JSONException e) {
        }
    }

    /* renamed from: f */
    public static final void m41628f(String str, String str2) {
        File m41632b = m41632b();
        if (m41632b == null || str == null || str2 == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(m41632b, str));
            byte[] bytes = str2.getBytes(b.a);
            l.d(bytes, "(this as java.lang.String).getBytes(charset)");
            fileOutputStream.write(bytes);
            fileOutputStream.close();
        } catch (Exception e) {
        }
    }
}
