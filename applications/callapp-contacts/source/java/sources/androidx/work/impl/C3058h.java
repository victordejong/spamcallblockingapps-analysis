package androidx.work.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.room.p080a.AbstractC2715a;
import androidx.sqlite.p082db.AbstractC2792b;
import androidx.work.impl.utils.C3122c;
/* renamed from: androidx.work.impl.h */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/h.class */
public final class C3058h {

    /* renamed from: a */
    public static AbstractC2715a f11339a = new AbstractC2715a(1, 2) { // from class: androidx.work.impl.h.1
        @Override // androidx.room.p080a.AbstractC2715a
        /* renamed from: a */
        public final void mo39366a(AbstractC2792b abstractC2792b) {
            abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            abstractC2792b.mo39894c("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            abstractC2792b.mo39894c("DROP TABLE IF EXISTS alarmInfo");
            abstractC2792b.mo39894c("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    };

    /* renamed from: b */
    public static AbstractC2715a f11340b = new AbstractC2715a(3, 4) { // from class: androidx.work.impl.h.2
        @Override // androidx.room.p080a.AbstractC2715a
        /* renamed from: a */
        public final void mo39366a(AbstractC2792b abstractC2792b) {
            if (Build.VERSION.SDK_INT >= 23) {
                abstractC2792b.mo39894c("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
            }
        }
    };

    /* renamed from: c */
    public static AbstractC2715a f11341c = new AbstractC2715a(4, 5) { // from class: androidx.work.impl.h.3
        @Override // androidx.room.p080a.AbstractC2715a
        /* renamed from: a */
        public final void mo39366a(AbstractC2792b abstractC2792b) {
            abstractC2792b.mo39894c("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            abstractC2792b.mo39894c("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    };

    /* renamed from: d */
    public static AbstractC2715a f11342d = new AbstractC2715a(6, 7) { // from class: androidx.work.impl.h.4
        @Override // androidx.room.p080a.AbstractC2715a
        /* renamed from: a */
        public final void mo39366a(AbstractC2792b abstractC2792b) {
            abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    };

    /* renamed from: e */
    public static AbstractC2715a f11343e = new AbstractC2715a(7, 8) { // from class: androidx.work.impl.h.5
        @Override // androidx.room.p080a.AbstractC2715a
        /* renamed from: a */
        public final void mo39366a(AbstractC2792b abstractC2792b) {
            abstractC2792b.mo39894c("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    };

    /* renamed from: f */
    public static AbstractC2715a f11344f = new AbstractC2715a(8, 9) { // from class: androidx.work.impl.h.6
        @Override // androidx.room.p080a.AbstractC2715a
        /* renamed from: a */
        public final void mo39366a(AbstractC2792b abstractC2792b) {
            abstractC2792b.mo39894c("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    };

    /* renamed from: androidx.work.impl.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$a.class */
    public static final class C3065a extends AbstractC2715a {

        /* renamed from: c */
        final Context f11345c;

        public C3065a(Context context, int i, int i2) {
            super(i, i2);
            this.f11345c = context;
        }

        @Override // androidx.room.p080a.AbstractC2715a
        /* renamed from: a */
        public final void mo39366a(AbstractC2792b abstractC2792b) {
            if (this.f10334b >= 10) {
                abstractC2792b.mo39898a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
            } else {
                this.f11345c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }
    }

    /* renamed from: androidx.work.impl.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$b.class */
    public static final class C3066b extends AbstractC2715a {

        /* renamed from: c */
        final Context f11346c;

        public C3066b(Context context) {
            super(9, 10);
            this.f11346c = context;
        }

        @Override // androidx.room.p080a.AbstractC2715a
        /* renamed from: a */
        public final void mo39366a(AbstractC2792b abstractC2792b) {
            abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            SharedPreferences sharedPreferences = this.f11346c.getSharedPreferences("androidx.work.util.preferences", 0);
            if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
                Object[] objArr = null;
                long j = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
                if (sharedPreferences.getBoolean("reschedule_needed", false)) {
                    objArr = 1;
                }
                abstractC2792b.mo39901a();
                try {
                    abstractC2792b.mo39898a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j)});
                    abstractC2792b.mo39898a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(objArr == 1 ? 1L : 0L)});
                    sharedPreferences.edit().clear().apply();
                    abstractC2792b.mo39895c();
                } finally {
                    abstractC2792b.mo39897b();
                }
            }
            C3122c.m39298a(this.f11346c, abstractC2792b);
        }
    }

    private C3058h() {
    }
}
