package androidx.work.impl;

import androidx.p042i.p043a.AbstractC0749b;
import androidx.p042i.p043a.AbstractC0750c;
import androidx.room.AbstractC1044i;
import androidx.room.C1010a;
import androidx.room.C1030f;
import androidx.room.C1050k;
import androidx.room.p050b.C1015c;
import androidx.room.p050b.C1018f;
import androidx.work.impl.p055b.AbstractC1169b;
import androidx.work.impl.p055b.AbstractC1173e;
import androidx.work.impl.p055b.AbstractC1177h;
import androidx.work.impl.p055b.AbstractC1182k;
import androidx.work.impl.p055b.AbstractC1186n;
import androidx.work.impl.p055b.AbstractC1194q;
import androidx.work.impl.p055b.AbstractC1206t;
import androidx.work.impl.p055b.C1170c;
import androidx.work.impl.p055b.C1174f;
import androidx.work.impl.p055b.C1178i;
import androidx.work.impl.p055b.C1183l;
import androidx.work.impl.p055b.C1187o;
import androidx.work.impl.p055b.C1195r;
import androidx.work.impl.p055b.C1207u;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase_Impl.class */
public final class WorkDatabase_Impl extends WorkDatabase {

    /* renamed from: d */
    private volatile AbstractC1194q f3931d;

    /* renamed from: e */
    private volatile AbstractC1169b f3932e;

    /* renamed from: f */
    private volatile AbstractC1206t f3933f;

    /* renamed from: g */
    private volatile AbstractC1177h f3934g;

    /* renamed from: h */
    private volatile AbstractC1182k f3935h;

    /* renamed from: i */
    private volatile AbstractC1186n f3936i;

    /* renamed from: j */
    private volatile AbstractC1173e f3937j;

    @Override // androidx.room.AbstractC1044i
    /* renamed from: b */
    protected AbstractC0750c mo17896b(C1010a c1010a) {
        return c1010a.f3436a.mo17900a(AbstractC0750c.C0752b.m19510a(c1010a.f3437b).m19507a(c1010a.f3438c).m19508a(new C1050k(c1010a, new C1050k.AbstractC1051a(11) { // from class: androidx.work.impl.WorkDatabase_Impl.1
            @Override // androidx.room.C1050k.AbstractC1051a
            /* renamed from: a */
            public void mo17878a(AbstractC0749b abstractC0749b) {
                abstractC0749b.mo19517c("DROP TABLE IF EXISTS `Dependency`");
                abstractC0749b.mo19517c("DROP TABLE IF EXISTS `WorkSpec`");
                abstractC0749b.mo19517c("DROP TABLE IF EXISTS `WorkTag`");
                abstractC0749b.mo19517c("DROP TABLE IF EXISTS `SystemIdInfo`");
                abstractC0749b.mo19517c("DROP TABLE IF EXISTS `WorkName`");
                abstractC0749b.mo19517c("DROP TABLE IF EXISTS `WorkProgress`");
                abstractC0749b.mo19517c("DROP TABLE IF EXISTS `Preference`");
                if (WorkDatabase_Impl.this.f3533c != null) {
                    int size = WorkDatabase_Impl.this.f3533c.size();
                    for (int i = 0; i < size; i++) {
                        ((AbstractC1044i.AbstractC1046b) WorkDatabase_Impl.this.f3533c.get(i)).m18277c(abstractC0749b);
                    }
                }
            }

            @Override // androidx.room.C1050k.AbstractC1051a
            /* renamed from: b */
            public void mo17877b(AbstractC0749b abstractC0749b) {
                abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                abstractC0749b.mo19517c("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
                abstractC0749b.mo19517c("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
                abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
                abstractC0749b.mo19517c("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
                abstractC0749b.mo19517c("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
                abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                abstractC0749b.mo19517c("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
                abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                abstractC0749b.mo19517c("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
                abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                abstractC0749b.mo19517c("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'cf029002fffdcadf079e8d0a1c9a70ac')");
            }

            @Override // androidx.room.C1050k.AbstractC1051a
            /* renamed from: c */
            public void mo17876c(AbstractC0749b abstractC0749b) {
                WorkDatabase_Impl.this.f3531a = abstractC0749b;
                abstractC0749b.mo19517c("PRAGMA foreign_keys = ON");
                WorkDatabase_Impl.this.m18300a(abstractC0749b);
                if (WorkDatabase_Impl.this.f3533c != null) {
                    int size = WorkDatabase_Impl.this.f3533c.size();
                    for (int i = 0; i < size; i++) {
                        ((AbstractC1044i.AbstractC1046b) WorkDatabase_Impl.this.f3533c.get(i)).mo17899b(abstractC0749b);
                    }
                }
            }

            @Override // androidx.room.C1050k.AbstractC1051a
            /* renamed from: d */
            protected void mo17875d(AbstractC0749b abstractC0749b) {
                if (WorkDatabase_Impl.this.f3533c != null) {
                    int size = WorkDatabase_Impl.this.f3533c.size();
                    for (int i = 0; i < size; i++) {
                        ((AbstractC1044i.AbstractC1046b) WorkDatabase_Impl.this.f3533c.get(i)).m18278a(abstractC0749b);
                    }
                }
            }

            @Override // androidx.room.C1050k.AbstractC1051a
            /* renamed from: f */
            protected C1050k.C1052b mo17874f(AbstractC0749b abstractC0749b) {
                C1050k.C1052b c1052b;
                HashMap hashMap = new HashMap(2);
                hashMap.put("work_spec_id", new C1018f.C1019a("work_spec_id", "TEXT", true, 1, null, 1));
                hashMap.put("prerequisite_id", new C1018f.C1019a("prerequisite_id", "TEXT", true, 2, null, 1));
                HashSet hashSet = new HashSet(2);
                hashSet.add(new C1018f.C1020b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                hashSet.add(new C1018f.C1020b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
                HashSet hashSet2 = new HashSet(2);
                hashSet2.add(new C1018f.C1022d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
                hashSet2.add(new C1018f.C1022d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
                C1018f c1018f = new C1018f("Dependency", hashMap, hashSet, hashSet2);
                C1018f m18340a = C1018f.m18340a(abstractC0749b, "Dependency");
                if (!c1018f.equals(m18340a)) {
                    c1052b = new C1050k.C1052b(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + c1018f + "\n Found:\n" + m18340a);
                } else {
                    HashMap hashMap2 = new HashMap(24);
                    hashMap2.put("id", new C1018f.C1019a("id", "TEXT", true, 1, null, 1));
                    hashMap2.put("state", new C1018f.C1019a("state", "INTEGER", true, 0, null, 1));
                    hashMap2.put("worker_class_name", new C1018f.C1019a("worker_class_name", "TEXT", true, 0, null, 1));
                    hashMap2.put("input_merger_class_name", new C1018f.C1019a("input_merger_class_name", "TEXT", false, 0, null, 1));
                    hashMap2.put("input", new C1018f.C1019a("input", "BLOB", true, 0, null, 1));
                    hashMap2.put("output", new C1018f.C1019a("output", "BLOB", true, 0, null, 1));
                    hashMap2.put("initial_delay", new C1018f.C1019a("initial_delay", "INTEGER", true, 0, null, 1));
                    hashMap2.put("interval_duration", new C1018f.C1019a("interval_duration", "INTEGER", true, 0, null, 1));
                    hashMap2.put("flex_duration", new C1018f.C1019a("flex_duration", "INTEGER", true, 0, null, 1));
                    hashMap2.put("run_attempt_count", new C1018f.C1019a("run_attempt_count", "INTEGER", true, 0, null, 1));
                    hashMap2.put("backoff_policy", new C1018f.C1019a("backoff_policy", "INTEGER", true, 0, null, 1));
                    hashMap2.put("backoff_delay_duration", new C1018f.C1019a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
                    hashMap2.put("period_start_time", new C1018f.C1019a("period_start_time", "INTEGER", true, 0, null, 1));
                    hashMap2.put("minimum_retention_duration", new C1018f.C1019a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
                    hashMap2.put("schedule_requested_at", new C1018f.C1019a("schedule_requested_at", "INTEGER", true, 0, null, 1));
                    hashMap2.put("run_in_foreground", new C1018f.C1019a("run_in_foreground", "INTEGER", true, 0, null, 1));
                    hashMap2.put("required_network_type", new C1018f.C1019a("required_network_type", "INTEGER", false, 0, null, 1));
                    hashMap2.put("requires_charging", new C1018f.C1019a("requires_charging", "INTEGER", true, 0, null, 1));
                    hashMap2.put("requires_device_idle", new C1018f.C1019a("requires_device_idle", "INTEGER", true, 0, null, 1));
                    hashMap2.put("requires_battery_not_low", new C1018f.C1019a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
                    hashMap2.put("requires_storage_not_low", new C1018f.C1019a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
                    hashMap2.put("trigger_content_update_delay", new C1018f.C1019a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
                    hashMap2.put("trigger_max_content_delay", new C1018f.C1019a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
                    hashMap2.put("content_uri_triggers", new C1018f.C1019a("content_uri_triggers", "BLOB", false, 0, null, 1));
                    HashSet hashSet3 = new HashSet(0);
                    HashSet hashSet4 = new HashSet(2);
                    hashSet4.add(new C1018f.C1022d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
                    hashSet4.add(new C1018f.C1022d("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time")));
                    C1018f c1018f2 = new C1018f("WorkSpec", hashMap2, hashSet3, hashSet4);
                    C1018f m18340a2 = C1018f.m18340a(abstractC0749b, "WorkSpec");
                    if (!c1018f2.equals(m18340a2)) {
                        c1052b = new C1050k.C1052b(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + c1018f2 + "\n Found:\n" + m18340a2);
                    } else {
                        HashMap hashMap3 = new HashMap(2);
                        hashMap3.put("tag", new C1018f.C1019a("tag", "TEXT", true, 1, null, 1));
                        hashMap3.put("work_spec_id", new C1018f.C1019a("work_spec_id", "TEXT", true, 2, null, 1));
                        HashSet hashSet5 = new HashSet(1);
                        hashSet5.add(new C1018f.C1020b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                        HashSet hashSet6 = new HashSet(1);
                        hashSet6.add(new C1018f.C1022d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
                        C1018f c1018f3 = new C1018f("WorkTag", hashMap3, hashSet5, hashSet6);
                        C1018f m18340a3 = C1018f.m18340a(abstractC0749b, "WorkTag");
                        if (!c1018f3.equals(m18340a3)) {
                            c1052b = new C1050k.C1052b(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + c1018f3 + "\n Found:\n" + m18340a3);
                        } else {
                            HashMap hashMap4 = new HashMap(2);
                            hashMap4.put("work_spec_id", new C1018f.C1019a("work_spec_id", "TEXT", true, 1, null, 1));
                            hashMap4.put("system_id", new C1018f.C1019a("system_id", "INTEGER", true, 0, null, 1));
                            HashSet hashSet7 = new HashSet(1);
                            hashSet7.add(new C1018f.C1020b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                            C1018f c1018f4 = new C1018f("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
                            C1018f m18340a4 = C1018f.m18340a(abstractC0749b, "SystemIdInfo");
                            if (!c1018f4.equals(m18340a4)) {
                                c1052b = new C1050k.C1052b(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + c1018f4 + "\n Found:\n" + m18340a4);
                            } else {
                                HashMap hashMap5 = new HashMap(2);
                                hashMap5.put("name", new C1018f.C1019a("name", "TEXT", true, 1, null, 1));
                                hashMap5.put("work_spec_id", new C1018f.C1019a("work_spec_id", "TEXT", true, 2, null, 1));
                                HashSet hashSet8 = new HashSet(1);
                                hashSet8.add(new C1018f.C1020b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                                HashSet hashSet9 = new HashSet(1);
                                hashSet9.add(new C1018f.C1022d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
                                C1018f c1018f5 = new C1018f("WorkName", hashMap5, hashSet8, hashSet9);
                                C1018f m18340a5 = C1018f.m18340a(abstractC0749b, "WorkName");
                                if (!c1018f5.equals(m18340a5)) {
                                    c1052b = new C1050k.C1052b(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + c1018f5 + "\n Found:\n" + m18340a5);
                                } else {
                                    HashMap hashMap6 = new HashMap(2);
                                    hashMap6.put("work_spec_id", new C1018f.C1019a("work_spec_id", "TEXT", true, 1, null, 1));
                                    hashMap6.put("progress", new C1018f.C1019a("progress", "BLOB", true, 0, null, 1));
                                    HashSet hashSet10 = new HashSet(1);
                                    hashSet10.add(new C1018f.C1020b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                                    C1018f c1018f6 = new C1018f("WorkProgress", hashMap6, hashSet10, new HashSet(0));
                                    C1018f m18340a6 = C1018f.m18340a(abstractC0749b, "WorkProgress");
                                    if (!c1018f6.equals(m18340a6)) {
                                        c1052b = new C1050k.C1052b(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + c1018f6 + "\n Found:\n" + m18340a6);
                                    } else {
                                        HashMap hashMap7 = new HashMap(2);
                                        hashMap7.put("key", new C1018f.C1019a("key", "TEXT", true, 1, null, 1));
                                        hashMap7.put("long_value", new C1018f.C1019a("long_value", "INTEGER", false, 0, null, 1));
                                        C1018f c1018f7 = new C1018f("Preference", hashMap7, new HashSet(0), new HashSet(0));
                                        C1018f m18340a7 = C1018f.m18340a(abstractC0749b, "Preference");
                                        c1052b = !c1018f7.equals(m18340a7) ? new C1050k.C1052b(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + c1018f7 + "\n Found:\n" + m18340a7) : new C1050k.C1052b(true, null);
                                    }
                                }
                            }
                        }
                    }
                }
                return c1052b;
            }

            @Override // androidx.room.C1050k.AbstractC1051a
            /* renamed from: g */
            public void mo17873g(AbstractC0749b abstractC0749b) {
                C1015c.m18347a(abstractC0749b);
            }

            @Override // androidx.room.C1050k.AbstractC1051a
            /* renamed from: h */
            public void mo17872h(AbstractC0749b abstractC0749b) {
            }
        }, "cf029002fffdcadf079e8d0a1c9a70ac", "8aff2efc47fafe870c738f727dfcfc6e")).m19509a());
    }

    @Override // androidx.room.AbstractC1044i
    /* renamed from: c */
    protected C1030f mo17893c() {
        return new C1030f(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: o */
    public AbstractC1194q mo17885o() {
        AbstractC1194q abstractC1194q;
        if (this.f3931d != null) {
            abstractC1194q = this.f3931d;
        } else {
            synchronized (this) {
                if (this.f3931d == null) {
                    this.f3931d = new C1195r(this);
                }
                abstractC1194q = this.f3931d;
            }
        }
        return abstractC1194q;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: p */
    public AbstractC1169b mo17884p() {
        AbstractC1169b abstractC1169b;
        if (this.f3932e != null) {
            abstractC1169b = this.f3932e;
        } else {
            synchronized (this) {
                if (this.f3932e == null) {
                    this.f3932e = new C1170c(this);
                }
                abstractC1169b = this.f3932e;
            }
        }
        return abstractC1169b;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: q */
    public AbstractC1206t mo17883q() {
        AbstractC1206t abstractC1206t;
        if (this.f3933f != null) {
            abstractC1206t = this.f3933f;
        } else {
            synchronized (this) {
                if (this.f3933f == null) {
                    this.f3933f = new C1207u(this);
                }
                abstractC1206t = this.f3933f;
            }
        }
        return abstractC1206t;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: r */
    public AbstractC1177h mo17882r() {
        AbstractC1177h abstractC1177h;
        if (this.f3934g != null) {
            abstractC1177h = this.f3934g;
        } else {
            synchronized (this) {
                if (this.f3934g == null) {
                    this.f3934g = new C1178i(this);
                }
                abstractC1177h = this.f3934g;
            }
        }
        return abstractC1177h;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: s */
    public AbstractC1182k mo17881s() {
        AbstractC1182k abstractC1182k;
        if (this.f3935h != null) {
            abstractC1182k = this.f3935h;
        } else {
            synchronized (this) {
                if (this.f3935h == null) {
                    this.f3935h = new C1183l(this);
                }
                abstractC1182k = this.f3935h;
            }
        }
        return abstractC1182k;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: t */
    public AbstractC1186n mo17880t() {
        AbstractC1186n abstractC1186n;
        if (this.f3936i != null) {
            abstractC1186n = this.f3936i;
        } else {
            synchronized (this) {
                if (this.f3936i == null) {
                    this.f3936i = new C1187o(this);
                }
                abstractC1186n = this.f3936i;
            }
        }
        return abstractC1186n;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: u */
    public AbstractC1173e mo17879u() {
        AbstractC1173e abstractC1173e;
        if (this.f3937j != null) {
            abstractC1173e = this.f3937j;
        } else {
            synchronized (this) {
                if (this.f3937j == null) {
                    this.f3937j = new C1174f(this);
                }
                abstractC1173e = this.f3937j;
            }
        }
        return abstractC1173e;
    }
}
