package org.mistergroup.shouldianswer.utils;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.media.AudioAttributes;
import org.mistergroup.shouldianswer.MyApp;
/* renamed from: org.mistergroup.shouldianswer.utils.m */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/m.class */
public final class C3113m {

    /* renamed from: i */
    private static boolean f9173i;

    /* renamed from: a */
    public static final C3113m f9165a = new C3113m();

    /* renamed from: b */
    private static final String f9166b = f9166b;

    /* renamed from: b */
    private static final String f9166b = f9166b;

    /* renamed from: c */
    private static final String f9167c = f9167c;

    /* renamed from: c */
    private static final String f9167c = f9167c;

    /* renamed from: d */
    private static final String f9168d = f9168d;

    /* renamed from: d */
    private static final String f9168d = f9168d;

    /* renamed from: e */
    private static final String f9169e = f9169e;

    /* renamed from: e */
    private static final String f9169e = f9169e;

    /* renamed from: f */
    private static final String f9170f = f9170f;

    /* renamed from: f */
    private static final String f9170f = f9170f;

    /* renamed from: g */
    private static final String f9171g = f9171g;

    /* renamed from: g */
    private static final String f9171g = f9171g;

    /* renamed from: h */
    private static final String f9172h = f9172h;

    /* renamed from: h */
    private static final String f9172h = f9172h;

    private C3113m() {
    }

    /* renamed from: a */
    public final String m136a() {
        return f9166b;
    }

    /* renamed from: b */
    public final String m135b() {
        return f9167c;
    }

    /* renamed from: c */
    public final String m134c() {
        return f9168d;
    }

    /* renamed from: d */
    public final String m133d() {
        return f9169e;
    }

    /* renamed from: e */
    public final String m132e() {
        return f9170f;
    }

    /* renamed from: f */
    public final String m131f() {
        return f9171g;
    }

    /* renamed from: g */
    public final String m130g() {
        return f9172h;
    }

    /* renamed from: h */
    public final void m129h() {
        if (C3115o.f9175a.m120c() && !f9173i) {
            f9173i = true;
            NotificationManager m21c = C3135y.f9272b.m21c();
            MyApp m1802a = MyApp.f5480c.m1802a();
            NotificationChannel notificationChannel = new NotificationChannel(f9168d, m1802a.getString(2131755209), 4);
            notificationChannel.setDescription(m1802a.getString(2131755208));
            notificationChannel.enableVibration(true);
            m21c.createNotificationChannel(notificationChannel);
            NotificationChannel notificationChannel2 = new NotificationChannel(f9169e, m1802a.getString(2131755213), 2);
            notificationChannel2.setDescription(m1802a.getString(2131755210));
            notificationChannel2.enableVibration(false);
            notificationChannel2.setLockscreenVisibility(1);
            notificationChannel2.enableLights(false);
            notificationChannel2.setShowBadge(false);
            notificationChannel2.setSound(null, new AudioAttributes.Builder().setUsage(5).build());
            m21c.createNotificationChannel(notificationChannel2);
            NotificationChannel notificationChannel3 = new NotificationChannel(f9170f, m1802a.getString(2131755212), 4);
            notificationChannel3.setDescription(m1802a.getString(2131755211));
            notificationChannel3.enableVibration(false);
            notificationChannel3.setLockscreenVisibility(1);
            notificationChannel3.enableLights(false);
            notificationChannel3.setShowBadge(false);
            notificationChannel3.setSound(null, new AudioAttributes.Builder().setUsage(5).build());
            m21c.createNotificationChannel(notificationChannel3);
            NotificationChannel notificationChannel4 = new NotificationChannel(f9166b, m1802a.getString(2131755205), 3);
            notificationChannel4.setDescription(m1802a.getString(2131755204));
            notificationChannel4.enableVibration(false);
            notificationChannel4.enableLights(false);
            notificationChannel4.setLockscreenVisibility(1);
            m21c.createNotificationChannel(notificationChannel4);
            NotificationChannel notificationChannel5 = new NotificationChannel(f9167c, m1802a.getString(2131755215), 4);
            notificationChannel5.setDescription(m1802a.getString(2131755214));
            notificationChannel5.enableVibration(false);
            notificationChannel5.enableLights(true);
            notificationChannel5.shouldShowLights();
            notificationChannel5.setLockscreenVisibility(1);
            m21c.createNotificationChannel(notificationChannel5);
            NotificationChannel notificationChannel6 = new NotificationChannel(f9171g, m1802a.getString(2131755207), 0);
            notificationChannel6.setDescription(m1802a.getString(2131755206));
            notificationChannel6.enableVibration(false);
            notificationChannel6.enableLights(false);
            notificationChannel6.setLockscreenVisibility(0);
            m21c.createNotificationChannel(notificationChannel6);
            NotificationChannel notificationChannel7 = new NotificationChannel(f9172h, "Protection Service Notifications", 3);
            notificationChannel7.setDescription("Notification about protection service news and app usage");
            notificationChannel7.enableVibration(false);
            notificationChannel7.enableLights(false);
            notificationChannel7.setLockscreenVisibility(1);
            m21c.createNotificationChannel(notificationChannel7);
        }
    }
}
