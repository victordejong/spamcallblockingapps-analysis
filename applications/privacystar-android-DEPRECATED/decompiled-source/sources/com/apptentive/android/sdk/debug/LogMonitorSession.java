package com.apptentive.android.sdk.debug;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/LogMonitorSession.class */
public class LogMonitorSession {
    private static final int NOTIFICATION_ID = 1;
    String[] emailRecipients = {"support@apptentive.com"};
    private ApptentiveLog.Level oldLogLevel;
    boolean restored;

    private String getSubject(Context context) {
        String str = String.format("%s (Android)", context.getPackageName());
        try {
            str = String.format("%s (Android)", context.getApplicationInfo().loadLabel(context.getPackageManager()).toString());
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.TROUBLESHOOT, e, "Unable to load troubleshooting email status line", new Object[0]);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getSystemInfo(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.debug.LogMonitorSession.getSystemInfo(android.content.Context):java.lang.String");
    }

    private static File[] listAttachments(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new File(ApptentiveLog.getLogsDirectory(context), Constants.FILE_APPTENTIVE_ENGAGEMENT_MANIFEST));
        File[] listFiles = ApptentiveLog.getLogsDirectory(context).listFiles(new FilenameFilter() { // from class: com.apptentive.android.sdk.debug.LogMonitorSession.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.endsWith(Constants.LOG_FILE_EXT) && str.startsWith(Constants.LOG_FILE_PREFIX);
            }
        });
        if (listFiles != null && listFiles.length > 0) {
            arrayList.addAll(Arrays.asList(listFiles));
        }
        return (File[]) arrayList.toArray(new File[arrayList.size()]);
    }

    private void showDebugNotification(final Context context) {
        final String subject = getSubject(context);
        final File[] listAttachments = listAttachments(context);
        DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.debug.LogMonitorSession.1
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                Notification buildNotification = TroubleshootingNotificationBuilder.buildNotification(context, subject, LogMonitorSession.this.getSystemInfo(context), listAttachments, LogMonitorSession.this.emailRecipients);
                Assert.assertNotNull(buildNotification, "Failed to create troubleshooting notification");
                if (notificationManager != null) {
                    notificationManager.notify(1, buildNotification);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void start(Context context) {
        ApptentiveHelper.checkConversationQueue();
        ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.TROUBLESHOOT;
        ApptentiveLog.m407i(apptentiveLogTag, "Overriding log level: " + ApptentiveLog.Level.VERBOSE, new Object[0]);
        this.oldLogLevel = ApptentiveLog.getLogLevel();
        ApptentiveLog.overrideLogLevel(ApptentiveLog.Level.VERBOSE);
        showDebugNotification(context);
    }

    public void stop() {
        Assert.assertNotNull(this.oldLogLevel);
        if (this.oldLogLevel != null) {
            ApptentiveLog.overrideLogLevel(this.oldLogLevel);
        }
    }

    public String toString() {
        return StringUtils.format("recipients=%s restored=%s", Arrays.toString(this.emailRecipients), Boolean.toString(this.restored));
    }
}
