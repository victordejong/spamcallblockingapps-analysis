package androidx.work.impl.model;

import androidx.arch.core.util.Function;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec.class */
public class WorkSpec {
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;
    private static final String TAG = Logger.tagWithPrefix("WorkSpec");
    public static final Function<List<WorkInfoPojo>, List<WorkInfo>> WORK_INFO_MAPPER = new Function<List<WorkInfoPojo>, List<WorkInfo>>() { // from class: androidx.work.impl.model.WorkSpec.1
        public List<WorkInfo> apply(List<WorkInfoPojo> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (WorkInfoPojo workInfoPojo : list) {
                arrayList.add(workInfoPojo.toWorkInfo());
            }
            return arrayList;
        }
    };
    public long backoffDelayDuration;
    public BackoffPolicy backoffPolicy;
    public Constraints constraints;
    public long flexDuration;

    /* renamed from: id */
    public String f77id;
    public long initialDelay;
    public Data input;
    public String inputMergerClassName;
    public long intervalDuration;
    public long minimumRetentionDuration;
    public Data output;
    public long periodStartTime;
    public int runAttemptCount;
    public long scheduleRequestedAt;
    public WorkInfo.State state;
    public String workerClassName;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec$IdAndState.class */
    public static class IdAndState {

        /* renamed from: id */
        public String f78id;
        public WorkInfo.State state;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            if (this.state == idAndState.state) {
                return this.f78id.equals(idAndState.f78id);
            }
            return false;
        }

        public int hashCode() {
            return (this.f78id.hashCode() * 31) + this.state.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec$WorkInfoPojo.class */
    public static class WorkInfoPojo {

        /* renamed from: id */
        public String f79id;
        public Data output;
        public int runAttemptCount;
        public WorkInfo.State state;
        public List<String> tags;

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) obj;
            if (this.runAttemptCount != workInfoPojo.runAttemptCount) {
                return false;
            }
            String str = this.f79id;
            if (str != null) {
                if (!str.equals(workInfoPojo.f79id)) {
                    return false;
                }
            } else if (workInfoPojo.f79id != null) {
                return false;
            }
            if (this.state != workInfoPojo.state) {
                return false;
            }
            Data data = this.output;
            if (data != null) {
                if (!data.equals(workInfoPojo.output)) {
                    return false;
                }
            } else if (workInfoPojo.output != null) {
                return false;
            }
            List<String> list = this.tags;
            List<String> list2 = workInfoPojo.tags;
            if (list != null) {
                z = list.equals(list2);
            } else if (list2 != null) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f79id;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            WorkInfo.State state = this.state;
            int hashCode2 = state != null ? state.hashCode() : 0;
            Data data = this.output;
            int hashCode3 = data != null ? data.hashCode() : 0;
            int i2 = this.runAttemptCount;
            List<String> list = this.tags;
            if (list != null) {
                i = list.hashCode();
            }
            return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + i;
        }

        public WorkInfo toWorkInfo() {
            return new WorkInfo(UUID.fromString(this.f79id), this.state, this.output, this.tags, this.runAttemptCount);
        }
    }

    public WorkSpec(WorkSpec workSpec) {
        this.state = WorkInfo.State.ENQUEUED;
        this.input = Data.EMPTY;
        this.output = Data.EMPTY;
        this.constraints = Constraints.NONE;
        this.backoffPolicy = BackoffPolicy.EXPONENTIAL;
        this.backoffDelayDuration = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        this.scheduleRequestedAt = -1L;
        this.f77id = workSpec.f77id;
        this.workerClassName = workSpec.workerClassName;
        this.state = workSpec.state;
        this.inputMergerClassName = workSpec.inputMergerClassName;
        this.input = new Data(workSpec.input);
        this.output = new Data(workSpec.output);
        this.initialDelay = workSpec.initialDelay;
        this.intervalDuration = workSpec.intervalDuration;
        this.flexDuration = workSpec.flexDuration;
        this.constraints = new Constraints(workSpec.constraints);
        this.runAttemptCount = workSpec.runAttemptCount;
        this.backoffPolicy = workSpec.backoffPolicy;
        this.backoffDelayDuration = workSpec.backoffDelayDuration;
        this.periodStartTime = workSpec.periodStartTime;
        this.minimumRetentionDuration = workSpec.minimumRetentionDuration;
        this.scheduleRequestedAt = workSpec.scheduleRequestedAt;
    }

    public WorkSpec(String str, String str2) {
        this.state = WorkInfo.State.ENQUEUED;
        this.input = Data.EMPTY;
        this.output = Data.EMPTY;
        this.constraints = Constraints.NONE;
        this.backoffPolicy = BackoffPolicy.EXPONENTIAL;
        this.backoffDelayDuration = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        this.scheduleRequestedAt = -1L;
        this.f77id = str;
        this.workerClassName = str2;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    public long calculateNextRunTime() {
        boolean z = false;
        if (isBackedOff()) {
            if (this.backoffPolicy == BackoffPolicy.LINEAR) {
                z = true;
            }
            return this.periodStartTime + Math.min((long) WorkRequest.MAX_BACKOFF_MILLIS, (long) (z ? this.backoffDelayDuration * this.runAttemptCount : Math.scalb((float) this.backoffDelayDuration, this.runAttemptCount - 1)));
        }
        char c = 0;
        if (!isPeriodic()) {
            ?? r0 = this.periodStartTime;
            char c2 = r0;
            if (r0 == 0) {
                c2 = System.currentTimeMillis();
            }
            return c2 + this.initialDelay;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ?? r02 = this.periodStartTime;
        char c3 = r02 == 0 ? currentTimeMillis + this.initialDelay : r02;
        long j = this.flexDuration;
        ?? r03 = this.intervalDuration;
        boolean z2 = false;
        if (j != r03) {
            z2 = true;
        }
        if (z2) {
            if (r02 == 0) {
                c = j * (-1);
            }
            return c3 + r03 + c;
        }
        if (r02 != 0) {
            c = r03;
        }
        return c3 + c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        if (this.initialDelay != workSpec.initialDelay || this.intervalDuration != workSpec.intervalDuration || this.flexDuration != workSpec.flexDuration || this.runAttemptCount != workSpec.runAttemptCount || this.backoffDelayDuration != workSpec.backoffDelayDuration || this.periodStartTime != workSpec.periodStartTime || this.minimumRetentionDuration != workSpec.minimumRetentionDuration || this.scheduleRequestedAt != workSpec.scheduleRequestedAt || !this.f77id.equals(workSpec.f77id) || this.state != workSpec.state || !this.workerClassName.equals(workSpec.workerClassName)) {
            return false;
        }
        String str = this.inputMergerClassName;
        if (str != null) {
            if (!str.equals(workSpec.inputMergerClassName)) {
                return false;
            }
        } else if (workSpec.inputMergerClassName != null) {
            return false;
        }
        if (!this.input.equals(workSpec.input) || !this.output.equals(workSpec.output) || !this.constraints.equals(workSpec.constraints)) {
            return false;
        }
        if (this.backoffPolicy != workSpec.backoffPolicy) {
            z = false;
        }
        return z;
    }

    public boolean hasConstraints() {
        return !Constraints.NONE.equals(this.constraints);
    }

    public int hashCode() {
        int hashCode = this.f77id.hashCode();
        int hashCode2 = this.state.hashCode();
        int hashCode3 = this.workerClassName.hashCode();
        String str = this.inputMergerClassName;
        int hashCode4 = str != null ? str.hashCode() : 0;
        int hashCode5 = this.input.hashCode();
        int hashCode6 = this.output.hashCode();
        long j = this.initialDelay;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.intervalDuration;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        long j3 = this.flexDuration;
        int i3 = (int) (j3 ^ (j3 >>> 32));
        int hashCode7 = this.constraints.hashCode();
        int i4 = this.runAttemptCount;
        int hashCode8 = this.backoffPolicy.hashCode();
        long j4 = this.backoffDelayDuration;
        int i5 = (int) (j4 ^ (j4 >>> 32));
        long j5 = this.periodStartTime;
        int i6 = (int) (j5 ^ (j5 >>> 32));
        long j6 = this.minimumRetentionDuration;
        int i7 = (int) (j6 ^ (j6 >>> 32));
        long j7 = this.scheduleRequestedAt;
        return (((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + i2) * 31) + i3) * 31) + hashCode7) * 31) + i4) * 31) + hashCode8) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + ((int) (j7 ^ (j7 >>> 32)));
    }

    public boolean isBackedOff() {
        return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
    }

    public boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setBackoffDelayDuration(long j) {
        char c = j;
        if (j > WorkRequest.MAX_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration exceeds maximum value", new Throwable[0]);
            c = 43136;
        }
        char c2 = c;
        if (c < WorkRequest.MIN_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration less than minimum value", new Throwable[0]);
            c2 = 10000;
        }
        this.backoffDelayDuration = c2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setPeriodic(long j) {
        char c = j;
        if (j < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", Long.valueOf((long) PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS)), new Throwable[0]);
            c = 48032;
        }
        setPeriodic(c, c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setPeriodic(long j, long j2) {
        char c = j;
        if (j < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", Long.valueOf((long) PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS)), new Throwable[0]);
            c = 48032;
        }
        char c2 = j2;
        if (j2 < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            Logger.get().warning(TAG, String.format("Flex duration lesser than minimum allowed value; Changed to %s", Long.valueOf((long) PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS)), new Throwable[0]);
            c2 = 37856;
        }
        char c3 = c2;
        if (c2 > c) {
            Logger.get().warning(TAG, String.format("Flex duration greater than interval duration; Changed to %s", Long.valueOf(c)), new Throwable[0]);
            c3 = c;
        }
        this.intervalDuration = c;
        this.flexDuration = c3;
    }

    public String toString() {
        return "{WorkSpec: " + this.f77id + "}";
    }
}
