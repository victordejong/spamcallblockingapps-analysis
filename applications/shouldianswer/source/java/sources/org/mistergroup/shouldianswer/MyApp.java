package org.mistergroup.shouldianswer;

import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import androidx.appcompat.app.AbstractC0094g;
import com.crashlytics.android.Crashlytics;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.InstanceIdResult;
import io.fabric.sdk.android.C1449c;
import java.text.DateFormat;
import java.util.Date;
import kotlin.AbstractC1660e;
import kotlin.C1707f;
import kotlin.p081e.p082a.AbstractC1662a;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1698l;
import kotlin.p081e.p083b.C1703n;
import kotlin.p085g.AbstractC1722e;
import org.mistergroup.shouldianswer.model.C2391ae;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.EnumC2393af;
import org.mistergroup.shouldianswer.model.communityDatabase.C2408a;
import org.mistergroup.shouldianswer.p098b.C2278g;
import org.mistergroup.shouldianswer.services.MonitoringService;
import org.mistergroup.shouldianswer.services.TasksService;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3100g;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3117q;
import org.mistergroup.shouldianswer.utils.C3118r;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/MyApp.class */
public final class MyApp extends Application {

    /* renamed from: b */
    public static MyApp f5479b;

    /* renamed from: d */
    private final AbstractC1660e f5481d = C1707f.m3074a(new C2107b());

    /* renamed from: e */
    private final AbstractC1660e f5482e = C1707f.m3074a(new C2108c());

    /* renamed from: a */
    static final /* synthetic */ AbstractC1722e[] f5478a = {C1703n.m3104a(new C1698l(C1703n.m3107a(MyApp.class), "dateFormatDate", "getDateFormatDate()Ljava/text/DateFormat;")), C1703n.m3104a(new C1698l(C1703n.m3107a(MyApp.class), "dateFormatTime", "getDateFormatTime()Ljava/text/DateFormat;"))};

    /* renamed from: c */
    public static final C2106a f5480c = new C2106a(null);

    /* renamed from: org.mistergroup.shouldianswer.MyApp$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/MyApp$a.class */
    public static final class C2106a {
        private C2106a() {
        }

        public /* synthetic */ C2106a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final MyApp m1802a() {
            MyApp myApp = MyApp.f5479b;
            if (myApp == null) {
                C1694h.m3116b("instance");
            }
            return myApp;
        }

        /* renamed from: b */
        public final ContentResolver m1801b() {
            ContentResolver contentResolver = MyApp.f5480c.m1802a().getContentResolver();
            C1694h.m3122a((Object) contentResolver, "instance.contentResolver");
            return contentResolver;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.MyApp$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/MyApp$b.class */
    static final class C2107b extends AbstractC1695i implements AbstractC1662a<DateFormat> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2107b() {
            super(0);
            MyApp.this = r4;
        }

        /* renamed from: b */
        public final DateFormat mo3a() {
            return android.text.format.DateFormat.getDateFormat(MyApp.this.getApplicationContext());
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.MyApp$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/MyApp$c.class */
    static final class C2108c extends AbstractC1695i implements AbstractC1662a<DateFormat> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2108c() {
            super(0);
            MyApp.this = r4;
        }

        /* renamed from: b */
        public final DateFormat mo3a() {
            return android.text.format.DateFormat.getTimeFormat(MyApp.this.getApplicationContext());
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.MyApp$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/MyApp$d.class */
    static final class C2109d<TResult> implements OnCompleteListener<InstanceIdResult> {

        /* renamed from: a */
        public static final C2109d f5485a = new C2109d();

        C2109d() {
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public final void onComplete(Task<InstanceIdResult> task) {
            C1694h.m3117b(task, "task");
            try {
                if (!task.isSuccessful()) {
                    C3104j.m152c(C3104j.f9124a, "FirebaseInstanceId.getInstance failed!", null, 2, null);
                    return;
                }
                InstanceIdResult result = task.getResult();
                String token = result != null ? result.getToken() : null;
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "FirebaseInstanceId.getInstance firebaseId=" + String.valueOf(token), (String) null, 2, (Object) null);
                Crashlytics.getInstance().core.setString("firebaseId", String.valueOf(token));
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    public MyApp() {
        f5479b = this;
    }

    /* renamed from: a */
    public final DateFormat m1807a() {
        AbstractC1660e abstractC1660e = this.f5481d;
        AbstractC1722e abstractC1722e = f5478a[0];
        return (DateFormat) abstractC1660e.mo2977a();
    }

    /* renamed from: a */
    public final void m1806a(Context context) {
        C1694h.m3117b(context, "context");
        if (Build.VERSION.SDK_INT < 29) {
            context.setTheme(C2398ai.f6930a.m1309B() ? 2131820774 : 2131820773);
            return;
        }
        int i = C2265b.f6339a[C2398ai.f6930a.m1310A().ordinal()];
        int i2 = -1;
        if (i != 1) {
            i2 = i != 2 ? i != 3 ? -1 : 2 : 1;
        }
        AbstractC0094g.m7891e(i2);
    }

    /* renamed from: b */
    public final DateFormat m1805b() {
        AbstractC1660e abstractC1660e = this.f5482e;
        AbstractC1722e abstractC1722e = f5478a[1];
        return (DateFormat) abstractC1660e.mo2977a();
    }

    /* renamed from: c */
    public final void m1804c() {
        if (C2398ai.f6930a.m1283c() != EnumC2393af.UNKNOWN) {
            MonitoringService.f7214a.m946b();
            TasksService.f7257a.m930a();
            C2278g.f6398a.m1707a();
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        C1694h.m3117b(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        C3104j.m157a(C3104j.f9124a, "MyApp.onConfigurationChanged", (String) null, 2, (Object) null);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        try {
            C3104j c3104j = C3104j.f9124a;
            C1449c m3589a = C1449c.m3589a(this, new Crashlytics());
            C1694h.m3122a((Object) m3589a, "Fabric.with(this, Crashlytics())");
            c3104j.m164a(m3589a);
            m1806a(this);
            C3074a.f8976a.m230a(C2405c.f6946b.m1172m());
            C3104j.m157a(C3104j.f9124a, "***************************************************************************", (String) null, 2, (Object) null);
            C3104j.m157a(C3104j.f9124a, "***************************************************************************", (String) null, 2, (Object) null);
            C3104j.m157a(C3104j.f9124a, "***************************************************************************", (String) null, 2, (Object) null);
            C3104j.m157a(C3104j.f9124a, "Welcome to live!", (String) null, 2, (Object) null);
            C3104j c3104j2 = C3104j.f9124a;
            C3104j.m157a(c3104j2, "startTime=" + C3100g.f9119a.m173a(new Date()), (String) null, 2, (Object) null);
            C3104j c3104j3 = C3104j.f9124a;
            C3104j.m157a(c3104j3, "installTime=" + C3100g.f9119a.m173a(new Date(C2405c.f6946b.m1170o())), (String) null, 2, (Object) null);
            C3104j c3104j4 = C3104j.f9124a;
            C3104j.m157a(c3104j4, "appVersionCode=" + String.valueOf(C3118r.f9187a.m96c()), (String) null, 2, (Object) null);
            C3104j c3104j5 = C3104j.f9124a;
            C3104j.m157a(c3104j5, "apiVer=" + String.valueOf(Build.VERSION.SDK_INT), (String) null, 2, (Object) null);
            C3104j c3104j6 = C3104j.f9124a;
            C3104j.m157a(c3104j6, "appId=" + C2405c.f6946b.m1172m(), (String) null, 2, (Object) null);
            C3104j c3104j7 = C3104j.f9124a;
            C3104j.m157a(c3104j7, "build_model=" + Build.MODEL, (String) null, 2, (Object) null);
            C3104j c3104j8 = C3104j.f9124a;
            C3104j.m157a(c3104j8, "build_manufacturer=" + Build.MANUFACTURER, (String) null, 2, (Object) null);
            C3104j c3104j9 = C3104j.f9124a;
            C3104j.m157a(c3104j9, "Protection Level " + C2398ai.f6930a.m1283c().name(), (String) null, 2, (Object) null);
            C3104j c3104j10 = C3104j.f9124a;
            C3104j.m157a(c3104j10, "initialSettings=\n" + C2398ai.f6930a.m1299L(), (String) null, 2, (Object) null);
            C3104j c3104j11 = C3104j.f9124a;
            C3104j.m157a(c3104j11, "Permission callPhone=" + String.valueOf(C3115o.f9175a.m118e()), (String) null, 2, (Object) null);
            C3104j c3104j12 = C3104j.f9124a;
            C3104j.m157a(c3104j12, "Permission canReadCallLog=" + String.valueOf(C3115o.f9175a.m117f()), (String) null, 2, (Object) null);
            C3104j c3104j13 = C3104j.f9124a;
            C3104j.m157a(c3104j13, "Permission canReadPhoneState=" + String.valueOf(C3115o.f9175a.m115h()), (String) null, 2, (Object) null);
            C3104j c3104j14 = C3104j.f9124a;
            C3104j.m157a(c3104j14, "Permission canProcessOutgoingCalls=" + String.valueOf(C3115o.f9175a.m114i()), (String) null, 2, (Object) null);
            C3104j c3104j15 = C3104j.f9124a;
            C3104j.m157a(c3104j15, "Permission canReadContact=" + String.valueOf(C3115o.f9175a.m113j()), (String) null, 2, (Object) null);
            m1804c();
            FirebaseInstanceId firebaseInstanceId = FirebaseInstanceId.getInstance();
            C1694h.m3122a((Object) firebaseInstanceId, "FirebaseInstanceId.getInstance()");
            firebaseInstanceId.getInstanceId().addOnCompleteListener(C2109d.f5485a);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        C3104j.m157a(C3104j.f9124a, "MyApp.onLowMemory", (String) null, 2, (Object) null);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        try {
            String valueOf = String.valueOf(i);
            if (i == 5) {
                valueOf = "Running Moderate";
            } else if (i == 10) {
                valueOf = "Running Low";
            } else if (i == 15) {
                valueOf = "Running Critical";
            } else if (i == 20) {
                valueOf = "UI Hidden";
            } else if (i == 40) {
                valueOf = "Background";
            } else if (i == 60) {
                valueOf = "Moderate";
            } else if (i == 80) {
                valueOf = "Complete";
            }
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "MyApp.onTrimMemory level=" + valueOf, (String) null, 2, (Object) null);
            if (i != 15 && i != 5) {
                return;
            }
            C3104j.m157a(C3104j.f9124a, "MyApp.onTrimMemory optimizing memory usage", (String) null, 2, (Object) null);
            C2408a.f6967a.m1151a(false);
            C2391ae.f6909a.m1323a();
            C3117q.f9185a.m103a();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }
}
