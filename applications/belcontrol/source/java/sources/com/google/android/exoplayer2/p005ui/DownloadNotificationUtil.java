package com.google.android.exoplayer2.p005ui;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import com.google.android.exoplayer2.offline.DownloadManager;
import z7;
/* renamed from: com.google.android.exoplayer2.ui.DownloadNotificationUtil */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/DownloadNotificationUtil.class */
public final class DownloadNotificationUtil {
    private static final int NULL_STRING_ID = 0;

    private DownloadNotificationUtil() {
    }

    public static Notification buildDownloadCompletedNotification(Context context, int i, String str, PendingIntent pendingIntent, String str2) {
        return newNotificationBuilder(context, i, str, pendingIntent, str2, C0577R.string.exo_download_completed).c();
    }

    public static Notification buildDownloadFailedNotification(Context context, int i, String str, PendingIntent pendingIntent, String str2) {
        return newNotificationBuilder(context, i, str, pendingIntent, str2, C0577R.string.exo_download_failed).c();
    }

    public static Notification buildProgressNotification(Context context, int i, String str, PendingIntent pendingIntent, String str2, DownloadManager.TaskState[] taskStateArr) {
        boolean z;
        int i2;
        float f = 0.0f;
        boolean z2 = false;
        boolean z3 = false;
        int i3 = 0;
        boolean z4 = true;
        boolean z5 = false;
        for (DownloadManager.TaskState taskState : taskStateArr) {
            int i4 = taskState.state;
            if (i4 == 1 || i4 == 2) {
                if (taskState.action.isRemoveAction) {
                    z3 = true;
                } else {
                    float f2 = taskState.downloadPercentage;
                    float f3 = f;
                    if (f2 != -1.0f) {
                        f3 = f + f2;
                        z4 = false;
                    }
                    z5 |= taskState.downloadedBytes > 0;
                    i3++;
                    z2 = true;
                    f = f3;
                }
            }
        }
        z7.e newNotificationBuilder = newNotificationBuilder(context, i, str, pendingIntent, str2, z2 ? C0577R.string.exo_download_downloading : z3 ? C0577R.string.exo_download_removing : 0);
        if (z2) {
            i2 = (int) (f / i3);
            if (!z4 || !z5) {
                z = false;
                newNotificationBuilder.D(100, i2, z);
                newNotificationBuilder.A(true);
                newNotificationBuilder.E(false);
                return newNotificationBuilder.c();
            }
        } else {
            i2 = 0;
        }
        z = true;
        newNotificationBuilder.D(100, i2, z);
        newNotificationBuilder.A(true);
        newNotificationBuilder.E(false);
        return newNotificationBuilder.c();
    }

    private static z7.e newNotificationBuilder(Context context, int i, String str, PendingIntent pendingIntent, String str2, int i2) {
        z7.e eVar = new z7.e(context, str);
        eVar.F(i);
        if (i2 != 0) {
            eVar.r(context.getResources().getString(i2));
        }
        if (pendingIntent != null) {
            eVar.p(pendingIntent);
        }
        if (str2 != null) {
            z7.c cVar = new z7.c();
            cVar.l(str2);
            eVar.H(cVar);
        }
        return eVar;
    }
}
