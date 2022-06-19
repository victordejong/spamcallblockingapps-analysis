package com.telguarder.helpers.backend;

import android.content.Context;
import android.text.TextUtils;
import com.telguarder.helpers.backend.BackendRequest;
import com.telguarder.helpers.contact.BackendLogEntry;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/backend/BackendLoggingManager.class */
public class BackendLoggingManager {
    private static BackendLoggingManager mInstance;

    private BackendLoggingManager() {
    }

    public static BackendLoggingManager getInstance() {
        BackendLoggingManager backendLoggingManager;
        synchronized (BackendLoggingManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new BackendLoggingManager();
                }
                backendLoggingManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return backendLoggingManager;
    }

    public void logCompanyPhoneCall(Context context, BackendLogEntry backendLogEntry) {
        if (backendLogEntry == null || TextUtils.isEmpty(backendLogEntry.f1300id)) {
            return;
        }
        BackendRequest backendRequestOfUrlAndMethodWithLogging = BackendRequestCreator.backendRequestOfUrlAndMethodWithLogging(context, BackendApi.API_URL_LOG_NUMBER, BackendRequest.Method.POST);
        backendRequestOfUrlAndMethodWithLogging.putParam("type", "ring");
        backendRequestOfUrlAndMethodWithLogging.putParam("number", backendLogEntry.calledNumber);
        backendRequestOfUrlAndMethodWithLogging.putParam("orgNr", backendLogEntry.f1300id);
        backendRequestOfUrlAndMethodWithLogging.putParam("source", "mobile");
        backendRequestOfUrlAndMethodWithLogging.execute(String.class, (BackendCallbackListener) null);
    }
}
