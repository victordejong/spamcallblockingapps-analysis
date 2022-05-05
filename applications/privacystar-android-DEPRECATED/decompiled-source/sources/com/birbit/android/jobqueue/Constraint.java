package com.birbit.android.jobqueue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/Constraint.class */
public class Constraint {
    private boolean excludeRunning;
    private int maxNetworkType;
    private long nowInNs;
    private TagConstraint tagConstraint;
    private Long timeLimit;
    private final Set<String> tags = new HashSet();
    private final List<String> excludeGroups = new ArrayList();
    private final List<String> excludeJobIds = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.maxNetworkType = 2;
        this.tagConstraint = null;
        this.tags.clear();
        this.excludeGroups.clear();
        this.excludeJobIds.clear();
        this.excludeRunning = false;
        this.timeLimit = null;
        this.nowInNs = Long.MIN_VALUE;
    }

    public boolean excludeRunning() {
        return this.excludeRunning;
    }

    public List<String> getExcludeGroups() {
        return this.excludeGroups;
    }

    public List<String> getExcludeJobIds() {
        return this.excludeJobIds;
    }

    public int getMaxNetworkType() {
        return this.maxNetworkType;
    }

    public long getNowInNs() {
        return this.nowInNs;
    }

    public TagConstraint getTagConstraint() {
        return this.tagConstraint;
    }

    public Set<String> getTags() {
        return this.tags;
    }

    public Long getTimeLimit() {
        return this.timeLimit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setExcludeGroups(Collection<String> collection) {
        this.excludeGroups.clear();
        if (collection != null) {
            this.excludeGroups.addAll(collection);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setExcludeJobIds(Collection<String> collection) {
        this.excludeJobIds.clear();
        if (collection != null) {
            this.excludeJobIds.addAll(collection);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setExcludeRunning(boolean z) {
        this.excludeRunning = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMaxNetworkType(int i) {
        this.maxNetworkType = i;
    }

    public void setNowInNs(long j) {
        this.nowInNs = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTagConstraint(TagConstraint tagConstraint) {
        this.tagConstraint = tagConstraint;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTags(String[] strArr) {
        this.tags.clear();
        if (strArr != null) {
            Collections.addAll(this.tags, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTimeLimit(Long l) {
        this.timeLimit = l;
    }
}
