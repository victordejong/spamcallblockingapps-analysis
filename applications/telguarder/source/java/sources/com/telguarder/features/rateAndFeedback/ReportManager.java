package com.telguarder.features.rateAndFeedback;

import android.content.Context;
import com.telguarder.helpers.backend.BackendApi;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.backend.BackendRequest;
import com.telguarder.helpers.backend.BackendRequestCreator;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/rateAndFeedback/ReportManager.class */
public class ReportManager {
    private static ReportManager mInstance;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/rateAndFeedback/ReportManager$ReportType.class */
    public enum ReportType {
        INCORRECT_INFORMATION("incorrect_information"),
        MISSING_ENTRY("missing_entry"),
        FEEDBACK("feedback");
        
        private String stringValue;

        ReportType(String str) {
            this.stringValue = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }
    }

    public static ReportManager getInstance() {
        ReportManager reportManager;
        synchronized (ReportManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new ReportManager();
                }
                reportManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return reportManager;
    }

    public void postReport(Context context, ReportType reportType, String str, BackendCallbackListener<String> backendCallbackListener) {
        BackendRequest backendRequestOfUrlAndMethodWithLogging = BackendRequestCreator.backendRequestOfUrlAndMethodWithLogging(context, BackendApi.API_URL_POST_REPORT, BackendRequest.Method.POST);
        backendRequestOfUrlAndMethodWithLogging.putParam("type", reportType.toString());
        backendRequestOfUrlAndMethodWithLogging.putParam("comment", str);
        backendRequestOfUrlAndMethodWithLogging.execute(String.class, (BackendCallbackListener) backendCallbackListener);
    }
}
