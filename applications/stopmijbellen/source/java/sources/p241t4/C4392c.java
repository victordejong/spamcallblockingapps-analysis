package p241t4;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.concurrent.GuardedBy;
import p021b6.C0735a;
import p226s.C4251a;
import p226s.C4263g;
import p305z4.C5087k;
import p305z4.C5096p;
/* renamed from: t4.c */
/* loaded from: classes-dex2jar.jar:t4/c.class */
public class C4392c {

    /* renamed from: i */
    public static final Object f13685i = new Object();

    /* renamed from: j */
    public static final Executor f13686j = new ExecutorC4396d(null);
    @GuardedBy("LOCK")

    /* renamed from: k */
    public static final Map<String, C4392c> f13687k = new C4251a();

    /* renamed from: a */
    public final Context f13688a;

    /* renamed from: b */
    public final String f13689b;

    /* renamed from: c */
    public final C4399e f13690c;

    /* renamed from: d */
    public final C5087k f13691d;

    /* renamed from: g */
    public final C5096p<C0735a> f13694g;

    /* renamed from: e */
    public final AtomicBoolean f13692e = new AtomicBoolean(false);

    /* renamed from: f */
    public final AtomicBoolean f13693f = new AtomicBoolean();

    /* renamed from: h */
    public final List<AbstractC4394b> f13695h = new CopyOnWriteArrayList();

    @KeepForSdk
    /* renamed from: t4.c$b */
    /* loaded from: classes-dex2jar.jar:t4/c$b.class */
    public interface AbstractC4394b {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z);
    }

    @TargetApi(14)
    /* renamed from: t4.c$c */
    /* loaded from: classes-dex2jar.jar:t4/c$c.class */
    public static class C4395c implements BackgroundDetector.BackgroundStateChangeListener {

        /* renamed from: a */
        public static AtomicReference<C4395c> f13696a = new AtomicReference<>();

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z) {
            Object obj = C4392c.f13685i;
            synchronized (C4392c.f13685i) {
                Iterator it2 = new ArrayList(((C4251a) C4392c.f13687k).values()).iterator();
                while (it2.hasNext()) {
                    C4392c c4392c = (C4392c) it2.next();
                    if (c4392c.f13692e.get()) {
                        for (AbstractC4394b abstractC4394b : c4392c.f13695h) {
                            abstractC4394b.onBackgroundStateChanged(z);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: t4.c$d */
    /* loaded from: classes-dex2jar.jar:t4/c$d.class */
    public static class ExecutorC4396d implements Executor {

        /* renamed from: a */
        public static final Handler f13697a = new Handler(Looper.getMainLooper());

        public ExecutorC4396d(C4393a c4393a) {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            f13697a.post(runnable);
        }
    }

    @TargetApi(24)
    /* renamed from: t4.c$e */
    /* loaded from: classes-dex2jar.jar:t4/c$e.class */
    public static class C4397e extends BroadcastReceiver {

        /* renamed from: b */
        public static AtomicReference<C4397e> f13698b = new AtomicReference<>();

        /* renamed from: a */
        public final Context f13699a;

        public C4397e(Context context) {
            this.f13699a = context;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Object obj = C4392c.f13685i;
            synchronized (C4392c.f13685i) {
                for (C4392c c4392c : ((C4251a) C4392c.f13687k).values()) {
                    c4392c.m971d();
                }
            }
            this.f13699a.unregisterReceiver(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0132 A[LOOP:1: B:26:0x0129->B:28:0x0132, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4392c(final android.content.Context r9, java.lang.String r10, p241t4.C4399e r11) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p241t4.C4392c.<init>(android.content.Context, java.lang.String, t4.e):void");
    }

    /* renamed from: b */
    public static C4392c m973b() {
        C4392c c4392c;
        synchronized (f13685i) {
            c4392c = (C4392c) ((C4263g) f13687k).get("[DEFAULT]");
            if (c4392c == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return c4392c;
    }

    /* renamed from: e */
    public static C4392c m970e(Context context, C4399e c4399e) {
        C4392c c4392c;
        AtomicReference<C4395c> atomicReference = C4395c.f13696a;
        if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
            Application application = (Application) context.getApplicationContext();
            if (C4395c.f13696a.get() == null) {
                C4395c c4395c = new C4395c();
                if (C4395c.f13696a.compareAndSet(null, c4395c)) {
                    BackgroundDetector.initialize(application);
                    BackgroundDetector.getInstance().addListener(c4395c);
                }
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f13685i) {
            Map<String, C4392c> map = f13687k;
            boolean z = true;
            if (((C4263g) map).m1198e("[DEFAULT]") >= 0) {
                z = false;
            }
            Preconditions.checkState(z, "FirebaseApp name [DEFAULT] already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            c4392c = new C4392c(context, "[DEFAULT]", c4399e);
            ((C4263g) map).put("[DEFAULT]", c4392c);
        }
        c4392c.m971d();
        return c4392c;
    }

    /* renamed from: a */
    public final void m974a() {
        Preconditions.checkState(!this.f13693f.get(), "FirebaseApp was deleted");
    }

    @KeepForSdk
    /* renamed from: c */
    public String m972c() {
        StringBuilder sb = new StringBuilder();
        m974a();
        sb.append(Base64Utils.encodeUrlSafeNoPadding(this.f13689b.getBytes(Charset.defaultCharset())));
        sb.append("+");
        m974a();
        sb.append(Base64Utils.encodeUrlSafeNoPadding(this.f13690c.f13712b.getBytes(Charset.defaultCharset())));
        return sb.toString();
    }

    /* renamed from: d */
    public final void m971d() {
        HashMap hashMap;
        if (!(Build.VERSION.SDK_INT >= 24 ? ((UserManager) this.f13688a.getSystemService(UserManager.class)).isUserUnlocked() : true)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            m974a();
            sb.append(this.f13689b);
            Log.i("FirebaseApp", sb.toString());
            Context context = this.f13688a;
            if (C4397e.f13698b.get() != null) {
                return;
            }
            C4397e c4397e = new C4397e(context);
            if (!C4397e.f13698b.compareAndSet(null, c4397e)) {
                return;
            }
            context.registerReceiver(c4397e, new IntentFilter("android.intent.action.USER_UNLOCKED"));
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Device unlocked: initializing all Firebase APIs for app ");
        m974a();
        sb2.append(this.f13689b);
        Log.i("FirebaseApp", sb2.toString());
        C5087k c5087k = this.f13691d;
        boolean m968g = m968g();
        if (!c5087k.f15427f.compareAndSet(null, Boolean.valueOf(m968g))) {
            return;
        }
        synchronized (c5087k) {
            hashMap = new HashMap(c5087k.f15422a);
        }
        c5087k.m48M(hashMap, m968g);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C4392c)) {
            return false;
        }
        String str = this.f13689b;
        C4392c c4392c = (C4392c) obj;
        c4392c.m974a();
        return str.equals(c4392c.f13689b);
    }

    @KeepForSdk
    /* renamed from: f */
    public boolean m969f() {
        boolean z;
        m974a();
        C0735a c0735a = this.f13694g.get();
        synchronized (c0735a) {
            z = c0735a.f2793d;
        }
        return z;
    }

    @KeepForSdk
    /* renamed from: g */
    public boolean m968g() {
        m974a();
        return "[DEFAULT]".equals(this.f13689b);
    }

    public int hashCode() {
        return this.f13689b.hashCode();
    }

    public String toString() {
        return Objects.toStringHelper(this).add(AppMeasurementSdk.ConditionalUserProperty.NAME, this.f13689b).add("options", this.f13690c).toString();
    }
}
