package com.scand.realmbrowser;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/RealmBrowserService.class */
public class RealmBrowserService extends Service {
    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String charSequence = getApplicationInfo().loadLabel(getPackageManager()).toString();
        PendingIntent activity = PendingIntent.getActivity(this, 0, new Intent(this, BrowserActivity.class), 134217728);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this);
        builder.setSmallIcon(C1506R.C1508drawable.realm_browser_notification_icon);
        builder.setColor(getResources().getColor(C1506R.C1507color.realm_browser_notification_color));
        String str = charSequence;
        if (TextUtils.isEmpty(charSequence)) {
            str = getString(C1506R.string.realm_browser_notification_title);
        }
        builder.setContentTitle(str);
        builder.setContentText(getString(C1506R.string.realm_browser_notification_text));
        builder.setAutoCancel(false);
        builder.setLocalOnly(true);
        builder.setContentIntent(activity);
        startForeground(9696, builder.build());
        return 1;
    }
}
