package com.crashlytics.android.answers;

import android.content.Context;
import android.os.Looper;
import io.fabric.sdk.android.services.p068b.C1504t;
import io.fabric.sdk.android.services.p069c.C1514g;
import io.fabric.sdk.android.services.p071d.AbstractC1547a;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersFilesManagerProvider.class */
public class AnswersFilesManagerProvider {
    static final String SESSION_ANALYTICS_FILE_NAME = "session_analytics.tap";
    static final String SESSION_ANALYTICS_TO_SEND_DIR = "session_analytics_to_send";
    final Context context;
    final AbstractC1547a fileStore;

    public AnswersFilesManagerProvider(Context context, AbstractC1547a abstractC1547a) {
        this.context = context;
        this.fileStore = abstractC1547a;
    }

    public SessionAnalyticsFilesManager getAnalyticsFilesManager() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return new SessionAnalyticsFilesManager(this.context, new SessionEventTransform(), new C1504t(), new C1514g(this.context, this.fileStore.mo3339a(), SESSION_ANALYTICS_FILE_NAME, SESSION_ANALYTICS_TO_SEND_DIR));
        }
        throw new IllegalStateException("AnswersFilesManagerProvider cannot be called on the main thread");
    }
}
