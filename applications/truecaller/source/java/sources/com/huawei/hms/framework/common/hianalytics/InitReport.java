package com.huawei.hms.framework.common.hianalytics;

import com.huawei.hms.framework.common.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/hianalytics/InitReport.class */
public class InitReport {
    private static final int EVENT_LIMIT = 10;
    private static final String TAG = "HaReport";
    private static List<Runnable> eventsToReport;
    private static boolean hasConnectNet = false;

    public static void enableConnectNet() {
        if (!hasConnectNet) {
            hasConnectNet = true;
            try {
                HianalyticsHelper.getInstance().getReportExecutor().submit(new Runnable() { // from class: com.huawei.hms.framework.common.hianalytics.InitReport.1
                    @Override // java.lang.Runnable
                    public void run() {
                        InitReport.submitAllEvents();
                    }
                });
            } catch (RejectedExecutionException e) {
                Logger.m38047e(TAG, "submit failed of rejected execution exception");
            }
        }
    }

    public static void reportWhenInit(Runnable runnable) {
        if (hasConnectNet) {
            HianalyticsHelper.getInstance().getReportExecutor().execute(runnable);
            return;
        }
        if (eventsToReport == null) {
            eventsToReport = new ArrayList();
        }
        if (eventsToReport.size() > 10) {
            Logger.m38047e("TAG", "the event to be report when init exceed the limit!");
        } else {
            eventsToReport.add(runnable);
        }
    }

    public static void submitAllEvents() {
        try {
            for (Runnable runnable : eventsToReport) {
                HianalyticsHelper.getInstance().getReportExecutor().submit(runnable);
            }
        } catch (NullPointerException e) {
            Logger.m38047e(TAG, "event is null occured");
        } catch (RejectedExecutionException e2) {
            Logger.m38047e(TAG, "submit failed of rejected execution exception");
        } catch (Exception e3) {
            Logger.m38047e(TAG, "submit failed because of some exception");
        }
    }
}
