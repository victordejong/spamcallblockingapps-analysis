package org.mistergroup.shouldianswer.utils;

import android.app.ActivityManager;
import android.app.NotificationManager;
import android.content.ClipboardManager;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.os.PowerManager;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import kotlin.AbstractC1660e;
import kotlin.C1707f;
import kotlin.TypeCastException;
import kotlin.p081e.p082a.AbstractC1662a;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1698l;
import kotlin.p081e.p083b.C1703n;
import kotlin.p085g.AbstractC1722e;
import org.mistergroup.shouldianswer.MyApp;
/* renamed from: org.mistergroup.shouldianswer.utils.y */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y.class */
public final class C3135y {

    /* renamed from: a */
    static final /* synthetic */ AbstractC1722e[] f9271a = {C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "clipboardManager", "getClipboardManager()Landroid/content/ClipboardManager;")), C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "packageManager", "getPackageManager()Landroid/content/pm/PackageManager;")), C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "notificationManager", "getNotificationManager()Landroid/app/NotificationManager;")), C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "telephonyManager", "getTelephonyManager()Landroid/telephony/TelephonyManager;")), C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "activityManager", "getActivityManager()Landroid/app/ActivityManager;")), C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "subscriptionManager", "getSubscriptionManager()Landroid/telephony/SubscriptionManager;")), C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "connectivityManager", "getConnectivityManager()Landroid/net/ConnectivityManager;")), C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "windowManager", "getWindowManager()Landroid/view/WindowManager;")), C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "telecomManager", "getTelecomManager()Landroid/telecom/TelecomManager;")), C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "inputMethodManager", "getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;")), C1703n.m3104a(new C1698l(C1703n.m3107a(C3135y.class), "powerManager", "getPowerManager()Landroid/os/PowerManager;"))};

    /* renamed from: b */
    public static final C3135y f9272b = new C3135y();

    /* renamed from: c */
    private static final AbstractC1660e f9273c = C1707f.m3074a(C3137b.f9285a);

    /* renamed from: d */
    private static final AbstractC1660e f9274d = C1707f.m3074a(C3141f.f9289a);

    /* renamed from: e */
    private static final AbstractC1660e f9275e = C1707f.m3074a(C3140e.f9288a);

    /* renamed from: f */
    private static final AbstractC1660e f9276f = C1707f.m3074a(C3145j.f9293a);

    /* renamed from: g */
    private static final AbstractC1660e f9277g = C1707f.m3074a(C3136a.f9284a);

    /* renamed from: h */
    private static final AbstractC1660e f9278h = C1707f.m3074a(C3143h.f9291a);

    /* renamed from: i */
    private static final AbstractC1660e f9279i = C1707f.m3074a(C3138c.f9286a);

    /* renamed from: j */
    private static final AbstractC1660e f9280j = C1707f.m3074a(C3146k.f9294a);

    /* renamed from: k */
    private static final AbstractC1660e f9281k = C1707f.m3074a(C3144i.f9292a);

    /* renamed from: l */
    private static final AbstractC1660e f9282l = C1707f.m3074a(C3139d.f9287a);

    /* renamed from: m */
    private static final AbstractC1660e f9283m = C1707f.m3074a(C3142g.f9290a);

    /* renamed from: org.mistergroup.shouldianswer.utils.y$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$a.class */
    static final class C3136a extends AbstractC1695i implements AbstractC1662a<ActivityManager> {

        /* renamed from: a */
        public static final C3136a f9284a = new C3136a();

        C3136a() {
            super(0);
        }

        /* renamed from: b */
        public final ActivityManager mo3a() {
            Object systemService = MyApp.f5480c.m1802a().getApplicationContext().getSystemService("activity");
            if (systemService != null) {
                return (ActivityManager) systemService;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.app.ActivityManager");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.y$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$b.class */
    static final class C3137b extends AbstractC1695i implements AbstractC1662a<ClipboardManager> {

        /* renamed from: a */
        public static final C3137b f9285a = new C3137b();

        C3137b() {
            super(0);
        }

        /* renamed from: b */
        public final ClipboardManager mo3a() {
            Object systemService = MyApp.f5480c.m1802a().getApplicationContext().getSystemService("clipboard");
            if (systemService != null) {
                return (ClipboardManager) systemService;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.content.ClipboardManager");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.y$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$c.class */
    static final class C3138c extends AbstractC1695i implements AbstractC1662a<ConnectivityManager> {

        /* renamed from: a */
        public static final C3138c f9286a = new C3138c();

        C3138c() {
            super(0);
        }

        /* renamed from: b */
        public final ConnectivityManager mo3a() {
            Object systemService = MyApp.f5480c.m1802a().getApplicationContext().getSystemService("connectivity");
            if (systemService != null) {
                return (ConnectivityManager) systemService;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.net.ConnectivityManager");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.y$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$d.class */
    static final class C3139d extends AbstractC1695i implements AbstractC1662a<InputMethodManager> {

        /* renamed from: a */
        public static final C3139d f9287a = new C3139d();

        C3139d() {
            super(0);
        }

        /* renamed from: b */
        public final InputMethodManager mo3a() {
            Object systemService = MyApp.f5480c.m1802a().getSystemService("input_method");
            if (systemService != null) {
                return (InputMethodManager) systemService;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.y$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$e.class */
    static final class C3140e extends AbstractC1695i implements AbstractC1662a<NotificationManager> {

        /* renamed from: a */
        public static final C3140e f9288a = new C3140e();

        C3140e() {
            super(0);
        }

        /* renamed from: b */
        public final NotificationManager mo3a() {
            Object systemService = MyApp.f5480c.m1802a().getApplicationContext().getSystemService("notification");
            if (systemService != null) {
                return (NotificationManager) systemService;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.y$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$f.class */
    static final class C3141f extends AbstractC1695i implements AbstractC1662a<PackageManager> {

        /* renamed from: a */
        public static final C3141f f9289a = new C3141f();

        C3141f() {
            super(0);
        }

        /* renamed from: b */
        public final PackageManager mo3a() {
            return MyApp.f5480c.m1802a().getPackageManager();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.y$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$g.class */
    static final class C3142g extends AbstractC1695i implements AbstractC1662a<PowerManager> {

        /* renamed from: a */
        public static final C3142g f9290a = new C3142g();

        C3142g() {
            super(0);
        }

        /* renamed from: b */
        public final PowerManager mo3a() {
            Object systemService = MyApp.f5480c.m1802a().getSystemService("power");
            if (systemService != null) {
                return (PowerManager) systemService;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.os.PowerManager");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.y$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$h.class */
    static final class C3143h extends AbstractC1695i implements AbstractC1662a<SubscriptionManager> {

        /* renamed from: a */
        public static final C3143h f9291a = new C3143h();

        C3143h() {
            super(0);
        }

        /* renamed from: b */
        public final SubscriptionManager mo3a() {
            Object systemService = MyApp.f5480c.m1802a().getApplicationContext().getSystemService("telephony_subscription_service");
            if (systemService != null) {
                return (SubscriptionManager) systemService;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.telephony.SubscriptionManager");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.y$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$i.class */
    static final class C3144i extends AbstractC1695i implements AbstractC1662a<TelecomManager> {

        /* renamed from: a */
        public static final C3144i f9292a = new C3144i();

        C3144i() {
            super(0);
        }

        /* renamed from: b */
        public final TelecomManager mo3a() {
            Object systemService = MyApp.f5480c.m1802a().getApplicationContext().getSystemService("telecom");
            if (systemService != null) {
                return (TelecomManager) systemService;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.telecom.TelecomManager");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.y$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$j.class */
    static final class C3145j extends AbstractC1695i implements AbstractC1662a<TelephonyManager> {

        /* renamed from: a */
        public static final C3145j f9293a = new C3145j();

        C3145j() {
            super(0);
        }

        /* renamed from: b */
        public final TelephonyManager mo3a() {
            Object systemService = MyApp.f5480c.m1802a().getApplicationContext().getSystemService("phone");
            if (systemService != null) {
                return (TelephonyManager) systemService;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.telephony.TelephonyManager");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.y$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/y$k.class */
    static final class C3146k extends AbstractC1695i implements AbstractC1662a<WindowManager> {

        /* renamed from: a */
        public static final C3146k f9294a = new C3146k();

        C3146k() {
            super(0);
        }

        /* renamed from: b */
        public final WindowManager mo3a() {
            Object systemService = MyApp.f5480c.m1802a().getApplicationContext().getSystemService("window");
            if (systemService != null) {
                return (WindowManager) systemService;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
    }

    private C3135y() {
    }

    /* renamed from: a */
    public final ClipboardManager m23a() {
        AbstractC1660e abstractC1660e = f9273c;
        AbstractC1722e abstractC1722e = f9271a[0];
        return (ClipboardManager) abstractC1660e.mo2977a();
    }

    /* renamed from: b */
    public final PackageManager m22b() {
        AbstractC1660e abstractC1660e = f9274d;
        AbstractC1722e abstractC1722e = f9271a[1];
        return (PackageManager) abstractC1660e.mo2977a();
    }

    /* renamed from: c */
    public final NotificationManager m21c() {
        AbstractC1660e abstractC1660e = f9275e;
        AbstractC1722e abstractC1722e = f9271a[2];
        return (NotificationManager) abstractC1660e.mo2977a();
    }

    /* renamed from: d */
    public final TelephonyManager m20d() {
        AbstractC1660e abstractC1660e = f9276f;
        AbstractC1722e abstractC1722e = f9271a[3];
        return (TelephonyManager) abstractC1660e.mo2977a();
    }

    /* renamed from: e */
    public final SubscriptionManager m19e() {
        AbstractC1660e abstractC1660e = f9278h;
        AbstractC1722e abstractC1722e = f9271a[5];
        return (SubscriptionManager) abstractC1660e.mo2977a();
    }

    /* renamed from: f */
    public final ConnectivityManager m18f() {
        AbstractC1660e abstractC1660e = f9279i;
        AbstractC1722e abstractC1722e = f9271a[6];
        return (ConnectivityManager) abstractC1660e.mo2977a();
    }

    /* renamed from: g */
    public final WindowManager m17g() {
        AbstractC1660e abstractC1660e = f9280j;
        AbstractC1722e abstractC1722e = f9271a[7];
        return (WindowManager) abstractC1660e.mo2977a();
    }

    /* renamed from: h */
    public final TelecomManager m16h() {
        AbstractC1660e abstractC1660e = f9281k;
        AbstractC1722e abstractC1722e = f9271a[8];
        return (TelecomManager) abstractC1660e.mo2977a();
    }

    /* renamed from: i */
    public final InputMethodManager m15i() {
        AbstractC1660e abstractC1660e = f9282l;
        AbstractC1722e abstractC1722e = f9271a[9];
        return (InputMethodManager) abstractC1660e.mo2977a();
    }

    /* renamed from: j */
    public final PowerManager m14j() {
        AbstractC1660e abstractC1660e = f9283m;
        AbstractC1722e abstractC1722e = f9271a[10];
        return (PowerManager) abstractC1660e.mo2977a();
    }
}
