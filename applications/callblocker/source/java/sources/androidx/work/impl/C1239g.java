package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.p042i.p043a.AbstractC0749b;
import androidx.room.p049a.AbstractC1011a;
import androidx.work.impl.utils.C1274c;
import androidx.work.impl.utils.C1276e;
/* renamed from: androidx.work.impl.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/g.class */
public class C1239g {

    /* renamed from: a */
    public static AbstractC1011a f4183a = new AbstractC1011a(1, 2) { // from class: androidx.work.impl.g.1
        @Override // androidx.room.p049a.AbstractC1011a
        /* renamed from: a */
        public void mo17671a(AbstractC0749b abstractC0749b) {
            abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            abstractC0749b.mo19517c("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            abstractC0749b.mo19517c("DROP TABLE IF EXISTS alarmInfo");
            abstractC0749b.mo19517c("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    };

    /* renamed from: b */
    public static AbstractC1011a f4184b = new AbstractC1011a(3, 4) { // from class: androidx.work.impl.g.2
        @Override // androidx.room.p049a.AbstractC1011a
        /* renamed from: a */
        public void mo17671a(AbstractC0749b abstractC0749b) {
            if (Build.VERSION.SDK_INT >= 23) {
                abstractC0749b.mo19517c("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
            }
        }
    };

    /* renamed from: c */
    public static AbstractC1011a f4185c = new AbstractC1011a(4, 5) { // from class: androidx.work.impl.g.3
        @Override // androidx.room.p049a.AbstractC1011a
        /* renamed from: a */
        public void mo17671a(AbstractC0749b abstractC0749b) {
            abstractC0749b.mo19517c("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            abstractC0749b.mo19517c("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    };

    /* renamed from: d */
    public static AbstractC1011a f4186d = new AbstractC1011a(6, 7) { // from class: androidx.work.impl.g.4
        @Override // androidx.room.p049a.AbstractC1011a
        /* renamed from: a */
        public void mo17671a(AbstractC0749b abstractC0749b) {
            abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    };

    /* renamed from: e */
    public static AbstractC1011a f4187e = new AbstractC1011a(7, 8) { // from class: androidx.work.impl.g.5
        @Override // androidx.room.p049a.AbstractC1011a
        /* renamed from: a */
        public void mo17671a(AbstractC0749b abstractC0749b) {
            abstractC0749b.mo19517c("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    };

    /* renamed from: f */
    public static AbstractC1011a f4188f = new AbstractC1011a(8, 9) { // from class: androidx.work.impl.g.6
        @Override // androidx.room.p049a.AbstractC1011a
        /* renamed from: a */
        public void mo17671a(AbstractC0749b abstractC0749b) {
            abstractC0749b.mo19517c("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    };

    /* renamed from: androidx.work.impl.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/g$a.class */
    public static class C1246a extends AbstractC1011a {

        /* renamed from: c */
        final Context f4189c;

        public C1246a(Context context, int i, int i2) {
            super(i, i2);
            this.f4189c = context;
        }

        @Override // androidx.room.p049a.AbstractC1011a
        /* renamed from: a */
        public void mo17671a(AbstractC0749b abstractC0749b) {
            if (this.f3452b >= 10) {
                abstractC0749b.mo19521a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
            } else {
                this.f4189c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }
    }

    /* renamed from: androidx.work.impl.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/g$b.class */
    public static class C1247b extends AbstractC1011a {

        /* renamed from: c */
        final Context f4190c;

        public C1247b(Context context) {
            super(9, 10);
            this.f4190c = context;
        }

        @Override // androidx.room.p049a.AbstractC1011a
        /* renamed from: a */
        public void mo17671a(AbstractC0749b abstractC0749b) {
            abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            C1276e.m17567a(this.f4190c, abstractC0749b);
            C1274c.m17572a(this.f4190c, abstractC0749b);
        }
    }
}
