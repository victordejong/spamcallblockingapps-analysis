package p459j.p460a.p582w0;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import java.util.Iterator;
import java.util.List;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p626l.p631e0.C14966w;
import p626l.p632u.C15013i;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.u2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/u2.class */
public final class C14188u2 {

    /* renamed from: a */
    public static final C14188u2 f31712a = new C14188u2();

    /* renamed from: a */
    public static final List<StatusBarNotification> m2282a(Context context) {
        C15149k.m377b(context, "context");
        if (!C14017g4.m2803u()) {
            return null;
        }
        try {
            Object systemService = context.getSystemService(NotificationManager.class);
            C15149k.m383a(systemService, "context.getSystemService…ationManager::class.java)");
            StatusBarNotification[] activeNotifications = ((NotificationManager) systemService).getActiveNotifications();
            C15149k.m383a((Object) activeNotifications, "context.getSystemService…java).activeNotifications");
            return C15013i.m573f(activeNotifications);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: a */
    public static final void m2281a(Context context, int i) {
        C15149k.m377b(context, "context");
        m2280a(context, i, null);
    }

    /* renamed from: a */
    public static final void m2280a(Context context, int i, String str) {
        C15149k.m377b(context, "context");
        try {
            NotificationManagerCompat.from(context).cancel(str, i);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: a */
    public static final void m2279a(Context context, String str) {
        Notification notification;
        Bundle bundle;
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "messageName");
        StatusBarNotification b = m2276b(context, 1995);
        if (b != null && (notification = b.getNotification()) != null && (bundle = notification.extras) != null && C14966w.m715b(str, bundle.getString("message_name"), true)) {
            m2281a(context, 1995);
        }
    }

    /* renamed from: b */
    public static final int m2277b(Context context) {
        int i;
        C15149k.m377b(context, "context");
        if (C14017g4.m2803u()) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            i = notificationManager != null ? notificationManager.getCurrentInterruptionFilter() : 0;
        } else {
            i = -1;
        }
        return i;
    }

    /* renamed from: b */
    public static final StatusBarNotification m2276b(Context context, int i) {
        StatusBarNotification statusBarNotification;
        C15149k.m377b(context, "context");
        if (!C14017g4.m2803u()) {
            return null;
        }
        try {
            List<StatusBarNotification> a = m2282a(context);
            if (a == null) {
                return null;
            }
            Iterator<T> it = a.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                statusBarNotification = (StatusBarNotification) it.next();
            } while (statusBarNotification.getId() != i);
            return statusBarNotification;
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: b */
    public static final StatusBarNotification m2275b(Context context, int i, String str) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, NovaHomeBadger.TAG);
        if (!C14017g4.m2803u()) {
            return null;
        }
        try {
            List<StatusBarNotification> a = m2282a(context);
            if (a == null) {
                return null;
            }
            for (StatusBarNotification statusBarNotification : a) {
                if (statusBarNotification.getId() == i && C15149k.m384a((Object) statusBarNotification.getTag(), (Object) str)) {
                    return statusBarNotification;
                }
            }
            return null;
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: a */
    public final CharSequence m2283a(Notification notification) {
        C15149k.m377b(notification, "receiver$0");
        Bundle bundle = notification.extras;
        return bundle != null ? bundle.getCharSequence(NotificationCompat.EXTRA_TEXT) : null;
    }

    /* renamed from: b */
    public final CharSequence m2278b(Notification notification) {
        C15149k.m377b(notification, "receiver$0");
        Bundle bundle = notification.extras;
        return bundle != null ? bundle.getCharSequence(NotificationCompat.EXTRA_TITLE) : null;
    }
}
