package com.apptentive.android.sdk.debug;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
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
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/LogMonitorSession.class */
public class LogMonitorSession {
    String[] emailRecipients = {"support@apptentive.com"};
    private ApptentiveLog.Level oldLogLevel;
    boolean restored;

    private String getSubject(Context context) {
        String str = String.format("%s (Android)", context.getPackageName());
        try {
            str = String.format("%s (Android)", context.getApplicationInfo().loadLabel(context.getPackageManager()).toString());
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.TROUBLESHOOT, e, "Unable to load troubleshooting email status line", new Object[0]);
            ErrorMetrics.logException(e);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSystemInfo(Context context) {
        int i;
        String str = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            String str2 = packageInfo.versionName;
            str = str2;
            i = packageInfo.versionCode;
            str = str2;
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Unable to get app version info", new Object[0]);
            ErrorMetrics.logException(e);
            i = -1;
        }
        Object[] objArr = {"App Package Name", context.getPackageName(), "App Version Name", str, "App Version Code", Integer.valueOf(i), "Apptentive SDK", Constants.getApptentiveSdkVersion(), "Device Model", Build.MODEL, "Android OS Version", Build.VERSION.RELEASE, "Android OS API Level", Integer.valueOf(Build.VERSION.SDK_INT), "Locale", Locale.getDefault().getDisplayName()};
        StringBuilder sb = new StringBuilder();
        sb.append("This email may contain sensitive content. Please review before sending.\n\n");
        for (int i2 = 0; i2 < 16; i2 += 2) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(objArr[i2]);
            sb.append(": ");
            sb.append(objArr[i2 + 1]);
        }
        return sb.toString();
    }

    private static File[] listAttachments(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new File(ApptentiveLog.getLogsDirectory(context), "apptentive-engagement-manifest.txt"));
        File[] listFiles = ApptentiveLog.getLogsDirectory(context).listFiles(new FilenameFilter() { // from class: com.apptentive.android.sdk.debug.LogMonitorSession.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.endsWith(".log") && str.startsWith("apptentive-");
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
                Context context2 = context;
                Notification buildNotification = TroubleshootingNotificationBuilder.buildNotification(context2, subject, LogMonitorSession.this.getSystemInfo(context2), listAttachments, LogMonitorSession.this.emailRecipients);
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
        ApptentiveLog.m15640i(apptentiveLogTag, "Overriding log level: " + ApptentiveLog.Level.VERBOSE, new Object[0]);
        this.oldLogLevel = ApptentiveLog.getLogLevel();
        ApptentiveLog.overrideLogLevel(ApptentiveLog.Level.VERBOSE);
        showDebugNotification(context);
    }

    public void stop() {
        Assert.assertNotNull(this.oldLogLevel);
        ApptentiveLog.Level level = this.oldLogLevel;
        if (level != null) {
            ApptentiveLog.overrideLogLevel(level);
        }
    }

    public String toString() {
        return StringUtils.format("recipients=%s restored=%s", Arrays.toString(this.emailRecipients), Boolean.toString(this.restored));
    }
}
