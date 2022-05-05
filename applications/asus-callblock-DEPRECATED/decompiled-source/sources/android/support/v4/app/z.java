package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.aa;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/z.class */
final class z {

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/z$a.class */
    public static final class a implements v, w {

        /* renamed from: a  reason: collision with root package name */
        private Notification.Builder f117a;

        public a(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, CharSequence charSequence4, boolean z4, String str, ArrayList<String> arrayList, Bundle bundle, int i5, int i6, Notification notification2, String str2, boolean z5, String str3) {
            this.f117a = new Notification.Builder(context).setWhen(notification.when).setShowWhen(z2).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z3).setPriority(i4).setProgress(i2, i3, z).setLocalOnly(z4).setExtras(bundle).setGroup(str2).setGroupSummary(z5).setSortKey(str3).setCategory(str).setColor(i5).setVisibility(i6).setPublicVersion(notification2);
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                this.f117a.addPerson(it.next());
            }
        }

        @Override // android.support.v4.app.w
        public final Notification.Builder a() {
            return this.f117a;
        }

        @Override // android.support.v4.app.v
        public final void a(aa.a aVar) {
            y.a(this.f117a, aVar);
        }

        @Override // android.support.v4.app.w
        public final Notification b() {
            return this.f117a.build();
        }
    }
}
