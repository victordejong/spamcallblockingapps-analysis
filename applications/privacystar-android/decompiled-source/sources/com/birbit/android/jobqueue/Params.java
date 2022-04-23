package com.birbit.android.jobqueue;

import android.support.annotation.Nullable;
import java.util.Collections;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/Params.class */
public class Params {
    public static final long FOREVER = Long.MAX_VALUE;
    public static final long NEVER = Long.MIN_VALUE;
    private Boolean cancelOnDeadline;
    private long delayMs;
    private int priority;
    private HashSet<String> tags;
    int requiredNetworkType = 0;
    private String groupId = null;
    private String singleId = null;
    private boolean persistent = false;
    private long deadlineMs = 0;

    public Params(int i) {
        this.priority = i;
    }

    public Params addTags(String... strArr) {
        if (this.tags == null) {
            this.tags = new HashSet<>();
        }
        Collections.addAll(this.tags, strArr);
        return this;
    }

    public Params clearTags() {
        this.tags = null;
        return this;
    }

    public Params delayInMs(long j) {
        this.delayMs = j;
        return this;
    }

    @Nullable
    public Boolean getCancelOnDeadline() {
        return this.cancelOnDeadline;
    }

    public long getDeadlineMs() {
        return this.deadlineMs;
    }

    public long getDelayMs() {
        return this.delayMs;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public int getPriority() {
        return this.priority;
    }

    public String getSingleId() {
        return this.singleId;
    }

    public HashSet<String> getTags() {
        return this.tags;
    }

    public Params groupBy(String str) {
        this.groupId = str;
        return this;
    }

    public boolean isNetworkRequired() {
        boolean z = true;
        if (this.requiredNetworkType < 1) {
            z = false;
        }
        return z;
    }

    public boolean isPersistent() {
        return this.persistent;
    }

    public boolean isUnmeteredNetworkRequired() {
        return this.requiredNetworkType >= 2;
    }

    public Params overrideDeadlineToCancelInMs(long j) {
        if (Boolean.FALSE.equals(this.cancelOnDeadline)) {
            throw new IllegalArgumentException("cannot set deadline to cancel and run. You need to pick one");
        }
        this.deadlineMs = j;
        this.cancelOnDeadline = true;
        return this;
    }

    public Params overrideDeadlineToRunInMs(long j) {
        if (Boolean.TRUE.equals(this.cancelOnDeadline)) {
            throw new IllegalArgumentException("cannot set deadline to cancel and run. You need to pick one");
        }
        this.deadlineMs = j;
        this.cancelOnDeadline = false;
        return this;
    }

    public Params persist() {
        this.persistent = true;
        return this;
    }

    public Params removeTags(String... strArr) {
        if (this.tags == null) {
            return this;
        }
        for (String str : strArr) {
            this.tags.remove(str);
        }
        return this;
    }

    public Params requireNetwork() {
        if (this.requiredNetworkType != 2) {
            this.requiredNetworkType = 1;
        }
        return this;
    }

    public Params requireUnmeteredNetwork() {
        this.requiredNetworkType = 2;
        return this;
    }

    public Params setDelayMs(long j) {
        this.delayMs = j;
        return this;
    }

    public Params setGroupId(String str) {
        this.groupId = str;
        return this;
    }

    public Params setPersistent(boolean z) {
        this.persistent = z;
        return this;
    }

    public Params setRequiresNetwork(boolean z) {
        if (!z) {
            this.requiredNetworkType = 0;
        } else if (this.requiredNetworkType == 0) {
            this.requiredNetworkType = 1;
        }
        return this;
    }

    public Params setRequiresUnmeteredNetwork(boolean z) {
        if (z) {
            this.requiredNetworkType = 2;
        } else if (this.requiredNetworkType != 1) {
            this.requiredNetworkType = 0;
        }
        return this;
    }

    public Params setSingleId(String str) {
        this.singleId = str;
        return this;
    }

    public boolean shouldCancelOnDeadline() {
        return Boolean.TRUE.equals(this.cancelOnDeadline);
    }

    public Params singleInstanceBy(String str) {
        this.singleId = str;
        return this;
    }
}
