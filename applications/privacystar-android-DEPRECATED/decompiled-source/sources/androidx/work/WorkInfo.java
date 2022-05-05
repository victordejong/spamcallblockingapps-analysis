package androidx.work;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/WorkInfo.class */
public final class WorkInfo {
    @NonNull
    private UUID mId;
    @NonNull
    private Data mOutputData;
    @NonNull
    private State mState;
    @NonNull
    private Set<String> mTags;

    /* loaded from: classes-dex2jar.jar:androidx/work/WorkInfo$State.class */
    public enum State {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        public boolean isFinished() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkInfo(@NonNull UUID uuid, @NonNull State state, @NonNull Data data, @NonNull List<String> list) {
        this.mId = uuid;
        this.mState = state;
        this.mOutputData = data;
        this.mTags = new HashSet(list);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WorkInfo workInfo = (WorkInfo) obj;
        if (this.mId != null) {
            if (!this.mId.equals(workInfo.mId)) {
                return false;
            }
        } else if (workInfo.mId != null) {
            return false;
        }
        if (this.mState != workInfo.mState) {
            return false;
        }
        if (this.mOutputData != null) {
            if (!this.mOutputData.equals(workInfo.mOutputData)) {
                return false;
            }
        } else if (workInfo.mOutputData != null) {
            return false;
        }
        if (this.mTags != null) {
            z = this.mTags.equals(workInfo.mTags);
        } else if (workInfo.mTags != null) {
            z = false;
        }
        return z;
    }

    @NonNull
    public UUID getId() {
        return this.mId;
    }

    @NonNull
    public Data getOutputData() {
        return this.mOutputData;
    }

    @NonNull
    public State getState() {
        return this.mState;
    }

    @NonNull
    public Set<String> getTags() {
        return this.mTags;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.mId != null ? this.mId.hashCode() : 0;
        int hashCode2 = this.mState != null ? this.mState.hashCode() : 0;
        int hashCode3 = this.mOutputData != null ? this.mOutputData.hashCode() : 0;
        if (this.mTags != null) {
            i = this.mTags.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        return "WorkInfo{mId='" + this.mId + "', mState=" + this.mState + ", mOutputData=" + this.mOutputData + ", mTags=" + this.mTags + '}';
    }
}
