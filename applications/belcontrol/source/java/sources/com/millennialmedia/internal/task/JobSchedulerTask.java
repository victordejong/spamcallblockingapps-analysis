package com.millennialmedia.internal.task;

import android.util.TypedValue;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.EnvironmentUtils;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/JobSchedulerTask.class */
public abstract class JobSchedulerTask extends Task {
    public abstract int getDefaultJobId();

    public abstract String getJobIdResourceName();

    public abstract String getJobIdResourceType();

    public abstract String getTagName();

    public int retrieveJobId() {
        int defaultJobId = getDefaultJobId();
        if (EnvironmentUtils.resourceExists(getJobIdResourceName(), getJobIdResourceType())) {
            TypedValue typedValue = new TypedValue();
            EnvironmentUtils.getResourceValueFrom(getJobIdResourceName(), getJobIdResourceType(), typedValue, true);
            defaultJobId = typedValue.data;
        }
        if (MMLog.isDebugEnabled()) {
            String tagName = getTagName();
            MMLog.m4070d(tagName, "The selected jobId for " + getJobIdResourceName() + " is: " + defaultJobId);
        }
        return defaultJobId;
    }
}
