package p1727n3.p1807k.p1808a;

import android.app.Notification;
import android.app.NotificationChannel;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import java.util.Objects;
/* renamed from: n3.k.a.k */
/* loaded from: classes-dex2jar.jar:n3/k/a/k.class */
public class C26442k {

    /* renamed from: a */
    public int f74081a;

    public C26442k(NotificationChannel notificationChannel) {
        String id = notificationChannel.getId();
        int importance = notificationChannel.getImportance();
        Uri uri = Settings.System.DEFAULT_NOTIFICATION_URI;
        Objects.requireNonNull(id);
        this.f74081a = importance;
        AudioAttributes audioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
        notificationChannel.getName();
        notificationChannel.getDescription();
        notificationChannel.getGroup();
        notificationChannel.canShowBadge();
        notificationChannel.getSound();
        notificationChannel.getAudioAttributes();
        notificationChannel.shouldShowLights();
        notificationChannel.getLightColor();
        notificationChannel.shouldVibrate();
        notificationChannel.getVibrationPattern();
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            notificationChannel.getParentChannelId();
            notificationChannel.getConversationId();
        }
        notificationChannel.canBypassDnd();
        notificationChannel.getLockscreenVisibility();
        if (i >= 29) {
            notificationChannel.canBubble();
        }
        if (i >= 30) {
            notificationChannel.isImportantConversation();
        }
    }
}
