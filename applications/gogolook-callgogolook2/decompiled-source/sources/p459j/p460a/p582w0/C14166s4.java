package p459j.p460a.p582w0;

import android.app.Notification;
import android.content.Context;
import android.content.pm.PackageManager;
import android.service.notification.StatusBarNotification;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.NavigationAppConfig;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p459j.p460a.p512h0.C12396b;
import p459j.p460a.p512h0.C12397c;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.s4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/s4.class */
public final class C14166s4 {

    /* renamed from: b */
    public static final C14166s4 f31682b = new C14166s4();

    /* renamed from: a */
    public static final ConcurrentHashMap<String, StatusBarNotification> f31681a = new ConcurrentHashMap<>();

    @RequiresApi(26)
    /* renamed from: a */
    public static final boolean m2320a(List<? extends NavigationAppConfig.NavigationApp> list) {
        Object obj;
        C15149k.m377b(list, "appList");
        for (Map.Entry<String, StatusBarNotification> entry : f31681a.entrySet()) {
            StatusBarNotification value = entry.getValue();
            if (value.isOngoing()) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (C15149k.m384a((Object) ((NavigationAppConfig.NavigationApp) obj).m28396a(), (Object) value.getPackageName())) {
                        break;
                    }
                }
                if (obj != null) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    public final void m2323a() {
        f31681a.clear();
    }

    /* renamed from: a */
    public final void m2322a(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            ConcurrentHashMap<String, StatusBarNotification> concurrentHashMap = f31681a;
            String key = statusBarNotification.getKey();
            C15149k.m383a((Object) key, "it.key");
            concurrentHashMap.put(key, statusBarNotification);
        }
    }

    /* renamed from: a */
    public final void m2319a(StatusBarNotification[] statusBarNotificationArr) {
        if (statusBarNotificationArr != null) {
            for (StatusBarNotification statusBarNotification : statusBarNotificationArr) {
                ConcurrentHashMap<String, StatusBarNotification> concurrentHashMap = f31681a;
                String key = statusBarNotification.getKey();
                C15149k.m383a((Object) key, "it.key");
                concurrentHashMap.put(key, statusBarNotification);
            }
        }
    }

    /* renamed from: a */
    public final boolean m2321a(StatusBarNotification statusBarNotification, StatusBarNotification statusBarNotification2) {
        C15149k.m377b(statusBarNotification, "sbn1");
        C15149k.m377b(statusBarNotification2, "sbn2");
        if (!C15149k.m384a((Object) statusBarNotification.getKey(), (Object) statusBarNotification2.getKey())) {
            return false;
        }
        CharSequence charSequence = null;
        if (statusBarNotification.isClearable()) {
            Notification notification = statusBarNotification.getNotification();
            Long valueOf = notification != null ? Long.valueOf(notification.when) : null;
            Notification notification2 = statusBarNotification2.getNotification();
            if (!C15149k.m384a(valueOf, notification2 != null ? Long.valueOf(notification2.when) : null)) {
                return false;
            }
        }
        Notification notification3 = statusBarNotification.getNotification();
        String str = notification3 != null ? notification3.category : null;
        Notification notification4 = statusBarNotification2.getNotification();
        if (!C15149k.m384a((Object) str, (Object) (notification4 != null ? notification4.category : null))) {
            return false;
        }
        Notification notification5 = statusBarNotification.getNotification();
        CharSequence b = notification5 != null ? C14188u2.f31712a.m2278b(notification5) : null;
        Notification notification6 = statusBarNotification2.getNotification();
        if (!C15149k.m384a(b, notification6 != null ? C14188u2.f31712a.m2278b(notification6) : null)) {
            return false;
        }
        Notification notification7 = statusBarNotification.getNotification();
        CharSequence a = notification7 != null ? C14188u2.f31712a.m2283a(notification7) : null;
        Notification notification8 = statusBarNotification2.getNotification();
        if (notification8 != null) {
            charSequence = C14188u2.f31712a.m2283a(notification8);
        }
        return !(C15149k.m384a(a, charSequence) ^ true);
    }

    /* renamed from: b */
    public final void m2318b(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            f31681a.remove(statusBarNotification.getKey());
        }
    }

    /* renamed from: c */
    public final void m2317c(StatusBarNotification statusBarNotification) {
        if (C13963d3.m2965f() && statusBarNotification != null && !NotificationCompat.isGroupSummary(statusBarNotification.getNotification())) {
            StatusBarNotification statusBarNotification2 = f31681a.get(statusBarNotification.getKey());
            if (statusBarNotification2 != null) {
                if (!(!C15149k.m384a((Object) statusBarNotification.getNotification().category, (Object) NotificationCompat.CATEGORY_MESSAGE))) {
                    C14166s4 s4Var = f31682b;
                    C15149k.m383a((Object) statusBarNotification2, "oldSbn");
                    if (s4Var.m2321a(statusBarNotification2, statusBarNotification)) {
                        return;
                    }
                } else {
                    return;
                }
            }
            try {
                Context o = MyApplication.m29013o();
                C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
                PackageManager packageManager = o.getPackageManager();
                CharSequence applicationLabel = packageManager != null ? packageManager.getApplicationLabel(packageManager.getApplicationInfo(statusBarNotification.getPackageName(), 0)) : null;
                C12396b a = C12397c.f27972a.m6244a(statusBarNotification);
                C14236d dVar = new C14236d("whoscall_notification_event");
                C14231a aVar = new C14231a();
                if (applicationLabel == null) {
                    applicationLabel = "";
                }
                aVar.m2100a("app_name", applicationLabel);
                aVar.m2100a("package_name", a.m6248c());
                aVar.m2100a("category", a.m6250a());
                aVar.m2100a("has_url", Integer.valueOf(a.mo6245f().size()));
                aVar.m2100a("has_content", Integer.valueOf(!a.mo6249b()));
                dVar.mo2087a(aVar);
            } catch (PackageManager.NameNotFoundException e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }
}
