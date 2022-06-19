package p193e.p1485h.p1486a.p1493c;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.clevertap.android.sdk.InAppNotificationActivity;
import com.clevertap.android.sdk.inbox.CTInboxActivity;
import com.clevertap.android.sdk.pushnotification.CTNotificationIntentService;
import com.clevertap.android.sdk.pushnotification.CTPushNotificationReceiver;
import com.clevertap.android.sdk.pushnotification.amp.CTBackgroundIntentService;
import com.clevertap.android.sdk.pushnotification.amp.CTBackgroundJobService;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;
import p1727n3.p1789g0.C26232y;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
import p193e.p1485h.p1486a.p1493c.p1507w0.C22867i;
/* renamed from: e.h.a.c.q */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q.class */
public class CallableC22785q implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ C22773p f63149a;

    public CallableC22785q(C22773p c22773p) {
        this.f63149a = c22773p;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        String str;
        C22773p c22773p = this.f63149a;
        Context context = c22773p.f63087a;
        C22877x c22877x = c22773p.f63088b;
        C22718b0 c22718b0 = c22877x.f63516b;
        C22867i c22867i = c22877x.f63525k;
        C22741j0.m7840j(context, "android.permission.INTERNET");
        c22718b0.m7906n();
        if (!C22722d.f62899a && !C22858w.f63447t && (str = context.getApplicationInfo().className) != null && !str.isEmpty()) {
            str.equals("com.clevertap.android.sdk.Application");
        }
        try {
            C26232y.m2371c2((Application) context.getApplicationContext(), CTPushNotificationReceiver.class.getName());
            C26232y.m2366d2((Application) context.getApplicationContext(), CTNotificationIntentService.class.getName());
            C26232y.m2376b2((Application) context.getApplicationContext(), InAppNotificationActivity.class);
            C26232y.m2376b2((Application) context.getApplicationContext(), CTInboxActivity.class);
            C26232y.m2371c2((Application) context.getApplicationContext(), "com.clevertap.android.geofence.CTGeofenceReceiver");
            C26232y.m2371c2((Application) context.getApplicationContext(), "com.clevertap.android.geofence.CTLocationUpdateReceiver");
            C26232y.m2371c2((Application) context.getApplicationContext(), "com.clevertap.android.geofence.CTGeofenceBootReceiver");
            C26232y.m2366d2((Application) context.getApplicationContext(), CTBackgroundJobService.class.getName());
            C26232y.m2366d2((Application) context.getApplicationContext(), CTBackgroundIntentService.class.getName());
        } catch (Exception e) {
            e.toString();
        }
        Iterator<AbstractC22865g.EnumC22866a> it = c22867i.m7653h().iterator();
        while (it.hasNext()) {
            AbstractC22865g.EnumC22866a next = it.next();
            if (next == AbstractC22865g.EnumC22866a.FCM) {
                try {
                    C26232y.m2366d2((Application) context.getApplicationContext(), "com.clevertap.android.sdk.pushnotification.fcm.FcmMessageListenerService");
                } catch (Error e2) {
                    e2.getMessage();
                } catch (Exception e3) {
                    e3.toString();
                }
            } else if (next == AbstractC22865g.EnumC22866a.HPS) {
                try {
                    C26232y.m2366d2((Application) context.getApplicationContext(), "com.clevertap.android.hms.CTHmsMessageService");
                } catch (Error e4) {
                    e4.getMessage();
                } catch (Exception e5) {
                    e5.toString();
                }
            } else if (next == AbstractC22865g.EnumC22866a.XPS) {
                try {
                    C26232y.m2371c2((Application) context.getApplicationContext(), "com.clevertap.android.xps.XiaomiMessageReceiver");
                } catch (Error e6) {
                    e6.getMessage();
                } catch (Exception e7) {
                    e7.toString();
                }
            }
        }
        Objects.requireNonNull(C22737h0.m7853b(context));
        TextUtils.isEmpty(C22737h0.f62964m);
        return null;
    }
}
