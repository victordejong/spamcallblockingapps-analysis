package androidx.work.impl;

import androidx.room.C0997a;
import androidx.room.C1006f;
import androidx.room.C1021j;
import androidx.room.RoomDatabase;
import androidx.room.p012q.C1033c;
import androidx.room.p012q.C1036f;
import androidx.work.impl.p018n.AbstractC1322b;
import androidx.work.impl.p018n.AbstractC1326e;
import androidx.work.impl.p018n.AbstractC1330h;
import androidx.work.impl.p018n.AbstractC1335k;
import androidx.work.impl.p018n.AbstractC1339n;
import androidx.work.impl.p018n.AbstractC1347q;
import androidx.work.impl.p018n.AbstractC1359t;
import androidx.work.impl.p018n.C1323c;
import androidx.work.impl.p018n.C1327f;
import androidx.work.impl.p018n.C1331i;
import androidx.work.impl.p018n.C1336l;
import androidx.work.impl.p018n.C1340o;
import androidx.work.impl.p018n.C1348r;
import androidx.work.impl.p018n.C1360u;
import com.allinone.callerid.bean.ShortCut;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import p020b.p070r.p071a.AbstractC1772b;
import p020b.p070r.p071a.AbstractC1773c;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase_Impl.class */
public final class WorkDatabase_Impl extends WorkDatabase {

    /* renamed from: m */
    private volatile AbstractC1347q f5306m;

    /* renamed from: n */
    private volatile AbstractC1322b f5307n;

    /* renamed from: o */
    private volatile AbstractC1359t f5308o;

    /* renamed from: p */
    private volatile AbstractC1330h f5309p;

    /* renamed from: q */
    private volatile AbstractC1335k f5310q;

    /* renamed from: r */
    private volatile AbstractC1339n f5311r;

    /* renamed from: s */
    private volatile AbstractC1326e f5312s;

    /* renamed from: androidx.work.impl.WorkDatabase_Impl$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase_Impl$a.class */
    class C1248a extends C1021j.AbstractC1022a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1248a(int i) {
            super(i);
            WorkDatabase_Impl.this = r4;
        }

        @Override // androidx.room.C1021j.AbstractC1022a
        /* renamed from: a */
        public void mo30508a(AbstractC1772b abstractC1772b) {
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            abstractC1772b.mo28910n("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            abstractC1772b.mo28910n("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
            abstractC1772b.mo28910n("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            abstractC1772b.mo28910n("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            abstractC1772b.mo28910n("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            abstractC1772b.mo28910n("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC1772b.mo28910n("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
        }

        @Override // androidx.room.C1021j.AbstractC1022a
        /* renamed from: b */
        public void mo30507b(AbstractC1772b abstractC1772b) {
            abstractC1772b.mo28910n("DROP TABLE IF EXISTS `Dependency`");
            abstractC1772b.mo28910n("DROP TABLE IF EXISTS `WorkSpec`");
            abstractC1772b.mo28910n("DROP TABLE IF EXISTS `WorkTag`");
            abstractC1772b.mo28910n("DROP TABLE IF EXISTS `SystemIdInfo`");
            abstractC1772b.mo28910n("DROP TABLE IF EXISTS `WorkName`");
            abstractC1772b.mo28910n("DROP TABLE IF EXISTS `WorkProgress`");
            abstractC1772b.mo28910n("DROP TABLE IF EXISTS `Preference`");
            if (((RoomDatabase) WorkDatabase_Impl.this).f4411h != null) {
                int size = ((RoomDatabase) WorkDatabase_Impl.this).f4411h.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.AbstractC0995b) ((RoomDatabase) WorkDatabase_Impl.this).f4411h.get(i)).m31270b(abstractC1772b);
                }
            }
        }

        @Override // androidx.room.C1021j.AbstractC1022a
        /* renamed from: c */
        protected void mo30506c(AbstractC1772b abstractC1772b) {
            if (((RoomDatabase) WorkDatabase_Impl.this).f4411h != null) {
                int size = ((RoomDatabase) WorkDatabase_Impl.this).f4411h.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.AbstractC0995b) ((RoomDatabase) WorkDatabase_Impl.this).f4411h.get(i)).m31271a(abstractC1772b);
                }
            }
        }

        @Override // androidx.room.C1021j.AbstractC1022a
        /* renamed from: d */
        public void mo30505d(AbstractC1772b abstractC1772b) {
            ((RoomDatabase) WorkDatabase_Impl.this).f4404a = abstractC1772b;
            abstractC1772b.mo28910n("PRAGMA foreign_keys = ON");
            WorkDatabase_Impl.this.m31285m(abstractC1772b);
            if (((RoomDatabase) WorkDatabase_Impl.this).f4411h != null) {
                int size = ((RoomDatabase) WorkDatabase_Impl.this).f4411h.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.AbstractC0995b) ((RoomDatabase) WorkDatabase_Impl.this).f4411h.get(i)).mo30529c(abstractC1772b);
                }
            }
        }

        @Override // androidx.room.C1021j.AbstractC1022a
        /* renamed from: e */
        public void mo30504e(AbstractC1772b abstractC1772b) {
        }

        @Override // androidx.room.C1021j.AbstractC1022a
        /* renamed from: f */
        public void mo30503f(AbstractC1772b abstractC1772b) {
            C1033c.m31208a(abstractC1772b);
        }

        @Override // androidx.room.C1021j.AbstractC1022a
        /* renamed from: g */
        protected C1021j.C1023b mo30502g(AbstractC1772b abstractC1772b) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("work_spec_id", new C1036f.C1037a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap.put("prerequisite_id", new C1036f.C1037a("prerequisite_id", "TEXT", true, 2, null, 1));
            HashSet hashSet = new HashSet(2);
            hashSet.add(new C1036f.C1038b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            hashSet.add(new C1036f.C1038b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new C1036f.C1040d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
            hashSet2.add(new C1036f.C1040d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
            C1036f c1036f = new C1036f("Dependency", hashMap, hashSet, hashSet2);
            C1036f m31202a = C1036f.m31202a(abstractC1772b, "Dependency");
            if (!c1036f.equals(m31202a)) {
                return new C1021j.C1023b(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + c1036f + "\n Found:\n" + m31202a);
            }
            HashMap hashMap2 = new HashMap(25);
            hashMap2.put("id", new C1036f.C1037a("id", "TEXT", true, 1, null, 1));
            hashMap2.put("state", new C1036f.C1037a("state", "INTEGER", true, 0, null, 1));
            hashMap2.put("worker_class_name", new C1036f.C1037a("worker_class_name", "TEXT", true, 0, null, 1));
            hashMap2.put("input_merger_class_name", new C1036f.C1037a("input_merger_class_name", "TEXT", false, 0, null, 1));
            hashMap2.put("input", new C1036f.C1037a("input", "BLOB", true, 0, null, 1));
            hashMap2.put("output", new C1036f.C1037a("output", "BLOB", true, 0, null, 1));
            hashMap2.put("initial_delay", new C1036f.C1037a("initial_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("interval_duration", new C1036f.C1037a("interval_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("flex_duration", new C1036f.C1037a("flex_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("run_attempt_count", new C1036f.C1037a("run_attempt_count", "INTEGER", true, 0, null, 1));
            hashMap2.put("backoff_policy", new C1036f.C1037a("backoff_policy", "INTEGER", true, 0, null, 1));
            hashMap2.put("backoff_delay_duration", new C1036f.C1037a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("period_start_time", new C1036f.C1037a("period_start_time", "INTEGER", true, 0, null, 1));
            hashMap2.put("minimum_retention_duration", new C1036f.C1037a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("schedule_requested_at", new C1036f.C1037a("schedule_requested_at", "INTEGER", true, 0, null, 1));
            hashMap2.put("run_in_foreground", new C1036f.C1037a("run_in_foreground", "INTEGER", true, 0, null, 1));
            hashMap2.put("out_of_quota_policy", new C1036f.C1037a("out_of_quota_policy", "INTEGER", true, 0, null, 1));
            hashMap2.put("required_network_type", new C1036f.C1037a("required_network_type", "INTEGER", false, 0, null, 1));
            hashMap2.put("requires_charging", new C1036f.C1037a("requires_charging", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_device_idle", new C1036f.C1037a("requires_device_idle", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_battery_not_low", new C1036f.C1037a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_storage_not_low", new C1036f.C1037a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
            hashMap2.put("trigger_content_update_delay", new C1036f.C1037a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("trigger_max_content_delay", new C1036f.C1037a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("content_uri_triggers", new C1036f.C1037a("content_uri_triggers", "BLOB", false, 0, null, 1));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(2);
            hashSet4.add(new C1036f.C1040d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
            hashSet4.add(new C1036f.C1040d("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time")));
            C1036f c1036f2 = new C1036f("WorkSpec", hashMap2, hashSet3, hashSet4);
            C1036f m31202a2 = C1036f.m31202a(abstractC1772b, "WorkSpec");
            if (!c1036f2.equals(m31202a2)) {
                return new C1021j.C1023b(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + c1036f2 + "\n Found:\n" + m31202a2);
            }
            HashMap hashMap3 = new HashMap(2);
            hashMap3.put("tag", new C1036f.C1037a("tag", "TEXT", true, 1, null, 1));
            hashMap3.put("work_spec_id", new C1036f.C1037a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet5 = new HashSet(1);
            hashSet5.add(new C1036f.C1038b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet6 = new HashSet(1);
            hashSet6.add(new C1036f.C1040d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
            C1036f c1036f3 = new C1036f("WorkTag", hashMap3, hashSet5, hashSet6);
            C1036f m31202a3 = C1036f.m31202a(abstractC1772b, "WorkTag");
            if (!c1036f3.equals(m31202a3)) {
                return new C1021j.C1023b(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + c1036f3 + "\n Found:\n" + m31202a3);
            }
            HashMap hashMap4 = new HashMap(2);
            hashMap4.put("work_spec_id", new C1036f.C1037a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap4.put("system_id", new C1036f.C1037a("system_id", "INTEGER", true, 0, null, 1));
            HashSet hashSet7 = new HashSet(1);
            hashSet7.add(new C1036f.C1038b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            C1036f c1036f4 = new C1036f("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
            C1036f m31202a4 = C1036f.m31202a(abstractC1772b, "SystemIdInfo");
            if (!c1036f4.equals(m31202a4)) {
                return new C1021j.C1023b(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + c1036f4 + "\n Found:\n" + m31202a4);
            }
            HashMap hashMap5 = new HashMap(2);
            hashMap5.put(ShortCut.NAME, new C1036f.C1037a(ShortCut.NAME, "TEXT", true, 1, null, 1));
            hashMap5.put("work_spec_id", new C1036f.C1037a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet8 = new HashSet(1);
            hashSet8.add(new C1036f.C1038b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet9 = new HashSet(1);
            hashSet9.add(new C1036f.C1040d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
            C1036f c1036f5 = new C1036f("WorkName", hashMap5, hashSet8, hashSet9);
            C1036f m31202a5 = C1036f.m31202a(abstractC1772b, "WorkName");
            if (!c1036f5.equals(m31202a5)) {
                return new C1021j.C1023b(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + c1036f5 + "\n Found:\n" + m31202a5);
            }
            HashMap hashMap6 = new HashMap(2);
            hashMap6.put("work_spec_id", new C1036f.C1037a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap6.put("progress", new C1036f.C1037a("progress", "BLOB", true, 0, null, 1));
            HashSet hashSet10 = new HashSet(1);
            hashSet10.add(new C1036f.C1038b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            C1036f c1036f6 = new C1036f("WorkProgress", hashMap6, hashSet10, new HashSet(0));
            C1036f m31202a6 = C1036f.m31202a(abstractC1772b, "WorkProgress");
            if (!c1036f6.equals(m31202a6)) {
                return new C1021j.C1023b(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + c1036f6 + "\n Found:\n" + m31202a6);
            }
            HashMap hashMap7 = new HashMap(2);
            hashMap7.put("key", new C1036f.C1037a("key", "TEXT", true, 1, null, 1));
            hashMap7.put("long_value", new C1036f.C1037a("long_value", "INTEGER", false, 0, null, 1));
            C1036f c1036f7 = new C1036f("Preference", hashMap7, new HashSet(0), new HashSet(0));
            C1036f m31202a7 = C1036f.m31202a(abstractC1772b, "Preference");
            if (c1036f7.equals(m31202a7)) {
                return new C1021j.C1023b(true, null);
            }
            return new C1021j.C1023b(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + c1036f7 + "\n Found:\n" + m31202a7);
        }
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: A */
    public AbstractC1339n mo30528A() {
        AbstractC1339n abstractC1339n;
        if (this.f5311r != null) {
            return this.f5311r;
        }
        synchronized (this) {
            if (this.f5311r == null) {
                this.f5311r = new C1340o(this);
            }
            abstractC1339n = this.f5311r;
        }
        return abstractC1339n;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: B */
    public AbstractC1347q mo30527B() {
        AbstractC1347q abstractC1347q;
        if (this.f5306m != null) {
            return this.f5306m;
        }
        synchronized (this) {
            if (this.f5306m == null) {
                this.f5306m = new C1348r(this);
            }
            abstractC1347q = this.f5306m;
        }
        return abstractC1347q;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: C */
    public AbstractC1359t mo30526C() {
        AbstractC1359t abstractC1359t;
        if (this.f5308o != null) {
            return this.f5308o;
        }
        synchronized (this) {
            if (this.f5308o == null) {
                this.f5308o = new C1360u(this);
            }
            abstractC1359t = this.f5308o;
        }
        return abstractC1359t;
    }

    @Override // androidx.room.RoomDatabase
    /* renamed from: e */
    protected C1006f mo30514e() {
        return new C1006f(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.RoomDatabase
    /* renamed from: f */
    protected AbstractC1773c mo30513f(C0997a c0997a) {
        return c0997a.f4437a.mo28902a(AbstractC1773c.C1775b.m28926a(c0997a.f4438b).m28923c(c0997a.f4439c).m28924b(new C1021j(c0997a, new C1248a(12), "c103703e120ae8cc73c9248622f3cd1e", "49f946663a8deb7054212b8adda248c6")).m28925a());
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: t */
    public AbstractC1322b mo30512t() {
        AbstractC1322b abstractC1322b;
        if (this.f5307n != null) {
            return this.f5307n;
        }
        synchronized (this) {
            if (this.f5307n == null) {
                this.f5307n = new C1323c(this);
            }
            abstractC1322b = this.f5307n;
        }
        return abstractC1322b;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: x */
    public AbstractC1326e mo30511x() {
        AbstractC1326e abstractC1326e;
        if (this.f5312s != null) {
            return this.f5312s;
        }
        synchronized (this) {
            if (this.f5312s == null) {
                this.f5312s = new C1327f(this);
            }
            abstractC1326e = this.f5312s;
        }
        return abstractC1326e;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: y */
    public AbstractC1330h mo30510y() {
        AbstractC1330h abstractC1330h;
        if (this.f5309p != null) {
            return this.f5309p;
        }
        synchronized (this) {
            if (this.f5309p == null) {
                this.f5309p = new C1331i(this);
            }
            abstractC1330h = this.f5309p;
        }
        return abstractC1330h;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: z */
    public AbstractC1335k mo30509z() {
        AbstractC1335k abstractC1335k;
        if (this.f5310q != null) {
            return this.f5310q;
        }
        synchronized (this) {
            if (this.f5310q == null) {
                this.f5310q = new C1336l(this);
            }
            abstractC1335k = this.f5310q;
        }
        return abstractC1335k;
    }
}
