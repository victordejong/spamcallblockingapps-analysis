package gogolook.callgogolook2.service;

import android.content.Intent;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.SavedStateHandle;
import kotlin.Metadata;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13936c2;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14043k;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14166s4;
import p459j.p460a.p582w0.C14188u2;
import p459j.p460a.p582w0.C14199w0;
import p459j.p460a.p582w0.C14215x1;
import p626l.p641z.p643d.C15145g;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0007\u0018�� \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\b\u001a\u00020\tH\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\u0015\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0016¢\u0006\u0002\u0010\u000eJ%\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\fH\u0016¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\tH\u0016J\b\u0010\u0013\u001a\u00020\tH\u0016J\b\u0010\u0014\u001a\u00020\tH\u0016J\b\u0010\u0015\u001a\u00020\tH\u0016J\u0012\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u0018\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u0019\u001a\u00020\tH\u0002J\b\u0010\u001a\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001c"}, m815d2 = {"Lgogolook/callgogolook2/service/SystemNotificationListenerService;", "Landroid/service/notification/NotificationListenerService;", "()V", "needToPromoteNotificationAccess", "", "shouldWhoscallServiceAlive", "subscription", "Lrx/Subscription;", "disablePromoteNotificationAccess", "", "enablePromoteNotificationAccess", "getActiveNotifications", "", "Landroid/service/notification/StatusBarNotification;", "()[Landroid/service/notification/StatusBarNotification;", SavedStateHandle.KEYS, "", "([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;", "onCreate", "onDestroy", "onListenerConnected", "onListenerDisconnected", "onNotificationPosted", "sbn", "onNotificationRemoved", "registerBus", "unregisterBus", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
@RequiresApi(18)
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/service/SystemNotificationListenerService.class */
public final class SystemNotificationListenerService extends NotificationListenerService {

    /* renamed from: a */
    public Subscription f12774a;

    /* renamed from: b */
    public boolean f12775b;

    /* renamed from: c */
    public boolean f12776c;

    /* renamed from: gogolook.callgogolook2.service.SystemNotificationListenerService$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/service/SystemNotificationListenerService$a.class */
    public static final class C5164a {
        public C5164a() {
        }

        public /* synthetic */ C5164a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: gogolook.callgogolook2.service.SystemNotificationListenerService$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/service/SystemNotificationListenerService$b.class */
    public static final class C5165b<T> implements Action1<Object> {
        public C5165b() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (obj instanceof C14199w0) {
                boolean H = C13878a3.m3254H();
                if (H != SystemNotificationListenerService.this.f12775b) {
                    SystemNotificationListenerService.this.f12775b = H;
                    if (H) {
                        SystemNotificationListenerService.this.m26169b();
                        return;
                    }
                    SystemNotificationListenerService.this.m26172a();
                    C14188u2.m2279a(SystemNotificationListenerService.this, "FOREGROUND_FLEXIBLE_NOTIFICATION");
                }
            } else if ((obj instanceof C13936c2) && !SystemNotificationListenerService.this.f12776c) {
                C14037j3.m2731a().mo2704a(new C14215x1());
            }
        }
    }

    static {
        new C5164a(null);
    }

    /* renamed from: a */
    public final void m26172a() {
        C14043k.m2724b("WCNotificationListenerService");
        C6298e.m23353a(this, new Intent(this, WhoscallService.class));
        this.f12776c = true;
    }

    /* renamed from: b */
    public final void m26169b() {
        this.f12776c = false;
        C14037j3.m2731a().mo2704a(new C14215x1());
        C14043k.m2725a("WCNotificationListenerService");
    }

    /* renamed from: c */
    public final void m26167c() {
        this.f12774a = C14037j3.m2731a().mo2703a((Action1) new C5165b());
    }

    /* renamed from: d */
    public final void m26165d() {
        Subscription subscription;
        Subscription subscription2 = this.f12774a;
        if (subscription2 != null && !subscription2.isUnsubscribed() && (subscription = this.f12774a) != null) {
            subscription.unsubscribe();
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public StatusBarNotification[] getActiveNotifications() {
        try {
            return super.getActiveNotifications();
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public StatusBarNotification[] getActiveNotifications(String[] strArr) {
        try {
            return super.getActiveNotifications(strArr);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f12775b = C13878a3.m3254H();
        boolean z = this.f12775b;
        this.f12776c = !z;
        if (z) {
            m26169b();
        }
        m26167c();
    }

    @Override // android.service.notification.NotificationListenerService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        m26165d();
        if (C13878a3.m3254H()) {
            m26172a();
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public void onListenerConnected() {
        C14166s4.f31682b.m2319a(getActiveNotifications());
        C14188u2.m2279a(this, "FOREGROUND_FLEXIBLE_NOTIFICATION");
    }

    @Override // android.service.notification.NotificationListenerService
    public void onListenerDisconnected() {
        C14166s4.f31682b.m2323a();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationPosted(StatusBarNotification statusBarNotification) {
        C14166s4.f31682b.m2317c(statusBarNotification);
        C14166s4.f31682b.m2322a(statusBarNotification);
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRemoved(StatusBarNotification statusBarNotification) {
        C14166s4.f31682b.m2318b(statusBarNotification);
    }
}
