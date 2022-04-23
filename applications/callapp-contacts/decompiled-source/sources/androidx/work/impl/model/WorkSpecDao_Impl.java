package androidx.work.impl.model;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.a;
import androidx.room.b.c;
import androidx.room.h;
import androidx.room.k;
import androidx.room.o;
import androidx.sqlite.db.e;
import androidx.work.b;
import androidx.work.d;
import androidx.work.impl.model.WorkSpec;
import androidx.work.t;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpecDao_Impl.class */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    private final h __db;
    private final a<WorkSpec> __insertionAdapterOfWorkSpec;
    private final o __preparedStmtOfDelete;
    private final o __preparedStmtOfIncrementWorkSpecRunAttemptCount;
    private final o __preparedStmtOfMarkWorkSpecScheduled;
    private final o __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast;
    private final o __preparedStmtOfResetScheduledState;
    private final o __preparedStmtOfResetWorkSpecRunAttemptCount;
    private final o __preparedStmtOfSetOutput;
    private final o __preparedStmtOfSetPeriodStartTime;

    public WorkSpecDao_Impl(h hVar) {
        this.__db = hVar;
        this.__insertionAdapterOfWorkSpec = new a<WorkSpec>(hVar) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            public void bind(e eVar, WorkSpec workSpec) {
                if (workSpec.id == null) {
                    eVar.a(1);
                } else {
                    eVar.a(1, workSpec.id);
                }
                eVar.a(2, WorkTypeConverters.stateToInt(workSpec.state));
                if (workSpec.workerClassName == null) {
                    eVar.a(3);
                } else {
                    eVar.a(3, workSpec.workerClassName);
                }
                if (workSpec.inputMergerClassName == null) {
                    eVar.a(4);
                } else {
                    eVar.a(4, workSpec.inputMergerClassName);
                }
                byte[] a2 = d.a(workSpec.input);
                if (a2 == null) {
                    eVar.a(5);
                } else {
                    eVar.a(5, a2);
                }
                byte[] a3 = d.a(workSpec.output);
                if (a3 == null) {
                    eVar.a(6);
                } else {
                    eVar.a(6, a3);
                }
                eVar.a(7, workSpec.initialDelay);
                eVar.a(8, workSpec.intervalDuration);
                eVar.a(9, workSpec.flexDuration);
                eVar.a(10, workSpec.runAttemptCount);
                eVar.a(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                eVar.a(12, workSpec.backoffDelayDuration);
                eVar.a(13, workSpec.periodStartTime);
                eVar.a(14, workSpec.minimumRetentionDuration);
                eVar.a(15, workSpec.scheduleRequestedAt);
                eVar.a(16, workSpec.runInForeground ? 1L : 0L);
                b bVar = workSpec.constraints;
                if (bVar != null) {
                    eVar.a(17, WorkTypeConverters.networkTypeToInt(bVar.f5966b));
                    eVar.a(18, bVar.f5967c ? 1L : 0L);
                    eVar.a(19, bVar.f5968d ? 1L : 0L);
                    eVar.a(20, bVar.e ? 1L : 0L);
                    eVar.a(21, bVar.f ? 1L : 0L);
                    eVar.a(22, bVar.g);
                    eVar.a(23, bVar.h);
                    byte[] contentUriTriggersToByteArray = WorkTypeConverters.contentUriTriggersToByteArray(bVar.i);
                    if (contentUriTriggersToByteArray == null) {
                        eVar.a(24);
                    } else {
                        eVar.a(24, contentUriTriggersToByteArray);
                    }
                } else {
                    eVar.a(17);
                    eVar.a(18);
                    eVar.a(19);
                    eVar.a(20);
                    eVar.a(21);
                    eVar.a(22);
                    eVar.a(23);
                    eVar.a(24);
                }
            }

            @Override // androidx.room.o
            public String createQuery() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }
        };
        this.__preparedStmtOfDelete = new o(hVar) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // androidx.room.o
            public String createQuery() {
                return "DELETE FROM workspec WHERE id=?";
            }
        };
        this.__preparedStmtOfSetOutput = new o(hVar) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.3
            @Override // androidx.room.o
            public String createQuery() {
                return "UPDATE workspec SET output=? WHERE id=?";
            }
        };
        this.__preparedStmtOfSetPeriodStartTime = new o(hVar) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.4
            @Override // androidx.room.o
            public String createQuery() {
                return "UPDATE workspec SET period_start_time=? WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementWorkSpecRunAttemptCount = new o(hVar) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.5
            @Override // androidx.room.o
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfResetWorkSpecRunAttemptCount = new o(hVar) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.6
            @Override // androidx.room.o
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
            }
        };
        this.__preparedStmtOfMarkWorkSpecScheduled = new o(hVar) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.7
            @Override // androidx.room.o
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetScheduledState = new o(hVar) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.8
            @Override // androidx.room.o
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
            }
        };
        this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast = new o(hVar) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.9
            @Override // androidx.room.o
            public String createQuery() {
                return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkProgressAsandroidxWorkData(androidx.b.a<String, ArrayList<d>> aVar) {
        ArrayList<d> arrayList;
        int i;
        while (true) {
            Set<String> keySet = aVar.keySet();
            if (keySet.isEmpty()) {
                return;
            }
            if (aVar.size() > 999) {
                aVar = new androidx.b.a<>(999);
                int size = aVar.size();
                int i2 = 0;
                while (true) {
                    i = 0;
                    while (i2 < size) {
                        aVar.put(aVar.b(i2), aVar.c(i2));
                        i2++;
                        int i3 = i + 1;
                        i2 = i2;
                        i = i3;
                        if (i3 == 999) {
                            break;
                        }
                    }
                    __fetchRelationshipWorkProgressAsandroidxWorkData(aVar);
                    aVar = new androidx.b.a<>(999);
                }
                if (i <= 0) {
                    return;
                }
            } else {
                StringBuilder a2 = androidx.room.b.e.a();
                a2.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
                int size2 = keySet.size();
                androidx.room.b.e.a(a2, size2);
                a2.append(")");
                k a3 = k.a(a2.toString(), size2 + 0);
                int i4 = 1;
                for (String str : keySet) {
                    if (str == null) {
                        a3.e[i4] = 1;
                    } else {
                        a3.a(i4, str);
                    }
                    i4++;
                }
                Cursor a4 = c.a(this.__db, a3, false);
                try {
                    int a5 = androidx.room.b.b.a(a4, "work_spec_id");
                    if (a5 != -1) {
                        while (a4.moveToNext()) {
                            if (!a4.isNull(a5) && (arrayList = aVar.get(a4.getString(a5))) != null) {
                                arrayList.add(d.a(a4.getBlob(0)));
                            }
                        }
                        return;
                    }
                    return;
                } finally {
                    a4.close();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkTagAsjavaLangString(androidx.b.a<String, ArrayList<String>> aVar) {
        ArrayList<String> arrayList;
        int i;
        int i2;
        while (true) {
            Set<String> keySet = aVar.keySet();
            if (keySet.isEmpty()) {
                return;
            }
            if (aVar.size() > 999) {
                aVar = new androidx.b.a<>(999);
                int size = aVar.size();
                int i3 = 0;
                while (true) {
                    i = 0;
                    while (i3 < size) {
                        aVar.put(aVar.b(i3), aVar.c(i3));
                        i2 = i3 + 1;
                        int i4 = i + 1;
                        i3 = i2;
                        i = i4;
                        if (i4 == 999) {
                            break;
                        }
                    }
                    __fetchRelationshipWorkTagAsjavaLangString(aVar);
                    aVar = new androidx.b.a<>(999);
                    i3 = i2;
                }
                if (i <= 0) {
                    return;
                }
            } else {
                StringBuilder a2 = androidx.room.b.e.a();
                a2.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
                int size2 = keySet.size();
                androidx.room.b.e.a(a2, size2);
                a2.append(")");
                k a3 = k.a(a2.toString(), size2 + 0);
                int i5 = 1;
                for (String str : keySet) {
                    if (str == null) {
                        a3.e[i5] = 1;
                    } else {
                        a3.a(i5, str);
                    }
                    i5++;
                }
                Cursor a4 = c.a(this.__db, a3, false);
                try {
                    int a5 = androidx.room.b.b.a(a4, "work_spec_id");
                    if (a5 != -1) {
                        while (a4.moveToNext()) {
                            if (!a4.isNull(a5) && (arrayList = aVar.get(a4.getString(a5))) != null) {
                                arrayList.add(a4.getString(0));
                            }
                        }
                        return;
                    }
                    return;
                } finally {
                    a4.close();
                }
            }
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void delete(String str) {
        this.__db.d();
        e acquire = this.__preparedStmtOfDelete.acquire();
        if (str == null) {
            acquire.a(1);
        } else {
            acquire.a(1, str);
        }
        this.__db.e();
        try {
            acquire.a();
            this.__db.g();
        } finally {
            this.__db.f();
            this.__preparedStmtOfDelete.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec> getAllEligibleWorkSpecsForScheduling(int i) {
        Throwable th;
        k a2 = k.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        a2.a(1, i);
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            int b2 = androidx.room.b.b.b(a3, "required_network_type");
            int b3 = androidx.room.b.b.b(a3, "requires_charging");
            int b4 = androidx.room.b.b.b(a3, "requires_device_idle");
            int b5 = androidx.room.b.b.b(a3, "requires_battery_not_low");
            int b6 = androidx.room.b.b.b(a3, "requires_storage_not_low");
            int b7 = androidx.room.b.b.b(a3, "trigger_content_update_delay");
            int b8 = androidx.room.b.b.b(a3, "trigger_max_content_delay");
            int b9 = androidx.room.b.b.b(a3, "content_uri_triggers");
            int b10 = androidx.room.b.b.b(a3, "id");
            int b11 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int b12 = androidx.room.b.b.b(a3, "worker_class_name");
            int b13 = androidx.room.b.b.b(a3, "input_merger_class_name");
            int b14 = androidx.room.b.b.b(a3, "input");
            int b15 = androidx.room.b.b.b(a3, "output");
            try {
                int b16 = androidx.room.b.b.b(a3, "initial_delay");
                int b17 = androidx.room.b.b.b(a3, "interval_duration");
                int b18 = androidx.room.b.b.b(a3, "flex_duration");
                int b19 = androidx.room.b.b.b(a3, "run_attempt_count");
                int b20 = androidx.room.b.b.b(a3, "backoff_policy");
                int b21 = androidx.room.b.b.b(a3, "backoff_delay_duration");
                int b22 = androidx.room.b.b.b(a3, "period_start_time");
                int b23 = androidx.room.b.b.b(a3, "minimum_retention_duration");
                int b24 = androidx.room.b.b.b(a3, "schedule_requested_at");
                int b25 = androidx.room.b.b.b(a3, "run_in_foreground");
                ArrayList arrayList = new ArrayList(a3.getCount());
                while (a3.moveToNext()) {
                    String string = a3.getString(b10);
                    String string2 = a3.getString(b12);
                    b bVar = new b();
                    bVar.f5966b = WorkTypeConverters.intToNetworkType(a3.getInt(b2));
                    bVar.f5967c = a3.getInt(b3) != 0;
                    bVar.f5968d = a3.getInt(b4) != 0;
                    bVar.e = a3.getInt(b5) != 0;
                    bVar.f = a3.getInt(b6) != 0;
                    bVar.g = a3.getLong(b7);
                    bVar.h = a3.getLong(b8);
                    bVar.i = WorkTypeConverters.byteArrayToContentUriTriggers(a3.getBlob(b9));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(a3.getInt(b11));
                    workSpec.inputMergerClassName = a3.getString(b13);
                    workSpec.input = d.a(a3.getBlob(b14));
                    workSpec.output = d.a(a3.getBlob(b15));
                    workSpec.initialDelay = a3.getLong(b16);
                    workSpec.intervalDuration = a3.getLong(b17);
                    workSpec.flexDuration = a3.getLong(b18);
                    workSpec.runAttemptCount = a3.getInt(b19);
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(a3.getInt(b20));
                    workSpec.backoffDelayDuration = a3.getLong(b21);
                    workSpec.periodStartTime = a3.getLong(b22);
                    workSpec.minimumRetentionDuration = a3.getLong(b23);
                    workSpec.scheduleRequestedAt = a3.getLong(b24);
                    workSpec.runInForeground = a3.getInt(b25) != 0;
                    workSpec.constraints = bVar;
                    arrayList.add(workSpec);
                }
                a3.close();
                a2.a();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                a3.close();
                a2.a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<String> getAllUnfinishedWork() {
        k a2 = k.a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                arrayList.add(a3.getString(0));
            }
            return arrayList;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<String> getAllWorkSpecIds() {
        k a2 = k.a("SELECT id FROM workspec", 0);
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                arrayList.add(a3.getString(0));
            }
            return arrayList;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final LiveData<List<String>> getAllWorkSpecIdsLiveData() {
        final k a2 = k.a("SELECT id FROM workspec", 0);
        return this.__db.e.a(new String[]{"workspec"}, true, (Callable) new Callable<List<String>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.10
            @Override // java.util.concurrent.Callable
            public List<String> call() throws Exception {
                WorkSpecDao_Impl.this.__db.e();
                try {
                    Cursor a3 = c.a(WorkSpecDao_Impl.this.__db, a2, false);
                    ArrayList arrayList = new ArrayList(a3.getCount());
                    while (a3.moveToNext()) {
                        arrayList.add(a3.getString(0));
                    }
                    WorkSpecDao_Impl.this.__db.g();
                    a3.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.f();
                }
            }

            protected void finalize() {
                a2.a();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec> getEligibleWorkForScheduling(int i) {
        Throwable th;
        k a2 = k.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        a2.a(1, i);
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            int b2 = androidx.room.b.b.b(a3, "required_network_type");
            int b3 = androidx.room.b.b.b(a3, "requires_charging");
            int b4 = androidx.room.b.b.b(a3, "requires_device_idle");
            int b5 = androidx.room.b.b.b(a3, "requires_battery_not_low");
            int b6 = androidx.room.b.b.b(a3, "requires_storage_not_low");
            int b7 = androidx.room.b.b.b(a3, "trigger_content_update_delay");
            int b8 = androidx.room.b.b.b(a3, "trigger_max_content_delay");
            int b9 = androidx.room.b.b.b(a3, "content_uri_triggers");
            int b10 = androidx.room.b.b.b(a3, "id");
            int b11 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int b12 = androidx.room.b.b.b(a3, "worker_class_name");
            int b13 = androidx.room.b.b.b(a3, "input_merger_class_name");
            int b14 = androidx.room.b.b.b(a3, "input");
            int b15 = androidx.room.b.b.b(a3, "output");
            try {
                int b16 = androidx.room.b.b.b(a3, "initial_delay");
                int b17 = androidx.room.b.b.b(a3, "interval_duration");
                int b18 = androidx.room.b.b.b(a3, "flex_duration");
                int b19 = androidx.room.b.b.b(a3, "run_attempt_count");
                int b20 = androidx.room.b.b.b(a3, "backoff_policy");
                int b21 = androidx.room.b.b.b(a3, "backoff_delay_duration");
                int b22 = androidx.room.b.b.b(a3, "period_start_time");
                int b23 = androidx.room.b.b.b(a3, "minimum_retention_duration");
                int b24 = androidx.room.b.b.b(a3, "schedule_requested_at");
                int b25 = androidx.room.b.b.b(a3, "run_in_foreground");
                ArrayList arrayList = new ArrayList(a3.getCount());
                while (a3.moveToNext()) {
                    String string = a3.getString(b10);
                    String string2 = a3.getString(b12);
                    b bVar = new b();
                    bVar.f5966b = WorkTypeConverters.intToNetworkType(a3.getInt(b2));
                    bVar.f5967c = a3.getInt(b3) != 0;
                    bVar.f5968d = a3.getInt(b4) != 0;
                    bVar.e = a3.getInt(b5) != 0;
                    bVar.f = a3.getInt(b6) != 0;
                    bVar.g = a3.getLong(b7);
                    bVar.h = a3.getLong(b8);
                    bVar.i = WorkTypeConverters.byteArrayToContentUriTriggers(a3.getBlob(b9));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(a3.getInt(b11));
                    workSpec.inputMergerClassName = a3.getString(b13);
                    workSpec.input = d.a(a3.getBlob(b14));
                    workSpec.output = d.a(a3.getBlob(b15));
                    workSpec.initialDelay = a3.getLong(b16);
                    workSpec.intervalDuration = a3.getLong(b17);
                    workSpec.flexDuration = a3.getLong(b18);
                    workSpec.runAttemptCount = a3.getInt(b19);
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(a3.getInt(b20));
                    workSpec.backoffDelayDuration = a3.getLong(b21);
                    workSpec.periodStartTime = a3.getLong(b22);
                    workSpec.minimumRetentionDuration = a3.getLong(b23);
                    workSpec.scheduleRequestedAt = a3.getLong(b24);
                    workSpec.runInForeground = a3.getInt(b25) != 0;
                    workSpec.constraints = bVar;
                    arrayList.add(workSpec);
                }
                a3.close();
                a2.a();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                a3.close();
                a2.a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<d> getInputsFromPrerequisites(String str) {
        k a2 = k.a("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                arrayList.add(d.a(a3.getBlob(0)));
            }
            return arrayList;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec> getRecentlyCompletedWork(long j) {
        Throwable th;
        k a2 = k.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC", 1);
        a2.a(1, j);
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            int b2 = androidx.room.b.b.b(a3, "required_network_type");
            int b3 = androidx.room.b.b.b(a3, "requires_charging");
            int b4 = androidx.room.b.b.b(a3, "requires_device_idle");
            int b5 = androidx.room.b.b.b(a3, "requires_battery_not_low");
            int b6 = androidx.room.b.b.b(a3, "requires_storage_not_low");
            int b7 = androidx.room.b.b.b(a3, "trigger_content_update_delay");
            int b8 = androidx.room.b.b.b(a3, "trigger_max_content_delay");
            int b9 = androidx.room.b.b.b(a3, "content_uri_triggers");
            int b10 = androidx.room.b.b.b(a3, "id");
            int b11 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int b12 = androidx.room.b.b.b(a3, "worker_class_name");
            int b13 = androidx.room.b.b.b(a3, "input_merger_class_name");
            int b14 = androidx.room.b.b.b(a3, "input");
            int b15 = androidx.room.b.b.b(a3, "output");
            try {
                int b16 = androidx.room.b.b.b(a3, "initial_delay");
                int b17 = androidx.room.b.b.b(a3, "interval_duration");
                int b18 = androidx.room.b.b.b(a3, "flex_duration");
                int b19 = androidx.room.b.b.b(a3, "run_attempt_count");
                int b20 = androidx.room.b.b.b(a3, "backoff_policy");
                int b21 = androidx.room.b.b.b(a3, "backoff_delay_duration");
                int b22 = androidx.room.b.b.b(a3, "period_start_time");
                int b23 = androidx.room.b.b.b(a3, "minimum_retention_duration");
                int b24 = androidx.room.b.b.b(a3, "schedule_requested_at");
                int b25 = androidx.room.b.b.b(a3, "run_in_foreground");
                ArrayList arrayList = new ArrayList(a3.getCount());
                while (a3.moveToNext()) {
                    String string = a3.getString(b10);
                    String string2 = a3.getString(b12);
                    b bVar = new b();
                    bVar.f5966b = WorkTypeConverters.intToNetworkType(a3.getInt(b2));
                    bVar.f5967c = a3.getInt(b3) != 0;
                    bVar.f5968d = a3.getInt(b4) != 0;
                    bVar.e = a3.getInt(b5) != 0;
                    bVar.f = a3.getInt(b6) != 0;
                    bVar.g = a3.getLong(b7);
                    bVar.h = a3.getLong(b8);
                    bVar.i = WorkTypeConverters.byteArrayToContentUriTriggers(a3.getBlob(b9));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(a3.getInt(b11));
                    workSpec.inputMergerClassName = a3.getString(b13);
                    workSpec.input = d.a(a3.getBlob(b14));
                    workSpec.output = d.a(a3.getBlob(b15));
                    workSpec.initialDelay = a3.getLong(b16);
                    workSpec.intervalDuration = a3.getLong(b17);
                    workSpec.flexDuration = a3.getLong(b18);
                    workSpec.runAttemptCount = a3.getInt(b19);
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(a3.getInt(b20));
                    workSpec.backoffDelayDuration = a3.getLong(b21);
                    workSpec.periodStartTime = a3.getLong(b22);
                    workSpec.minimumRetentionDuration = a3.getLong(b23);
                    workSpec.scheduleRequestedAt = a3.getLong(b24);
                    workSpec.runInForeground = a3.getInt(b25) != 0;
                    workSpec.constraints = bVar;
                    arrayList.add(workSpec);
                }
                a3.close();
                a2.a();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                a3.close();
                a2.a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec> getRunningWork() {
        Throwable th;
        int b2;
        int b3;
        int b4;
        int b5;
        int b6;
        int b7;
        int b8;
        int b9;
        int b10;
        int b11;
        int b12;
        int b13;
        int b14;
        int b15;
        k a2 = k.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=1", 0);
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            b2 = androidx.room.b.b.b(a3, "required_network_type");
            b3 = androidx.room.b.b.b(a3, "requires_charging");
            b4 = androidx.room.b.b.b(a3, "requires_device_idle");
            b5 = androidx.room.b.b.b(a3, "requires_battery_not_low");
            b6 = androidx.room.b.b.b(a3, "requires_storage_not_low");
            b7 = androidx.room.b.b.b(a3, "trigger_content_update_delay");
            b8 = androidx.room.b.b.b(a3, "trigger_max_content_delay");
            b9 = androidx.room.b.b.b(a3, "content_uri_triggers");
            b10 = androidx.room.b.b.b(a3, "id");
            b11 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            b12 = androidx.room.b.b.b(a3, "worker_class_name");
            b13 = androidx.room.b.b.b(a3, "input_merger_class_name");
            b14 = androidx.room.b.b.b(a3, "input");
            b15 = androidx.room.b.b.b(a3, "output");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int b16 = androidx.room.b.b.b(a3, "initial_delay");
            int b17 = androidx.room.b.b.b(a3, "interval_duration");
            int b18 = androidx.room.b.b.b(a3, "flex_duration");
            int b19 = androidx.room.b.b.b(a3, "run_attempt_count");
            int b20 = androidx.room.b.b.b(a3, "backoff_policy");
            int b21 = androidx.room.b.b.b(a3, "backoff_delay_duration");
            int b22 = androidx.room.b.b.b(a3, "period_start_time");
            int b23 = androidx.room.b.b.b(a3, "minimum_retention_duration");
            int b24 = androidx.room.b.b.b(a3, "schedule_requested_at");
            int b25 = androidx.room.b.b.b(a3, "run_in_foreground");
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                String string = a3.getString(b10);
                String string2 = a3.getString(b12);
                b bVar = new b();
                bVar.f5966b = WorkTypeConverters.intToNetworkType(a3.getInt(b2));
                bVar.f5967c = a3.getInt(b3) != 0;
                bVar.f5968d = a3.getInt(b4) != 0;
                bVar.e = a3.getInt(b5) != 0;
                bVar.f = a3.getInt(b6) != 0;
                bVar.g = a3.getLong(b7);
                bVar.h = a3.getLong(b8);
                bVar.i = WorkTypeConverters.byteArrayToContentUriTriggers(a3.getBlob(b9));
                WorkSpec workSpec = new WorkSpec(string, string2);
                workSpec.state = WorkTypeConverters.intToState(a3.getInt(b11));
                workSpec.inputMergerClassName = a3.getString(b13);
                workSpec.input = d.a(a3.getBlob(b14));
                workSpec.output = d.a(a3.getBlob(b15));
                workSpec.initialDelay = a3.getLong(b16);
                workSpec.intervalDuration = a3.getLong(b17);
                workSpec.flexDuration = a3.getLong(b18);
                workSpec.runAttemptCount = a3.getInt(b19);
                workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(a3.getInt(b20));
                workSpec.backoffDelayDuration = a3.getLong(b21);
                workSpec.periodStartTime = a3.getLong(b22);
                workSpec.minimumRetentionDuration = a3.getLong(b23);
                workSpec.scheduleRequestedAt = a3.getLong(b24);
                workSpec.runInForeground = a3.getInt(b25) != 0;
                workSpec.constraints = bVar;
                arrayList.add(workSpec);
            }
            a3.close();
            a2.a();
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            a3.close();
            a2.a();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final LiveData<Long> getScheduleRequestedAtLiveData(String str) {
        final k a2 = k.a("SELECT schedule_requested_at FROM workspec WHERE id=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        return this.__db.e.a(new String[]{"workspec"}, false, (Callable) new Callable<Long>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.14
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                Cursor a3 = c.a(WorkSpecDao_Impl.this.__db, a2, false);
                try {
                    return (!a3.moveToFirst() || a3.isNull(0)) ? null : Long.valueOf(a3.getLong(0));
                } finally {
                    a3.close();
                }
            }

            protected void finalize() {
                a2.a();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec> getScheduledWork() {
        Throwable th;
        int b2;
        int b3;
        int b4;
        int b5;
        int b6;
        int b7;
        int b8;
        int b9;
        int b10;
        int b11;
        int b12;
        int b13;
        int b14;
        int b15;
        k a2 = k.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            b2 = androidx.room.b.b.b(a3, "required_network_type");
            b3 = androidx.room.b.b.b(a3, "requires_charging");
            b4 = androidx.room.b.b.b(a3, "requires_device_idle");
            b5 = androidx.room.b.b.b(a3, "requires_battery_not_low");
            b6 = androidx.room.b.b.b(a3, "requires_storage_not_low");
            b7 = androidx.room.b.b.b(a3, "trigger_content_update_delay");
            b8 = androidx.room.b.b.b(a3, "trigger_max_content_delay");
            b9 = androidx.room.b.b.b(a3, "content_uri_triggers");
            b10 = androidx.room.b.b.b(a3, "id");
            b11 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            b12 = androidx.room.b.b.b(a3, "worker_class_name");
            b13 = androidx.room.b.b.b(a3, "input_merger_class_name");
            b14 = androidx.room.b.b.b(a3, "input");
            b15 = androidx.room.b.b.b(a3, "output");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int b16 = androidx.room.b.b.b(a3, "initial_delay");
            int b17 = androidx.room.b.b.b(a3, "interval_duration");
            int b18 = androidx.room.b.b.b(a3, "flex_duration");
            int b19 = androidx.room.b.b.b(a3, "run_attempt_count");
            int b20 = androidx.room.b.b.b(a3, "backoff_policy");
            int b21 = androidx.room.b.b.b(a3, "backoff_delay_duration");
            int b22 = androidx.room.b.b.b(a3, "period_start_time");
            int b23 = androidx.room.b.b.b(a3, "minimum_retention_duration");
            int b24 = androidx.room.b.b.b(a3, "schedule_requested_at");
            int b25 = androidx.room.b.b.b(a3, "run_in_foreground");
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                String string = a3.getString(b10);
                String string2 = a3.getString(b12);
                b bVar = new b();
                bVar.f5966b = WorkTypeConverters.intToNetworkType(a3.getInt(b2));
                bVar.f5967c = a3.getInt(b3) != 0;
                bVar.f5968d = a3.getInt(b4) != 0;
                bVar.e = a3.getInt(b5) != 0;
                bVar.f = a3.getInt(b6) != 0;
                bVar.g = a3.getLong(b7);
                bVar.h = a3.getLong(b8);
                bVar.i = WorkTypeConverters.byteArrayToContentUriTriggers(a3.getBlob(b9));
                WorkSpec workSpec = new WorkSpec(string, string2);
                workSpec.state = WorkTypeConverters.intToState(a3.getInt(b11));
                workSpec.inputMergerClassName = a3.getString(b13);
                workSpec.input = d.a(a3.getBlob(b14));
                workSpec.output = d.a(a3.getBlob(b15));
                workSpec.initialDelay = a3.getLong(b16);
                workSpec.intervalDuration = a3.getLong(b17);
                workSpec.flexDuration = a3.getLong(b18);
                workSpec.runAttemptCount = a3.getInt(b19);
                workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(a3.getInt(b20));
                workSpec.backoffDelayDuration = a3.getLong(b21);
                workSpec.periodStartTime = a3.getLong(b22);
                workSpec.minimumRetentionDuration = a3.getLong(b23);
                workSpec.scheduleRequestedAt = a3.getLong(b24);
                workSpec.runInForeground = a3.getInt(b25) != 0;
                workSpec.constraints = bVar;
                arrayList.add(workSpec);
            }
            a3.close();
            a2.a();
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            a3.close();
            a2.a();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final t.a getState(String str) {
        k a2 = k.a("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            return a3.moveToFirst() ? WorkTypeConverters.intToState(a3.getInt(0)) : null;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<String> getUnfinishedWorkWithName(String str) {
        k a2 = k.a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                arrayList.add(a3.getString(0));
            }
            return arrayList;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<String> getUnfinishedWorkWithTag(String str) {
        k a2 = k.a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                arrayList.add(a3.getString(0));
            }
            return arrayList;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final WorkSpec getWorkSpec(String str) {
        Throwable th;
        WorkSpec workSpec;
        k a2 = k.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE id=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            int b2 = androidx.room.b.b.b(a3, "required_network_type");
            int b3 = androidx.room.b.b.b(a3, "requires_charging");
            int b4 = androidx.room.b.b.b(a3, "requires_device_idle");
            int b5 = androidx.room.b.b.b(a3, "requires_battery_not_low");
            int b6 = androidx.room.b.b.b(a3, "requires_storage_not_low");
            int b7 = androidx.room.b.b.b(a3, "trigger_content_update_delay");
            int b8 = androidx.room.b.b.b(a3, "trigger_max_content_delay");
            int b9 = androidx.room.b.b.b(a3, "content_uri_triggers");
            int b10 = androidx.room.b.b.b(a3, "id");
            int b11 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int b12 = androidx.room.b.b.b(a3, "worker_class_name");
            int b13 = androidx.room.b.b.b(a3, "input_merger_class_name");
            int b14 = androidx.room.b.b.b(a3, "input");
            int b15 = androidx.room.b.b.b(a3, "output");
            try {
                int b16 = androidx.room.b.b.b(a3, "initial_delay");
                int b17 = androidx.room.b.b.b(a3, "interval_duration");
                int b18 = androidx.room.b.b.b(a3, "flex_duration");
                int b19 = androidx.room.b.b.b(a3, "run_attempt_count");
                int b20 = androidx.room.b.b.b(a3, "backoff_policy");
                int b21 = androidx.room.b.b.b(a3, "backoff_delay_duration");
                int b22 = androidx.room.b.b.b(a3, "period_start_time");
                int b23 = androidx.room.b.b.b(a3, "minimum_retention_duration");
                int b24 = androidx.room.b.b.b(a3, "schedule_requested_at");
                int b25 = androidx.room.b.b.b(a3, "run_in_foreground");
                if (a3.moveToFirst()) {
                    String string = a3.getString(b10);
                    String string2 = a3.getString(b12);
                    b bVar = new b();
                    bVar.f5966b = WorkTypeConverters.intToNetworkType(a3.getInt(b2));
                    bVar.f5967c = a3.getInt(b3) != 0;
                    bVar.f5968d = a3.getInt(b4) != 0;
                    bVar.e = a3.getInt(b5) != 0;
                    bVar.f = a3.getInt(b6) != 0;
                    bVar.g = a3.getLong(b7);
                    bVar.h = a3.getLong(b8);
                    bVar.i = WorkTypeConverters.byteArrayToContentUriTriggers(a3.getBlob(b9));
                    workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(a3.getInt(b11));
                    workSpec.inputMergerClassName = a3.getString(b13);
                    workSpec.input = d.a(a3.getBlob(b14));
                    workSpec.output = d.a(a3.getBlob(b15));
                    workSpec.initialDelay = a3.getLong(b16);
                    workSpec.intervalDuration = a3.getLong(b17);
                    workSpec.flexDuration = a3.getLong(b18);
                    workSpec.runAttemptCount = a3.getInt(b19);
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(a3.getInt(b20));
                    workSpec.backoffDelayDuration = a3.getLong(b21);
                    workSpec.periodStartTime = a3.getLong(b22);
                    workSpec.minimumRetentionDuration = a3.getLong(b23);
                    workSpec.scheduleRequestedAt = a3.getLong(b24);
                    workSpec.runInForeground = a3.getInt(b25) != 0;
                    workSpec.constraints = bVar;
                } else {
                    workSpec = null;
                }
                a3.close();
                a2.a();
                return workSpec;
            } catch (Throwable th2) {
                th = th2;
                a3.close();
                a2.a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(String str) {
        k a2 = k.a("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            int b2 = androidx.room.b.b.b(a3, "id");
            int b3 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                WorkSpec.IdAndState idAndState = new WorkSpec.IdAndState();
                idAndState.id = a3.getString(b2);
                idAndState.state = WorkTypeConverters.intToState(a3.getInt(b3));
                arrayList.add(idAndState);
            }
            return arrayList;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final WorkSpec[] getWorkSpecs(List<String> list) {
        Throwable th;
        StringBuilder a2 = androidx.room.b.e.a();
        a2.append("SELECT ");
        a2.append("*");
        a2.append(" FROM workspec WHERE id IN (");
        int size = list.size();
        androidx.room.b.e.a(a2, size);
        a2.append(")");
        k a3 = k.a(a2.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                a3.e[i] = 1;
            } else {
                a3.a(i, str);
            }
            i++;
        }
        this.__db.d();
        Cursor a4 = c.a(this.__db, a3, false);
        try {
            int b2 = androidx.room.b.b.b(a4, "required_network_type");
            int b3 = androidx.room.b.b.b(a4, "requires_charging");
            int b4 = androidx.room.b.b.b(a4, "requires_device_idle");
            int b5 = androidx.room.b.b.b(a4, "requires_battery_not_low");
            int b6 = androidx.room.b.b.b(a4, "requires_storage_not_low");
            int b7 = androidx.room.b.b.b(a4, "trigger_content_update_delay");
            int b8 = androidx.room.b.b.b(a4, "trigger_max_content_delay");
            int b9 = androidx.room.b.b.b(a4, "content_uri_triggers");
            int b10 = androidx.room.b.b.b(a4, "id");
            int b11 = androidx.room.b.b.b(a4, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int b12 = androidx.room.b.b.b(a4, "worker_class_name");
            int b13 = androidx.room.b.b.b(a4, "input_merger_class_name");
            int b14 = androidx.room.b.b.b(a4, "input");
            int b15 = androidx.room.b.b.b(a4, "output");
            try {
                int b16 = androidx.room.b.b.b(a4, "initial_delay");
                int b17 = androidx.room.b.b.b(a4, "interval_duration");
                int b18 = androidx.room.b.b.b(a4, "flex_duration");
                int b19 = androidx.room.b.b.b(a4, "run_attempt_count");
                int b20 = androidx.room.b.b.b(a4, "backoff_policy");
                int b21 = androidx.room.b.b.b(a4, "backoff_delay_duration");
                int b22 = androidx.room.b.b.b(a4, "period_start_time");
                int b23 = androidx.room.b.b.b(a4, "minimum_retention_duration");
                int b24 = androidx.room.b.b.b(a4, "schedule_requested_at");
                int b25 = androidx.room.b.b.b(a4, "run_in_foreground");
                WorkSpec[] workSpecArr = new WorkSpec[a4.getCount()];
                int i2 = 0;
                while (a4.moveToNext()) {
                    String string = a4.getString(b10);
                    String string2 = a4.getString(b12);
                    b bVar = new b();
                    bVar.f5966b = WorkTypeConverters.intToNetworkType(a4.getInt(b2));
                    bVar.f5967c = a4.getInt(b3) != 0;
                    bVar.f5968d = a4.getInt(b4) != 0;
                    bVar.e = a4.getInt(b5) != 0;
                    bVar.f = a4.getInt(b6) != 0;
                    bVar.g = a4.getLong(b7);
                    bVar.h = a4.getLong(b8);
                    bVar.i = WorkTypeConverters.byteArrayToContentUriTriggers(a4.getBlob(b9));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.state = WorkTypeConverters.intToState(a4.getInt(b11));
                    workSpec.inputMergerClassName = a4.getString(b13);
                    workSpec.input = d.a(a4.getBlob(b14));
                    workSpec.output = d.a(a4.getBlob(b15));
                    workSpec.initialDelay = a4.getLong(b16);
                    workSpec.intervalDuration = a4.getLong(b17);
                    workSpec.flexDuration = a4.getLong(b18);
                    workSpec.runAttemptCount = a4.getInt(b19);
                    workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(a4.getInt(b20));
                    workSpec.backoffDelayDuration = a4.getLong(b21);
                    workSpec.periodStartTime = a4.getLong(b22);
                    workSpec.minimumRetentionDuration = a4.getLong(b23);
                    workSpec.scheduleRequestedAt = a4.getLong(b24);
                    workSpec.runInForeground = a4.getInt(b25) != 0;
                    workSpec.constraints = bVar;
                    workSpecArr[i2] = workSpec;
                    i2++;
                }
                a4.close();
                a3.a();
                return workSpecArr;
            } catch (Throwable th2) {
                th = th2;
                a4.close();
                a3.a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final WorkSpec.WorkInfoPojo getWorkStatusPojoForId(String str) {
        k a2 = k.a("SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        this.__db.e();
        try {
            Cursor a3 = c.a(this.__db, a2, true);
            int b2 = androidx.room.b.b.b(a3, "id");
            int b3 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int b4 = androidx.room.b.b.b(a3, "output");
            int b5 = androidx.room.b.b.b(a3, "run_attempt_count");
            androidx.b.a<String, ArrayList<String>> aVar = new androidx.b.a<>();
            androidx.b.a<String, ArrayList<d>> aVar2 = new androidx.b.a<>();
            while (a3.moveToNext()) {
                if (!a3.isNull(b2)) {
                    String string = a3.getString(b2);
                    if (aVar.get(string) == null) {
                        aVar.put(string, new ArrayList<>());
                    }
                }
                if (!a3.isNull(b2)) {
                    String string2 = a3.getString(b2);
                    if (aVar2.get(string2) == null) {
                        aVar2.put(string2, new ArrayList<>());
                    }
                }
            }
            a3.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(aVar);
            __fetchRelationshipWorkProgressAsandroidxWorkData(aVar2);
            WorkSpec.WorkInfoPojo workInfoPojo = null;
            ArrayList<d> arrayList = null;
            if (a3.moveToFirst()) {
                ArrayList<String> arrayList2 = !a3.isNull(b2) ? aVar.get(a3.getString(b2)) : null;
                ArrayList<String> arrayList3 = arrayList2;
                if (arrayList2 == null) {
                    arrayList3 = new ArrayList<>();
                }
                if (!a3.isNull(b2)) {
                    arrayList = aVar2.get(a3.getString(b2));
                }
                ArrayList<d> arrayList4 = arrayList;
                if (arrayList == null) {
                    arrayList4 = new ArrayList<>();
                }
                workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.id = a3.getString(b2);
                workInfoPojo.state = WorkTypeConverters.intToState(a3.getInt(b3));
                workInfoPojo.output = d.a(a3.getBlob(b4));
                workInfoPojo.runAttemptCount = a3.getInt(b5);
                workInfoPojo.tags = arrayList3;
                workInfoPojo.progress = arrayList4;
            }
            this.__db.g();
            a3.close();
            a2.a();
            return workInfoPojo;
        } finally {
            this.__db.f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(List<String> list) {
        StringBuilder a2 = androidx.room.b.e.a();
        a2.append("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (");
        int size = list.size();
        androidx.room.b.e.a(a2, size);
        a2.append(")");
        k a3 = k.a(a2.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                a3.e[i] = 1;
            } else {
                a3.a(i, str);
            }
            i++;
        }
        this.__db.d();
        this.__db.e();
        try {
            Cursor a4 = c.a(this.__db, a3, true);
            int b2 = androidx.room.b.b.b(a4, "id");
            int b3 = androidx.room.b.b.b(a4, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int b4 = androidx.room.b.b.b(a4, "output");
            int b5 = androidx.room.b.b.b(a4, "run_attempt_count");
            androidx.b.a<String, ArrayList<String>> aVar = new androidx.b.a<>();
            androidx.b.a<String, ArrayList<d>> aVar2 = new androidx.b.a<>();
            while (a4.moveToNext()) {
                if (!a4.isNull(b2)) {
                    String string = a4.getString(b2);
                    if (aVar.get(string) == null) {
                        aVar.put(string, new ArrayList<>());
                    }
                }
                if (!a4.isNull(b2)) {
                    String string2 = a4.getString(b2);
                    if (aVar2.get(string2) == null) {
                        aVar2.put(string2, new ArrayList<>());
                    }
                }
            }
            a4.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(aVar);
            __fetchRelationshipWorkProgressAsandroidxWorkData(aVar2);
            ArrayList arrayList = new ArrayList(a4.getCount());
            while (a4.moveToNext()) {
                ArrayList<d> arrayList2 = null;
                ArrayList<String> arrayList3 = !a4.isNull(b2) ? aVar.get(a4.getString(b2)) : null;
                ArrayList<String> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>();
                }
                if (!a4.isNull(b2)) {
                    arrayList2 = aVar2.get(a4.getString(b2));
                }
                ArrayList<d> arrayList5 = arrayList2;
                if (arrayList2 == null) {
                    arrayList5 = new ArrayList<>();
                }
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.id = a4.getString(b2);
                workInfoPojo.state = WorkTypeConverters.intToState(a4.getInt(b3));
                workInfoPojo.output = d.a(a4.getBlob(b4));
                workInfoPojo.runAttemptCount = a4.getInt(b5);
                workInfoPojo.tags = arrayList4;
                workInfoPojo.progress = arrayList5;
                arrayList.add(workInfoPojo);
            }
            this.__db.g();
            a4.close();
            a3.a();
            return arrayList;
        } finally {
            this.__db.f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(String str) {
        k a2 = k.a("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        this.__db.e();
        try {
            Cursor a3 = c.a(this.__db, a2, true);
            int b2 = androidx.room.b.b.b(a3, "id");
            int b3 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int b4 = androidx.room.b.b.b(a3, "output");
            int b5 = androidx.room.b.b.b(a3, "run_attempt_count");
            androidx.b.a<String, ArrayList<String>> aVar = new androidx.b.a<>();
            androidx.b.a<String, ArrayList<d>> aVar2 = new androidx.b.a<>();
            while (a3.moveToNext()) {
                if (!a3.isNull(b2)) {
                    String string = a3.getString(b2);
                    if (aVar.get(string) == null) {
                        aVar.put(string, new ArrayList<>());
                    }
                }
                if (!a3.isNull(b2)) {
                    String string2 = a3.getString(b2);
                    if (aVar2.get(string2) == null) {
                        aVar2.put(string2, new ArrayList<>());
                    }
                }
            }
            a3.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(aVar);
            __fetchRelationshipWorkProgressAsandroidxWorkData(aVar2);
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                ArrayList<d> arrayList2 = null;
                ArrayList<String> arrayList3 = !a3.isNull(b2) ? aVar.get(a3.getString(b2)) : null;
                ArrayList<String> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>();
                }
                if (!a3.isNull(b2)) {
                    arrayList2 = aVar2.get(a3.getString(b2));
                }
                ArrayList<d> arrayList5 = arrayList2;
                if (arrayList2 == null) {
                    arrayList5 = new ArrayList<>();
                }
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.id = a3.getString(b2);
                workInfoPojo.state = WorkTypeConverters.intToState(a3.getInt(b3));
                workInfoPojo.output = d.a(a3.getBlob(b4));
                workInfoPojo.runAttemptCount = a3.getInt(b5);
                workInfoPojo.tags = arrayList4;
                workInfoPojo.progress = arrayList5;
                arrayList.add(workInfoPojo);
            }
            this.__db.g();
            a3.close();
            a2.a();
            return arrayList;
        } finally {
            this.__db.f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(String str) {
        k a2 = k.a("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        this.__db.e();
        try {
            Cursor a3 = c.a(this.__db, a2, true);
            int b2 = androidx.room.b.b.b(a3, "id");
            int b3 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int b4 = androidx.room.b.b.b(a3, "output");
            int b5 = androidx.room.b.b.b(a3, "run_attempt_count");
            androidx.b.a<String, ArrayList<String>> aVar = new androidx.b.a<>();
            androidx.b.a<String, ArrayList<d>> aVar2 = new androidx.b.a<>();
            while (a3.moveToNext()) {
                if (!a3.isNull(b2)) {
                    String string = a3.getString(b2);
                    if (aVar.get(string) == null) {
                        aVar.put(string, new ArrayList<>());
                    }
                }
                if (!a3.isNull(b2)) {
                    String string2 = a3.getString(b2);
                    if (aVar2.get(string2) == null) {
                        aVar2.put(string2, new ArrayList<>());
                    }
                }
            }
            a3.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(aVar);
            __fetchRelationshipWorkProgressAsandroidxWorkData(aVar2);
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                ArrayList<d> arrayList2 = null;
                ArrayList<String> arrayList3 = !a3.isNull(b2) ? aVar.get(a3.getString(b2)) : null;
                ArrayList<String> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>();
                }
                if (!a3.isNull(b2)) {
                    arrayList2 = aVar2.get(a3.getString(b2));
                }
                ArrayList<d> arrayList5 = arrayList2;
                if (arrayList2 == null) {
                    arrayList5 = new ArrayList<>();
                }
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.id = a3.getString(b2);
                workInfoPojo.state = WorkTypeConverters.intToState(a3.getInt(b3));
                workInfoPojo.output = d.a(a3.getBlob(b4));
                workInfoPojo.runAttemptCount = a3.getInt(b5);
                workInfoPojo.tags = arrayList4;
                workInfoPojo.progress = arrayList5;
                arrayList.add(workInfoPojo);
            }
            this.__db.g();
            a3.close();
            a2.a();
            return arrayList;
        } finally {
            this.__db.f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(List<String> list) {
        StringBuilder a2 = androidx.room.b.e.a();
        a2.append("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (");
        int size = list.size();
        androidx.room.b.e.a(a2, size);
        a2.append(")");
        final k a3 = k.a(a2.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                a3.e[i] = 1;
            } else {
                a3.a(i, str);
            }
            i++;
        }
        return this.__db.e.a(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.11
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.e();
                try {
                    Cursor a4 = c.a(WorkSpecDao_Impl.this.__db, a3, true);
                    int b2 = androidx.room.b.b.b(a4, "id");
                    int b3 = androidx.room.b.b.b(a4, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
                    int b4 = androidx.room.b.b.b(a4, "output");
                    int b5 = androidx.room.b.b.b(a4, "run_attempt_count");
                    androidx.b.a aVar = new androidx.b.a();
                    androidx.b.a aVar2 = new androidx.b.a();
                    while (a4.moveToNext()) {
                        if (!a4.isNull(b2)) {
                            String string = a4.getString(b2);
                            if (((ArrayList) aVar.get(string)) == null) {
                                aVar.put(string, new ArrayList());
                            }
                        }
                        if (!a4.isNull(b2)) {
                            String string2 = a4.getString(b2);
                            if (((ArrayList) aVar2.get(string2)) == null) {
                                aVar2.put(string2, new ArrayList());
                            }
                        }
                    }
                    a4.moveToPosition(-1);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(aVar);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(aVar2);
                    ArrayList arrayList = new ArrayList(a4.getCount());
                    while (a4.moveToNext()) {
                        ArrayList arrayList2 = null;
                        ArrayList arrayList3 = !a4.isNull(b2) ? (ArrayList) aVar.get(a4.getString(b2)) : null;
                        ArrayList arrayList4 = arrayList3;
                        if (arrayList3 == null) {
                            arrayList4 = new ArrayList();
                        }
                        if (!a4.isNull(b2)) {
                            arrayList2 = (ArrayList) aVar2.get(a4.getString(b2));
                        }
                        ArrayList arrayList5 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList5 = new ArrayList();
                        }
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        workInfoPojo.id = a4.getString(b2);
                        workInfoPojo.state = WorkTypeConverters.intToState(a4.getInt(b3));
                        workInfoPojo.output = d.a(a4.getBlob(b4));
                        workInfoPojo.runAttemptCount = a4.getInt(b5);
                        workInfoPojo.tags = arrayList4;
                        workInfoPojo.progress = arrayList5;
                        arrayList.add(workInfoPojo);
                    }
                    WorkSpecDao_Impl.this.__db.g();
                    a4.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.f();
                }
            }

            protected void finalize() {
                a3.a();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(String str) {
        final k a2 = k.a("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        return this.__db.e.a(new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, true, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.13
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.e();
                try {
                    Cursor a3 = c.a(WorkSpecDao_Impl.this.__db, a2, true);
                    int b2 = androidx.room.b.b.b(a3, "id");
                    int b3 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
                    int b4 = androidx.room.b.b.b(a3, "output");
                    int b5 = androidx.room.b.b.b(a3, "run_attempt_count");
                    androidx.b.a aVar = new androidx.b.a();
                    androidx.b.a aVar2 = new androidx.b.a();
                    while (a3.moveToNext()) {
                        if (!a3.isNull(b2)) {
                            String string = a3.getString(b2);
                            if (((ArrayList) aVar.get(string)) == null) {
                                aVar.put(string, new ArrayList());
                            }
                        }
                        if (!a3.isNull(b2)) {
                            String string2 = a3.getString(b2);
                            if (((ArrayList) aVar2.get(string2)) == null) {
                                aVar2.put(string2, new ArrayList());
                            }
                        }
                    }
                    a3.moveToPosition(-1);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(aVar);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(aVar2);
                    ArrayList arrayList = new ArrayList(a3.getCount());
                    while (a3.moveToNext()) {
                        ArrayList arrayList2 = null;
                        ArrayList arrayList3 = !a3.isNull(b2) ? (ArrayList) aVar.get(a3.getString(b2)) : null;
                        ArrayList arrayList4 = arrayList3;
                        if (arrayList3 == null) {
                            arrayList4 = new ArrayList();
                        }
                        if (!a3.isNull(b2)) {
                            arrayList2 = (ArrayList) aVar2.get(a3.getString(b2));
                        }
                        ArrayList arrayList5 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList5 = new ArrayList();
                        }
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        workInfoPojo.id = a3.getString(b2);
                        workInfoPojo.state = WorkTypeConverters.intToState(a3.getInt(b3));
                        workInfoPojo.output = d.a(a3.getBlob(b4));
                        workInfoPojo.runAttemptCount = a3.getInt(b5);
                        workInfoPojo.tags = arrayList4;
                        workInfoPojo.progress = arrayList5;
                        arrayList.add(workInfoPojo);
                    }
                    WorkSpecDao_Impl.this.__db.g();
                    a3.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.f();
                }
            }

            protected void finalize() {
                a2.a();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(String str) {
        final k a2 = k.a("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        return this.__db.e.a(new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, true, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.12
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                WorkSpecDao_Impl.this.__db.e();
                try {
                    Cursor a3 = c.a(WorkSpecDao_Impl.this.__db, a2, true);
                    int b2 = androidx.room.b.b.b(a3, "id");
                    int b3 = androidx.room.b.b.b(a3, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
                    int b4 = androidx.room.b.b.b(a3, "output");
                    int b5 = androidx.room.b.b.b(a3, "run_attempt_count");
                    androidx.b.a aVar = new androidx.b.a();
                    androidx.b.a aVar2 = new androidx.b.a();
                    while (a3.moveToNext()) {
                        if (!a3.isNull(b2)) {
                            String string = a3.getString(b2);
                            if (((ArrayList) aVar.get(string)) == null) {
                                aVar.put(string, new ArrayList());
                            }
                        }
                        if (!a3.isNull(b2)) {
                            String string2 = a3.getString(b2);
                            if (((ArrayList) aVar2.get(string2)) == null) {
                                aVar2.put(string2, new ArrayList());
                            }
                        }
                    }
                    a3.moveToPosition(-1);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(aVar);
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(aVar2);
                    ArrayList arrayList = new ArrayList(a3.getCount());
                    while (a3.moveToNext()) {
                        ArrayList arrayList2 = null;
                        ArrayList arrayList3 = !a3.isNull(b2) ? (ArrayList) aVar.get(a3.getString(b2)) : null;
                        ArrayList arrayList4 = arrayList3;
                        if (arrayList3 == null) {
                            arrayList4 = new ArrayList();
                        }
                        if (!a3.isNull(b2)) {
                            arrayList2 = (ArrayList) aVar2.get(a3.getString(b2));
                        }
                        ArrayList arrayList5 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList5 = new ArrayList();
                        }
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        workInfoPojo.id = a3.getString(b2);
                        workInfoPojo.state = WorkTypeConverters.intToState(a3.getInt(b3));
                        workInfoPojo.output = d.a(a3.getBlob(b4));
                        workInfoPojo.runAttemptCount = a3.getInt(b5);
                        workInfoPojo.tags = arrayList4;
                        workInfoPojo.progress = arrayList5;
                        arrayList.add(workInfoPojo);
                    }
                    WorkSpecDao_Impl.this.__db.g();
                    a3.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.f();
                }
            }

            protected void finalize() {
                a2.a();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int incrementWorkSpecRunAttemptCount(String str) {
        this.__db.d();
        e acquire = this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.acquire();
        if (str == null) {
            acquire.a(1);
        } else {
            acquire.a(1, str);
        }
        this.__db.e();
        try {
            int a2 = acquire.a();
            this.__db.g();
            return a2;
        } finally {
            this.__db.f();
            this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void insertWorkSpec(WorkSpec workSpec) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfWorkSpec.insert((a<WorkSpec>) workSpec);
            this.__db.g();
        } finally {
            this.__db.f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int markWorkSpecScheduled(String str, long j) {
        this.__db.d();
        e acquire = this.__preparedStmtOfMarkWorkSpecScheduled.acquire();
        acquire.a(1, j);
        if (str == null) {
            acquire.a(2);
        } else {
            acquire.a(2, str);
        }
        this.__db.e();
        try {
            int a2 = acquire.a();
            this.__db.g();
            return a2;
        } finally {
            this.__db.f();
            this.__preparedStmtOfMarkWorkSpecScheduled.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast() {
        this.__db.d();
        e acquire = this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast.acquire();
        this.__db.e();
        try {
            acquire.a();
            this.__db.g();
        } finally {
            this.__db.f();
            this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int resetScheduledState() {
        this.__db.d();
        e acquire = this.__preparedStmtOfResetScheduledState.acquire();
        this.__db.e();
        try {
            int a2 = acquire.a();
            this.__db.g();
            return a2;
        } finally {
            this.__db.f();
            this.__preparedStmtOfResetScheduledState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int resetWorkSpecRunAttemptCount(String str) {
        this.__db.d();
        e acquire = this.__preparedStmtOfResetWorkSpecRunAttemptCount.acquire();
        if (str == null) {
            acquire.a(1);
        } else {
            acquire.a(1, str);
        }
        this.__db.e();
        try {
            int a2 = acquire.a();
            this.__db.g();
            return a2;
        } finally {
            this.__db.f();
            this.__preparedStmtOfResetWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void setOutput(String str, d dVar) {
        this.__db.d();
        e acquire = this.__preparedStmtOfSetOutput.acquire();
        byte[] a2 = d.a(dVar);
        if (a2 == null) {
            acquire.a(1);
        } else {
            acquire.a(1, a2);
        }
        if (str == null) {
            acquire.a(2);
        } else {
            acquire.a(2, str);
        }
        this.__db.e();
        try {
            acquire.a();
            this.__db.g();
        } finally {
            this.__db.f();
            this.__preparedStmtOfSetOutput.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void setPeriodStartTime(String str, long j) {
        this.__db.d();
        e acquire = this.__preparedStmtOfSetPeriodStartTime.acquire();
        acquire.a(1, j);
        if (str == null) {
            acquire.a(2);
        } else {
            acquire.a(2, str);
        }
        this.__db.e();
        try {
            acquire.a();
            this.__db.g();
        } finally {
            this.__db.f();
            this.__preparedStmtOfSetPeriodStartTime.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int setState(t.a aVar, String... strArr) {
        this.__db.d();
        StringBuilder a2 = androidx.room.b.e.a();
        a2.append("UPDATE workspec SET state=");
        a2.append("?");
        a2.append(" WHERE id IN (");
        androidx.room.b.e.a(a2, strArr.length);
        a2.append(")");
        e a3 = this.__db.a(a2.toString());
        a3.a(1, WorkTypeConverters.stateToInt(aVar));
        int i = 2;
        for (String str : strArr) {
            if (str == null) {
                a3.a(i);
            } else {
                a3.a(i, str);
            }
            i++;
        }
        this.__db.e();
        try {
            int a4 = a3.a();
            this.__db.g();
            return a4;
        } finally {
            this.__db.f();
        }
    }
}
