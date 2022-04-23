package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.aa;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/ad.class */
final class ad {

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/ad$a.class */
    public static final class a implements v, w {

        /* renamed from: a  reason: collision with root package name */
        private Notification.Builder f49a;

        /* renamed from: b  reason: collision with root package name */
        private Bundle f50b;
        private List<Bundle> c = new ArrayList();

        public a(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, CharSequence charSequence4, boolean z4, ArrayList<String> arrayList, Bundle bundle, String str, boolean z5, String str2) {
            this.f49a = new Notification.Builder(context).setWhen(notification.when).setShowWhen(z2).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z3).setPriority(i4).setProgress(i2, i3, z);
            this.f50b = new Bundle();
            if (bundle != null) {
                this.f50b.putAll(bundle);
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                this.f50b.putStringArray("android.people", (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            if (z4) {
                this.f50b.putBoolean("android.support.localOnly", true);
            }
            if (str != null) {
                this.f50b.putString("android.support.groupKey", str);
                if (z5) {
                    this.f50b.putBoolean("android.support.isGroupSummary", true);
                } else {
                    this.f50b.putBoolean("android.support.useSideChannel", true);
                }
            }
            if (str2 != null) {
                this.f50b.putString("android.support.sortKey", str2);
            }
        }

        @Override // android.support.v4.app.w
        public final Notification.Builder a() {
            return this.f49a;
        }

        @Override // android.support.v4.app.v
        public final void a(aa.a aVar) {
            this.c.add(ac.a(this.f49a, aVar));
        }

        @Override // android.support.v4.app.w
        public final Notification b() {
            SparseArray<Bundle> a2 = ac.a(this.c);
            if (a2 != null) {
                this.f50b.putSparseParcelableArray("android.support.actionExtras", a2);
            }
            this.f49a.setExtras(this.f50b);
            return this.f49a.build();
        }
    }
}
