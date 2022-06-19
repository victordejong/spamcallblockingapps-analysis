package androidx.work.impl.model;

import androidx.p010a.p011a.p014c.AbstractC0112a;
import androidx.work.AbstractC3145k;
import androidx.work.C2988b;
import androidx.work.C2992d;
import androidx.work.C3163t;
import androidx.work.EnumC2986a;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec.class */
public final class WorkSpec {
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;
    private static final String TAG = AbstractC3145k.m39275a("WorkSpec");
    public static final AbstractC0112a<List<WorkInfoPojo>, List<C3163t>> WORK_INFO_MAPPER = new AbstractC0112a<List<WorkInfoPojo>, List<C3163t>>() { // from class: androidx.work.impl.model.WorkSpec.1
        public List<C3163t> apply(List<WorkInfoPojo> list) {
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
    public EnumC2986a backoffPolicy;
    public C2988b constraints;
    public long flexDuration;

    /* renamed from: id */
    public String f11397id;
    public long initialDelay;
    public C2992d input;
    public String inputMergerClassName;
    public long intervalDuration;
    public long minimumRetentionDuration;
    public C2992d output;
    public long periodStartTime;
    public int runAttemptCount;
    public boolean runInForeground;
    public long scheduleRequestedAt;
    public C3163t.EnumC3164a state;
    public String workerClassName;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec$IdAndState.class */
    public static class IdAndState {

        /* renamed from: id */
        public String f11398id;
        public C3163t.EnumC3164a state;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            if (this.state == idAndState.state) {
                return this.f11398id.equals(idAndState.f11398id);
            }
            return false;
        }

        public int hashCode() {
            return (this.f11398id.hashCode() * 31) + this.state.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec$WorkInfoPojo.class */
    public static class WorkInfoPojo {

        /* renamed from: id */
        public String f11399id;
        public C2992d output;
        public List<C2992d> progress;
        public int runAttemptCount;
        public C3163t.EnumC3164a state;
        public List<String> tags;

        public boolean equals(Object obj) {
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
            String str = this.f11399id;
            if (str != null) {
                if (!str.equals(workInfoPojo.f11399id)) {
                    return false;
                }
            } else if (workInfoPojo.f11399id != null) {
                return false;
            }
            if (this.state != workInfoPojo.state) {
                return false;
            }
            C2992d c2992d = this.output;
            if (c2992d != null) {
                if (!c2992d.equals(workInfoPojo.output)) {
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
            List<C2992d> list2 = this.progress;
            List<C2992d> list3 = workInfoPojo.progress;
            return list2 != null ? list2.equals(list3) : list3 == null;
        }

        public int hashCode() {
            String str = this.f11399id;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            C3163t.EnumC3164a enumC3164a = this.state;
            int hashCode2 = enumC3164a != null ? enumC3164a.hashCode() : 0;
            C2992d c2992d = this.output;
            int hashCode3 = c2992d != null ? c2992d.hashCode() : 0;
            int i2 = this.runAttemptCount;
            List<String> list = this.tags;
            int hashCode4 = list != null ? list.hashCode() : 0;
            List<C2992d> list2 = this.progress;
            if (list2 != null) {
                i = list2.hashCode();
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + i;
        }

        public C3163t toWorkInfo() {
            List<C2992d> list = this.progress;
            return new C3163t(UUID.fromString(this.f11399id), this.state, this.output, this.tags, (list == null || list.isEmpty()) ? C2992d.f11149a : this.progress.get(0), this.runAttemptCount);
        }
    }

    public WorkSpec(WorkSpec workSpec) {
        this.state = C3163t.EnumC3164a.ENQUEUED;
        this.input = C2992d.f11149a;
        this.output = C2992d.f11149a;
        this.constraints = C2988b.f11129a;
        this.backoffPolicy = EnumC2986a.EXPONENTIAL;
        this.backoffDelayDuration = 30000L;
        this.scheduleRequestedAt = -1L;
        this.f11397id = workSpec.f11397id;
        this.workerClassName = workSpec.workerClassName;
        this.state = workSpec.state;
        this.inputMergerClassName = workSpec.inputMergerClassName;
        this.input = new C2992d(workSpec.input);
        this.output = new C2992d(workSpec.output);
        this.initialDelay = workSpec.initialDelay;
        this.intervalDuration = workSpec.intervalDuration;
        this.flexDuration = workSpec.flexDuration;
        this.constraints = new C2988b(workSpec.constraints);
        this.runAttemptCount = workSpec.runAttemptCount;
        this.backoffPolicy = workSpec.backoffPolicy;
        this.backoffDelayDuration = workSpec.backoffDelayDuration;
        this.periodStartTime = workSpec.periodStartTime;
        this.minimumRetentionDuration = workSpec.minimumRetentionDuration;
        this.scheduleRequestedAt = workSpec.scheduleRequestedAt;
        this.runInForeground = workSpec.runInForeground;
    }

    public WorkSpec(String str, String str2) {
        this.state = C3163t.EnumC3164a.ENQUEUED;
        this.input = C2992d.f11149a;
        this.output = C2992d.f11149a;
        this.constraints = C2988b.f11129a;
        this.backoffPolicy = EnumC2986a.EXPONENTIAL;
        this.backoffDelayDuration = 30000L;
        this.scheduleRequestedAt = -1L;
        this.f11397id = str;
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
    public final long calculateNextRunTime() {
        boolean z = false;
        if (isBackedOff()) {
            if (this.backoffPolicy == EnumC2986a.LINEAR) {
                z = true;
            }
            return this.periodStartTime + Math.min(18000000L, (long) (z ? this.backoffDelayDuration * this.runAttemptCount : Math.scalb((float) this.backoffDelayDuration, this.runAttemptCount - 1)));
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

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        if (this.initialDelay != workSpec.initialDelay || this.intervalDuration != workSpec.intervalDuration || this.flexDuration != workSpec.flexDuration || this.runAttemptCount != workSpec.runAttemptCount || this.backoffDelayDuration != workSpec.backoffDelayDuration || this.periodStartTime != workSpec.periodStartTime || this.minimumRetentionDuration != workSpec.minimumRetentionDuration || this.scheduleRequestedAt != workSpec.scheduleRequestedAt || this.runInForeground != workSpec.runInForeground || !this.f11397id.equals(workSpec.f11397id) || this.state != workSpec.state || !this.workerClassName.equals(workSpec.workerClassName)) {
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
        return this.input.equals(workSpec.input) && this.output.equals(workSpec.output) && this.constraints.equals(workSpec.constraints) && this.backoffPolicy == workSpec.backoffPolicy;
    }

    public final boolean hasConstraints() {
        return !C2988b.f11129a.equals(this.constraints);
    }

    public final int hashCode() {
        int hashCode = this.f11397id.hashCode();
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

    public final boolean isBackedOff() {
        return this.state == C3163t.EnumC3164a.ENQUEUED && this.runAttemptCount > 0;
    }

    public final boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setBackoffDelayDuration(long j) {
        char c = j;
        if (j > 18000000) {
            AbstractC3145k.m39277a().mo39274a(TAG, "Backoff delay duration exceeds maximum value");
            c = 43136;
        }
        char c2 = c;
        if (c < 10000) {
            AbstractC3145k.m39277a().mo39274a(TAG, "Backoff delay duration less than minimum value");
            c2 = 10000;
        }
        this.backoffDelayDuration = c2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setPeriodic(long j) {
        char c = j;
        if (j < 900000) {
            AbstractC3145k.m39277a().mo39274a(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L));
            c = 48032;
        }
        setPeriodic(c, c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setPeriodic(long j, long j2) {
        char c = j;
        if (j < 900000) {
            AbstractC3145k.m39277a().mo39274a(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L));
            c = 48032;
        }
        char c2 = j2;
        if (j2 < 300000) {
            AbstractC3145k.m39277a().mo39274a(TAG, String.format("Flex duration lesser than minimum allowed value; Changed to %s", 300000L));
            c2 = 37856;
        }
        char c3 = c2;
        if (c2 > c) {
            AbstractC3145k.m39277a().mo39274a(TAG, String.format("Flex duration greater than interval duration; Changed to %s", Long.valueOf(c)));
            c3 = c;
        }
        this.intervalDuration = c;
        this.flexDuration = c3;
    }

    public final String toString() {
        return "{WorkSpec: " + this.f11397id + "}";
    }
}
