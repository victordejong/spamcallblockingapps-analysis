package androidx.work.impl;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25683x;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25656e;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase_Impl$a.class */
public class WorkDatabase_Impl$a extends C25683x.AbstractC25684a {

    /* renamed from: a */
    public final /* synthetic */ WorkDatabase_Impl f1571a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkDatabase_Impl$a(WorkDatabase_Impl workDatabase_Impl, int i) {
        super(i);
        this.f1571a = workDatabase_Impl;
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public void createAllTables(AbstractC26147b abstractC26147b) {
        C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )", "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)", "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)", "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
        C22128a.m8561v0(abstractC26147b, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)", "CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)", "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )", "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
        C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )", "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )", "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)", "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public void dropAllTables(AbstractC26147b abstractC26147b) {
        C22128a.m8561v0(abstractC26147b, "DROP TABLE IF EXISTS `Dependency`", "DROP TABLE IF EXISTS `WorkSpec`", "DROP TABLE IF EXISTS `WorkTag`", "DROP TABLE IF EXISTS `SystemIdInfo`");
        abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `WorkName`");
        abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `WorkProgress`");
        abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `Preference`");
        WorkDatabase_Impl workDatabase_Impl = this.f1571a;
        int i = WorkDatabase_Impl.j;
        List<AbstractC25677q.AbstractC25679b> list = workDatabase_Impl.mCallbacks;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f1571a.mCallbacks.get(i2).mo3061b(abstractC26147b);
            }
        }
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public void onCreate(AbstractC26147b abstractC26147b) {
        WorkDatabase_Impl workDatabase_Impl = this.f1571a;
        int i = WorkDatabase_Impl.j;
        List<AbstractC25677q.AbstractC25679b> list = workDatabase_Impl.mCallbacks;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f1571a.mCallbacks.get(i2).mo3062a(abstractC26147b);
            }
        }
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public void onOpen(AbstractC26147b abstractC26147b) {
        WorkDatabase_Impl workDatabase_Impl = this.f1571a;
        int i = WorkDatabase_Impl.j;
        workDatabase_Impl.mDatabase = abstractC26147b;
        abstractC26147b.mo2668S0("PRAGMA foreign_keys = ON");
        this.f1571a.internalInitInvalidationTracker(abstractC26147b);
        List<AbstractC25677q.AbstractC25679b> list = this.f1571a.mCallbacks;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f1571a.mCallbacks.get(i2).mo1434c(abstractC26147b);
            }
        }
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public void onPostMigrate(AbstractC26147b abstractC26147b) {
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public void onPreMigrate(AbstractC26147b abstractC26147b) {
        C25653b.m3091a(abstractC26147b);
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public C25683x.C25685b onValidateSchema(AbstractC26147b abstractC26147b) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("work_spec_id", new C25656e.C25657a("work_spec_id", "TEXT", true, 1, null, 1));
        HashSet m8658W = C22128a.m8658W(hashMap, "prerequisite_id", new C25656e.C25657a("prerequisite_id", "TEXT", true, 2, null, 1), 2);
        m8658W.add(new C25656e.C25658b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        m8658W.add(new C25656e.C25658b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
        HashSet hashSet = new HashSet(2);
        hashSet.add(new C25656e.C25660d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
        hashSet.add(new C25656e.C25660d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
        C25656e c25656e = new C25656e("Dependency", hashMap, m8658W, hashSet);
        C25656e m3085a = C25656e.m3085a(abstractC26147b, "Dependency");
        if (!c25656e.equals(m3085a)) {
            return new C25683x.C25685b(false, C22128a.m8563u2("Dependency(androidx.work.impl.model.Dependency).\n Expected:\n", c25656e, "\n Found:\n", m3085a));
        }
        HashMap hashMap2 = new HashMap(25);
        hashMap2.put("id", new C25656e.C25657a("id", "TEXT", true, 1, null, 1));
        hashMap2.put("state", new C25656e.C25657a("state", "INTEGER", true, 0, null, 1));
        hashMap2.put("worker_class_name", new C25656e.C25657a("worker_class_name", "TEXT", true, 0, null, 1));
        hashMap2.put("input_merger_class_name", new C25656e.C25657a("input_merger_class_name", "TEXT", false, 0, null, 1));
        hashMap2.put("input", new C25656e.C25657a("input", "BLOB", true, 0, null, 1));
        hashMap2.put("output", new C25656e.C25657a("output", "BLOB", true, 0, null, 1));
        hashMap2.put("initial_delay", new C25656e.C25657a("initial_delay", "INTEGER", true, 0, null, 1));
        hashMap2.put("interval_duration", new C25656e.C25657a("interval_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("flex_duration", new C25656e.C25657a("flex_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("run_attempt_count", new C25656e.C25657a("run_attempt_count", "INTEGER", true, 0, null, 1));
        hashMap2.put("backoff_policy", new C25656e.C25657a("backoff_policy", "INTEGER", true, 0, null, 1));
        hashMap2.put("backoff_delay_duration", new C25656e.C25657a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("period_start_time", new C25656e.C25657a("period_start_time", "INTEGER", true, 0, null, 1));
        hashMap2.put("minimum_retention_duration", new C25656e.C25657a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("schedule_requested_at", new C25656e.C25657a("schedule_requested_at", "INTEGER", true, 0, null, 1));
        hashMap2.put("run_in_foreground", new C25656e.C25657a("run_in_foreground", "INTEGER", true, 0, null, 1));
        hashMap2.put("out_of_quota_policy", new C25656e.C25657a("out_of_quota_policy", "INTEGER", true, 0, null, 1));
        hashMap2.put("required_network_type", new C25656e.C25657a("required_network_type", "INTEGER", false, 0, null, 1));
        hashMap2.put("requires_charging", new C25656e.C25657a("requires_charging", "INTEGER", true, 0, null, 1));
        hashMap2.put("requires_device_idle", new C25656e.C25657a("requires_device_idle", "INTEGER", true, 0, null, 1));
        hashMap2.put("requires_battery_not_low", new C25656e.C25657a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
        hashMap2.put("requires_storage_not_low", new C25656e.C25657a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
        hashMap2.put("trigger_content_update_delay", new C25656e.C25657a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
        hashMap2.put("trigger_max_content_delay", new C25656e.C25657a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
        HashSet m8658W2 = C22128a.m8658W(hashMap2, "content_uri_triggers", new C25656e.C25657a("content_uri_triggers", "BLOB", false, 0, null, 1), 0);
        HashSet hashSet2 = new HashSet(2);
        hashSet2.add(new C25656e.C25660d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
        hashSet2.add(new C25656e.C25660d("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time")));
        C25656e c25656e2 = new C25656e("WorkSpec", hashMap2, m8658W2, hashSet2);
        C25656e m3085a2 = C25656e.m3085a(abstractC26147b, "WorkSpec");
        if (!c25656e2.equals(m3085a2)) {
            return new C25683x.C25685b(false, C22128a.m8563u2("WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n", c25656e2, "\n Found:\n", m3085a2));
        }
        HashMap hashMap3 = new HashMap(2);
        hashMap3.put(RemoteMessageConst.Notification.TAG, new C25656e.C25657a(RemoteMessageConst.Notification.TAG, "TEXT", true, 1, null, 1));
        HashSet m8658W3 = C22128a.m8658W(hashMap3, "work_spec_id", new C25656e.C25657a("work_spec_id", "TEXT", true, 2, null, 1), 1);
        m8658W3.add(new C25656e.C25658b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        HashSet hashSet3 = new HashSet(1);
        hashSet3.add(new C25656e.C25660d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
        C25656e c25656e3 = new C25656e("WorkTag", hashMap3, m8658W3, hashSet3);
        C25656e m3085a3 = C25656e.m3085a(abstractC26147b, "WorkTag");
        if (!c25656e3.equals(m3085a3)) {
            return new C25683x.C25685b(false, C22128a.m8563u2("WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n", c25656e3, "\n Found:\n", m3085a3));
        }
        HashMap hashMap4 = new HashMap(2);
        hashMap4.put("work_spec_id", new C25656e.C25657a("work_spec_id", "TEXT", true, 1, null, 1));
        HashSet m8658W4 = C22128a.m8658W(hashMap4, "system_id", new C25656e.C25657a("system_id", "INTEGER", true, 0, null, 1), 1);
        m8658W4.add(new C25656e.C25658b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        C25656e c25656e4 = new C25656e("SystemIdInfo", hashMap4, m8658W4, new HashSet(0));
        C25656e m3085a4 = C25656e.m3085a(abstractC26147b, "SystemIdInfo");
        if (!c25656e4.equals(m3085a4)) {
            return new C25683x.C25685b(false, C22128a.m8563u2("SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n", c25656e4, "\n Found:\n", m3085a4));
        }
        HashMap hashMap5 = new HashMap(2);
        hashMap5.put(AnalyticsConstants.NAME, new C25656e.C25657a(AnalyticsConstants.NAME, "TEXT", true, 1, null, 1));
        HashSet m8658W5 = C22128a.m8658W(hashMap5, "work_spec_id", new C25656e.C25657a("work_spec_id", "TEXT", true, 2, null, 1), 1);
        m8658W5.add(new C25656e.C25658b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        HashSet hashSet4 = new HashSet(1);
        hashSet4.add(new C25656e.C25660d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
        C25656e c25656e5 = new C25656e("WorkName", hashMap5, m8658W5, hashSet4);
        C25656e m3085a5 = C25656e.m3085a(abstractC26147b, "WorkName");
        if (!c25656e5.equals(m3085a5)) {
            return new C25683x.C25685b(false, C22128a.m8563u2("WorkName(androidx.work.impl.model.WorkName).\n Expected:\n", c25656e5, "\n Found:\n", m3085a5));
        }
        HashMap hashMap6 = new HashMap(2);
        hashMap6.put("work_spec_id", new C25656e.C25657a("work_spec_id", "TEXT", true, 1, null, 1));
        HashSet m8658W6 = C22128a.m8658W(hashMap6, "progress", new C25656e.C25657a("progress", "BLOB", true, 0, null, 1), 1);
        m8658W6.add(new C25656e.C25658b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        C25656e c25656e6 = new C25656e("WorkProgress", hashMap6, m8658W6, new HashSet(0));
        C25656e m3085a6 = C25656e.m3085a(abstractC26147b, "WorkProgress");
        if (!c25656e6.equals(m3085a6)) {
            return new C25683x.C25685b(false, C22128a.m8563u2("WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n", c25656e6, "\n Found:\n", m3085a6));
        }
        HashMap hashMap7 = new HashMap(2);
        hashMap7.put(AnalyticsConstants.KEY, new C25656e.C25657a(AnalyticsConstants.KEY, "TEXT", true, 1, null, 1));
        C25656e c25656e7 = new C25656e("Preference", hashMap7, C22128a.m8658W(hashMap7, "long_value", new C25656e.C25657a("long_value", "INTEGER", false, 0, null, 1), 0), new HashSet(0));
        C25656e m3085a7 = C25656e.m3085a(abstractC26147b, "Preference");
        return !c25656e7.equals(m3085a7) ? new C25683x.C25685b(false, C22128a.m8563u2("Preference(androidx.work.impl.model.Preference).\n Expected:\n", c25656e7, "\n Found:\n", m3085a7)) : new C25683x.C25685b(true, null);
    }
}
