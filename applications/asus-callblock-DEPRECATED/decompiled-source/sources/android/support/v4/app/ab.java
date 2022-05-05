package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/ab.class */
final class ab {

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/ab$a.class */
    public static final class a implements w {

        /* renamed from: a  reason: collision with root package name */
        private Notification.Builder f44a;

        public a(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z) {
            this.f44a = new Notification.Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setProgress(i2, i3, z);
        }

        @Override // android.support.v4.app.w
        public final Notification.Builder a() {
            return this.f44a;
        }

        @Override // android.support.v4.app.w
        public final Notification b() {
            return this.f44a.getNotification();
        }
    }
}
