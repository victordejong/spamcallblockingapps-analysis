package p1727n3.p1834m0.p1835c0;

import android.content.Context;
import android.content.SharedPreferences;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m0.c0.j */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/j.class */
public class C26691j {

    /* renamed from: a */
    public static AbstractC25649a f74709a = new C26692a(1, 2);

    /* renamed from: b */
    public static AbstractC25649a f74710b = new C26693b(3, 4);

    /* renamed from: c */
    public static AbstractC25649a f74711c = new C26694c(4, 5);

    /* renamed from: d */
    public static AbstractC25649a f74712d = new C26695d(6, 7);

    /* renamed from: e */
    public static AbstractC25649a f74713e = new C26696e(7, 8);

    /* renamed from: f */
    public static AbstractC25649a f74714f = new C26697f(8, 9);

    /* renamed from: g */
    public static AbstractC25649a f74715g = new C26698g(11, 12);

    /* renamed from: n3.m0.c0.j$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/j$a.class */
    public class C26692a extends AbstractC25649a {
        public C26692a(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )", "INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo", "DROP TABLE IF EXISTS alarmInfo", "INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    /* renamed from: n3.m0.c0.j$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/j$b.class */
    public class C26693b extends AbstractC25649a {
        public C26693b(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
        }
    }

    /* renamed from: n3.m0.c0.j$c */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/j$c.class */
    public class C26694c extends AbstractC25649a {
        public C26694c(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            abstractC26147b.mo2668S0("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    /* renamed from: n3.m0.c0.j$d */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/j$d.class */
    public class C26695d extends AbstractC25649a {
        public C26695d(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    }

    /* renamed from: n3.m0.c0.j$e */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/j$e.class */
    public class C26696e extends AbstractC25649a {
        public C26696e(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    }

    /* renamed from: n3.m0.c0.j$f */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/j$f.class */
    public class C26697f extends AbstractC25649a {
        public C26697f(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: n3.m0.c0.j$g */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/j$g.class */
    public class C26698g extends AbstractC25649a {
        public C26698g(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: n3.m0.c0.j$h */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/j$h.class */
    public static class C26699h extends AbstractC25649a {

        /* renamed from: c */
        public final Context f74716c;

        public C26699h(Context context, int i, int i2) {
            super(i, i2);
            this.f74716c = context;
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            if (this.f71843b >= 10) {
                abstractC26147b.mo2662c1("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
            } else {
                this.f74716c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }
    }

    /* renamed from: n3.m0.c0.j$i */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/j$i.class */
    public static class C26700i extends AbstractC25649a {

        /* renamed from: c */
        public final Context f74717c;

        public C26700i(Context context) {
            super(9, 10);
            this.f74717c = context;
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            SharedPreferences sharedPreferences = this.f74717c.getSharedPreferences("androidx.work.util.preferences", 0);
            if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
                Object[] objArr = null;
                long j = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
                if (sharedPreferences.getBoolean("reschedule_needed", false)) {
                    objArr = 1;
                }
                abstractC26147b.mo2657w();
                try {
                    abstractC26147b.mo2662c1("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j)});
                    abstractC26147b.mo2662c1("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(objArr == 1 ? 1L : 0L)});
                    sharedPreferences.edit().clear().apply();
                    abstractC26147b.mo2663b1();
                } finally {
                }
            }
            SharedPreferences sharedPreferences2 = this.f74717c.getSharedPreferences("androidx.work.util.id", 0);
            if (sharedPreferences2.contains("next_job_scheduler_id") || sharedPreferences2.contains("next_job_scheduler_id")) {
                int i = sharedPreferences2.getInt("next_job_scheduler_id", 0);
                int i2 = sharedPreferences2.getInt("next_alarm_manager_id", 0);
                abstractC26147b.mo2657w();
                try {
                    abstractC26147b.mo2662c1("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
                    abstractC26147b.mo2662c1("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
                    sharedPreferences2.edit().clear().apply();
                    abstractC26147b.mo2663b1();
                } finally {
                }
            }
        }
    }
}
