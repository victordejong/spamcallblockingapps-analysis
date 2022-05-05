package com.birbit.android.jobqueue.scheduling;

import android.support.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/scheduling/SchedulerConstraint.class */
public class SchedulerConstraint {
    private Object data;
    private long delayInMs;
    private int networkStatus;
    private Long overrideDeadlineInMs;
    private String uuid;

    public SchedulerConstraint(String str) {
        this.uuid = str;
    }

    public Object getData() {
        return this.data;
    }

    public long getDelayInMs() {
        return this.delayInMs;
    }

    public int getNetworkStatus() {
        return this.networkStatus;
    }

    @Nullable
    public Long getOverrideDeadlineInMs() {
        return this.overrideDeadlineInMs;
    }

    public String getUuid() {
        return this.uuid;
    }

    public void setData(Object obj) {
        this.data = obj;
    }

    public void setDelayInMs(long j) {
        this.delayInMs = j;
    }

    public void setNetworkStatus(int i) {
        this.networkStatus = i;
    }

    public void setOverrideDeadlineInMs(Long l) {
        this.overrideDeadlineInMs = l;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public String toString() {
        return "SchedulerConstraint{uuid='" + this.uuid + "', delayInMs=" + this.delayInMs + ", networkStatus=" + this.networkStatus + ", overrideDeadlineInMs=" + this.overrideDeadlineInMs + ", data=" + this.data + '}';
    }
}
