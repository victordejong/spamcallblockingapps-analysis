package androidx.work.impl;

import android.database.Cursor;
import androidx.room.AbstractC2748h;
import androidx.room.C2733e;
import androidx.room.C2754j;
import androidx.room.DatabaseConfiguration;
import androidx.room.p081b.C2724f;
import androidx.sqlite.p082db.AbstractC2792b;
import androidx.sqlite.p082db.SupportSQLiteOpenHelper;
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

    /* renamed from: i */
    private volatile WorkSpecDao f11159i;

    /* renamed from: j */
    private volatile DependencyDao f11160j;

    /* renamed from: k */
    private volatile WorkTagDao f11161k;

    /* renamed from: l */
    private volatile SystemIdInfoDao f11162l;

    /* renamed from: m */
    private volatile WorkNameDao f11163m;

    /* renamed from: n */
    private volatile WorkProgressDao f11164n;

    /* renamed from: o */
    private volatile PreferenceDao f11165o;

    @Override // androidx.room.AbstractC2748h
    /* renamed from: a */
    public final C2733e mo39487a() {
        return new C2733e(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.AbstractC2748h
    /* renamed from: b */
    public final SupportSQLiteOpenHelper mo39484b(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.mo39489a(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new C2754j(databaseConfiguration, new C2754j.AbstractC2755a(11) { // from class: androidx.work.impl.WorkDatabase_Impl.1
            @Override // androidx.room.C2754j.AbstractC2755a
            /* renamed from: a */
            public final void mo39467a() {
                if (WorkDatabase_Impl.this.f10421g != null) {
                    int size = WorkDatabase_Impl.this.f10421g.size();
                    for (int i = 0; i < size; i++) {
                        WorkDatabase_Impl.this.f10421g.get(i);
                    }
                }
            }

            @Override // androidx.room.C2754j.AbstractC2755a
            /* renamed from: a */
            public final void mo39466a(AbstractC2792b abstractC2792b) {
                abstractC2792b.mo39894c("DROP TABLE IF EXISTS `Dependency`");
                abstractC2792b.mo39894c("DROP TABLE IF EXISTS `WorkSpec`");
                abstractC2792b.mo39894c("DROP TABLE IF EXISTS `WorkTag`");
                abstractC2792b.mo39894c("DROP TABLE IF EXISTS `SystemIdInfo`");
                abstractC2792b.mo39894c("DROP TABLE IF EXISTS `WorkName`");
                abstractC2792b.mo39894c("DROP TABLE IF EXISTS `WorkProgress`");
                abstractC2792b.mo39894c("DROP TABLE IF EXISTS `Preference`");
                if (WorkDatabase_Impl.this.f10421g != null) {
                    int size = WorkDatabase_Impl.this.f10421g.size();
                    for (int i = 0; i < size; i++) {
                        WorkDatabase_Impl.this.f10421g.get(i);
                    }
                }
            }

            @Override // androidx.room.C2754j.AbstractC2755a
            /* renamed from: b */
            public final void mo39465b(AbstractC2792b abstractC2792b) {
                abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                abstractC2792b.mo39894c("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
                abstractC2792b.mo39894c("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
                abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
                abstractC2792b.mo39894c("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
                abstractC2792b.mo39894c("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
                abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                abstractC2792b.mo39894c("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
                abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                abstractC2792b.mo39894c("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
                abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                abstractC2792b.mo39894c("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'cf029002fffdcadf079e8d0a1c9a70ac')");
            }

            @Override // androidx.room.C2754j.AbstractC2755a
            /* renamed from: c */
            public final void mo39464c(AbstractC2792b abstractC2792b) {
                WorkDatabase_Impl.this.f10415a = abstractC2792b;
                abstractC2792b.mo39894c("PRAGMA foreign_keys = ON");
                WorkDatabase_Impl.this.m39965a(abstractC2792b);
                if (WorkDatabase_Impl.this.f10421g != null) {
                    int size = WorkDatabase_Impl.this.f10421g.size();
                    for (int i = 0; i < size; i++) {
                        ((AbstractC2748h.AbstractC2750b) WorkDatabase_Impl.this.f10421g.get(i)).mo39488a(abstractC2792b);
                    }
                }
            }

            @Override // androidx.room.C2754j.AbstractC2755a
            /* renamed from: d */
            public final C2754j.C2756b mo39463d(AbstractC2792b abstractC2792b) {
                HashMap hashMap = new HashMap(2);
                hashMap.put("work_spec_id", new C2724f.C2725a("work_spec_id", "TEXT", true, 1, null, 1));
                hashMap.put("prerequisite_id", new C2724f.C2725a("prerequisite_id", "TEXT", true, 2, null, 1));
                HashSet hashSet = new HashSet(2);
                hashSet.add(new C2724f.C2726b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                hashSet.add(new C2724f.C2726b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
                HashSet hashSet2 = new HashSet(2);
                hashSet2.add(new C2724f.C2728d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
                hashSet2.add(new C2724f.C2728d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
                C2724f c2724f = new C2724f("Dependency", hashMap, hashSet, hashSet2);
                C2724f m39991a = C2724f.m39991a(abstractC2792b, "Dependency");
                if (!c2724f.equals(m39991a)) {
                    return new C2754j.C2756b(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + c2724f + "\n Found:\n" + m39991a);
                }
                HashMap hashMap2 = new HashMap(24);
                hashMap2.put("id", new C2724f.C2725a("id", "TEXT", true, 1, null, 1));
                hashMap2.put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, new C2724f.C2725a(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "INTEGER", true, 0, null, 1));
                hashMap2.put("worker_class_name", new C2724f.C2725a("worker_class_name", "TEXT", true, 0, null, 1));
                hashMap2.put("input_merger_class_name", new C2724f.C2725a("input_merger_class_name", "TEXT", false, 0, null, 1));
                hashMap2.put("input", new C2724f.C2725a("input", "BLOB", true, 0, null, 1));
                hashMap2.put("output", new C2724f.C2725a("output", "BLOB", true, 0, null, 1));
                hashMap2.put("initial_delay", new C2724f.C2725a("initial_delay", "INTEGER", true, 0, null, 1));
                hashMap2.put("interval_duration", new C2724f.C2725a("interval_duration", "INTEGER", true, 0, null, 1));
                hashMap2.put("flex_duration", new C2724f.C2725a("flex_duration", "INTEGER", true, 0, null, 1));
                hashMap2.put("run_attempt_count", new C2724f.C2725a("run_attempt_count", "INTEGER", true, 0, null, 1));
                hashMap2.put("backoff_policy", new C2724f.C2725a("backoff_policy", "INTEGER", true, 0, null, 1));
                hashMap2.put("backoff_delay_duration", new C2724f.C2725a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
                hashMap2.put("period_start_time", new C2724f.C2725a("period_start_time", "INTEGER", true, 0, null, 1));
                hashMap2.put("minimum_retention_duration", new C2724f.C2725a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
                hashMap2.put("schedule_requested_at", new C2724f.C2725a("schedule_requested_at", "INTEGER", true, 0, null, 1));
                hashMap2.put("run_in_foreground", new C2724f.C2725a("run_in_foreground", "INTEGER", true, 0, null, 1));
                hashMap2.put("required_network_type", new C2724f.C2725a("required_network_type", "INTEGER", false, 0, null, 1));
                hashMap2.put("requires_charging", new C2724f.C2725a("requires_charging", "INTEGER", true, 0, null, 1));
                hashMap2.put("requires_device_idle", new C2724f.C2725a("requires_device_idle", "INTEGER", true, 0, null, 1));
                hashMap2.put("requires_battery_not_low", new C2724f.C2725a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
                hashMap2.put("requires_storage_not_low", new C2724f.C2725a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
                hashMap2.put("trigger_content_update_delay", new C2724f.C2725a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
                hashMap2.put("trigger_max_content_delay", new C2724f.C2725a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
                hashMap2.put("content_uri_triggers", new C2724f.C2725a("content_uri_triggers", "BLOB", false, 0, null, 1));
                HashSet hashSet3 = new HashSet(0);
                HashSet hashSet4 = new HashSet(2);
                hashSet4.add(new C2724f.C2728d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
                hashSet4.add(new C2724f.C2728d("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time")));
                C2724f c2724f2 = new C2724f("WorkSpec", hashMap2, hashSet3, hashSet4);
                C2724f m39991a2 = C2724f.m39991a(abstractC2792b, "WorkSpec");
                if (!c2724f2.equals(m39991a2)) {
                    return new C2754j.C2756b(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + c2724f2 + "\n Found:\n" + m39991a2);
                }
                HashMap hashMap3 = new HashMap(2);
                hashMap3.put("tag", new C2724f.C2725a("tag", "TEXT", true, 1, null, 1));
                hashMap3.put("work_spec_id", new C2724f.C2725a("work_spec_id", "TEXT", true, 2, null, 1));
                HashSet hashSet5 = new HashSet(1);
                hashSet5.add(new C2724f.C2726b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                HashSet hashSet6 = new HashSet(1);
                hashSet6.add(new C2724f.C2728d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
                C2724f c2724f3 = new C2724f("WorkTag", hashMap3, hashSet5, hashSet6);
                C2724f m39991a3 = C2724f.m39991a(abstractC2792b, "WorkTag");
                if (!c2724f3.equals(m39991a3)) {
                    return new C2754j.C2756b(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + c2724f3 + "\n Found:\n" + m39991a3);
                }
                HashMap hashMap4 = new HashMap(2);
                hashMap4.put("work_spec_id", new C2724f.C2725a("work_spec_id", "TEXT", true, 1, null, 1));
                hashMap4.put("system_id", new C2724f.C2725a("system_id", "INTEGER", true, 0, null, 1));
                HashSet hashSet7 = new HashSet(1);
                hashSet7.add(new C2724f.C2726b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                C2724f c2724f4 = new C2724f("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
                C2724f m39991a4 = C2724f.m39991a(abstractC2792b, "SystemIdInfo");
                if (!c2724f4.equals(m39991a4)) {
                    return new C2754j.C2756b(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + c2724f4 + "\n Found:\n" + m39991a4);
                }
                HashMap hashMap5 = new HashMap(2);
                hashMap5.put("name", new C2724f.C2725a("name", "TEXT", true, 1, null, 1));
                hashMap5.put("work_spec_id", new C2724f.C2725a("work_spec_id", "TEXT", true, 2, null, 1));
                HashSet hashSet8 = new HashSet(1);
                hashSet8.add(new C2724f.C2726b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                HashSet hashSet9 = new HashSet(1);
                hashSet9.add(new C2724f.C2728d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
                C2724f c2724f5 = new C2724f("WorkName", hashMap5, hashSet8, hashSet9);
                C2724f m39991a5 = C2724f.m39991a(abstractC2792b, "WorkName");
                if (!c2724f5.equals(m39991a5)) {
                    return new C2754j.C2756b(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + c2724f5 + "\n Found:\n" + m39991a5);
                }
                HashMap hashMap6 = new HashMap(2);
                hashMap6.put("work_spec_id", new C2724f.C2725a("work_spec_id", "TEXT", true, 1, null, 1));
                hashMap6.put(EventConstants.PROGRESS, new C2724f.C2725a(EventConstants.PROGRESS, "BLOB", true, 0, null, 1));
                HashSet hashSet10 = new HashSet(1);
                hashSet10.add(new C2724f.C2726b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
                C2724f c2724f6 = new C2724f("WorkProgress", hashMap6, hashSet10, new HashSet(0));
                C2724f m39991a6 = C2724f.m39991a(abstractC2792b, "WorkProgress");
                if (!c2724f6.equals(m39991a6)) {
                    return new C2754j.C2756b(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + c2724f6 + "\n Found:\n" + m39991a6);
                }
                HashMap hashMap7 = new HashMap(2);
                hashMap7.put("key", new C2724f.C2725a("key", "TEXT", true, 1, null, 1));
                hashMap7.put("long_value", new C2724f.C2725a("long_value", "INTEGER", false, 0, null, 1));
                C2724f c2724f7 = new C2724f("Preference", hashMap7, new HashSet(0), new HashSet(0));
                C2724f m39991a7 = C2724f.m39991a(abstractC2792b, "Preference");
                if (c2724f7.equals(m39991a7)) {
                    return new C2754j.C2756b(true, null);
                }
                return new C2754j.C2756b(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + c2724f7 + "\n Found:\n" + m39991a7);
            }

            /* JADX WARN: Finally extract failed */
            @Override // androidx.room.C2754j.AbstractC2755a
            /* renamed from: e */
            public final void mo39462e(AbstractC2792b abstractC2792b) {
                ArrayList<String> arrayList = new ArrayList();
                Cursor mo39896b = abstractC2792b.mo39896b("SELECT name FROM sqlite_master WHERE type = 'trigger'");
                while (mo39896b.moveToNext()) {
                    try {
                        arrayList.add(mo39896b.getString(0));
                    } catch (Throwable th) {
                        mo39896b.close();
                        throw th;
                    }
                }
                mo39896b.close();
                for (String str : arrayList) {
                    if (str.startsWith("room_fts_content_sync_")) {
                        abstractC2792b.mo39894c("DROP TRIGGER IF EXISTS ".concat(String.valueOf(str)));
                    }
                }
            }
        }, "cf029002fffdcadf079e8d0a1c9a70ac", "8aff2efc47fafe870c738f727dfcfc6e")).build());
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: j */
    public final WorkSpecDao mo39474j() {
        WorkSpecDao workSpecDao;
        if (this.f11159i != null) {
            return this.f11159i;
        }
        synchronized (this) {
            if (this.f11159i == null) {
                this.f11159i = new WorkSpecDao_Impl(this);
            }
            workSpecDao = this.f11159i;
        }
        return workSpecDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: k */
    public final DependencyDao mo39473k() {
        DependencyDao dependencyDao;
        if (this.f11160j != null) {
            return this.f11160j;
        }
        synchronized (this) {
            if (this.f11160j == null) {
                this.f11160j = new DependencyDao_Impl(this);
            }
            dependencyDao = this.f11160j;
        }
        return dependencyDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: l */
    public final WorkTagDao mo39472l() {
        WorkTagDao workTagDao;
        if (this.f11161k != null) {
            return this.f11161k;
        }
        synchronized (this) {
            if (this.f11161k == null) {
                this.f11161k = new WorkTagDao_Impl(this);
            }
            workTagDao = this.f11161k;
        }
        return workTagDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: m */
    public final SystemIdInfoDao mo39471m() {
        SystemIdInfoDao systemIdInfoDao;
        if (this.f11162l != null) {
            return this.f11162l;
        }
        synchronized (this) {
            if (this.f11162l == null) {
                this.f11162l = new SystemIdInfoDao_Impl(this);
            }
            systemIdInfoDao = this.f11162l;
        }
        return systemIdInfoDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: n */
    public final WorkNameDao mo39470n() {
        WorkNameDao workNameDao;
        if (this.f11163m != null) {
            return this.f11163m;
        }
        synchronized (this) {
            if (this.f11163m == null) {
                this.f11163m = new WorkNameDao_Impl(this);
            }
            workNameDao = this.f11163m;
        }
        return workNameDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: o */
    public final WorkProgressDao mo39469o() {
        WorkProgressDao workProgressDao;
        if (this.f11164n != null) {
            return this.f11164n;
        }
        synchronized (this) {
            if (this.f11164n == null) {
                this.f11164n = new WorkProgressDao_Impl(this);
            }
            workProgressDao = this.f11164n;
        }
        return workProgressDao;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: p */
    public final PreferenceDao mo39468p() {
        PreferenceDao preferenceDao;
        if (this.f11165o != null) {
            return this.f11165o;
        }
        synchronized (this) {
            if (this.f11165o == null) {
                this.f11165o = new PreferenceDao_Impl(this);
            }
            preferenceDao = this.f11165o;
        }
        return preferenceDao;
    }
}
