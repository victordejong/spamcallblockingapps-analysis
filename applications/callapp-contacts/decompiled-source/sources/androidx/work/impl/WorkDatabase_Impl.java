package androidx.work.impl;

import android.database.Cursor;
import androidx.room.DatabaseConfiguration;
import androidx.room.b.f;
import androidx.room.e;
import androidx.room.h;
import androidx.room.j;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.b;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.model.WorkTagDao_Impl;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase_Impl.class */
public final class WorkDatabase_Impl extends WorkDatabase {
    private volatile WorkSpecDao i;
    private volatile DependencyDao j;
    private volatile WorkTagDao k;
    private volatile SystemIdInfoDao l;
    private volatile WorkNameDao m;
    private volatile WorkProgressDao n;
    private volatile PreferenceDao o;

    @Override // androidx.room.h
    public final e a() {
        return new e(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.h
    public final SupportSQLiteOpenHelper b(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.a(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new j(databaseConfiguration, new j.a(11) { // from class: androidx.work.impl.WorkDatabase_Impl.1
            @Override // androidx.room.j.a
            public final void a() {
                if (WorkDatabase_Impl.this.g != null) {
                    int size = WorkDatabase_Impl.this.g.size();
                    for (int i = 0; i < size; i++) {
                        WorkDatabase_Impl.this.g.get(i);
                    }
                }
            }

            @Override // androidx.room.j.a
            public final void a(b bVar) {
                bVar.c("DROP TABLE IF EXISTS `Dependency`");
                bVar.c("DROP TABLE IF EXISTS `WorkSpec`");
                bVar.c("DROP TABLE IF EXISTS `WorkTag`");
                bVar.c("DROP TABLE IF EXISTS `SystemIdInfo`");
                bVar.c("DROP TABLE IF EXISTS `WorkName`");
                bVar.c("DROP TABLE IF EXISTS `WorkProgress`");
                bVar.c("DROP TABLE IF EXISTS `Preference`");
                if (WorkDatabase_Impl.this.g != null) {
                    int size = WorkDatabase_Impl.this.g.size();
                    for (int i = 0; i < size; i++) {
                        WorkDatabase_Impl.this.g.get(i);
                    }
                }
            }

            @Override // androidx.room.j.a
            public final void b(b bVar) {
                bVar.c("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                bVar.c("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
                bVar.c("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
                bVar.c("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
                bVar.c("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
                bVar.c("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
                bVar.c("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                bVar.c("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
                bVar.c("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                bVar.c("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                bVar.c("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
                bVar.c("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                bVar.c("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                bVar.c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                bVar.c("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'cf029002fffdcadf079e8d0a1c9a70ac')");
            }

            @Override // androidx.room.j.a
            public final void c(b bVar) {
                WorkDatabase_Impl.this.f5571a = bVar;
                bVar.c("PRAGMA foreign_keys = ON");
                WorkDatabase_Impl.this.a(bVar);
                if (WorkDatabase_Impl.this.g != null) {
                    int size = WorkDatabase_Impl.this.g.size();
                    for (int i = 0; i < size; i++) {
                        ((h.b) WorkDatabase_Impl.this.g.get(i)).a(bVar);
                    }
                }
            }

            @Override // androidx.room.j.a
            public final j.b d(b bVar) {
                HashMap hashMap = new HashMap(2);
                hashMap.put("work_spec_id", new f.a("work_spec_id", "TEXT", true, 1, null, 1));
                hashMap.put("prerequisite_id", new f.a("prerequisite_id", "TEXT", true, 2, null, 1));
                HashSet hashSet = new HashSet(2);
                hashSet.add(new f.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                hashSet.add(new f.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
                HashSet hashSet2 = new HashSet(2);
                hashSet2.add(new f.d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
                hashSet2.add(new f.d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
                f fVar = new f("Dependency", hashMap, hashSet, hashSet2);
                f a2 = f.a(bVar, "Dependency");
                if (!fVar.equals(a2)) {
                    return new j.b(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + fVar + "\n Found:\n" + a2);
                }
                HashMap hashMap2 = new HashMap(24);
                hashMap2.put("id", new f.a("id", "TEXT", true, 1, null, 1));
                hashMap2.put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, new f.a(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "INTEGER", true, 0, null, 1));
                hashMap2.put("worker_class_name", new f.a("worker_class_name", "TEXT", true, 0, null, 1));
                hashMap2.put("input_merger_class_name", new f.a("input_merger_class_name", "TEXT", false, 0, null, 1));
                hashMap2.put("input", new f.a("input", "BLOB", true, 0, null, 1));
                hashMap2.put("output", new f.a("output", "BLOB", true, 0, null, 1));
                hashMap2.put("initial_delay", new f.a("initial_delay", "INTEGER", true, 0, null, 1));
                hashMap2.put("interval_duration", new f.a("interval_duration", "INTEGER", true, 0, null, 1));
                hashMap2.put("flex_duration", new f.a("flex_duration", "INTEGER", true, 0, null, 1));
                hashMap2.put("run_attempt_count", new f.a("run_attempt_count", "INTEGER", true, 0, null, 1));
                hashMap2.put("backoff_policy", new f.a("backoff_policy", "INTEGER", true, 0, null, 1));
                hashMap2.put("backoff_delay_duration", new f.a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
                hashMap2.put("period_start_time", new f.a("period_start_time", "INTEGER", true, 0, null, 1));
                hashMap2.put("minimum_retention_duration", new f.a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
                hashMap2.put("schedule_requested_at", new f.a("schedule_requested_at", "INTEGER", true, 0, null, 1));
                hashMap2.put("run_in_foreground", new f.a("run_in_foreground", "INTEGER", true, 0, null, 1));
                hashMap2.put("required_network_type", new f.a("required_network_type", "INTEGER", false, 0, null, 1));
                hashMap2.put("requires_charging", new f.a("requires_charging", "INTEGER", true, 0, null, 1));
                hashMap2.put("requires_device_idle", new f.a("requires_device_idle", "INTEGER", true, 0, null, 1));
                hashMap2.put("requires_battery_not_low", new f.a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
                hashMap2.put("requires_storage_not_low", new f.a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
                hashMap2.put("trigger_content_update_delay", new f.a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
                hashMap2.put("trigger_max_content_delay", new f.a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
                hashMap2.put("content_uri_triggers", new f.a("content_uri_triggers", "BLOB", false, 0, null, 1));
                HashSet hashSet3 = new HashSet(0);
                HashSet hashSet4 = new HashSet(2);
                hashSet4.add(new f.d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
                hashSet4.add(new f.d("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time")));
                f fVar2 = new f("WorkSpec", hashMap2, hashSet3, hashSet4);
                f a3 = f.a(bVar, "WorkSpec");
                if (!fVar2.equals(a3)) {
                    return new j.b(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + fVar2 + "\n Found:\n" + a3);
                }
                HashMap hashMap3 = new HashMap(2);
                hashMap3.put("tag", new f.a("tag", "TEXT", true, 1, null, 1));
                hashMap3.put("work_spec_id", new f.a("work_spec_id", "TEXT", true, 2, null, 1));
                HashSet hashSet5 = new HashSet(1);
                hashSet5.add(new f.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                HashSet hashSet6 = new HashSet(1);
                hashSet6.add(new f.d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
                f fVar3 = new f("WorkTag", hashMap3, hashSet5, hashSet6);
                f a4 = f.a(bVar, "WorkTag");
                if (!fVar3.equals(a4)) {
                    return new j.b(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + fVar3 + "\n Found:\n" + a4);
                }
                HashMap hashMap4 = new HashMap(2);
                hashMap4.put("work_spec_id", new f.a("work_spec_id", "TEXT", true, 1, null, 1));
                hashMap4.put("system_id", new f.a("system_id", "INTEGER", true, 0, null, 1));
                HashSet hashSet7 = new HashSet(1);
                hashSet7.add(new f.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                f fVar4 = new f("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
                f a5 = f.a(bVar, "SystemIdInfo");
                if (!fVar4.equals(a5)) {
                    return new j.b(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + fVar4 + "\n Found:\n" + a5);
                }
                HashMap hashMap5 = new HashMap(2);
                hashMap5.put("name", new f.a("name", "TEXT", true, 1, null, 1));
                hashMap5.put("work_spec_id", new f.a("work_spec_id", "TEXT", true, 2, null, 1));
                HashSet hashSet8 = new HashSet(1);
                hashSet8.add(new f.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                HashSet hashSet9 = new HashSet(1);
                hashSet9.add(new f.d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
                f fVar5 = new f("WorkName", hashMap5, hashSet8, hashSet9);
                f a6 = f.a(bVar, "WorkName");
                if (!fVar5.equals(a6)) {
                    return new j.b(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + fVar5 + "\n Found:\n" + a6);
                }
                HashMap hashMap6 = new HashMap(2);
                hashMap6.put("work_spec_id", new f.a("work_spec_id", "TEXT", true, 1, null, 1));
                hashMap6.put(EventConstants.PROGRESS, new f.a(EventConstants.PROGRESS, "BLOB", true, 0, null, 1));
                HashSet hashSet10 = new HashSet(1);
                hashSet10.add(new f.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                f fVar6 = new f("WorkProgress", hashMap6, hashSet10, new HashSet(0));
                f a7 = f.a(bVar, "WorkProgress");
                if (!fVar6.equals(a7)) {
                    return new j.b(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + fVar6 + "\n Found:\n" + a7);
                }
                HashMap hashMap7 = new HashMap(2);
                hashMap7.put("key", new f.a("key", "TEXT", true, 1, null, 1));
                hashMap7.put("long_value", new f.a("long_value", "INTEGER", false, 0, null, 1));
                f fVar7 = new f("Preference", hashMap7, new HashSet(0), new HashSet(0));
                f a8 = f.a(bVar, "Preference");
                if (fVar7.equals(a8)) {
                    return new j.b(true, null);
                }
                return new j.b(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + fVar7 + "\n Found:\n" + a8);
            }

            /* JADX WARN: Finally extract failed */
            @Override // androidx.room.j.a
            public final void e(b bVar) {
                ArrayList<String> arrayList = new ArrayList();
                Cursor b2 = bVar.b("SELECT name FROM sqlite_master WHERE type = 'trigger'");
                while (b2.moveToNext()) {
                    try {
                        arrayList.add(b2.getString(0));
                    } catch (Throwable th) {
                        b2.close();
                        throw th;
                    }
                }
                b2.close();
                for (String str : arrayList) {
                    if (str.startsWith("room_fts_content_sync_")) {
                        bVar.c("DROP TRIGGER IF EXISTS ".concat(String.valueOf(str)));
                    }
                }
            }
        }, "cf029002fffdcadf079e8d0a1c9a70ac", "8aff2efc47fafe870c738f727dfcfc6e")).build());
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkSpecDao j() {
        WorkSpecDao workSpecDao;
        if (this.i != null) {
            return this.i;
        }
        synchronized (this) {
            if (this.i == null) {
                this.i = new WorkSpecDao_Impl(this);
            }
            workSpecDao = this.i;
        }
        return workSpecDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final DependencyDao k() {
        DependencyDao dependencyDao;
        if (this.j != null) {
            return this.j;
        }
        synchronized (this) {
            if (this.j == null) {
                this.j = new DependencyDao_Impl(this);
            }
            dependencyDao = this.j;
        }
        return dependencyDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkTagDao l() {
        WorkTagDao workTagDao;
        if (this.k != null) {
            return this.k;
        }
        synchronized (this) {
            if (this.k == null) {
                this.k = new WorkTagDao_Impl(this);
            }
            workTagDao = this.k;
        }
        return workTagDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final SystemIdInfoDao m() {
        SystemIdInfoDao systemIdInfoDao;
        if (this.l != null) {
            return this.l;
        }
        synchronized (this) {
            if (this.l == null) {
                this.l = new SystemIdInfoDao_Impl(this);
            }
            systemIdInfoDao = this.l;
        }
        return systemIdInfoDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkNameDao n() {
        WorkNameDao workNameDao;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            if (this.m == null) {
                this.m = new WorkNameDao_Impl(this);
            }
            workNameDao = this.m;
        }
        return workNameDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkProgressDao o() {
        WorkProgressDao workProgressDao;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            if (this.n == null) {
                this.n = new WorkProgressDao_Impl(this);
            }
            workProgressDao = this.n;
        }
        return workProgressDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final PreferenceDao p() {
        PreferenceDao preferenceDao;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            if (this.o == null) {
                this.o = new PreferenceDao_Impl(this);
            }
            preferenceDao = this.o;
        }
        return preferenceDao;
    }
}
