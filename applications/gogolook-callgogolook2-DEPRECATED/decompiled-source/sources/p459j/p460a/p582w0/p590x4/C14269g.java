package p459j.p460a.p582w0.p590x4;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.widget.ActivityChooserModel;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.metrics.Trace;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010#\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010$\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020 H\u0016J\u0010\u0010&\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010'\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0012\u0010(\u001a\u00020\u001c2\b\u0010)\u001a\u0004\u0018\u00010*H\u0002J\u0010\u0010+\u001a\u00020\u001c2\b\u0010)\u001a\u0004\u0018\u00010*J\b\u0010,\u001a\u00020\u001cH\u0002J\b\u0010-\u001a\u00020\u001cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006."}, m815d2 = {"Lgogolook/callgogolook2/util/analytics/AppStartTracer;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "()V", "MAX_LATENCY_BEFORE_UI_INIT", "", CallAction.DONE_TAG, "", "TRACE_NAME", "app", "Landroid/app/Application;", "appStartTime", "appStartTrace", "Lcom/google/firebase/perf/metrics/Trace;", "getAppStartTrace", "()Lcom/google/firebase/perf/metrics/Trace;", "appStartTrace$delegate", "Lkotlin/Lazy;", "callbacksRegistered", "", "createActivity", "createTime", "fromBackground", "isTooLateToInitUI", "resumeActivity", "resumeTime", "startActivity", "startTime", "onActivityCreated", "", ActivityChooserModel.ATTRIBUTE_ACTIVITY, "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "outState", "onActivityStarted", "onActivityStopped", "registerActivityLifecycleCallbacks", "context", "Landroid/content/Context;", "start", "stop", "unregisterActivityLifecycleCallbacks", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.x4.g */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/g.class */
public final class C14269g implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f31957a;

    /* renamed from: d */
    public static boolean f31960d;

    /* renamed from: e */
    public static boolean f31961e;

    /* renamed from: f */
    public static boolean f31962f;

    /* renamed from: g */
    public static long f31963g;

    /* renamed from: h */
    public static Application f31964h;

    /* renamed from: i */
    public static long f31965i;

    /* renamed from: j */
    public static String f31966j;

    /* renamed from: k */
    public static long f31967k;

    /* renamed from: l */
    public static String f31968l;

    /* renamed from: m */
    public static long f31969m;

    /* renamed from: n */
    public static String f31970n;

    /* renamed from: o */
    public static final C14269g f31971o = new C14269g();

    /* renamed from: b */
    public static final long f31958b = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: c */
    public static final AbstractC14974f f31959c = C14975g.m662a(C14270a.f31972a);

    /* renamed from: j.a.w0.x4.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/g$a.class */
    public static final class C14270a extends AbstractC15150l implements AbstractC15107a<Trace> {

        /* renamed from: a */
        public static final C14270a f31972a = new C14270a();

        public C14270a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Trace invoke() {
            return C10062a.m13511c().m13516a("whoscall_app_start");
        }
    }

    /* renamed from: j.a.w0.x4.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/g$b.class */
    public static final class RunnableC14271b implements Runnable {

        /* renamed from: a */
        public static final RunnableC14271b f31973a = new RunnableC14271b();

        @Override // java.lang.Runnable
        public final void run() {
            C14269g gVar = C14269g.f31971o;
            if (C14269g.f31965i == 0) {
                C14269g gVar2 = C14269g.f31971o;
                C14269g.f31960d = true;
                C14269g.f31971o.m1956b();
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C14269g.class), "appStartTrace", "getAppStartTrace()Lcom/google/firebase/perf/metrics/Trace;");
        C15131a0.m412a(sVar);
        f31957a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public final Trace m1960a() {
        AbstractC14974f fVar = f31959c;
        AbstractC14906i iVar = f31957a[0];
        return (Trace) fVar.getValue();
    }

    /* renamed from: a */
    public final void m1959a(Context context) {
        synchronized (Boolean.valueOf(f31961e)) {
            if (!f31961e) {
                Context applicationContext = context != null ? context.getApplicationContext() : null;
                if (applicationContext instanceof Application) {
                    f31964h = (Application) applicationContext;
                    Application application = f31964h;
                    if (application != null) {
                        application.registerActivityLifecycleCallbacks(f31971o);
                    }
                    f31961e = true;
                }
            }
            C14989s sVar = C14989s.f33022a;
        }
    }

    /* renamed from: b */
    public final void m1956b() {
        m1953c();
        if (f31969m > 0) {
            m1960a().stop();
            C14236d dVar = new C14236d("whoscall_app_start");
            C14231a aVar = new C14231a();
            aVar.m2100a(LogsGroupRealmObject.CREATETIME, Integer.valueOf((int) (f31965i - f31963g)));
            aVar.m2100a("start_time", Integer.valueOf((int) (f31967k - f31963g)));
            aVar.m2100a("resume_time", Integer.valueOf((int) (f31969m - f31963g)));
            String str = f31966j;
            if (str == null) {
                str = "";
            }
            aVar.m2100a("create_activity", str);
            String str2 = f31968l;
            if (str2 == null) {
                str2 = "";
            }
            aVar.m2100a("start_activity", str2);
            String str3 = f31970n;
            if (str3 == null) {
                str3 = "";
            }
            aVar.m2100a("resume_activity", str3);
            dVar.mo2087a(aVar);
        }
    }

    /* renamed from: b */
    public final void m1955b(Context context) {
        f31963g = System.currentTimeMillis();
        m1960a().start();
        m1959a(context);
        new Handler(Looper.getMainLooper()).post(RunnableC14271b.f31973a);
    }

    /* renamed from: c */
    public final void m1953c() {
        synchronized (Boolean.valueOf(f31961e)) {
            if (f31961e) {
                Application application = f31964h;
                if (application != null) {
                    application.unregisterActivityLifecycleCallbacks(f31971o);
                }
                f31961e = false;
            }
            C14989s sVar = C14989s.f33022a;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        if (!f31960d && f31965i <= 0) {
            f31965i = System.currentTimeMillis();
            f31966j = activity.getClass().getSimpleName();
            if (f31965i - f31963g > f31958b) {
                f31962f = true;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        if (f31965i > 0 && f31969m == 0) {
            try {
                m1956b();
                AppStartTrace.m31048b().onActivityStarted(activity);
                AppStartTrace.m31048b().onActivityResumed(activity);
            } catch (Throwable th) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        if (f31960d || f31969m > 0 || f31962f) {
            m1956b();
            return;
        }
        f31969m = System.currentTimeMillis();
        f31970n = activity.getClass().getSimpleName();
        m1956b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        if (!f31960d && f31967k <= 0 && !f31962f) {
            f31967k = System.currentTimeMillis();
            f31968l = activity.getClass().getSimpleName();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
    }
}
