package androidx.work.impl.model;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.core.app.NotificationCompat;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import androidx.room.ColumnInfo;
import androidx.room.Embedded;
import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import androidx.room.Relation;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkInfo;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
@Entity(indices = {@Index({"schedule_requested_at"}), @Index({"period_start_time"})})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec.class */
public final class WorkSpec {
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;
    public static final String TAG = Logger.tagWithPrefix("WorkSpec");
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
    @ColumnInfo(name = "backoff_delay_duration")
    public long backoffDelayDuration;
    @NonNull
    @ColumnInfo(name = "backoff_policy")
    public BackoffPolicy backoffPolicy;
    @NonNull
    @Embedded
    public Constraints constraints;
    @ColumnInfo(name = "flex_duration")
    public long flexDuration;
    @NonNull
    @PrimaryKey
    @ColumnInfo(name = "id")

    /* renamed from: id */
    public String f130id;
    @ColumnInfo(name = "initial_delay")
    public long initialDelay;
    @NonNull
    @ColumnInfo(name = "input")
    public Data input;
    @ColumnInfo(name = "input_merger_class_name")
    public String inputMergerClassName;
    @ColumnInfo(name = "interval_duration")
    public long intervalDuration;
    @ColumnInfo(name = "minimum_retention_duration")
    public long minimumRetentionDuration;
    @NonNull
    @ColumnInfo(name = "output")
    public Data output;
    @ColumnInfo(name = "period_start_time")
    public long periodStartTime;
    @IntRange(from = 0)
    @ColumnInfo(name = "run_attempt_count")
    public int runAttemptCount;
    @ColumnInfo(name = "run_in_foreground")
    public boolean runInForeground;
    @ColumnInfo(name = "schedule_requested_at")
    public long scheduleRequestedAt;
    @NonNull
    @ColumnInfo(name = IapProductRealmObject.STATE)
    public WorkInfo.State state;
    @NonNull
    @ColumnInfo(name = "worker_class_name")
    public String workerClassName;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec$IdAndState.class */
    public static class IdAndState {
        @ColumnInfo(name = "id")

        /* renamed from: id */
        public String f131id;
        @ColumnInfo(name = IapProductRealmObject.STATE)
        public WorkInfo.State state;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            if (this.state != idAndState.state) {
                return false;
            }
            return this.f131id.equals(idAndState.f131id);
        }

        public int hashCode() {
            return (this.f131id.hashCode() * 31) + this.state.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec$WorkInfoPojo.class */
    public static class WorkInfoPojo {
        @ColumnInfo(name = "id")

        /* renamed from: id */
        public String f132id;
        @ColumnInfo(name = "output")
        public Data output;
        @Relation(entity = WorkProgress.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {NotificationCompat.CATEGORY_PROGRESS})
        public List<Data> progress;
        @ColumnInfo(name = "run_attempt_count")
        public int runAttemptCount;
        @ColumnInfo(name = IapProductRealmObject.STATE)
        public WorkInfo.State state;
        @Relation(entity = WorkTag.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {NovaHomeBadger.TAG})
        public List<String> tags;

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WorkInfoPojo)) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) obj;
            if (this.runAttemptCount != workInfoPojo.runAttemptCount) {
                return false;
            }
            String str = this.f132id;
            if (str != null) {
                if (!str.equals(workInfoPojo.f132id)) {
                    return false;
                }
            } else if (workInfoPojo.f132id != null) {
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
            if (list != null) {
                if (!list.equals(workInfoPojo.tags)) {
                    return false;
                }
            } else if (workInfoPojo.tags != null) {
                return false;
            }
            List<Data> list2 = this.progress;
            List<Data> list3 = workInfoPojo.progress;
            if (list2 != null) {
                z = list2.equals(list3);
            } else if (list3 != null) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f132id;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            WorkInfo.State state = this.state;
            int hashCode2 = state != null ? state.hashCode() : 0;
            Data data = this.output;
            int hashCode3 = data != null ? data.hashCode() : 0;
            int i2 = this.runAttemptCount;
            List<String> list = this.tags;
            int hashCode4 = list != null ? list.hashCode() : 0;
            List<Data> list2 = this.progress;
            if (list2 != null) {
                i = list2.hashCode();
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + i;
        }

        @NonNull
        public WorkInfo toWorkInfo() {
            List<Data> list = this.progress;
            return new WorkInfo(UUID.fromString(this.f132id), this.state, this.output, this.tags, (list == null || list.isEmpty()) ? Data.EMPTY : this.progress.get(0), this.runAttemptCount);
        }
    }

    public WorkSpec(@NonNull WorkSpec workSpec) {
        this.state = WorkInfo.State.ENQUEUED;
        Data data = Data.EMPTY;
        this.input = data;
        this.output = data;
        this.constraints = Constraints.NONE;
        this.backoffPolicy = BackoffPolicy.EXPONENTIAL;
        this.backoffDelayDuration = 30000L;
        this.scheduleRequestedAt = -1L;
        this.f130id = workSpec.f130id;
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
        this.runInForeground = workSpec.runInForeground;
    }

    public WorkSpec(@NonNull String str, @NonNull String str2) {
        this.state = WorkInfo.State.ENQUEUED;
        Data data = Data.EMPTY;
        this.input = data;
        this.output = data;
        this.constraints = Constraints.NONE;
        this.backoffPolicy = BackoffPolicy.EXPONENTIAL;
        this.backoffDelayDuration = 30000L;
        this.scheduleRequestedAt = -1L;
        this.f130id = str;
        this.workerClassName = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long calculateNextRunTime() {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkSpec.calculateNextRunTime():long");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        if (this.initialDelay != workSpec.initialDelay || this.intervalDuration != workSpec.intervalDuration || this.flexDuration != workSpec.flexDuration || this.runAttemptCount != workSpec.runAttemptCount || this.backoffDelayDuration != workSpec.backoffDelayDuration || this.periodStartTime != workSpec.periodStartTime || this.minimumRetentionDuration != workSpec.minimumRetentionDuration || this.scheduleRequestedAt != workSpec.scheduleRequestedAt || this.runInForeground != workSpec.runInForeground || !this.f130id.equals(workSpec.f130id) || this.state != workSpec.state || !this.workerClassName.equals(workSpec.workerClassName)) {
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
        int hashCode = this.f130id.hashCode();
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
        return (((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + i2) * 31) + i3) * 31) + hashCode7) * 31) + i4) * 31) + hashCode8) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.runInForeground ? 1 : 0);
    }

    public boolean isBackedOff() {
        return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
    }

    public boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setBackoffDelayDuration(long r6) {
        /*
            r5 = this;
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 18000000(0x112a880, double:8.8931816E-317)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x001d
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Backoff delay duration exceeds maximum value"
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.warning(r1, r2, r3)
            r0 = 18000000(0x112a880, double:8.8931816E-317)
            r8 = r0
        L_0x001d:
            r0 = r8
            r6 = r0
            r0 = r8
            r1 = 10000(0x2710, double:4.9407E-320)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x003a
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Backoff delay duration less than minimum value"
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.warning(r1, r2, r3)
            r0 = 10000(0x2710, double:4.9407E-320)
            r6 = r0
        L_0x003a:
            r0 = r5
            r1 = r6
            r0.backoffDelayDuration = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkSpec.setBackoffDelayDuration(long):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v2 */
    public void setPeriodic(long j) {
        long j2 = j;
        if (j < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", Long.valueOf((long) PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS)), new Throwable[0]);
            j2 = 900000;
        }
        setPeriodic(j2, j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setPeriodic(long r10, long r12) {
        /*
            r9 = this;
            r0 = r10
            r14 = r0
            r0 = r10
            r1 = 900000(0xdbba0, double:4.44659E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002f
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Interval duration lesser than minimum allowed value; Changed to %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = 900000(0xdbba0, double:4.44659E-318)
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.warning(r1, r2, r3)
            r0 = 900000(0xdbba0, double:4.44659E-318)
            r14 = r0
        L_0x002f:
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = 300000(0x493e0, double:1.482197E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x005c
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Flex duration lesser than minimum allowed value; Changed to %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = 300000(0x493e0, double:1.482197E-318)
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.warning(r1, r2, r3)
            r0 = 300000(0x493e0, double:1.482197E-318)
            r10 = r0
        L_0x005c:
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0086
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Flex duration greater than interval duration; Changed to %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r14
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.warning(r1, r2, r3)
            r0 = r14
            r12 = r0
        L_0x0086:
            r0 = r9
            r1 = r14
            r0.intervalDuration = r1
            r0 = r9
            r1 = r12
            r0.flexDuration = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkSpec.setPeriodic(long, long):void");
    }

    @NonNull
    public String toString() {
        return "{WorkSpec: " + this.f130id + CssParser.BLOCK_END;
    }
}
