package androidx.work.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import p077e1.AbstractC2520a;
import p099g1.AbstractC2795a;
import p110h1.C2993a;
/* renamed from: androidx.work.impl.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a.class */
public class C0683a {

    /* renamed from: a */
    public static AbstractC2520a f2653a = new C0684a(1, 2);

    /* renamed from: b */
    public static AbstractC2520a f2654b = new C0685b(3, 4);

    /* renamed from: c */
    public static AbstractC2520a f2655c = new C0686c(4, 5);

    /* renamed from: d */
    public static AbstractC2520a f2656d = new C0687d(6, 7);

    /* renamed from: e */
    public static AbstractC2520a f2657e = new C0688e(7, 8);

    /* renamed from: f */
    public static AbstractC2520a f2658f = new C0689f(8, 9);

    /* renamed from: g */
    public static AbstractC2520a f2659g = new C0690g(11, 12);

    /* renamed from: androidx.work.impl.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a$a.class */
    public class C0684a extends AbstractC2520a {
        public C0684a(int i, int i2) {
            super(i, i2);
        }

        @Override // p077e1.AbstractC2520a
        /* renamed from: a */
        public void mo3486a(AbstractC2795a abstractC2795a) {
            ((C2993a) abstractC2795a).f10085a.execSQL("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            C2993a c2993a = (C2993a) abstractC2795a;
            c2993a.f10085a.execSQL("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            c2993a.f10085a.execSQL("DROP TABLE IF EXISTS alarmInfo");
            c2993a.f10085a.execSQL("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    /* renamed from: androidx.work.impl.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a$b.class */
    public class C0685b extends AbstractC2520a {
        public C0685b(int i, int i2) {
            super(i, i2);
        }

        @Override // p077e1.AbstractC2520a
        /* renamed from: a */
        public void mo3486a(AbstractC2795a abstractC2795a) {
            if (Build.VERSION.SDK_INT >= 23) {
                ((C2993a) abstractC2795a).f10085a.execSQL("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
            }
        }
    }

    /* renamed from: androidx.work.impl.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a$c.class */
    public class C0686c extends AbstractC2520a {
        public C0686c(int i, int i2) {
            super(i, i2);
        }

        @Override // p077e1.AbstractC2520a
        /* renamed from: a */
        public void mo3486a(AbstractC2795a abstractC2795a) {
            ((C2993a) abstractC2795a).f10085a.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            ((C2993a) abstractC2795a).f10085a.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    /* renamed from: androidx.work.impl.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a$d.class */
    public class C0687d extends AbstractC2520a {
        public C0687d(int i, int i2) {
            super(i, i2);
        }

        @Override // p077e1.AbstractC2520a
        /* renamed from: a */
        public void mo3486a(AbstractC2795a abstractC2795a) {
            ((C2993a) abstractC2795a).f10085a.execSQL("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    }

    /* renamed from: androidx.work.impl.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a$e.class */
    public class C0688e extends AbstractC2520a {
        public C0688e(int i, int i2) {
            super(i, i2);
        }

        @Override // p077e1.AbstractC2520a
        /* renamed from: a */
        public void mo3486a(AbstractC2795a abstractC2795a) {
            ((C2993a) abstractC2795a).f10085a.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    }

    /* renamed from: androidx.work.impl.a$f */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a$f.class */
    public class C0689f extends AbstractC2520a {
        public C0689f(int i, int i2) {
            super(i, i2);
        }

        @Override // p077e1.AbstractC2520a
        /* renamed from: a */
        public void mo3486a(AbstractC2795a abstractC2795a) {
            ((C2993a) abstractC2795a).f10085a.execSQL("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: androidx.work.impl.a$g */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a$g.class */
    public class C0690g extends AbstractC2520a {
        public C0690g(int i, int i2) {
            super(i, i2);
        }

        @Override // p077e1.AbstractC2520a
        /* renamed from: a */
        public void mo3486a(AbstractC2795a abstractC2795a) {
            ((C2993a) abstractC2795a).f10085a.execSQL("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: androidx.work.impl.a$h */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a$h.class */
    public static class C0691h extends AbstractC2520a {

        /* renamed from: c */
        public final Context f2660c;

        public C0691h(Context context, int i, int i2) {
            super(i, i2);
            this.f2660c = context;
        }

        @Override // p077e1.AbstractC2520a
        /* renamed from: a */
        public void mo3486a(AbstractC2795a abstractC2795a) {
            if (this.f8801b >= 10) {
                ((C2993a) abstractC2795a).f10085a.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
            } else {
                this.f2660c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }
    }

    /* renamed from: androidx.work.impl.a$i */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a$i.class */
    public static class C0692i extends AbstractC2520a {

        /* renamed from: c */
        public final Context f2661c;

        public C0692i(Context context) {
            super(9, 10);
            this.f2661c = context;
        }

        @Override // p077e1.AbstractC2520a
        /* renamed from: a */
        public void mo3486a(AbstractC2795a abstractC2795a) {
            ((C2993a) abstractC2795a).f10085a.execSQL("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            SharedPreferences sharedPreferences = this.f2661c.getSharedPreferences("androidx.work.util.preferences", 0);
            if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
                Object[] objArr = null;
                long j = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
                if (sharedPreferences.getBoolean("reschedule_needed", false)) {
                    objArr = 1;
                }
                ((C2993a) abstractC2795a).f10085a.beginTransaction();
                try {
                    ((C2993a) abstractC2795a).f10085a.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j)});
                    ((C2993a) abstractC2795a).f10085a.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(objArr == 1 ? 1L : 0L)});
                    sharedPreferences.edit().clear().apply();
                    ((C2993a) abstractC2795a).f10085a.setTransactionSuccessful();
                } finally {
                }
            }
            SharedPreferences sharedPreferences2 = this.f2661c.getSharedPreferences("androidx.work.util.id", 0);
            if (sharedPreferences2.contains("next_job_scheduler_id") || sharedPreferences2.contains("next_job_scheduler_id")) {
                int i = sharedPreferences2.getInt("next_job_scheduler_id", 0);
                int i2 = sharedPreferences2.getInt("next_alarm_manager_id", 0);
                ((C2993a) abstractC2795a).f10085a.beginTransaction();
                try {
                    ((C2993a) abstractC2795a).f10085a.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
                    ((C2993a) abstractC2795a).f10085a.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
                    sharedPreferences2.edit().clear().apply();
                    ((C2993a) abstractC2795a).f10085a.setTransactionSuccessful();
                } finally {
                }
            }
        }
    }
}
