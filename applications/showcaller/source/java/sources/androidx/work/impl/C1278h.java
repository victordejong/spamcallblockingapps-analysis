package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.room.p011p.AbstractC1030a;
import androidx.work.impl.utils.C1369c;
import androidx.work.impl.utils.C1371e;
import p020b.p070r.p071a.AbstractC1772b;
/* renamed from: androidx.work.impl.h */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/h.class */
public class C1278h {

    /* renamed from: a */
    public static AbstractC1030a f5432a = new C1279a(1, 2);

    /* renamed from: b */
    public static AbstractC1030a f5433b = new C1280b(3, 4);

    /* renamed from: c */
    public static AbstractC1030a f5434c = new C1281c(4, 5);

    /* renamed from: d */
    public static AbstractC1030a f5435d = new C1282d(6, 7);

    /* renamed from: e */
    public static AbstractC1030a f5436e = new C1283e(7, 8);

    /* renamed from: f */
    public static AbstractC1030a f5437f = new C1284f(8, 9);

    /* renamed from: g */
    public static AbstractC1030a f5438g = new C1285g(11, 12);

    /* renamed from: androidx.work.impl.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$a.class */
    class C1279a extends AbstractC1030a {
        C1279a(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p011p.AbstractC1030a
        /* renamed from: a */
        public void mo30405a(AbstractC1772b abstractC1772b) {
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            abstractC1772b.mo28910n("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            abstractC1772b.mo28910n("DROP TABLE IF EXISTS alarmInfo");
            abstractC1772b.mo28910n("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    /* renamed from: androidx.work.impl.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$b.class */
    class C1280b extends AbstractC1030a {
        C1280b(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p011p.AbstractC1030a
        /* renamed from: a */
        public void mo30405a(AbstractC1772b abstractC1772b) {
            if (Build.VERSION.SDK_INT >= 23) {
                abstractC1772b.mo28910n("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
            }
        }
    }

    /* renamed from: androidx.work.impl.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$c.class */
    class C1281c extends AbstractC1030a {
        C1281c(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p011p.AbstractC1030a
        /* renamed from: a */
        public void mo30405a(AbstractC1772b abstractC1772b) {
            abstractC1772b.mo28910n("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            abstractC1772b.mo28910n("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    /* renamed from: androidx.work.impl.h$d */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$d.class */
    class C1282d extends AbstractC1030a {
        C1282d(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p011p.AbstractC1030a
        /* renamed from: a */
        public void mo30405a(AbstractC1772b abstractC1772b) {
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    }

    /* renamed from: androidx.work.impl.h$e */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$e.class */
    class C1283e extends AbstractC1030a {
        C1283e(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p011p.AbstractC1030a
        /* renamed from: a */
        public void mo30405a(AbstractC1772b abstractC1772b) {
            abstractC1772b.mo28910n("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    }

    /* renamed from: androidx.work.impl.h$f */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$f.class */
    class C1284f extends AbstractC1030a {
        C1284f(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p011p.AbstractC1030a
        /* renamed from: a */
        public void mo30405a(AbstractC1772b abstractC1772b) {
            abstractC1772b.mo28910n("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: androidx.work.impl.h$g */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$g.class */
    class C1285g extends AbstractC1030a {
        C1285g(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p011p.AbstractC1030a
        /* renamed from: a */
        public void mo30405a(AbstractC1772b abstractC1772b) {
            abstractC1772b.mo28910n("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: androidx.work.impl.h$h */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$h.class */
    public static class C1286h extends AbstractC1030a {

        /* renamed from: c */
        final Context f5439c;

        public C1286h(Context context, int i, int i2) {
            super(i, i2);
            this.f5439c = context;
        }

        @Override // androidx.room.p011p.AbstractC1030a
        /* renamed from: a */
        public void mo30405a(AbstractC1772b abstractC1772b) {
            if (this.f4536b >= 10) {
                abstractC1772b.mo28918H("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
            } else {
                this.f5439c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }
    }

    /* renamed from: androidx.work.impl.h$i */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/h$i.class */
    public static class C1287i extends AbstractC1030a {

        /* renamed from: c */
        final Context f5440c;

        public C1287i(Context context) {
            super(9, 10);
            this.f5440c = context;
        }

        @Override // androidx.room.p011p.AbstractC1030a
        /* renamed from: a */
        public void mo30405a(AbstractC1772b abstractC1772b) {
            abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            C1371e.m30213b(this.f5440c, abstractC1772b);
            C1369c.m30220a(this.f5440c, abstractC1772b);
        }
    }
}
