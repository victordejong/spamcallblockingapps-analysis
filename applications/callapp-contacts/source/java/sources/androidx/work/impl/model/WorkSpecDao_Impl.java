package androidx.work.impl.model;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.p023b.C0428a;
import androidx.room.AbstractC2714a;
import androidx.room.AbstractC2748h;
import androidx.room.AbstractC2764o;
import androidx.room.C2757k;
import androidx.room.p081b.C2720b;
import androidx.room.p081b.C2721c;
import androidx.room.p081b.C2723e;
import androidx.sqlite.p082db.AbstractC2795e;
import androidx.work.C2988b;
import androidx.work.C2992d;
import androidx.work.C3163t;
import androidx.work.impl.model.WorkSpec;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpecDao_Impl.class */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    private final AbstractC2748h __db;
    private final AbstractC2714a<WorkSpec> __insertionAdapterOfWorkSpec;
    private final AbstractC2764o __preparedStmtOfDelete;
    private final AbstractC2764o __preparedStmtOfIncrementWorkSpecRunAttemptCount;
    private final AbstractC2764o __preparedStmtOfMarkWorkSpecScheduled;

    /* renamed from: __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast */
    private final AbstractC2764o f11400xd91a9514;
    private final AbstractC2764o __preparedStmtOfResetScheduledState;
    private final AbstractC2764o __preparedStmtOfResetWorkSpecRunAttemptCount;
    private final AbstractC2764o __preparedStmtOfSetOutput;
    private final AbstractC2764o __preparedStmtOfSetPeriodStartTime;

    public WorkSpecDao_Impl(AbstractC2748h abstractC2748h) {
        this.__db = abstractC2748h;
        this.__insertionAdapterOfWorkSpec = new AbstractC2714a<WorkSpec>(abstractC2748h) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            public void bind(AbstractC2795e abstractC2795e, WorkSpec workSpec) {
                if (workSpec.f11397id == null) {
                    abstractC2795e.mo39889a(1);
                } else {
                    abstractC2795e.mo39886a(1, workSpec.f11397id);
                }
                abstractC2795e.mo39887a(2, WorkTypeConverters.stateToInt(workSpec.state));
                if (workSpec.workerClassName == null) {
                    abstractC2795e.mo39889a(3);
                } else {
                    abstractC2795e.mo39886a(3, workSpec.workerClassName);
                }
                if (workSpec.inputMergerClassName == null) {
                    abstractC2795e.mo39889a(4);
                } else {
                    abstractC2795e.mo39886a(4, workSpec.inputMergerClassName);
                }
                byte[] m39513a = C2992d.m39513a(workSpec.input);
                if (m39513a == null) {
                    abstractC2795e.mo39889a(5);
                } else {
                    abstractC2795e.mo39885a(5, m39513a);
                }
                byte[] m39513a2 = C2992d.m39513a(workSpec.output);
                if (m39513a2 == null) {
                    abstractC2795e.mo39889a(6);
                } else {
                    abstractC2795e.mo39885a(6, m39513a2);
                }
                abstractC2795e.mo39887a(7, workSpec.initialDelay);
                abstractC2795e.mo39887a(8, workSpec.intervalDuration);
                abstractC2795e.mo39887a(9, workSpec.flexDuration);
                abstractC2795e.mo39887a(10, workSpec.runAttemptCount);
                abstractC2795e.mo39887a(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                abstractC2795e.mo39887a(12, workSpec.backoffDelayDuration);
                abstractC2795e.mo39887a(13, workSpec.periodStartTime);
                abstractC2795e.mo39887a(14, workSpec.minimumRetentionDuration);
                abstractC2795e.mo39887a(15, workSpec.scheduleRequestedAt);
                abstractC2795e.mo39887a(16, workSpec.runInForeground ? 1L : 0L);
                C2988b c2988b = workSpec.constraints;
                if (c2988b == null) {
                    abstractC2795e.mo39889a(17);
                    abstractC2795e.mo39889a(18);
                    abstractC2795e.mo39889a(19);
                    abstractC2795e.mo39889a(20);
                    abstractC2795e.mo39889a(21);
                    abstractC2795e.mo39889a(22);
                    abstractC2795e.mo39889a(23);
                    abstractC2795e.mo39889a(24);
                    return;
                }
                abstractC2795e.mo39887a(17, WorkTypeConverters.networkTypeToInt(c2988b.f11130b));
                abstractC2795e.mo39887a(18, c2988b.f11131c ? 1L : 0L);
                abstractC2795e.mo39887a(19, c2988b.f11132d ? 1L : 0L);
                abstractC2795e.mo39887a(20, c2988b.f11133e ? 1L : 0L);
                abstractC2795e.mo39887a(21, c2988b.f11134f ? 1L : 0L);
                abstractC2795e.mo39887a(22, c2988b.f11135g);
                abstractC2795e.mo39887a(23, c2988b.f11136h);
                byte[] contentUriTriggersToByteArray = WorkTypeConverters.contentUriTriggersToByteArray(c2988b.f11137i);
                if (contentUriTriggersToByteArray == null) {
                    abstractC2795e.mo39889a(24);
                } else {
                    abstractC2795e.mo39885a(24, contentUriTriggersToByteArray);
                }
            }

            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }
        };
        this.__preparedStmtOfDelete = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "DELETE FROM workspec WHERE id=?";
            }
        };
        this.__preparedStmtOfSetOutput = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.3
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "UPDATE workspec SET output=? WHERE id=?";
            }
        };
        this.__preparedStmtOfSetPeriodStartTime = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.4
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "UPDATE workspec SET period_start_time=? WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementWorkSpecRunAttemptCount = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.5
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfResetWorkSpecRunAttemptCount = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.6
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
            }
        };
        this.__preparedStmtOfMarkWorkSpecScheduled = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.7
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetScheduledState = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.8
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
            }
        };
        this.f11400xd91a9514 = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.9
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
            }
        };
    }

    public void __fetchRelationshipWorkProgressAsandroidxWorkData(C0428a<String, ArrayList<C2992d>> c0428a) {
        ArrayList<C2992d> arrayList;
        int i;
        while (true) {
            C0428a<String, ArrayList<C2992d>> c0428a2 = c0428a;
            Set<String> keySet = c0428a2.keySet();
            if (keySet.isEmpty()) {
                return;
            }
            if (c0428a2.size() <= 999) {
                StringBuilder m39994a = C2723e.m39994a();
                m39994a.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
                int size = keySet.size();
                C2723e.m39993a(m39994a, size);
                m39994a.append(")");
                C2757k m39945a = C2757k.m39945a(m39994a.toString(), size + 0);
                int i2 = 1;
                for (String str : keySet) {
                    if (str == null) {
                        m39945a.f10456e[i2] = 1;
                    } else {
                        m39945a.mo39886a(i2, str);
                    }
                    i2++;
                }
                Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
                try {
                    int m39999a = C2720b.m39999a(m39997a, "work_spec_id");
                    if (m39999a == -1) {
                        return;
                    }
                    while (m39997a.moveToNext()) {
                        if (!m39997a.isNull(m39999a) && (arrayList = c0428a2.get(m39997a.getString(m39999a))) != null) {
                            arrayList.add(C2992d.m39509a(m39997a.getBlob(0)));
                        }
                    }
                    return;
                } finally {
                    m39997a.close();
                }
            }
            c0428a = new C0428a<>(999);
            int size2 = c0428a2.size();
            int i3 = 0;
            while (true) {
                i = 0;
                int i4 = i3;
                while (i4 < size2) {
                    c0428a.put(c0428a2.m45517b(i4), c0428a2.m45515c(i4));
                    i3 = i4 + 1;
                    int i5 = i + 1;
                    i4 = i3;
                    i = i5;
                    if (i5 == 999) {
                        break;
                    }
                }
                __fetchRelationshipWorkProgressAsandroidxWorkData(c0428a);
                c0428a = new C0428a<>(999);
            }
            if (i <= 0) {
                return;
            }
        }
    }

    public void __fetchRelationshipWorkTagAsjavaLangString(C0428a<String, ArrayList<String>> c0428a) {
        ArrayList<String> arrayList;
        int i;
        int i2;
        while (true) {
            C0428a<String, ArrayList<String>> c0428a2 = c0428a;
            Set<String> keySet = c0428a2.keySet();
            if (keySet.isEmpty()) {
                return;
            }
            if (c0428a2.size() <= 999) {
                StringBuilder m39994a = C2723e.m39994a();
                m39994a.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
                int size = keySet.size();
                C2723e.m39993a(m39994a, size);
                m39994a.append(")");
                C2757k m39945a = C2757k.m39945a(m39994a.toString(), size + 0);
                int i3 = 1;
                for (String str : keySet) {
                    if (str == null) {
                        m39945a.f10456e[i3] = 1;
                    } else {
                        m39945a.mo39886a(i3, str);
                    }
                    i3++;
                }
                Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
                try {
                    int m39999a = C2720b.m39999a(m39997a, "work_spec_id");
                    if (m39999a == -1) {
                        return;
                    }
                    while (m39997a.moveToNext()) {
                        if (!m39997a.isNull(m39999a) && (arrayList = c0428a2.get(m39997a.getString(m39999a))) != null) {
                            arrayList.add(m39997a.getString(0));
                        }
                    }
                    return;
                } finally {
                    m39997a.close();
                }
            }
            c0428a = new C0428a<>(999);
            int size2 = c0428a2.size();
            int i4 = 0;
            while (true) {
                int i5 = i4;
                i = 0;
                while (i5 < size2) {
                    c0428a.put(c0428a2.m45517b(i5), c0428a2.m45515c(i5));
                    i2 = i5 + 1;
                    int i6 = i + 1;
                    i5 = i2;
                    i = i6;
                    if (i6 == 999) {
                        break;
                    }
                }
                __fetchRelationshipWorkTagAsjavaLangString(c0428a);
                c0428a = new C0428a<>(999);
                i4 = i2;
            }
            if (i <= 0) {
                return;
            }
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void delete(String str) {
        this.__db.m39960d();
        AbstractC2795e acquire = this.__preparedStmtOfDelete.acquire();
        if (str == null) {
            acquire.mo39889a(1);
        } else {
            acquire.mo39886a(1, str);
        }
        this.__db.m39959e();
        try {
            acquire.mo39882a();
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
            this.__preparedStmtOfDelete.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec> getAllEligibleWorkSpecsForScheduling(int i) {
        Throwable th;
        C2757k m39945a = C2757k.m39945a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        m39945a.mo39887a(1, i);
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            int m39998b = C2720b.m39998b(m39997a, "required_network_type");
            int m39998b2 = C2720b.m39998b(m39997a, "requires_charging");
            int m39998b3 = C2720b.m39998b(m39997a, "requires_device_idle");
            int m39998b4 = C2720b.m39998b(m39997a, "requires_battery_not_low");
            int m39998b5 = C2720b.m39998b(m39997a, "requires_storage_not_low");
            int m39998b6 = C2720b.m39998b(m39997a, "trigger_content_update_delay");
            int m39998b7 = C2720b.m39998b(m39997a, "trigger_max_content_delay");
            int m39998b8 = C2720b.m39998b(m39997a, "content_uri_triggers");
            int m39998b9 = C2720b.m39998b(m39997a, "id");
            int m39998b10 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int m39998b11 = C2720b.m39998b(m39997a, "worker_class_name");
            int m39998b12 = C2720b.m39998b(m39997a, "input_merger_class_name");
            int m39998b13 = C2720b.m39998b(m39997a, "input");
            int m39998b14 = C2720b.m39998b(m39997a, "output");
            try {
                int m39998b15 = C2720b.m39998b(m39997a, "initial_delay");
                int m39998b16 = C2720b.m39998b(m39997a, "interval_duration");
                int m39998b17 = C2720b.m39998b(m39997a, "flex_duration");
                int m39998b18 = C2720b.m39998b(m39997a, "run_attempt_count");
                int m39998b19 = C2720b.m39998b(m39997a, "backoff_policy");
                int m39998b20 = C2720b.m39998b(m39997a, "backoff_delay_duration");
                int m39998b21 = C2720b.m39998b(m39997a, "period_start_time");
                int m39998b22 = C2720b.m39998b(m39997a, "minimum_retention_duration");
                int m39998b23 = C2720b.m39998b(m39997a, "schedule_requested_at");
                int m39998b24 = C2720b.m39998b(m39997a, "run_in_foreground");
                ArrayList arrayList = new ArrayList(m39997a.getCount());
                while (m39997a.moveToNext()) {
                    String string = m39997a.getString(m39998b9);
                    String string2 = m39997a.getString(m39998b11);
                    C2988b c2988b = new C2988b();
                    c2988b.f11130b = WorkTypeConverters.intToNetworkType(m39997a.getInt(m39998b));
                    c2988b.f11131c = m39997a.getInt(m39998b2) != 0;
                    c2988b.f11132d = m39997a.getInt(m39998b3) != 0;
                    c2988b.f11133e = m39997a.getInt(m39998b4) != 0;
                    c2988b.f11134f = m39997a.getInt(m39998b5) != 0;
                    c2988b.f11135g = m39997a.getLong(m39998b6);
                    c2988b.f11136h = m39997a.getLong(m39998b7);
                    c2988b.f11137i = WorkTypeConverters.byteArrayToContentUriTriggers(m39997a.getBlob(m39998b8));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b10));
                    workSpec.inputMergerClassName = m39997a.getString(m39998b12);
                    workSpec.input = C2992d.m39509a(m39997a.getBlob(m39998b13));
                    workSpec.output = C2992d.m39509a(m39997a.getBlob(m39998b14));
                    workSpec.initialDelay = m39997a.getLong(m39998b15);
                    workSpec.intervalDuration = m39997a.getLong(m39998b16);
                    workSpec.flexDuration = m39997a.getLong(m39998b17);
                    workSpec.runAttemptCount = m39997a.getInt(m39998b18);
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(m39997a.getInt(m39998b19));
                    workSpec.backoffDelayDuration = m39997a.getLong(m39998b20);
                    workSpec.periodStartTime = m39997a.getLong(m39998b21);
                    workSpec.minimumRetentionDuration = m39997a.getLong(m39998b22);
                    workSpec.scheduleRequestedAt = m39997a.getLong(m39998b23);
                    workSpec.runInForeground = m39997a.getInt(m39998b24) != 0;
                    workSpec.constraints = c2988b;
                    arrayList.add(workSpec);
                }
                m39997a.close();
                m39945a.m39946a();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m39997a.close();
                m39945a.m39946a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<String> getAllUnfinishedWork() {
        C2757k m39945a = C2757k.m39945a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                arrayList.add(m39997a.getString(0));
            }
            return arrayList;
        } finally {
            m39997a.close();
            m39945a.m39946a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<String> getAllWorkSpecIds() {
        C2757k m39945a = C2757k.m39945a("SELECT id FROM workspec", 0);
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                arrayList.add(m39997a.getString(0));
            }
            return arrayList;
        } finally {
            m39997a.close();
            m39945a.m39946a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final LiveData<List<String>> getAllWorkSpecIdsLiveData() {
        final C2757k m39945a = C2757k.m39945a("SELECT id FROM workspec", 0);
        return this.__db.f10419e.m39975a(new String[]{"workspec"}, true, (Callable) new Callable<List<String>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.10
            @Override // java.util.concurrent.Callable
            public List<String> call() throws Exception {
                WorkSpecDao_Impl.this.__db.m39959e();
                try {
                    Cursor m39997a = C2721c.m39997a(WorkSpecDao_Impl.this.__db, m39945a, false);
                    ArrayList arrayList = new ArrayList(m39997a.getCount());
                    while (m39997a.moveToNext()) {
                        arrayList.add(m39997a.getString(0));
                    }
                    WorkSpecDao_Impl.this.__db.m39957g();
                    m39997a.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.m39958f();
                }
            }

            protected void finalize() {
                m39945a.m39946a();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec> getEligibleWorkForScheduling(int i) {
        Throwable th;
        C2757k m39945a = C2757k.m39945a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        m39945a.mo39887a(1, i);
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            int m39998b = C2720b.m39998b(m39997a, "required_network_type");
            int m39998b2 = C2720b.m39998b(m39997a, "requires_charging");
            int m39998b3 = C2720b.m39998b(m39997a, "requires_device_idle");
            int m39998b4 = C2720b.m39998b(m39997a, "requires_battery_not_low");
            int m39998b5 = C2720b.m39998b(m39997a, "requires_storage_not_low");
            int m39998b6 = C2720b.m39998b(m39997a, "trigger_content_update_delay");
            int m39998b7 = C2720b.m39998b(m39997a, "trigger_max_content_delay");
            int m39998b8 = C2720b.m39998b(m39997a, "content_uri_triggers");
            int m39998b9 = C2720b.m39998b(m39997a, "id");
            int m39998b10 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int m39998b11 = C2720b.m39998b(m39997a, "worker_class_name");
            int m39998b12 = C2720b.m39998b(m39997a, "input_merger_class_name");
            int m39998b13 = C2720b.m39998b(m39997a, "input");
            int m39998b14 = C2720b.m39998b(m39997a, "output");
            try {
                int m39998b15 = C2720b.m39998b(m39997a, "initial_delay");
                int m39998b16 = C2720b.m39998b(m39997a, "interval_duration");
                int m39998b17 = C2720b.m39998b(m39997a, "flex_duration");
                int m39998b18 = C2720b.m39998b(m39997a, "run_attempt_count");
                int m39998b19 = C2720b.m39998b(m39997a, "backoff_policy");
                int m39998b20 = C2720b.m39998b(m39997a, "backoff_delay_duration");
                int m39998b21 = C2720b.m39998b(m39997a, "period_start_time");
                int m39998b22 = C2720b.m39998b(m39997a, "minimum_retention_duration");
                int m39998b23 = C2720b.m39998b(m39997a, "schedule_requested_at");
                int m39998b24 = C2720b.m39998b(m39997a, "run_in_foreground");
                ArrayList arrayList = new ArrayList(m39997a.getCount());
                while (m39997a.moveToNext()) {
                    String string = m39997a.getString(m39998b9);
                    String string2 = m39997a.getString(m39998b11);
                    C2988b c2988b = new C2988b();
                    c2988b.f11130b = WorkTypeConverters.intToNetworkType(m39997a.getInt(m39998b));
                    c2988b.f11131c = m39997a.getInt(m39998b2) != 0;
                    c2988b.f11132d = m39997a.getInt(m39998b3) != 0;
                    c2988b.f11133e = m39997a.getInt(m39998b4) != 0;
                    c2988b.f11134f = m39997a.getInt(m39998b5) != 0;
                    c2988b.f11135g = m39997a.getLong(m39998b6);
                    c2988b.f11136h = m39997a.getLong(m39998b7);
                    c2988b.f11137i = WorkTypeConverters.byteArrayToContentUriTriggers(m39997a.getBlob(m39998b8));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b10));
                    workSpec.inputMergerClassName = m39997a.getString(m39998b12);
                    workSpec.input = C2992d.m39509a(m39997a.getBlob(m39998b13));
                    workSpec.output = C2992d.m39509a(m39997a.getBlob(m39998b14));
                    workSpec.initialDelay = m39997a.getLong(m39998b15);
                    workSpec.intervalDuration = m39997a.getLong(m39998b16);
                    workSpec.flexDuration = m39997a.getLong(m39998b17);
                    workSpec.runAttemptCount = m39997a.getInt(m39998b18);
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(m39997a.getInt(m39998b19));
                    workSpec.backoffDelayDuration = m39997a.getLong(m39998b20);
                    workSpec.periodStartTime = m39997a.getLong(m39998b21);
                    workSpec.minimumRetentionDuration = m39997a.getLong(m39998b22);
                    workSpec.scheduleRequestedAt = m39997a.getLong(m39998b23);
                    workSpec.runInForeground = m39997a.getInt(m39998b24) != 0;
                    workSpec.constraints = c2988b;
                    arrayList.add(workSpec);
                }
                m39997a.close();
                m39945a.m39946a();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m39997a.close();
                m39945a.m39946a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<C2992d> getInputsFromPrerequisites(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                arrayList.add(C2992d.m39509a(m39997a.getBlob(0)));
            }
            return arrayList;
        } finally {
            m39997a.close();
            m39945a.m39946a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec> getRecentlyCompletedWork(long j) {
        Throwable th;
        C2757k m39945a = C2757k.m39945a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC", 1);
        m39945a.mo39887a(1, j);
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            int m39998b = C2720b.m39998b(m39997a, "required_network_type");
            int m39998b2 = C2720b.m39998b(m39997a, "requires_charging");
            int m39998b3 = C2720b.m39998b(m39997a, "requires_device_idle");
            int m39998b4 = C2720b.m39998b(m39997a, "requires_battery_not_low");
            int m39998b5 = C2720b.m39998b(m39997a, "requires_storage_not_low");
            int m39998b6 = C2720b.m39998b(m39997a, "trigger_content_update_delay");
            int m39998b7 = C2720b.m39998b(m39997a, "trigger_max_content_delay");
            int m39998b8 = C2720b.m39998b(m39997a, "content_uri_triggers");
            int m39998b9 = C2720b.m39998b(m39997a, "id");
            int m39998b10 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int m39998b11 = C2720b.m39998b(m39997a, "worker_class_name");
            int m39998b12 = C2720b.m39998b(m39997a, "input_merger_class_name");
            int m39998b13 = C2720b.m39998b(m39997a, "input");
            int m39998b14 = C2720b.m39998b(m39997a, "output");
            try {
                int m39998b15 = C2720b.m39998b(m39997a, "initial_delay");
                int m39998b16 = C2720b.m39998b(m39997a, "interval_duration");
                int m39998b17 = C2720b.m39998b(m39997a, "flex_duration");
                int m39998b18 = C2720b.m39998b(m39997a, "run_attempt_count");
                int m39998b19 = C2720b.m39998b(m39997a, "backoff_policy");
                int m39998b20 = C2720b.m39998b(m39997a, "backoff_delay_duration");
                int m39998b21 = C2720b.m39998b(m39997a, "period_start_time");
                int m39998b22 = C2720b.m39998b(m39997a, "minimum_retention_duration");
                int m39998b23 = C2720b.m39998b(m39997a, "schedule_requested_at");
                int m39998b24 = C2720b.m39998b(m39997a, "run_in_foreground");
                ArrayList arrayList = new ArrayList(m39997a.getCount());
                while (m39997a.moveToNext()) {
                    String string = m39997a.getString(m39998b9);
                    String string2 = m39997a.getString(m39998b11);
                    C2988b c2988b = new C2988b();
                    c2988b.f11130b = WorkTypeConverters.intToNetworkType(m39997a.getInt(m39998b));
                    c2988b.f11131c = m39997a.getInt(m39998b2) != 0;
                    c2988b.f11132d = m39997a.getInt(m39998b3) != 0;
                    c2988b.f11133e = m39997a.getInt(m39998b4) != 0;
                    c2988b.f11134f = m39997a.getInt(m39998b5) != 0;
                    c2988b.f11135g = m39997a.getLong(m39998b6);
                    c2988b.f11136h = m39997a.getLong(m39998b7);
                    c2988b.f11137i = WorkTypeConverters.byteArrayToContentUriTriggers(m39997a.getBlob(m39998b8));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b10));
                    workSpec.inputMergerClassName = m39997a.getString(m39998b12);
                    workSpec.input = C2992d.m39509a(m39997a.getBlob(m39998b13));
                    workSpec.output = C2992d.m39509a(m39997a.getBlob(m39998b14));
                    workSpec.initialDelay = m39997a.getLong(m39998b15);
                    workSpec.intervalDuration = m39997a.getLong(m39998b16);
                    workSpec.flexDuration = m39997a.getLong(m39998b17);
                    workSpec.runAttemptCount = m39997a.getInt(m39998b18);
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(m39997a.getInt(m39998b19));
                    workSpec.backoffDelayDuration = m39997a.getLong(m39998b20);
                    workSpec.periodStartTime = m39997a.getLong(m39998b21);
                    workSpec.minimumRetentionDuration = m39997a.getLong(m39998b22);
                    workSpec.scheduleRequestedAt = m39997a.getLong(m39998b23);
                    workSpec.runInForeground = m39997a.getInt(m39998b24) != 0;
                    workSpec.constraints = c2988b;
                    arrayList.add(workSpec);
                }
                m39997a.close();
                m39945a.m39946a();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m39997a.close();
                m39945a.m39946a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec> getRunningWork() {
        Throwable th;
        int m39998b;
        int m39998b2;
        int m39998b3;
        int m39998b4;
        int m39998b5;
        int m39998b6;
        int m39998b7;
        int m39998b8;
        int m39998b9;
        int m39998b10;
        int m39998b11;
        int m39998b12;
        int m39998b13;
        int m39998b14;
        C2757k m39945a = C2757k.m39945a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=1", 0);
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            m39998b = C2720b.m39998b(m39997a, "required_network_type");
            m39998b2 = C2720b.m39998b(m39997a, "requires_charging");
            m39998b3 = C2720b.m39998b(m39997a, "requires_device_idle");
            m39998b4 = C2720b.m39998b(m39997a, "requires_battery_not_low");
            m39998b5 = C2720b.m39998b(m39997a, "requires_storage_not_low");
            m39998b6 = C2720b.m39998b(m39997a, "trigger_content_update_delay");
            m39998b7 = C2720b.m39998b(m39997a, "trigger_max_content_delay");
            m39998b8 = C2720b.m39998b(m39997a, "content_uri_triggers");
            m39998b9 = C2720b.m39998b(m39997a, "id");
            m39998b10 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            m39998b11 = C2720b.m39998b(m39997a, "worker_class_name");
            m39998b12 = C2720b.m39998b(m39997a, "input_merger_class_name");
            m39998b13 = C2720b.m39998b(m39997a, "input");
            m39998b14 = C2720b.m39998b(m39997a, "output");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int m39998b15 = C2720b.m39998b(m39997a, "initial_delay");
            int m39998b16 = C2720b.m39998b(m39997a, "interval_duration");
            int m39998b17 = C2720b.m39998b(m39997a, "flex_duration");
            int m39998b18 = C2720b.m39998b(m39997a, "run_attempt_count");
            int m39998b19 = C2720b.m39998b(m39997a, "backoff_policy");
            int m39998b20 = C2720b.m39998b(m39997a, "backoff_delay_duration");
            int m39998b21 = C2720b.m39998b(m39997a, "period_start_time");
            int m39998b22 = C2720b.m39998b(m39997a, "minimum_retention_duration");
            int m39998b23 = C2720b.m39998b(m39997a, "schedule_requested_at");
            int m39998b24 = C2720b.m39998b(m39997a, "run_in_foreground");
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                String string = m39997a.getString(m39998b9);
                String string2 = m39997a.getString(m39998b11);
                C2988b c2988b = new C2988b();
                c2988b.f11130b = WorkTypeConverters.intToNetworkType(m39997a.getInt(m39998b));
                c2988b.f11131c = m39997a.getInt(m39998b2) != 0;
                c2988b.f11132d = m39997a.getInt(m39998b3) != 0;
                c2988b.f11133e = m39997a.getInt(m39998b4) != 0;
                c2988b.f11134f = m39997a.getInt(m39998b5) != 0;
                c2988b.f11135g = m39997a.getLong(m39998b6);
                c2988b.f11136h = m39997a.getLong(m39998b7);
                c2988b.f11137i = WorkTypeConverters.byteArrayToContentUriTriggers(m39997a.getBlob(m39998b8));
                WorkSpec workSpec = new WorkSpec(string, string2);
                workSpec.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b10));
                workSpec.inputMergerClassName = m39997a.getString(m39998b12);
                workSpec.input = C2992d.m39509a(m39997a.getBlob(m39998b13));
                workSpec.output = C2992d.m39509a(m39997a.getBlob(m39998b14));
                workSpec.initialDelay = m39997a.getLong(m39998b15);
                workSpec.intervalDuration = m39997a.getLong(m39998b16);
                workSpec.flexDuration = m39997a.getLong(m39998b17);
                workSpec.runAttemptCount = m39997a.getInt(m39998b18);
                workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(m39997a.getInt(m39998b19));
                workSpec.backoffDelayDuration = m39997a.getLong(m39998b20);
                workSpec.periodStartTime = m39997a.getLong(m39998b21);
                workSpec.minimumRetentionDuration = m39997a.getLong(m39998b22);
                workSpec.scheduleRequestedAt = m39997a.getLong(m39998b23);
                workSpec.runInForeground = m39997a.getInt(m39998b24) != 0;
                workSpec.constraints = c2988b;
                arrayList.add(workSpec);
            }
            m39997a.close();
            m39945a.m39946a();
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            m39997a.close();
            m39945a.m39946a();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final LiveData<Long> getScheduleRequestedAtLiveData(String str) {
        final C2757k m39945a = C2757k.m39945a("SELECT schedule_requested_at FROM workspec WHERE id=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        return this.__db.f10419e.m39975a(new String[]{"workspec"}, false, (Callable) new Callable<Long>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.14
            /* JADX WARN: Finally extract failed */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                Cursor m39997a = C2721c.m39997a(WorkSpecDao_Impl.this.__db, m39945a, false);
                try {
                    Long valueOf = (!m39997a.moveToFirst() || m39997a.isNull(0)) ? null : Long.valueOf(m39997a.getLong(0));
                    m39997a.close();
                    return valueOf;
                } catch (Throwable th) {
                    m39997a.close();
                    throw th;
                }
            }

            protected void finalize() {
                m39945a.m39946a();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec> getScheduledWork() {
        Throwable th;
        int m39998b;
        int m39998b2;
        int m39998b3;
        int m39998b4;
        int m39998b5;
        int m39998b6;
        int m39998b7;
        int m39998b8;
        int m39998b9;
        int m39998b10;
        int m39998b11;
        int m39998b12;
        int m39998b13;
        int m39998b14;
        C2757k m39945a = C2757k.m39945a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            m39998b = C2720b.m39998b(m39997a, "required_network_type");
            m39998b2 = C2720b.m39998b(m39997a, "requires_charging");
            m39998b3 = C2720b.m39998b(m39997a, "requires_device_idle");
            m39998b4 = C2720b.m39998b(m39997a, "requires_battery_not_low");
            m39998b5 = C2720b.m39998b(m39997a, "requires_storage_not_low");
            m39998b6 = C2720b.m39998b(m39997a, "trigger_content_update_delay");
            m39998b7 = C2720b.m39998b(m39997a, "trigger_max_content_delay");
            m39998b8 = C2720b.m39998b(m39997a, "content_uri_triggers");
            m39998b9 = C2720b.m39998b(m39997a, "id");
            m39998b10 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            m39998b11 = C2720b.m39998b(m39997a, "worker_class_name");
            m39998b12 = C2720b.m39998b(m39997a, "input_merger_class_name");
            m39998b13 = C2720b.m39998b(m39997a, "input");
            m39998b14 = C2720b.m39998b(m39997a, "output");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int m39998b15 = C2720b.m39998b(m39997a, "initial_delay");
            int m39998b16 = C2720b.m39998b(m39997a, "interval_duration");
            int m39998b17 = C2720b.m39998b(m39997a, "flex_duration");
            int m39998b18 = C2720b.m39998b(m39997a, "run_attempt_count");
            int m39998b19 = C2720b.m39998b(m39997a, "backoff_policy");
            int m39998b20 = C2720b.m39998b(m39997a, "backoff_delay_duration");
            int m39998b21 = C2720b.m39998b(m39997a, "period_start_time");
            int m39998b22 = C2720b.m39998b(m39997a, "minimum_retention_duration");
            int m39998b23 = C2720b.m39998b(m39997a, "schedule_requested_at");
            int m39998b24 = C2720b.m39998b(m39997a, "run_in_foreground");
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                String string = m39997a.getString(m39998b9);
                String string2 = m39997a.getString(m39998b11);
                C2988b c2988b = new C2988b();
                c2988b.f11130b = WorkTypeConverters.intToNetworkType(m39997a.getInt(m39998b));
                c2988b.f11131c = m39997a.getInt(m39998b2) != 0;
                c2988b.f11132d = m39997a.getInt(m39998b3) != 0;
                c2988b.f11133e = m39997a.getInt(m39998b4) != 0;
                c2988b.f11134f = m39997a.getInt(m39998b5) != 0;
                c2988b.f11135g = m39997a.getLong(m39998b6);
                c2988b.f11136h = m39997a.getLong(m39998b7);
                c2988b.f11137i = WorkTypeConverters.byteArrayToContentUriTriggers(m39997a.getBlob(m39998b8));
                WorkSpec workSpec = new WorkSpec(string, string2);
                workSpec.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b10));
                workSpec.inputMergerClassName = m39997a.getString(m39998b12);
                workSpec.input = C2992d.m39509a(m39997a.getBlob(m39998b13));
                workSpec.output = C2992d.m39509a(m39997a.getBlob(m39998b14));
                workSpec.initialDelay = m39997a.getLong(m39998b15);
                workSpec.intervalDuration = m39997a.getLong(m39998b16);
                workSpec.flexDuration = m39997a.getLong(m39998b17);
                workSpec.runAttemptCount = m39997a.getInt(m39998b18);
                workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(m39997a.getInt(m39998b19));
                workSpec.backoffDelayDuration = m39997a.getLong(m39998b20);
                workSpec.periodStartTime = m39997a.getLong(m39998b21);
                workSpec.minimumRetentionDuration = m39997a.getLong(m39998b22);
                workSpec.scheduleRequestedAt = m39997a.getLong(m39998b23);
                workSpec.runInForeground = m39997a.getInt(m39998b24) != 0;
                workSpec.constraints = c2988b;
                arrayList.add(workSpec);
            }
            m39997a.close();
            m39945a.m39946a();
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            m39997a.close();
            m39945a.m39946a();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.model.WorkSpecDao
    public final C3163t.EnumC3164a getState(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            C3163t.EnumC3164a intToState = m39997a.moveToFirst() ? WorkTypeConverters.intToState(m39997a.getInt(0)) : null;
            m39997a.close();
            m39945a.m39946a();
            return intToState;
        } catch (Throwable th) {
            m39997a.close();
            m39945a.m39946a();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<String> getUnfinishedWorkWithName(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                arrayList.add(m39997a.getString(0));
            }
            return arrayList;
        } finally {
            m39997a.close();
            m39945a.m39946a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<String> getUnfinishedWorkWithTag(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                arrayList.add(m39997a.getString(0));
            }
            return arrayList;
        } finally {
            m39997a.close();
            m39945a.m39946a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final WorkSpec getWorkSpec(String str) {
        Throwable th;
        WorkSpec workSpec;
        C2757k m39945a = C2757k.m39945a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE id=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            int m39998b = C2720b.m39998b(m39997a, "required_network_type");
            int m39998b2 = C2720b.m39998b(m39997a, "requires_charging");
            int m39998b3 = C2720b.m39998b(m39997a, "requires_device_idle");
            int m39998b4 = C2720b.m39998b(m39997a, "requires_battery_not_low");
            int m39998b5 = C2720b.m39998b(m39997a, "requires_storage_not_low");
            int m39998b6 = C2720b.m39998b(m39997a, "trigger_content_update_delay");
            int m39998b7 = C2720b.m39998b(m39997a, "trigger_max_content_delay");
            int m39998b8 = C2720b.m39998b(m39997a, "content_uri_triggers");
            int m39998b9 = C2720b.m39998b(m39997a, "id");
            int m39998b10 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int m39998b11 = C2720b.m39998b(m39997a, "worker_class_name");
            int m39998b12 = C2720b.m39998b(m39997a, "input_merger_class_name");
            int m39998b13 = C2720b.m39998b(m39997a, "input");
            int m39998b14 = C2720b.m39998b(m39997a, "output");
            try {
                int m39998b15 = C2720b.m39998b(m39997a, "initial_delay");
                int m39998b16 = C2720b.m39998b(m39997a, "interval_duration");
                int m39998b17 = C2720b.m39998b(m39997a, "flex_duration");
                int m39998b18 = C2720b.m39998b(m39997a, "run_attempt_count");
                int m39998b19 = C2720b.m39998b(m39997a, "backoff_policy");
                int m39998b20 = C2720b.m39998b(m39997a, "backoff_delay_duration");
                int m39998b21 = C2720b.m39998b(m39997a, "period_start_time");
                int m39998b22 = C2720b.m39998b(m39997a, "minimum_retention_duration");
                int m39998b23 = C2720b.m39998b(m39997a, "schedule_requested_at");
                int m39998b24 = C2720b.m39998b(m39997a, "run_in_foreground");
                if (m39997a.moveToFirst()) {
                    String string = m39997a.getString(m39998b9);
                    String string2 = m39997a.getString(m39998b11);
                    C2988b c2988b = new C2988b();
                    c2988b.f11130b = WorkTypeConverters.intToNetworkType(m39997a.getInt(m39998b));
                    c2988b.f11131c = m39997a.getInt(m39998b2) != 0;
                    c2988b.f11132d = m39997a.getInt(m39998b3) != 0;
                    c2988b.f11133e = m39997a.getInt(m39998b4) != 0;
                    c2988b.f11134f = m39997a.getInt(m39998b5) != 0;
                    c2988b.f11135g = m39997a.getLong(m39998b6);
                    c2988b.f11136h = m39997a.getLong(m39998b7);
                    c2988b.f11137i = WorkTypeConverters.byteArrayToContentUriTriggers(m39997a.getBlob(m39998b8));
                    workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b10));
                    workSpec.inputMergerClassName = m39997a.getString(m39998b12);
                    workSpec.input = C2992d.m39509a(m39997a.getBlob(m39998b13));
                    workSpec.output = C2992d.m39509a(m39997a.getBlob(m39998b14));
                    workSpec.initialDelay = m39997a.getLong(m39998b15);
                    workSpec.intervalDuration = m39997a.getLong(m39998b16);
                    workSpec.flexDuration = m39997a.getLong(m39998b17);
                    workSpec.runAttemptCount = m39997a.getInt(m39998b18);
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(m39997a.getInt(m39998b19));
                    workSpec.backoffDelayDuration = m39997a.getLong(m39998b20);
                    workSpec.periodStartTime = m39997a.getLong(m39998b21);
                    workSpec.minimumRetentionDuration = m39997a.getLong(m39998b22);
                    workSpec.scheduleRequestedAt = m39997a.getLong(m39998b23);
                    workSpec.runInForeground = m39997a.getInt(m39998b24) != 0;
                    workSpec.constraints = c2988b;
                } else {
                    workSpec = null;
                }
                m39997a.close();
                m39945a.m39946a();
                return workSpec;
            } catch (Throwable th2) {
                th = th2;
                m39997a.close();
                m39945a.m39946a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            int m39998b = C2720b.m39998b(m39997a, "id");
            int m39998b2 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                WorkSpec.IdAndState idAndState = new WorkSpec.IdAndState();
                idAndState.f11398id = m39997a.getString(m39998b);
                idAndState.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b2));
                arrayList.add(idAndState);
            }
            return arrayList;
        } finally {
            m39997a.close();
            m39945a.m39946a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final WorkSpec[] getWorkSpecs(List<String> list) {
        Throwable th;
        StringBuilder m39994a = C2723e.m39994a();
        m39994a.append("SELECT ");
        m39994a.append("*");
        m39994a.append(" FROM workspec WHERE id IN (");
        int size = list.size();
        C2723e.m39993a(m39994a, size);
        m39994a.append(")");
        C2757k m39945a = C2757k.m39945a(m39994a.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                m39945a.f10456e[i] = 1;
            } else {
                m39945a.mo39886a(i, str);
            }
            i++;
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            int m39998b = C2720b.m39998b(m39997a, "required_network_type");
            int m39998b2 = C2720b.m39998b(m39997a, "requires_charging");
            int m39998b3 = C2720b.m39998b(m39997a, "requires_device_idle");
            int m39998b4 = C2720b.m39998b(m39997a, "requires_battery_not_low");
            int m39998b5 = C2720b.m39998b(m39997a, "requires_storage_not_low");
            int m39998b6 = C2720b.m39998b(m39997a, "trigger_content_update_delay");
            int m39998b7 = C2720b.m39998b(m39997a, "trigger_max_content_delay");
            int m39998b8 = C2720b.m39998b(m39997a, "content_uri_triggers");
            int m39998b9 = C2720b.m39998b(m39997a, "id");
            int m39998b10 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int m39998b11 = C2720b.m39998b(m39997a, "worker_class_name");
            int m39998b12 = C2720b.m39998b(m39997a, "input_merger_class_name");
            int m39998b13 = C2720b.m39998b(m39997a, "input");
            int m39998b14 = C2720b.m39998b(m39997a, "output");
            try {
                int m39998b15 = C2720b.m39998b(m39997a, "initial_delay");
                int m39998b16 = C2720b.m39998b(m39997a, "interval_duration");
                int m39998b17 = C2720b.m39998b(m39997a, "flex_duration");
                int m39998b18 = C2720b.m39998b(m39997a, "run_attempt_count");
                int m39998b19 = C2720b.m39998b(m39997a, "backoff_policy");
                int m39998b20 = C2720b.m39998b(m39997a, "backoff_delay_duration");
                int m39998b21 = C2720b.m39998b(m39997a, "period_start_time");
                int m39998b22 = C2720b.m39998b(m39997a, "minimum_retention_duration");
                int m39998b23 = C2720b.m39998b(m39997a, "schedule_requested_at");
                int m39998b24 = C2720b.m39998b(m39997a, "run_in_foreground");
                WorkSpec[] workSpecArr = new WorkSpec[m39997a.getCount()];
                int i2 = 0;
                while (m39997a.moveToNext()) {
                    String string = m39997a.getString(m39998b9);
                    String string2 = m39997a.getString(m39998b11);
                    C2988b c2988b = new C2988b();
                    c2988b.f11130b = WorkTypeConverters.intToNetworkType(m39997a.getInt(m39998b));
                    c2988b.f11131c = m39997a.getInt(m39998b2) != 0;
                    c2988b.f11132d = m39997a.getInt(m39998b3) != 0;
                    c2988b.f11133e = m39997a.getInt(m39998b4) != 0;
                    c2988b.f11134f = m39997a.getInt(m39998b5) != 0;
                    c2988b.f11135g = m39997a.getLong(m39998b6);
                    c2988b.f11136h = m39997a.getLong(m39998b7);
                    c2988b.f11137i = WorkTypeConverters.byteArrayToContentUriTriggers(m39997a.getBlob(m39998b8));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b10));
                    workSpec.inputMergerClassName = m39997a.getString(m39998b12);
                    workSpec.input = C2992d.m39509a(m39997a.getBlob(m39998b13));
                    workSpec.output = C2992d.m39509a(m39997a.getBlob(m39998b14));
                    workSpec.initialDelay = m39997a.getLong(m39998b15);
                    workSpec.intervalDuration = m39997a.getLong(m39998b16);
                    workSpec.flexDuration = m39997a.getLong(m39998b17);
                    workSpec.runAttemptCount = m39997a.getInt(m39998b18);
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(m39997a.getInt(m39998b19));
                    workSpec.backoffDelayDuration = m39997a.getLong(m39998b20);
                    workSpec.periodStartTime = m39997a.getLong(m39998b21);
                    workSpec.minimumRetentionDuration = m39997a.getLong(m39998b22);
                    workSpec.scheduleRequestedAt = m39997a.getLong(m39998b23);
                    workSpec.runInForeground = m39997a.getInt(m39998b24) != 0;
                    workSpec.constraints = c2988b;
                    workSpecArr[i2] = workSpec;
                    i2++;
                }
                m39997a.close();
                m39945a.m39946a();
                return workSpecArr;
            } catch (Throwable th2) {
                th = th2;
                m39997a.close();
                m39945a.m39946a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.model.WorkSpecDao
    public final WorkSpec.WorkInfoPojo getWorkStatusPojoForId(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        this.__db.m39959e();
        try {
            Cursor m39997a = C2721c.m39997a(this.__db, m39945a, true);
            int m39998b = C2720b.m39998b(m39997a, "id");
            int m39998b2 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int m39998b3 = C2720b.m39998b(m39997a, "output");
            int m39998b4 = C2720b.m39998b(m39997a, "run_attempt_count");
            C0428a<String, ArrayList<String>> c0428a = new C0428a<>();
            C0428a<String, ArrayList<C2992d>> c0428a2 = new C0428a<>();
            while (m39997a.moveToNext()) {
                if (!m39997a.isNull(m39998b)) {
                    String string = m39997a.getString(m39998b);
                    if (c0428a.get(string) == null) {
                        c0428a.put(string, new ArrayList<>());
                    }
                }
                if (!m39997a.isNull(m39998b)) {
                    String string2 = m39997a.getString(m39998b);
                    if (c0428a2.get(string2) == null) {
                        c0428a2.put(string2, new ArrayList<>());
                    }
                }
            }
            m39997a.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(c0428a);
            __fetchRelationshipWorkProgressAsandroidxWorkData(c0428a2);
            WorkSpec.WorkInfoPojo workInfoPojo = null;
            if (m39997a.moveToFirst()) {
                ArrayList<String> arrayList = !m39997a.isNull(m39998b) ? c0428a.get(m39997a.getString(m39998b)) : null;
                ArrayList<String> arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList<>();
                }
                ArrayList<C2992d> arrayList3 = null;
                if (!m39997a.isNull(m39998b)) {
                    arrayList3 = c0428a2.get(m39997a.getString(m39998b));
                }
                ArrayList<C2992d> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>();
                }
                workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.f11399id = m39997a.getString(m39998b);
                workInfoPojo.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b2));
                workInfoPojo.output = C2992d.m39509a(m39997a.getBlob(m39998b3));
                workInfoPojo.runAttemptCount = m39997a.getInt(m39998b4);
                workInfoPojo.tags = arrayList2;
                workInfoPojo.progress = arrayList4;
            }
            this.__db.m39957g();
            m39997a.close();
            m39945a.m39946a();
            this.__db.m39958f();
            return workInfoPojo;
        } catch (Throwable th) {
            this.__db.m39958f();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(List<String> list) {
        StringBuilder m39994a = C2723e.m39994a();
        m39994a.append("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (");
        int size = list.size();
        C2723e.m39993a(m39994a, size);
        m39994a.append(")");
        C2757k m39945a = C2757k.m39945a(m39994a.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                m39945a.f10456e[i] = 1;
            } else {
                m39945a.mo39886a(i, str);
            }
            i++;
        }
        this.__db.m39960d();
        this.__db.m39959e();
        try {
            Cursor m39997a = C2721c.m39997a(this.__db, m39945a, true);
            int m39998b = C2720b.m39998b(m39997a, "id");
            int m39998b2 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int m39998b3 = C2720b.m39998b(m39997a, "output");
            int m39998b4 = C2720b.m39998b(m39997a, "run_attempt_count");
            C0428a<String, ArrayList<String>> c0428a = new C0428a<>();
            C0428a<String, ArrayList<C2992d>> c0428a2 = new C0428a<>();
            while (m39997a.moveToNext()) {
                if (!m39997a.isNull(m39998b)) {
                    String string = m39997a.getString(m39998b);
                    if (c0428a.get(string) == null) {
                        c0428a.put(string, new ArrayList<>());
                    }
                }
                if (!m39997a.isNull(m39998b)) {
                    String string2 = m39997a.getString(m39998b);
                    if (c0428a2.get(string2) == null) {
                        c0428a2.put(string2, new ArrayList<>());
                    }
                }
            }
            m39997a.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(c0428a);
            __fetchRelationshipWorkProgressAsandroidxWorkData(c0428a2);
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                ArrayList<String> arrayList2 = !m39997a.isNull(m39998b) ? c0428a.get(m39997a.getString(m39998b)) : null;
                ArrayList<String> arrayList3 = arrayList2;
                if (arrayList2 == null) {
                    arrayList3 = new ArrayList<>();
                }
                ArrayList<C2992d> arrayList4 = null;
                if (!m39997a.isNull(m39998b)) {
                    arrayList4 = c0428a2.get(m39997a.getString(m39998b));
                }
                ArrayList<C2992d> arrayList5 = arrayList4;
                if (arrayList4 == null) {
                    arrayList5 = new ArrayList<>();
                }
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.f11399id = m39997a.getString(m39998b);
                workInfoPojo.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b2));
                workInfoPojo.output = C2992d.m39509a(m39997a.getBlob(m39998b3));
                workInfoPojo.runAttemptCount = m39997a.getInt(m39998b4);
                workInfoPojo.tags = arrayList3;
                workInfoPojo.progress = arrayList5;
                arrayList.add(workInfoPojo);
            }
            this.__db.m39957g();
            m39997a.close();
            m39945a.m39946a();
            return arrayList;
        } finally {
            this.__db.m39958f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        this.__db.m39959e();
        try {
            Cursor m39997a = C2721c.m39997a(this.__db, m39945a, true);
            int m39998b = C2720b.m39998b(m39997a, "id");
            int m39998b2 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int m39998b3 = C2720b.m39998b(m39997a, "output");
            int m39998b4 = C2720b.m39998b(m39997a, "run_attempt_count");
            C0428a<String, ArrayList<String>> c0428a = new C0428a<>();
            C0428a<String, ArrayList<C2992d>> c0428a2 = new C0428a<>();
            while (m39997a.moveToNext()) {
                if (!m39997a.isNull(m39998b)) {
                    String string = m39997a.getString(m39998b);
                    if (c0428a.get(string) == null) {
                        c0428a.put(string, new ArrayList<>());
                    }
                }
                if (!m39997a.isNull(m39998b)) {
                    String string2 = m39997a.getString(m39998b);
                    if (c0428a2.get(string2) == null) {
                        c0428a2.put(string2, new ArrayList<>());
                    }
                }
            }
            m39997a.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(c0428a);
            __fetchRelationshipWorkProgressAsandroidxWorkData(c0428a2);
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                ArrayList<String> arrayList2 = !m39997a.isNull(m39998b) ? c0428a.get(m39997a.getString(m39998b)) : null;
                ArrayList<String> arrayList3 = arrayList2;
                if (arrayList2 == null) {
                    arrayList3 = new ArrayList<>();
                }
                ArrayList<C2992d> arrayList4 = null;
                if (!m39997a.isNull(m39998b)) {
                    arrayList4 = c0428a2.get(m39997a.getString(m39998b));
                }
                ArrayList<C2992d> arrayList5 = arrayList4;
                if (arrayList4 == null) {
                    arrayList5 = new ArrayList<>();
                }
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.f11399id = m39997a.getString(m39998b);
                workInfoPojo.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b2));
                workInfoPojo.output = C2992d.m39509a(m39997a.getBlob(m39998b3));
                workInfoPojo.runAttemptCount = m39997a.getInt(m39998b4);
                workInfoPojo.tags = arrayList3;
                workInfoPojo.progress = arrayList5;
                arrayList.add(workInfoPojo);
            }
            this.__db.m39957g();
            m39997a.close();
            m39945a.m39946a();
            return arrayList;
        } finally {
            this.__db.m39958f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        this.__db.m39959e();
        try {
            Cursor m39997a = C2721c.m39997a(this.__db, m39945a, true);
            int m39998b = C2720b.m39998b(m39997a, "id");
            int m39998b2 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int m39998b3 = C2720b.m39998b(m39997a, "output");
            int m39998b4 = C2720b.m39998b(m39997a, "run_attempt_count");
            C0428a<String, ArrayList<String>> c0428a = new C0428a<>();
            C0428a<String, ArrayList<C2992d>> c0428a2 = new C0428a<>();
            while (m39997a.moveToNext()) {
                if (!m39997a.isNull(m39998b)) {
                    String string = m39997a.getString(m39998b);
                    if (c0428a.get(string) == null) {
                        c0428a.put(string, new ArrayList<>());
                    }
                }
                if (!m39997a.isNull(m39998b)) {
                    String string2 = m39997a.getString(m39998b);
                    if (c0428a2.get(string2) == null) {
                        c0428a2.put(string2, new ArrayList<>());
                    }
                }
            }
            m39997a.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(c0428a);
            __fetchRelationshipWorkProgressAsandroidxWorkData(c0428a2);
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                ArrayList<String> arrayList2 = !m39997a.isNull(m39998b) ? c0428a.get(m39997a.getString(m39998b)) : null;
                ArrayList<String> arrayList3 = arrayList2;
                if (arrayList2 == null) {
                    arrayList3 = new ArrayList<>();
                }
                ArrayList<C2992d> arrayList4 = null;
                if (!m39997a.isNull(m39998b)) {
                    arrayList4 = c0428a2.get(m39997a.getString(m39998b));
                }
                ArrayList<C2992d> arrayList5 = arrayList4;
                if (arrayList4 == null) {
                    arrayList5 = new ArrayList<>();
                }
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.f11399id = m39997a.getString(m39998b);
                workInfoPojo.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b2));
                workInfoPojo.output = C2992d.m39509a(m39997a.getBlob(m39998b3));
                workInfoPojo.runAttemptCount = m39997a.getInt(m39998b4);
                workInfoPojo.tags = arrayList3;
                workInfoPojo.progress = arrayList5;
                arrayList.add(workInfoPojo);
            }
            this.__db.m39957g();
            m39997a.close();
            m39945a.m39946a();
            return arrayList;
        } finally {
            this.__db.m39958f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(List<String> list) {
        StringBuilder m39994a = C2723e.m39994a();
        m39994a.append("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (");
        int size = list.size();
        C2723e.m39993a(m39994a, size);
        m39994a.append(")");
        final C2757k m39945a = C2757k.m39945a(m39994a.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                m39945a.f10456e[i] = 1;
            } else {
                m39945a.mo39886a(i, str);
            }
            i++;
        }
        return this.__db.f10419e.m39975a(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.11
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.m39959e();
                try {
                    Cursor m39997a = C2721c.m39997a(WorkSpecDao_Impl.this.__db, m39945a, true);
                    int m39998b = C2720b.m39998b(m39997a, "id");
                    int m39998b2 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
                    int m39998b3 = C2720b.m39998b(m39997a, "output");
                    int m39998b4 = C2720b.m39998b(m39997a, "run_attempt_count");
                    C0428a c0428a = new C0428a();
                    C0428a c0428a2 = new C0428a();
                    while (m39997a.moveToNext()) {
                        if (!m39997a.isNull(m39998b)) {
                            String string = m39997a.getString(m39998b);
                            if (((ArrayList) c0428a.get(string)) == null) {
                                c0428a.put(string, new ArrayList());
                            }
                        }
                        if (!m39997a.isNull(m39998b)) {
                            String string2 = m39997a.getString(m39998b);
                            if (((ArrayList) c0428a2.get(string2)) == null) {
                                c0428a2.put(string2, new ArrayList());
                            }
                        }
                    }
                    m39997a.moveToPosition(-1);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(c0428a);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(c0428a2);
                    ArrayList arrayList = new ArrayList(m39997a.getCount());
                    while (m39997a.moveToNext()) {
                        ArrayList arrayList2 = !m39997a.isNull(m39998b) ? (ArrayList) c0428a.get(m39997a.getString(m39998b)) : null;
                        ArrayList arrayList3 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList3 = new ArrayList();
                        }
                        ArrayList arrayList4 = null;
                        if (!m39997a.isNull(m39998b)) {
                            arrayList4 = (ArrayList) c0428a2.get(m39997a.getString(m39998b));
                        }
                        ArrayList arrayList5 = arrayList4;
                        if (arrayList4 == null) {
                            arrayList5 = new ArrayList();
                        }
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        workInfoPojo.f11399id = m39997a.getString(m39998b);
                        workInfoPojo.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b2));
                        workInfoPojo.output = C2992d.m39509a(m39997a.getBlob(m39998b3));
                        workInfoPojo.runAttemptCount = m39997a.getInt(m39998b4);
                        workInfoPojo.tags = arrayList3;
                        workInfoPojo.progress = arrayList5;
                        arrayList.add(workInfoPojo);
                    }
                    WorkSpecDao_Impl.this.__db.m39957g();
                    m39997a.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.m39958f();
                }
            }

            protected void finalize() {
                m39945a.m39946a();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(String str) {
        final C2757k m39945a = C2757k.m39945a("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        return this.__db.f10419e.m39975a(new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, true, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.13
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.m39959e();
                try {
                    Cursor m39997a = C2721c.m39997a(WorkSpecDao_Impl.this.__db, m39945a, true);
                    int m39998b = C2720b.m39998b(m39997a, "id");
                    int m39998b2 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
                    int m39998b3 = C2720b.m39998b(m39997a, "output");
                    int m39998b4 = C2720b.m39998b(m39997a, "run_attempt_count");
                    C0428a c0428a = new C0428a();
                    C0428a c0428a2 = new C0428a();
                    while (m39997a.moveToNext()) {
                        if (!m39997a.isNull(m39998b)) {
                            String string = m39997a.getString(m39998b);
                            if (((ArrayList) c0428a.get(string)) == null) {
                                c0428a.put(string, new ArrayList());
                            }
                        }
                        if (!m39997a.isNull(m39998b)) {
                            String string2 = m39997a.getString(m39998b);
                            if (((ArrayList) c0428a2.get(string2)) == null) {
                                c0428a2.put(string2, new ArrayList());
                            }
                        }
                    }
                    m39997a.moveToPosition(-1);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(c0428a);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(c0428a2);
                    ArrayList arrayList = new ArrayList(m39997a.getCount());
                    while (m39997a.moveToNext()) {
                        ArrayList arrayList2 = !m39997a.isNull(m39998b) ? (ArrayList) c0428a.get(m39997a.getString(m39998b)) : null;
                        ArrayList arrayList3 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList3 = new ArrayList();
                        }
                        ArrayList arrayList4 = null;
                        if (!m39997a.isNull(m39998b)) {
                            arrayList4 = (ArrayList) c0428a2.get(m39997a.getString(m39998b));
                        }
                        ArrayList arrayList5 = arrayList4;
                        if (arrayList4 == null) {
                            arrayList5 = new ArrayList();
                        }
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        workInfoPojo.f11399id = m39997a.getString(m39998b);
                        workInfoPojo.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b2));
                        workInfoPojo.output = C2992d.m39509a(m39997a.getBlob(m39998b3));
                        workInfoPojo.runAttemptCount = m39997a.getInt(m39998b4);
                        workInfoPojo.tags = arrayList3;
                        workInfoPojo.progress = arrayList5;
                        arrayList.add(workInfoPojo);
                    }
                    WorkSpecDao_Impl.this.__db.m39957g();
                    m39997a.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.m39958f();
                }
            }

            protected void finalize() {
                m39945a.m39946a();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(String str) {
        final C2757k m39945a = C2757k.m39945a("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        return this.__db.f10419e.m39975a(new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, true, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.12
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.m39959e();
                try {
                    Cursor m39997a = C2721c.m39997a(WorkSpecDao_Impl.this.__db, m39945a, true);
                    int m39998b = C2720b.m39998b(m39997a, "id");
                    int m39998b2 = C2720b.m39998b(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
                    int m39998b3 = C2720b.m39998b(m39997a, "output");
                    int m39998b4 = C2720b.m39998b(m39997a, "run_attempt_count");
                    C0428a c0428a = new C0428a();
                    C0428a c0428a2 = new C0428a();
                    while (m39997a.moveToNext()) {
                        if (!m39997a.isNull(m39998b)) {
                            String string = m39997a.getString(m39998b);
                            if (((ArrayList) c0428a.get(string)) == null) {
                                c0428a.put(string, new ArrayList());
                            }
                        }
                        if (!m39997a.isNull(m39998b)) {
                            String string2 = m39997a.getString(m39998b);
                            if (((ArrayList) c0428a2.get(string2)) == null) {
                                c0428a2.put(string2, new ArrayList());
                            }
                        }
                    }
                    m39997a.moveToPosition(-1);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(c0428a);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(c0428a2);
                    ArrayList arrayList = new ArrayList(m39997a.getCount());
                    while (m39997a.moveToNext()) {
                        ArrayList arrayList2 = !m39997a.isNull(m39998b) ? (ArrayList) c0428a.get(m39997a.getString(m39998b)) : null;
                        ArrayList arrayList3 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList3 = new ArrayList();
                        }
                        ArrayList arrayList4 = null;
                        if (!m39997a.isNull(m39998b)) {
                            arrayList4 = (ArrayList) c0428a2.get(m39997a.getString(m39998b));
                        }
                        ArrayList arrayList5 = arrayList4;
                        if (arrayList4 == null) {
                            arrayList5 = new ArrayList();
                        }
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        workInfoPojo.f11399id = m39997a.getString(m39998b);
                        workInfoPojo.state = WorkTypeConverters.intToState(m39997a.getInt(m39998b2));
                        workInfoPojo.output = C2992d.m39509a(m39997a.getBlob(m39998b3));
                        workInfoPojo.runAttemptCount = m39997a.getInt(m39998b4);
                        workInfoPojo.tags = arrayList3;
                        workInfoPojo.progress = arrayList5;
                        arrayList.add(workInfoPojo);
                    }
                    WorkSpecDao_Impl.this.__db.m39957g();
                    m39997a.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.m39958f();
                }
            }

            protected void finalize() {
                m39945a.m39946a();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int incrementWorkSpecRunAttemptCount(String str) {
        this.__db.m39960d();
        AbstractC2795e acquire = this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.acquire();
        if (str == null) {
            acquire.mo39889a(1);
        } else {
            acquire.mo39886a(1, str);
        }
        this.__db.m39959e();
        try {
            int mo39882a = acquire.mo39882a();
            this.__db.m39957g();
            return mo39882a;
        } finally {
            this.__db.m39958f();
            this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void insertWorkSpec(WorkSpec workSpec) {
        this.__db.m39960d();
        this.__db.m39959e();
        try {
            this.__insertionAdapterOfWorkSpec.insert((AbstractC2714a<WorkSpec>) workSpec);
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int markWorkSpecScheduled(String str, long j) {
        this.__db.m39960d();
        AbstractC2795e acquire = this.__preparedStmtOfMarkWorkSpecScheduled.acquire();
        acquire.mo39887a(1, j);
        if (str == null) {
            acquire.mo39889a(2);
        } else {
            acquire.mo39886a(2, str);
        }
        this.__db.m39959e();
        try {
            int mo39882a = acquire.mo39882a();
            this.__db.m39957g();
            return mo39882a;
        } finally {
            this.__db.m39958f();
            this.__preparedStmtOfMarkWorkSpecScheduled.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast() {
        this.__db.m39960d();
        AbstractC2795e acquire = this.f11400xd91a9514.acquire();
        this.__db.m39959e();
        try {
            acquire.mo39882a();
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
            this.f11400xd91a9514.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int resetScheduledState() {
        this.__db.m39960d();
        AbstractC2795e acquire = this.__preparedStmtOfResetScheduledState.acquire();
        this.__db.m39959e();
        try {
            int mo39882a = acquire.mo39882a();
            this.__db.m39957g();
            return mo39882a;
        } finally {
            this.__db.m39958f();
            this.__preparedStmtOfResetScheduledState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int resetWorkSpecRunAttemptCount(String str) {
        this.__db.m39960d();
        AbstractC2795e acquire = this.__preparedStmtOfResetWorkSpecRunAttemptCount.acquire();
        if (str == null) {
            acquire.mo39889a(1);
        } else {
            acquire.mo39886a(1, str);
        }
        this.__db.m39959e();
        try {
            int mo39882a = acquire.mo39882a();
            this.__db.m39957g();
            return mo39882a;
        } finally {
            this.__db.m39958f();
            this.__preparedStmtOfResetWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void setOutput(String str, C2992d c2992d) {
        this.__db.m39960d();
        AbstractC2795e acquire = this.__preparedStmtOfSetOutput.acquire();
        byte[] m39513a = C2992d.m39513a(c2992d);
        if (m39513a == null) {
            acquire.mo39889a(1);
        } else {
            acquire.mo39885a(1, m39513a);
        }
        if (str == null) {
            acquire.mo39889a(2);
        } else {
            acquire.mo39886a(2, str);
        }
        this.__db.m39959e();
        try {
            acquire.mo39882a();
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
            this.__preparedStmtOfSetOutput.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void setPeriodStartTime(String str, long j) {
        this.__db.m39960d();
        AbstractC2795e acquire = this.__preparedStmtOfSetPeriodStartTime.acquire();
        acquire.mo39887a(1, j);
        if (str == null) {
            acquire.mo39889a(2);
        } else {
            acquire.mo39886a(2, str);
        }
        this.__db.m39959e();
        try {
            acquire.mo39882a();
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
            this.__preparedStmtOfSetPeriodStartTime.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int setState(C3163t.EnumC3164a enumC3164a, String... strArr) {
        this.__db.m39960d();
        StringBuilder m39994a = C2723e.m39994a();
        m39994a.append("UPDATE workspec SET state=");
        m39994a.append("?");
        m39994a.append(" WHERE id IN (");
        C2723e.m39993a(m39994a, strArr.length);
        m39994a.append(")");
        AbstractC2795e m39963a = this.__db.m39963a(m39994a.toString());
        m39963a.mo39887a(1, WorkTypeConverters.stateToInt(enumC3164a));
        int i = 2;
        for (String str : strArr) {
            if (str == null) {
                m39963a.mo39889a(i);
            } else {
                m39963a.mo39886a(i, str);
            }
            i++;
        }
        this.__db.m39959e();
        try {
            int mo39882a = m39963a.mo39882a();
            this.__db.m39957g();
            return mo39882a;
        } finally {
            this.__db.m39958f();
        }
    }
}
