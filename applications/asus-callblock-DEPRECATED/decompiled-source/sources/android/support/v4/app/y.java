package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.aa;
import android.widget.RemoteViews;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/y.class */
final class y {

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/y$a.class */
    public static final class a implements v, w {

        /* renamed from: a  reason: collision with root package name */
        private Notification.Builder f115a;

        /* renamed from: b  reason: collision with root package name */
        private Bundle f116b;

        public a(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, CharSequence charSequence4, boolean z4, ArrayList<String> arrayList, Bundle bundle, String str, boolean z5, String str2) {
            this.f115a = new Notification.Builder(context).setWhen(notification.when).setShowWhen(z2).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z3).setPriority(i4).setProgress(i2, i3, z).setLocalOnly(z4).setGroup(str).setGroupSummary(z5).setSortKey(str2);
            this.f116b = new Bundle();
            if (bundle != null) {
                this.f116b.putAll(bundle);
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                this.f116b.putStringArray("android.people", (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
        }

        @Override // android.support.v4.app.w
        public final Notification.Builder a() {
            return this.f115a;
        }

        @Override // android.support.v4.app.v
        public final void a(aa.a aVar) {
            y.a(this.f115a, aVar);
        }

        @Override // android.support.v4.app.w
        public final Notification b() {
            this.f115a.setExtras(this.f116b);
            return this.f115a.build();
        }
    }

    public static void a(Notification.Builder builder, aa.a aVar) {
        Notification.Action.Builder builder2 = new Notification.Action.Builder(aVar.a(), aVar.b(), aVar.c());
        if (aVar.e() != null) {
            for (RemoteInput remoteInput : af.a(aVar.e())) {
                builder2.addRemoteInput(remoteInput);
            }
        }
        if (aVar.d() != null) {
            builder2.addExtras(aVar.d());
        }
        builder.addAction(builder2.build());
    }
}
