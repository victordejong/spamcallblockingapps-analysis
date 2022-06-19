package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.services.p068b.AbstractC1486k;
import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import io.fabric.sdk.android.services.p069c.AbstractC1510c;
import io.fabric.sdk.android.services.p072e.C1552b;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SessionAnalyticsFilesManager.class */
class SessionAnalyticsFilesManager extends AbstractC1507b<SessionEvent> {
    private static final String SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION = ".tap";
    private static final String SESSION_ANALYTICS_TO_SEND_FILE_PREFIX = "sa";
    private C1552b analyticsSettingsData;

    public SessionAnalyticsFilesManager(Context context, SessionEventTransform sessionEventTransform, AbstractC1486k abstractC1486k, AbstractC1510c abstractC1510c) {
        super(context, sessionEventTransform, abstractC1486k, abstractC1510c, 100);
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1507b
    protected String generateUniqueRollOverFileName() {
        UUID randomUUID = UUID.randomUUID();
        return SESSION_ANALYTICS_TO_SEND_FILE_PREFIX + AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR + randomUUID.toString() + AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR + this.currentTimeProvider.mo3399a() + SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION;
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1507b
    public int getMaxByteSizePerFile() {
        C1552b c1552b = this.analyticsSettingsData;
        return c1552b == null ? super.getMaxByteSizePerFile() : c1552b.f4208c;
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1507b
    public int getMaxFilesToKeep() {
        C1552b c1552b = this.analyticsSettingsData;
        return c1552b == null ? super.getMaxFilesToKeep() : c1552b.f4210e;
    }

    public void setAnalyticsSettingsData(C1552b c1552b) {
        this.analyticsSettingsData = c1552b;
    }
}
