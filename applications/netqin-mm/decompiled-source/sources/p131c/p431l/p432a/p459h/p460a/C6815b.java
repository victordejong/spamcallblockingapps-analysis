package p131c.p431l.p432a.p459h.p460a;

import android.app.Activity;
import android.app.ActivityManager;
import android.os.Bundle;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.main.p529ui.NqApplication;
import com.netqin.p525cm.utils.ScreenMonitor;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p431l.p432a.p468n.AbstractC6839a;
import p131c.p431l.p432a.p468n.C6847h;
import p131c.p431l.p432a.p468n.C6850i;
/* renamed from: c.l.a.h.a.b */
/* loaded from: classes-dex2jar.jar:c/l/a/h/a/b.class */
public class C6815b extends AbstractC6839a {

    /* renamed from: d */
    public static String f20985d = "LifeCycleMonitor";

    /* renamed from: a */
    public final Set<String> f20986a;

    /* renamed from: b */
    public final Set<Activity> f20987b;

    /* renamed from: c */
    public boolean f20988c;

    /* renamed from: c.l.a.h.a.b$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/h/a/b$a.class */
    public class C6816a implements ScreenMonitor.AbstractC9191a {

        /* renamed from: a */
        public final long[] f20989a = new long[3];

        public C6816a() {
        }

        @Override // com.netqin.p525cm.utils.ScreenMonitor.AbstractC9191a
        /* renamed from: a */
        public void mo3180a() {
            C6815b.this.f20988c = false;
            if (m19683a(0)) {
                C6850i.m19579a(C6815b.f20985d, "收到屏幕关闭事件");
            }
        }

        @Override // com.netqin.p525cm.utils.ScreenMonitor.AbstractC9191a
        /* renamed from: a */
        public void mo3179a(boolean z) {
            C6815b.this.f20988c = true;
            if (m19683a(1)) {
                C6850i.m19579a(C6815b.f20985d, "收到屏幕电量事件");
            }
        }

        /* renamed from: a */
        public final boolean m19683a(int i) {
            long currentTimeMillis = System.currentTimeMillis();
            long[] jArr = this.f20989a;
            if (currentTimeMillis - jArr[i] < 1000) {
                return false;
            }
            jArr[i] = currentTimeMillis;
            return true;
        }

        @Override // com.netqin.p525cm.utils.ScreenMonitor.AbstractC9191a
        /* renamed from: b */
        public void mo3178b() {
            if (m19683a(2)) {
                C6850i.m19579a(C6815b.f20985d, "收到用户解锁事件");
            }
        }
    }

    /* renamed from: c.l.a.h.a.b$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/h/a/b$b.class */
    public class RunnableC6817b implements Runnable {
        public RunnableC6817b(C6815b bVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* renamed from: c.l.a.h.a.b$c */
    /* loaded from: classes2-dex2jar.jar:c/l/a/h/a/b$c.class */
    public class RunnableC6818c implements Runnable {
        public RunnableC6818c(C6815b bVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* renamed from: c.l.a.h.a.b$d */
    /* loaded from: classes2-dex2jar.jar:c/l/a/h/a/b$d.class */
    public static final class C6819d {

        /* renamed from: a */
        public static final C6815b f20991a = new C6815b(null);
    }

    public C6815b() {
        this.f20986a = Collections.newSetFromMap(new ConcurrentHashMap());
        this.f20987b = Collections.newSetFromMap(new ConcurrentHashMap());
        new ScreenMonitor().m3182a(NqApplication.m3303b(), new C6816a());
    }

    public /* synthetic */ C6815b(C6816a aVar) {
        this();
    }

    /* renamed from: b */
    public static C6815b m19685b() {
        return C6819d.f20991a;
    }

    /* renamed from: c */
    public static boolean m19684c() {
        return !m19685b().f20986a.isEmpty() && m19685b().m19688a();
    }

    /* renamed from: a */
    public final void m19687a(Activity activity, boolean z) {
        String name = activity.getClass().getName();
        if (z) {
            this.f20986a.add(name);
        } else {
            this.f20986a.remove(name);
        }
    }

    /* renamed from: a */
    public final boolean m19688a() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) NqApplication.m3303b().getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(NqApplication.m3303b().getPackageName()) && runningAppProcessInfo.importance == 100) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.f20987b.add(activity);
        String str = f20985d;
        C6850i.m19579a(str, "onActivityCreated: " + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        this.f20987b.remove(activity);
        String str = f20985d;
        C6850i.m19579a(str, "onActivityDestroyed: " + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        String str = f20985d;
        C6850i.m19579a(str, "onActivityPaused: " + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        String str = f20985d;
        C6850i.m19579a(str, "onActivityResumed: " + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        String str = f20985d;
        C6850i.m19579a(str, "onActivitySaveInstanceState: " + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (activity instanceof BaseActivity) {
            C6847h.m19584a().m19583a(new RunnableC6817b(this));
            m19687a(activity, true);
            String str = f20985d;
            C6850i.m19579a(str, "onActivityStarted: " + activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (activity instanceof BaseActivity) {
            m19687a(activity, false);
            String str = f20985d;
            C6850i.m19579a(str, "onActivityStopped activity: " + activity + "mActivityNames: " + this.f20986a);
            C6847h.m19584a().m19583a(new RunnableC6818c(this));
        }
    }
}
