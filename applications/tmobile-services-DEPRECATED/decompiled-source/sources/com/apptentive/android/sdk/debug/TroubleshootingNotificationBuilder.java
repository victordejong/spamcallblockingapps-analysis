package com.apptentive.android.sdk.debug;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.apptentive.android.sdk.C0726R;
import com.facebook.stetho.server.http.HttpStatus;
import java.io.File;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/TroubleshootingNotificationBuilder.class */
final class TroubleshootingNotificationBuilder {
    private TroubleshootingNotificationBuilder() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Notification buildNotification(@NonNull Context context, String str, String str2, File[] fileArr, String[] strArr) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        Intent intent = new Intent(context, LogBroadcastReceiver.class);
        intent.setAction("com.apptentive.debug.ACTION_ABORT");
        intent.putExtra("com.apptentive.debug.NOTIFICATION_ID", 1);
        NotificationCompat.Action a = new NotificationCompat.Action.Builder(0, "Discard", PendingIntent.getBroadcast(context, 0, intent, 134217728)).m19792a();
        Intent intent2 = new Intent(context, LogBroadcastReceiver.class);
        intent2.setAction("com.apptentive.debug.ACTION_SEND_LOGS");
        intent2.putExtra("com.apptentive.debug.NOTIFICATION_ID", 1);
        intent2.putExtra("EMAIL_RECIPIENTS", strArr);
        intent2.putExtra("SUBJECT", str);
        intent2.putExtra("INFO", str2);
        intent2.putExtra("ATTACHMENTS", (Serializable) fileArr);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent2, 134217728);
        NotificationCompat.Action a2 = new NotificationCompat.Action.Builder(0, "Send Report", broadcast).m19792a();
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, "com.apptentive.debug.NOTIFICATION_CHANNEL_TROUBLESHOOTING");
        builder.setDefaults(1);
        builder.setOnlyAlertOnce(true);
        builder.setOngoing(true);
        builder.setAutoCancel(false);
        builder.setSmallIcon(C0726R.C0728drawable.apptentive_status_gear);
        builder.setSubText("Apptentive SDK");
        builder.setContentTitle("Troubleshooting Mode");
        builder.setContentText("Reproduce your problem, then send report");
        builder.addAction(a);
        builder.addAction(a2);
        builder.setWhen(System.currentTimeMillis());
        builder.setVibrate(new long[]{0, 100, 80, 240, 500, 100, 80, 240});
        builder.setLights(-65536, HttpStatus.HTTP_OK, 400);
        if (Build.VERSION.SDK_INT < 16) {
            builder.setContentIntent(broadcast);
            builder.setContentText("Tap to send logs");
        }
        if (Build.VERSION.SDK_INT >= 23) {
            builder.setColor(context.getResources().getColor(C0726R.C0727color.apptentive_brand_red, null));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("com.apptentive.debug.NOTIFICATION_CHANNEL_TROUBLESHOOTING", "Apptentive Notifications", 3);
            notificationChannel.setDescription("Used for SDK troubleshooting");
            notificationChannel.enableLights(true);
            notificationChannel.setLightColor(-65536);
            notificationChannel.setVibrationPattern(new long[]{0, 100, 80, 240, 500, 100, 80, 240});
            notificationManager.createNotificationChannel(notificationChannel);
        }
        return builder.build();
    }
}
