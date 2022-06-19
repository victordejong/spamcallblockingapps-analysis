package p000;

import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.media.AudioAttributes;
import android.util.ArraySet;
import java.util.Set;
@TargetApi(26)
/* renamed from: h61 */
/* loaded from: classes3-dex2jar.jar:h61.class */
public final class h61 {
    /* renamed from: a */
    public static void m1647a(NotificationManager notificationManager) {
        NotificationChannel notificationChannel = new NotificationChannel("phone_default", "Default", 3);
        notificationChannel.setShowBadge(false);
        notificationChannel.enableLights(true);
        notificationChannel.enableVibration(true);
        notificationManager.createNotificationChannel(notificationChannel);
    }

    /* renamed from: b */
    public static void m1646b(NotificationManager notificationManager) {
        NotificationChannel notificationChannel = new NotificationChannel("phone_incoming_call", "Incoming calls", 4);
        notificationChannel.setShowBadge(false);
        notificationChannel.enableLights(true);
        notificationChannel.enableVibration(false);
        notificationChannel.setSound(null, new AudioAttributes.Builder().setUsage(5).build());
        notificationManager.createNotificationChannel(notificationChannel);
    }

    /* renamed from: c */
    public static void m1645c(NotificationManager notificationManager) {
        NotificationChannel notificationChannel = new NotificationChannel("phone_missed_call", "Missed calls", 3);
        notificationChannel.setShowBadge(true);
        notificationChannel.enableLights(true);
        notificationChannel.enableVibration(true);
        notificationChannel.setSound(null, new AudioAttributes.Builder().setUsage(5).build());
        notificationManager.createNotificationChannel(notificationChannel);
    }

    /* renamed from: d */
    public static void m1644d(NotificationManager notificationManager) {
        NotificationChannel notificationChannel = new NotificationChannel("phone_ongoing_call", "Ongoing calls", 3);
        notificationChannel.setShowBadge(false);
        notificationChannel.enableLights(false);
        notificationChannel.enableVibration(false);
        notificationChannel.setSound(null, new AudioAttributes.Builder().setUsage(5).build());
        notificationManager.createNotificationChannel(notificationChannel);
    }

    /* renamed from: e */
    public static Set<String> m1643e(Context context) {
        ArraySet arraySet = new ArraySet();
        arraySet.add("phone_incoming_call");
        arraySet.add("phone_ongoing_call");
        arraySet.add("phone_missed_call");
        arraySet.add("phone_default");
        arraySet.add("cca_service");
        arraySet.add("cca_message");
        return arraySet;
    }

    /* renamed from: f */
    public static Set<String> m1642f(Context context) {
        ArraySet arraySet = new ArraySet();
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        if (notificationManager == null) {
            return arraySet;
        }
        for (NotificationChannel notificationChannel : notificationManager.getNotificationChannels()) {
            arraySet.add(notificationChannel.getId());
        }
        return arraySet;
    }

    /* renamed from: g */
    public static void m1641g(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        Set<String> m1643e = m1643e(context);
        Set<String> m1642f = m1642f(context);
        if (notificationManager == null || m1643e.equals(m1642f)) {
            return;
        }
        j91.m1499q("NotificationChannelManager.initChannels", "doing an expensive initialization of all notification channels");
        j91.m1499q("NotificationChannelManager.initChannels", "desired channel IDs: " + m1643e);
        j91.m1499q("NotificationChannelManager.initChannels", "existing channel IDs: " + m1642f);
        for (String str : m1642f) {
            if (!m1643e.contains(str)) {
                notificationManager.deleteNotificationChannel(str);
            }
        }
        m1646b(notificationManager);
        m1644d(notificationManager);
        m1645c(notificationManager);
        m1647a(notificationManager);
    }
}
