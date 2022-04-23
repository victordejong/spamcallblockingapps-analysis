package androidx.work.impl.model;

import androidx.a.a.c.a;
import androidx.work.b;
import androidx.work.d;
import androidx.work.k;
import androidx.work.t;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec.class */
public final class WorkSpec {
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;
    private static final String TAG = k.a("WorkSpec");
    public static final a<List<WorkInfoPojo>, List<t>> WORK_INFO_MAPPER = new a<List<WorkInfoPojo>, List<t>>() { // from class: androidx.work.impl.model.WorkSpec.1
        public List<t> apply(List<WorkInfoPojo> list) {
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
    public androidx.work.a backoffPolicy;
    public b constraints;
    public long flexDuration;
    public String id;
    public long initialDelay;
    public d input;
    public String inputMergerClassName;
    public long intervalDuration;
    public long minimumRetentionDuration;
    public d output;
    public long periodStartTime;
    public int runAttemptCount;
    public boolean runInForeground;
    public long scheduleRequestedAt;
    public t.a state;
    public String workerClassName;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec$IdAndState.class */
    public static class IdAndState {
        public String id;
        public t.a state;

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
            return this.id.equals(idAndState.id);
        }

        public int hashCode() {
            return (this.id.hashCode() * 31) + this.state.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec$WorkInfoPojo.class */
    public static class WorkInfoPojo {
        public String id;
        public d output;
        public List<d> progress;
        public int runAttemptCount;
        public t.a state;
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
            String str = this.id;
            if (str != null) {
                if (!str.equals(workInfoPojo.id)) {
                    return false;
                }
            } else if (workInfoPojo.id != null) {
                return false;
            }
            if (this.state != workInfoPojo.state) {
                return false;
            }
            d dVar = this.output;
            if (dVar != null) {
                if (!dVar.equals(workInfoPojo.output)) {
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
            List<d> list2 = this.progress;
            List<d> list3 = workInfoPojo.progress;
            return list2 != null ? list2.equals(list3) : list3 == null;
        }

        public int hashCode() {
            String str = this.id;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            t.a aVar = this.state;
            int hashCode2 = aVar != null ? aVar.hashCode() : 0;
            d dVar = this.output;
            int hashCode3 = dVar != null ? dVar.hashCode() : 0;
            int i2 = this.runAttemptCount;
            List<String> list = this.tags;
            int hashCode4 = list != null ? list.hashCode() : 0;
            List<d> list2 = this.progress;
            if (list2 != null) {
                i = list2.hashCode();
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + i;
        }

        public t toWorkInfo() {
            List<d> list = this.progress;
            return new t(UUID.fromString(this.id), this.state, this.output, this.tags, (list == null || list.isEmpty()) ? d.f5976a : this.progress.get(0), this.runAttemptCount);
        }
    }

    public WorkSpec(WorkSpec workSpec) {
        this.state = t.a.ENQUEUED;
        this.input = d.f5976a;
        this.output = d.f5976a;
        this.constraints = b.f5965a;
        this.backoffPolicy = androidx.work.a.EXPONENTIAL;
        this.backoffDelayDuration = 30000L;
        this.scheduleRequestedAt = -1L;
        this.id = workSpec.id;
        this.workerClassName = workSpec.workerClassName;
        this.state = workSpec.state;
        this.inputMergerClassName = workSpec.inputMergerClassName;
        this.input = new d(workSpec.input);
        this.output = new d(workSpec.output);
        this.initialDelay = workSpec.initialDelay;
        this.intervalDuration = workSpec.intervalDuration;
        this.flexDuration = workSpec.flexDuration;
        this.constraints = new b(workSpec.constraints);
        this.runAttemptCount = workSpec.runAttemptCount;
        this.backoffPolicy = workSpec.backoffPolicy;
        this.backoffDelayDuration = workSpec.backoffDelayDuration;
        this.periodStartTime = workSpec.periodStartTime;
        this.minimumRetentionDuration = workSpec.minimumRetentionDuration;
        this.scheduleRequestedAt = workSpec.scheduleRequestedAt;
        this.runInForeground = workSpec.runInForeground;
    }

    public WorkSpec(String str, String str2) {
        this.state = t.a.ENQUEUED;
        this.input = d.f5976a;
        this.output = d.f5976a;
        this.constraints = b.f5965a;
        this.backoffPolicy = androidx.work.a.EXPONENTIAL;
        this.backoffDelayDuration = 30000L;
        this.scheduleRequestedAt = -1L;
        this.id = str;
        this.workerClassName = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long calculateNextRunTime() {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkSpec.calculateNextRunTime():long");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        if (this.initialDelay != workSpec.initialDelay || this.intervalDuration != workSpec.intervalDuration || this.flexDuration != workSpec.flexDuration || this.runAttemptCount != workSpec.runAttemptCount || this.backoffDelayDuration != workSpec.backoffDelayDuration || this.periodStartTime != workSpec.periodStartTime || this.minimumRetentionDuration != workSpec.minimumRetentionDuration || this.scheduleRequestedAt != workSpec.scheduleRequestedAt || this.runInForeground != workSpec.runInForeground || !this.id.equals(workSpec.id) || this.state != workSpec.state || !this.workerClassName.equals(workSpec.workerClassName)) {
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
        return !b.f5965a.equals(this.constraints);
    }

    public final int hashCode() {
        int hashCode = this.id.hashCode();
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
        return this.state == t.a.ENQUEUED && this.runAttemptCount > 0;
    }

    public final boolean isPeriodic() {
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
    public final void setBackoffDelayDuration(long r6) {
        /*
            r5 = this;
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 18000000(0x112a880, double:8.8931816E-317)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0019
            androidx.work.k r0 = androidx.work.k.a()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Backoff delay duration exceeds maximum value"
            r0.a(r1, r2)
            r0 = 18000000(0x112a880, double:8.8931816E-317)
            r8 = r0
        L_0x0019:
            r0 = r8
            r6 = r0
            r0 = r8
            r1 = 10000(0x2710, double:4.9407E-320)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0032
            androidx.work.k r0 = androidx.work.k.a()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Backoff delay duration less than minimum value"
            r0.a(r1, r2)
            r0 = 10000(0x2710, double:4.9407E-320)
            r6 = r0
        L_0x0032:
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
    public final void setPeriodic(long j) {
        long j2 = j;
        if (j < 900000) {
            k.a().a(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L));
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
    public final void setPeriodic(long r10, long r12) {
        /*
            r9 = this;
            r0 = r10
            r14 = r0
            r0 = r10
            r1 = 900000(0xdbba0, double:4.44659E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002b
            androidx.work.k r0 = androidx.work.k.a()
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
            r0.a(r1, r2)
            r0 = 900000(0xdbba0, double:4.44659E-318)
            r14 = r0
        L_0x002b:
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = 300000(0x493e0, double:1.482197E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0054
            androidx.work.k r0 = androidx.work.k.a()
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
            r0.a(r1, r2)
            r0 = 300000(0x493e0, double:1.482197E-318)
            r10 = r0
        L_0x0054:
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x007a
            androidx.work.k r0 = androidx.work.k.a()
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
            r0.a(r1, r2)
            r0 = r14
            r12 = r0
        L_0x007a:
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

    public final String toString() {
        return "{WorkSpec: " + this.id + "}";
    }
}
