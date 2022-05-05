package com.apptentive.android.sdk.debug;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.p001v4.app.NotificationCompat;
import android.support.p001v4.internal.view.SupportMenu;
import com.apptentive.android.sdk.C0724R;
import com.zendesk.service.HttpConstants;
import java.io.File;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/TroubleshootingNotificationBuilder.class */
final class TroubleshootingNotificationBuilder {
    static final String ACTION_ABORT = "com.apptentive.debug.ACTION_ABORT";
    static final String ACTION_SEND_LOGS = "com.apptentive.debug.ACTION_SEND_LOGS";
    private static final int APPTENTIVE_NOTIFICATION_ID = 1;
    static final String EXTRA_ATTACHMENTS = "ATTACHMENTS";
    static final String EXTRA_EMAIL_RECIPIENTS = "EMAIL_RECIPIENTS";
    static final String EXTRA_INFO = "INFO";
    static final String EXTRA_SUBJECT = "SUBJECT";
    private static final String NOTIFICATION_CHANNEL_DESCRIPTION = "Used for SDK troubleshooting";
    private static final String NOTIFICATION_CHANNEL_ID = "com.apptentive.debug.NOTIFICATION_CHANNEL_TROUBLESHOOTING";
    private static final String NOTIFICATION_CHANNEL_NAME = "Apptentive Notifications";
    static final String NOTIFICATION_ID_KEY = "com.apptentive.debug.NOTIFICATION_ID";

    private TroubleshootingNotificationBuilder() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Notification buildNotification(@NonNull Context context, String str, String str2, File[] fileArr, String[] strArr) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        Intent intent = new Intent(context, LogBroadcastReceiver.class);
        intent.setAction(ACTION_ABORT);
        intent.putExtra(NOTIFICATION_ID_KEY, 1);
        NotificationCompat.Action build = new NotificationCompat.Action.Builder(0, "Discard", PendingIntent.getBroadcast(context, 0, intent, 134217728)).build();
        Intent intent2 = new Intent(context, LogBroadcastReceiver.class);
        intent2.setAction(ACTION_SEND_LOGS);
        intent2.putExtra(NOTIFICATION_ID_KEY, 1);
        intent2.putExtra(EXTRA_EMAIL_RECIPIENTS, strArr);
        intent2.putExtra(EXTRA_SUBJECT, str);
        intent2.putExtra(EXTRA_INFO, str2);
        intent2.putExtra(EXTRA_ATTACHMENTS, (Serializable) fileArr);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent2, 134217728);
        NotificationCompat.Builder lights = new NotificationCompat.Builder(context, NOTIFICATION_CHANNEL_ID).setDefaults(1).setOnlyAlertOnce(true).setOngoing(true).setAutoCancel(false).setSmallIcon(C0724R.C0726drawable.apptentive_status_gear).setSubText("Apptentive SDK").setContentTitle("Troubleshooting Mode").setContentText("Reproduce your problem, then send report").addAction(build).addAction(new NotificationCompat.Action.Builder(0, "Send Report", broadcast).build()).setWhen(System.currentTimeMillis()).setVibrate(new long[]{0, 100, 80, 240, 500, 100, 80, 240}).setLights(SupportMenu.CATEGORY_MASK, 200, HttpConstants.HTTP_BAD_REQUEST);
        if (Build.VERSION.SDK_INT < 16) {
            lights.setContentIntent(broadcast);
            lights.setContentText("Tap to send logs");
        }
        if (Build.VERSION.SDK_INT >= 23) {
            lights.setColor(context.getResources().getColor(C0724R.color.apptentive_brand_red, null));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel(NOTIFICATION_CHANNEL_ID, NOTIFICATION_CHANNEL_NAME, 3);
            notificationChannel.setDescription(NOTIFICATION_CHANNEL_DESCRIPTION);
            notificationChannel.enableLights(true);
            notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
            notificationChannel.setVibrationPattern(new long[]{0, 100, 80, 240, 500, 100, 80, 240});
            notificationManager.createNotificationChannel(notificationChannel);
        }
        return lights.build();
    }
}
