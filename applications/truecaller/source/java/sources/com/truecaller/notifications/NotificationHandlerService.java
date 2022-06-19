package com.truecaller.notifications;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.SupportMessenger;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.notifications.NotificationHandlerService;
import com.truecaller.presence.AvailabilityTrigger;
import com.truecaller.service.MissedCallsNotificationService;
import com.truecaller.settings.CallingSettings;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p912i4.AbstractC15284n;
import s1.z.c.l;
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/NotificationHandlerService.class */
public class NotificationHandlerService extends NotificationListenerService {

    /* renamed from: g */
    public static final Collection<String> f14079g = Arrays.asList("com.android.server.telecom", "com.android.phone", "com.google.android.dialer", "com.android.dialer", "com.android.contacts", "com.samsung.android.contacts", "com.samsung.android.dialer");

    /* renamed from: h */
    public static final Collection<Integer> f14080h = Arrays.asList(1, 6001, 10001);

    /* renamed from: i */
    public static final Collection<String> f14081i = Arrays.asList("missedcall", "missed_call");

    /* renamed from: j */
    public static int f14082j = 0;

    /* renamed from: k */
    public static final Set<String> f14083k = Collections.unmodifiableSet(new HashSet(Arrays.asList(SupportMessenger.WHATSAPP, SupportMessenger.VIBER, SupportMessenger.LINE, SupportMessenger.TELEGRAM)));

    /* renamed from: a */
    public Set<AbstractC15284n> f14084a;

    /* renamed from: b */
    public Looper f14085b;

    /* renamed from: c */
    public Handler f14086c;

    /* renamed from: d */
    public CallingSettings f14087d;

    /* renamed from: e */
    public AbstractC19022f0 f14088e;

    /* renamed from: f */
    public C26458x f14089f;

    @Override // android.service.notification.NotificationListenerService, android.app.Service
    public IBinder onBind(Intent intent) {
        Thread.currentThread().getName();
        IBinder onBind = super.onBind(intent);
        f14082j = getCurrentInterruptionFilter();
        return onBind;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        AbstractC15539j2 mo10154s = TrueApp.m36032b0().mo10154s();
        this.f14087d = mo10154s.mo12414d6();
        this.f14084a = mo10154s.mo12117z3();
        this.f14088e = mo10154s.mo12377g0();
        this.f14089f = mo10154s.mo12721G5();
        HandlerThread handlerThread = new HandlerThread("NotificationHandlerService", 10);
        handlerThread.start();
        this.f14085b = handlerThread.getLooper();
        this.f14086c = new Handler(this.f14085b);
    }

    @Override // android.service.notification.NotificationListenerService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Thread.currentThread().getName();
        for (AbstractC15284n abstractC15284n : this.f14084a) {
            abstractC15284n.mo18948a();
        }
        this.f14085b.quit();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onInterruptionFilterChanged(int i) {
        f14082j = i;
        ((AbstractC21187w1) getApplicationContext()).mo10154s().mo12445b1().mo11854a().mo16128d(AvailabilityTrigger.USER_ACTION, false);
    }

    @Override // android.service.notification.NotificationListenerService
    public void onListenerConnected() {
        Thread.currentThread().getName();
        this.f14086c.post(new Runnable() { // from class: e.a.i4.b
            @Override // java.lang.Runnable
            public final void run() {
                NotificationHandlerService notificationHandlerService = NotificationHandlerService.this;
                Collection<String> collection = NotificationHandlerService.f14079g;
                Context applicationContext = notificationHandlerService.getApplicationContext();
                int i = MissedCallsNotificationService.f14712j;
                l.e(applicationContext, AnalyticsConstants.CONTEXT);
                AbstractServiceC26431i.enqueueWork(applicationContext, MissedCallsNotificationService.class, (int) C2752R.C2754id.missed_calls_notification_service_id, new Intent());
                notificationHandlerService.onInterruptionFilterChanged(notificationHandlerService.getCurrentInterruptionFilter());
                try {
                    StatusBarNotification[] activeNotifications = notificationHandlerService.getActiveNotifications();
                    if (activeNotifications == null) {
                        return;
                    }
                    for (StatusBarNotification statusBarNotification : activeNotifications) {
                        notificationHandlerService.onNotificationPosted(statusBarNotification);
                    }
                } catch (RuntimeException e) {
                    C10480a.m26057J1(e, "Could not list active notifications");
                }
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x016e, code lost:
        if (r13 != false) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e4  */
    @Override // android.service.notification.NotificationListenerService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onNotificationPosted(final android.service.notification.StatusBarNotification r7) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.notifications.NotificationHandlerService.onNotificationPosted(android.service.notification.StatusBarNotification):void");
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRemoved(final StatusBarNotification statusBarNotification) {
        if (statusBarNotification == null) {
            return;
        }
        statusBarNotification.getPackageName();
        this.f14086c.post(new Runnable() { // from class: e.a.i4.d
            @Override // java.lang.Runnable
            public final void run() {
                NotificationHandlerService notificationHandlerService = NotificationHandlerService.this;
                StatusBarNotification statusBarNotification2 = statusBarNotification;
                for (AbstractC15284n abstractC15284n : notificationHandlerService.f14084a) {
                    abstractC15284n.mo18953c(statusBarNotification2);
                }
            }
        });
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        Thread.currentThread().getName();
        f14082j = 0;
        return super.onUnbind(intent);
    }
}
