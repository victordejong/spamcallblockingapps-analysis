package org.mistergroup.shouldianswer.services;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.media.RingtoneManager;
import android.os.Bundle;
import androidx.core.app.C0445h;
import androidx.core.app.C0458m;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.p101ui.main.MainActivity;
import org.mistergroup.shouldianswer.utils.C3085d;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/MyFirebaseMessagingService.class */
public final class MyFirebaseMessagingService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onDeletedMessages() {
        super.onDeletedMessages();
        C3104j.m157a(C3104j.f9124a, "MyFirebaseMessagingService.onDeletedMessages", (String) null, 2, (Object) null);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        Bundle extras;
        C1694h.m3117b(remoteMessage, "message");
        super.onMessageReceived(remoteMessage);
        try {
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "MyFirebaseMessagingService.onMessageReceived " + remoteMessage.toString(), (String) null, 2, (Object) null);
            remoteMessage.toIntent();
            String str = remoteMessage.getData().get("activehide");
            if (str != null && C1694h.m3123a((Object) str, (Object) "1")) {
                C3104j.m157a(C3104j.f9124a, "MyFirebaseMessagingService.onMessageReceived activehide=1", (String) null, 2, (Object) null);
                return;
            }
            RemoteMessage.Notification notification = remoteMessage.getNotification();
            if (notification == null) {
                return;
            }
            Context applicationContext = MyApp.f5480c.m1802a().getApplicationContext();
            Intent intent = new Intent(applicationContext, MainActivity.class);
            intent.setFlags(67108864);
            Intent intent2 = remoteMessage.toIntent();
            if (intent2 != null && (extras = intent2.getExtras()) != null) {
                C3104j c3104j2 = C3104j.f9124a;
                StringBuilder sb = new StringBuilder();
                sb.append("MyFirebaseMessagingService.onMessageReceived sending bundle ");
                C1694h.m3122a((Object) extras, "it");
                sb.append(C3085d.m190a(extras, null, 1, null));
                C3104j.m157a(c3104j2, sb.toString(), (String) null, 2, (Object) null);
                intent.putExtras(extras);
            }
            C0458m m6555a = C0458m.m6555a(applicationContext);
            C1694h.m3122a((Object) m6555a, "TaskStackBuilder.create(appContext)");
            m6555a.m6554a(intent);
            PendingIntent m6559a = m6555a.m6559a(0, 134217728);
            Object systemService = getSystemService("notification");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
            }
            NotificationManager notificationManager = (NotificationManager) systemService;
            C0445h.C0450d m6633a = new C0445h.C0450d(applicationContext, C3113m.f9165a.m130g()).m6633a(2131230930);
            C1694h.m3122a((Object) applicationContext, "appContext");
            C0445h.C0450d m6626a = m6633a.m6626a(BitmapFactory.decodeResource(applicationContext.getResources(), 2131230960));
            C1694h.m3122a((Object) notification, "notification");
            C0445h.C0450d m6628a = m6626a.m6620a((CharSequence) notification.getTitle()).m6611b((CharSequence) notification.getBody()).m6604d(0).m6608c(-1).m6602d(true).m6628a(m6559a);
            m6628a.m6625a(RingtoneManager.getDefaultUri(2));
            C3104j.m157a(C3104j.f9124a, "MyFirebaseMessagingService.onMessageReceived show notification", (String) null, 2, (Object) null);
            notificationManager.notify(112311886, m6628a.m6616b());
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageSent(String str) {
        C1694h.m3117b(str, "var1");
        super.onMessageSent(str);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "MyFirebaseMessagingService.onMessageSent " + str, (String) null, 2, (Object) null);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        C1694h.m3117b(str, "var1");
        super.onNewToken(str);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "MyFirebaseMessagingService.onNewToken " + str, (String) null, 2, (Object) null);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onSendError(String str, Exception exc) {
        C1694h.m3117b(str, "var1");
        C1694h.m3117b(exc, "var2");
        super.onSendError(str, exc);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "MyFirebaseMessagingService.onSendError" + str + " " + exc, (String) null, 2, (Object) null);
    }
}
