package com.apptentive.android.sdk.debug;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import android.support.p001v4.app.NotificationManagerCompat;
import com.apptentive.android.sdk.ApptentiveLog;
import java.io.File;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/LogBroadcastReceiver.class */
public class LogBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        NotificationManagerCompat.from(context).cancel(intent.getIntExtra("com.apptentive.debug.NOTIFICATION_ID", 0));
        context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        LogMonitor.stopSession(context);
        String action = intent.getAction();
        if ("com.apptentive.debug.ACTION_SEND_LOGS".equals(action)) {
            ApptentiveLog.m405i("Send Report: User is sending Log Monitor email.", new Object[0]);
            Intent intent2 = new Intent("android.intent.action.SEND_MULTIPLE");
            intent2.setType("text/plain");
            intent2.putExtra("android.intent.extra.EMAIL", intent.getStringArrayExtra("EMAIL_RECIPIENTS"));
            intent2.putExtra("android.intent.extra.SUBJECT", intent.getStringExtra("SUBJECT"));
            intent2.putExtra("android.intent.extra.TEXT", intent.getStringExtra("INFO"));
            File[] fileArr = (File[]) intent.getExtras().get("ATTACHMENTS");
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            for (File file : fileArr) {
                if (file.exists()) {
                    arrayList.add(Uri.parse("content://" + ApptentiveAttachmentFileProvider.getAuthority(context) + "/" + file.getName()));
                }
            }
            intent2.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
            Intent createChooser = Intent.createChooser(intent2, "Choose an Email client:");
            createChooser.addFlags(402653184);
            context.startActivity(createChooser);
        } else if ("com.apptentive.debug.ACTION_ABORT".equals(action)) {
            ApptentiveLog.m405i("Discard: User exited log monitoring.", new Object[0]);
        } else {
            ApptentiveLog.m409e("Unexpected action: %s", action);
        }
    }
}
