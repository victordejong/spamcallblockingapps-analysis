package com.facebook.internal.p037u0.p039l;

import com.facebook.GraphRequest;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.C1203g;
import com.facebook.internal.p037u0.C1204h;
import com.facebook.internal.p037u0.C1205i;
import com.facebook.internal.p037u0.C1210j;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23244l0;
import s1.d0.j;
import s1.f0.r;
import s1.u.i;
import s1.u.z;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\b\u0007\u0018�� \n2\u00020\u0001:\u0001\nB\u0011\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/instrument/crashreport/CrashHandler;", "Ljava/lang/Thread$UncaughtExceptionHandler;", "previousHandler", "(Ljava/lang/Thread$UncaughtExceptionHandler;)V", "uncaughtException", "", "t", "Ljava/lang/Thread;", "e", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.u0.l.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/l/c.class */
public final class C1218c implements Thread.UncaughtExceptionHandler {

    /* renamed from: b */
    public static final C1219a f3294b = new C1219a(null);

    /* renamed from: c */
    public static final String f3295c = C1218c.class.getCanonicalName();

    /* renamed from: d */
    public static C1218c f3296d;

    /* renamed from: a */
    public final Thread.UncaughtExceptionHandler f3297a;

    @Metadata(d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;", "", "()V", "MAX_CRASH_REPORT_NUM", "", "TAG", "", "instance", "Lcom/facebook/internal/instrument/crashreport/CrashHandler;", "enable", "", "sendExceptionReports", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.u0.l.c$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/l/c$a.class */
    public static final class C1219a {
        public C1219a(f fVar) {
        }

        /* renamed from: a */
        public final void m41625a() {
            File[] fileArr;
            if (C1168q0.m41701A()) {
                return;
            }
            File m41632b = C1210j.m41632b();
            if (m41632b == null) {
                fileArr = new File[0];
            } else {
                File[] listFiles = m41632b.listFiles(C1203g.f3264a);
                fileArr = listFiles;
                if (listFiles == null) {
                    fileArr = new File[0];
                }
            }
            ArrayList arrayList = new ArrayList(fileArr.length);
            for (File file : fileArr) {
                arrayList.add(C1205i.C1206a.m41634a(file));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((C1205i) obj).m41636b()) {
                    arrayList2.add(obj);
                }
            }
            final List F0 = i.F0(arrayList2, C1217b.f3293a);
            JSONArray jSONArray = new JSONArray();
            z it = j.j(0, Math.min(F0.size(), 5)).iterator();
            while (it.hasNext()) {
                jSONArray.put(F0.get(it.a()));
            }
            C1210j.m41629e("crash_reports", jSONArray, new GraphRequest.AbstractC0922b() { // from class: com.facebook.internal.u0.l.a
                @Override // com.facebook.GraphRequest.AbstractC0922b
                /* renamed from: a */
                public final void mo7325a(C23244l0 c23244l0) {
                    List<C1205i> list = F0;
                    l.e(list, "$validReports");
                    l.e(c23244l0, "response");
                    try {
                        if (c23244l0.f64335e != null) {
                            return;
                        }
                        JSONObject jSONObject = c23244l0.f64336f;
                        if (!l.a(jSONObject == null ? null : Boolean.valueOf(jSONObject.getBoolean(AnalyticsConstants.SUCCESS)), Boolean.TRUE)) {
                            return;
                        }
                        for (C1205i c1205i : list) {
                            C1210j.m41633a(c1205i.f3267a);
                        }
                    } catch (JSONException e) {
                    }
                }
            });
        }
    }

    public C1218c(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, f fVar) {
        this.f3297a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        boolean z;
        l.e(thread, "t");
        l.e(th, "e");
        Throwable th2 = th;
        Throwable th3 = null;
        loop0: while (true) {
            z = false;
            if (th2 == null) {
                break;
            }
            z = false;
            if (th2 == th3) {
                break;
            }
            StackTraceElement[] stackTrace = th2.getStackTrace();
            l.d(stackTrace, "t.stackTrace");
            int length = stackTrace.length;
            int i = 0;
            while (i < length) {
                i++;
                String className = stackTrace[i].getClassName();
                l.d(className, "element.className");
                if (r.y(className, "com.facebook", false, 2)) {
                    z = true;
                    break loop0;
                }
            }
            th3 = th2;
            th2 = th2.getCause();
        }
        if (z) {
            C1204h.m41638a(th);
            C1205i.EnumC1208c enumC1208c = C1205i.EnumC1208c.CrashReport;
            l.e(enumC1208c, "t");
            new C1205i(th, enumC1208c, (f) null).m41635c();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f3297a;
        if (uncaughtExceptionHandler == null) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}
