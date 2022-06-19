package com.facebook.internal.p037u0.p038k;

import android.app.ActivityManager;
import android.os.Looper;
import android.os.Process;
import com.facebook.internal.p037u0.C1205i;
import com.facebook.internal.p037u0.C1210j;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Metadata;
import org.json.JSONArray;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\n\u001a\n \f*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/facebook/internal/instrument/anrreport/ANRDetector;", "", "()V", "DETECTION_INTERVAL_IN_MS", "", "anrDetectorRunnable", "Ljava/lang/Runnable;", "myUid", "previousStackTrace", "", "scheduledExecutorService", "Ljava/util/concurrent/ScheduledExecutorService;", "kotlin.jvm.PlatformType", "checkProcessError", "", "am", "Landroid/app/ActivityManager;", AnalyticsConstants.START, "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.u0.k.d */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/k/d.class */
public final class C1214d {

    /* renamed from: a */
    public static final C1214d f3285a = null;

    /* renamed from: b */
    public static final int f3286b = Process.myUid();

    /* renamed from: c */
    public static final ScheduledExecutorService f3287c = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: d */
    public static String f3288d = "";

    /* renamed from: e */
    public static final Runnable f3289e = RunnableC1211a.f3282a;

    /* renamed from: a */
    public static final void m41627a(ActivityManager activityManager) {
        if (C1220a.m41623b(C1214d.class)) {
            return;
        }
        try {
            List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
            if (processesInErrorState == null) {
                return;
            }
            for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                if (processErrorStateInfo.condition == 2 && processErrorStateInfo.uid == f3286b) {
                    Thread thread = Looper.getMainLooper().getThread();
                    l.d(thread, "getMainLooper().thread");
                    l.e(thread, "thread");
                    StackTraceElement[] stackTrace = thread.getStackTrace();
                    JSONArray jSONArray = new JSONArray();
                    l.d(stackTrace, "stackTrace");
                    int length = stackTrace.length;
                    int i = 0;
                    while (i < length) {
                        StackTraceElement stackTraceElement = stackTrace[i];
                        i++;
                        jSONArray.put(stackTraceElement.toString());
                    }
                    String jSONArray2 = jSONArray.toString();
                    if (!l.a(jSONArray2, f3288d) && C1210j.m41631c(thread)) {
                        f3288d = jSONArray2;
                        new C1205i(processErrorStateInfo.shortMsg, jSONArray2, (f) null).m41635c();
                    }
                }
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1214d.class);
        }
    }
}
