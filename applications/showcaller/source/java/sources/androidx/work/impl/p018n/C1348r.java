package androidx.work.impl.p018n;

import android.database.Cursor;
import androidx.room.AbstractC0998b;
import androidx.room.AbstractC1027n;
import androidx.room.C1024k;
import androidx.room.RoomDatabase;
import androidx.room.p012q.C1032b;
import androidx.room.p012q.C1033c;
import androidx.room.p012q.C1035e;
import androidx.work.C1234b;
import androidx.work.C1238d;
import androidx.work.WorkInfo$State;
import androidx.work.impl.p018n.C1344p;
import java.util.ArrayList;
import java.util.List;
import p020b.p070r.p071a.AbstractC1780f;
/* renamed from: androidx.work.impl.n.r */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/r.class */
public final class C1348r implements AbstractC1347q {

    /* renamed from: a */
    private final RoomDatabase f5598a;

    /* renamed from: b */
    private final AbstractC0998b<C1344p> f5599b;

    /* renamed from: c */
    private final AbstractC1027n f5600c;

    /* renamed from: d */
    private final AbstractC1027n f5601d;

    /* renamed from: e */
    private final AbstractC1027n f5602e;

    /* renamed from: f */
    private final AbstractC1027n f5603f;

    /* renamed from: g */
    private final AbstractC1027n f5604g;

    /* renamed from: h */
    private final AbstractC1027n f5605h;

    /* renamed from: i */
    private final AbstractC1027n f5606i;

    /* renamed from: j */
    private final AbstractC1027n f5607j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/r$a.class */
    public class C1349a extends AbstractC0998b<C1344p> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1349a(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1348r.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* renamed from: i */
        public void mo30257g(AbstractC1780f abstractC1780f, C1344p c1344p) {
            String str = c1344p.f5578c;
            if (str == null) {
                abstractC1780f.mo28899T(1);
            } else {
                abstractC1780f.mo28898o(1, str);
            }
            abstractC1780f.mo28901F(2, C1362v.m30246j(c1344p.f5579d));
            String str2 = c1344p.f5580e;
            if (str2 == null) {
                abstractC1780f.mo28899T(3);
            } else {
                abstractC1780f.mo28898o(3, str2);
            }
            String str3 = c1344p.f5581f;
            if (str3 == null) {
                abstractC1780f.mo28899T(4);
            } else {
                abstractC1780f.mo28898o(4, str3);
            }
            byte[] m30548k = C1238d.m30548k(c1344p.f5582g);
            if (m30548k == null) {
                abstractC1780f.mo28899T(5);
            } else {
                abstractC1780f.mo28900J(5, m30548k);
            }
            byte[] m30548k2 = C1238d.m30548k(c1344p.f5583h);
            if (m30548k2 == null) {
                abstractC1780f.mo28899T(6);
            } else {
                abstractC1780f.mo28900J(6, m30548k2);
            }
            abstractC1780f.mo28901F(7, c1344p.f5584i);
            abstractC1780f.mo28901F(8, c1344p.f5585j);
            abstractC1780f.mo28901F(9, c1344p.f5586k);
            abstractC1780f.mo28901F(10, c1344p.f5588m);
            abstractC1780f.mo28901F(11, C1362v.m30255a(c1344p.f5589n));
            abstractC1780f.mo28901F(12, c1344p.f5590o);
            abstractC1780f.mo28901F(13, c1344p.f5591p);
            abstractC1780f.mo28901F(14, c1344p.f5592q);
            abstractC1780f.mo28901F(15, c1344p.f5593r);
            abstractC1780f.mo28901F(16, c1344p.f5594s ? 1L : 0L);
            abstractC1780f.mo28901F(17, C1362v.m30247i(c1344p.f5595t));
            C1234b c1234b = c1344p.f5587l;
            if (c1234b == null) {
                abstractC1780f.mo28899T(18);
                abstractC1780f.mo28899T(19);
                abstractC1780f.mo28899T(20);
                abstractC1780f.mo28899T(21);
                abstractC1780f.mo28899T(22);
                abstractC1780f.mo28899T(23);
                abstractC1780f.mo28899T(24);
                abstractC1780f.mo28899T(25);
                return;
            }
            abstractC1780f.mo28901F(18, C1362v.m30248h(c1234b.m30581b()));
            abstractC1780f.mo28901F(19, c1234b.m30576g() ? 1L : 0L);
            abstractC1780f.mo28901F(20, c1234b.m30575h() ? 1L : 0L);
            abstractC1780f.mo28901F(21, c1234b.m30577f() ? 1L : 0L);
            abstractC1780f.mo28901F(22, c1234b.m30574i() ? 1L : 0L);
            abstractC1780f.mo28901F(23, c1234b.m30580c());
            abstractC1780f.mo28901F(24, c1234b.m30579d());
            byte[] m30253c = C1362v.m30253c(c1234b.m30582a());
            if (m30253c == null) {
                abstractC1780f.mo28899T(25);
            } else {
                abstractC1780f.mo28900J(25, m30253c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.r$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/r$b.class */
    public class C1350b extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1350b(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1348r.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.r$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/r$c.class */
    public class C1351c extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1351c(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1348r.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.r$d */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/r$d.class */
    public class C1352d extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1352d(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1348r.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.r$e */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/r$e.class */
    public class C1353e extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1353e(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1348r.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.r$f */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/r$f.class */
    public class C1354f extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1354f(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1348r.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.r$g */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/r$g.class */
    public class C1355g extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1355g(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1348r.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.r$h */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/r$h.class */
    public class C1356h extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1356h(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1348r.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.n.r$i */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/r$i.class */
    public class C1357i extends AbstractC1027n {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1357i(RoomDatabase roomDatabase) {
            super(roomDatabase);
            C1348r.this = r4;
        }

        @Override // androidx.room.AbstractC1027n
        /* renamed from: d */
        public String mo30258d() {
            return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        }
    }

    public C1348r(RoomDatabase roomDatabase) {
        this.f5598a = roomDatabase;
        this.f5599b = new C1349a(roomDatabase);
        this.f5600c = new C1350b(roomDatabase);
        this.f5601d = new C1351c(roomDatabase);
        this.f5602e = new C1352d(roomDatabase);
        this.f5603f = new C1353e(roomDatabase);
        this.f5604g = new C1354f(roomDatabase);
        this.f5605h = new C1355g(roomDatabase);
        this.f5606i = new C1356h(roomDatabase);
        this.f5607j = new C1357i(roomDatabase);
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: a */
    public void mo30282a(String str) {
        this.f5598a.m31294b();
        AbstractC1780f m31219a = this.f5600c.m31219a();
        if (str == null) {
            m31219a.mo28899T(1);
        } else {
            m31219a.mo28898o(1, str);
        }
        this.f5598a.m31293c();
        try {
            m31219a.mo28895r();
            this.f5598a.m31280r();
        } finally {
            this.f5598a.m31291g();
            this.f5600c.m31215f(m31219a);
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: b */
    public int mo30281b(WorkInfo$State workInfo$State, String... strArr) {
        this.f5598a.m31294b();
        StringBuilder m31203b = C1035e.m31203b();
        m31203b.append("UPDATE workspec SET state=");
        m31203b.append("?");
        m31203b.append(" WHERE id IN (");
        C1035e.m31204a(m31203b, strArr.length);
        m31203b.append(")");
        AbstractC1780f m31292d = this.f5598a.m31292d(m31203b.toString());
        m31292d.mo28901F(1, C1362v.m30246j(workInfo$State));
        int i = 2;
        for (String str : strArr) {
            if (str == null) {
                m31292d.mo28899T(i);
            } else {
                m31292d.mo28898o(i, str);
            }
            i++;
        }
        this.f5598a.m31293c();
        try {
            int mo28895r = m31292d.mo28895r();
            this.f5598a.m31280r();
            return mo28895r;
        } finally {
            this.f5598a.m31291g();
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: c */
    public int mo30280c(String str, long j) {
        this.f5598a.m31294b();
        AbstractC1780f m31219a = this.f5605h.m31219a();
        m31219a.mo28901F(1, j);
        if (str == null) {
            m31219a.mo28899T(2);
        } else {
            m31219a.mo28898o(2, str);
        }
        this.f5598a.m31293c();
        try {
            int mo28895r = m31219a.mo28895r();
            this.f5598a.m31280r();
            return mo28895r;
        } finally {
            this.f5598a.m31291g();
            this.f5605h.m31215f(m31219a);
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: d */
    public List<C1344p.C1346b> mo30279d(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            int m31209b = C1032b.m31209b(m31207b, "id");
            int m31209b2 = C1032b.m31209b(m31207b, "state");
            ArrayList arrayList = new ArrayList(m31207b.getCount());
            while (m31207b.moveToNext()) {
                C1344p.C1346b c1346b = new C1344p.C1346b();
                c1346b.f5596a = m31207b.getString(m31209b);
                c1346b.f5597b = C1362v.m30249g(m31207b.getInt(m31209b2));
                arrayList.add(c1346b);
            }
            return arrayList;
        } finally {
            m31207b.close();
            m31226f.m31223p();
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: e */
    public List<C1344p> mo30278e(long j) {
        Throwable th;
        C1024k m31226f = C1024k.m31226f("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC", 1);
        m31226f.mo28901F(1, j);
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            int m31209b = C1032b.m31209b(m31207b, "required_network_type");
            int m31209b2 = C1032b.m31209b(m31207b, "requires_charging");
            int m31209b3 = C1032b.m31209b(m31207b, "requires_device_idle");
            int m31209b4 = C1032b.m31209b(m31207b, "requires_battery_not_low");
            int m31209b5 = C1032b.m31209b(m31207b, "requires_storage_not_low");
            int m31209b6 = C1032b.m31209b(m31207b, "trigger_content_update_delay");
            int m31209b7 = C1032b.m31209b(m31207b, "trigger_max_content_delay");
            int m31209b8 = C1032b.m31209b(m31207b, "content_uri_triggers");
            int m31209b9 = C1032b.m31209b(m31207b, "id");
            int m31209b10 = C1032b.m31209b(m31207b, "state");
            int m31209b11 = C1032b.m31209b(m31207b, "worker_class_name");
            int m31209b12 = C1032b.m31209b(m31207b, "input_merger_class_name");
            int m31209b13 = C1032b.m31209b(m31207b, "input");
            int m31209b14 = C1032b.m31209b(m31207b, "output");
            try {
                int m31209b15 = C1032b.m31209b(m31207b, "initial_delay");
                int m31209b16 = C1032b.m31209b(m31207b, "interval_duration");
                int m31209b17 = C1032b.m31209b(m31207b, "flex_duration");
                int m31209b18 = C1032b.m31209b(m31207b, "run_attempt_count");
                int m31209b19 = C1032b.m31209b(m31207b, "backoff_policy");
                int m31209b20 = C1032b.m31209b(m31207b, "backoff_delay_duration");
                int m31209b21 = C1032b.m31209b(m31207b, "period_start_time");
                int m31209b22 = C1032b.m31209b(m31207b, "minimum_retention_duration");
                int m31209b23 = C1032b.m31209b(m31207b, "schedule_requested_at");
                int m31209b24 = C1032b.m31209b(m31207b, "run_in_foreground");
                int m31209b25 = C1032b.m31209b(m31207b, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m31207b.getCount());
                while (m31207b.moveToNext()) {
                    String string = m31207b.getString(m31209b9);
                    String string2 = m31207b.getString(m31209b11);
                    C1234b c1234b = new C1234b();
                    c1234b.m30572k(C1362v.m30251e(m31207b.getInt(m31209b)));
                    c1234b.m30570m(m31207b.getInt(m31209b2) != 0);
                    c1234b.m30569n(m31207b.getInt(m31209b3) != 0);
                    c1234b.m30571l(m31207b.getInt(m31209b4) != 0);
                    c1234b.m30568o(m31207b.getInt(m31209b5) != 0);
                    c1234b.m30567p(m31207b.getLong(m31209b6));
                    c1234b.m30566q(m31207b.getLong(m31209b7));
                    c1234b.m30573j(C1362v.m30254b(m31207b.getBlob(m31209b8)));
                    C1344p c1344p = new C1344p(string, string2);
                    c1344p.f5579d = C1362v.m30249g(m31207b.getInt(m31209b10));
                    c1344p.f5581f = m31207b.getString(m31209b12);
                    c1344p.f5582g = C1238d.m30552g(m31207b.getBlob(m31209b13));
                    c1344p.f5583h = C1238d.m30552g(m31207b.getBlob(m31209b14));
                    c1344p.f5584i = m31207b.getLong(m31209b15);
                    c1344p.f5585j = m31207b.getLong(m31209b16);
                    c1344p.f5586k = m31207b.getLong(m31209b17);
                    c1344p.f5588m = m31207b.getInt(m31209b18);
                    c1344p.f5589n = C1362v.m30252d(m31207b.getInt(m31209b19));
                    c1344p.f5590o = m31207b.getLong(m31209b20);
                    c1344p.f5591p = m31207b.getLong(m31209b21);
                    c1344p.f5592q = m31207b.getLong(m31209b22);
                    c1344p.f5593r = m31207b.getLong(m31209b23);
                    c1344p.f5594s = m31207b.getInt(m31209b24) != 0;
                    c1344p.f5595t = C1362v.m30250f(m31207b.getInt(m31209b25));
                    c1344p.f5587l = c1234b;
                    arrayList.add(c1344p);
                }
                m31207b.close();
                m31226f.m31223p();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m31207b.close();
                m31226f.m31223p();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: f */
    public List<C1344p> mo30277f(int i) {
        Throwable th;
        int m31209b;
        int m31209b2;
        int m31209b3;
        int m31209b4;
        int m31209b5;
        int m31209b6;
        int m31209b7;
        int m31209b8;
        int m31209b9;
        int m31209b10;
        int m31209b11;
        int m31209b12;
        int m31209b13;
        int m31209b14;
        C1024k m31226f = C1024k.m31226f("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        m31226f.mo28901F(1, i);
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            m31209b = C1032b.m31209b(m31207b, "required_network_type");
            m31209b2 = C1032b.m31209b(m31207b, "requires_charging");
            m31209b3 = C1032b.m31209b(m31207b, "requires_device_idle");
            m31209b4 = C1032b.m31209b(m31207b, "requires_battery_not_low");
            m31209b5 = C1032b.m31209b(m31207b, "requires_storage_not_low");
            m31209b6 = C1032b.m31209b(m31207b, "trigger_content_update_delay");
            m31209b7 = C1032b.m31209b(m31207b, "trigger_max_content_delay");
            m31209b8 = C1032b.m31209b(m31207b, "content_uri_triggers");
            m31209b9 = C1032b.m31209b(m31207b, "id");
            m31209b10 = C1032b.m31209b(m31207b, "state");
            m31209b11 = C1032b.m31209b(m31207b, "worker_class_name");
            m31209b12 = C1032b.m31209b(m31207b, "input_merger_class_name");
            m31209b13 = C1032b.m31209b(m31207b, "input");
            m31209b14 = C1032b.m31209b(m31207b, "output");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int m31209b15 = C1032b.m31209b(m31207b, "initial_delay");
            int m31209b16 = C1032b.m31209b(m31207b, "interval_duration");
            int m31209b17 = C1032b.m31209b(m31207b, "flex_duration");
            int m31209b18 = C1032b.m31209b(m31207b, "run_attempt_count");
            int m31209b19 = C1032b.m31209b(m31207b, "backoff_policy");
            int m31209b20 = C1032b.m31209b(m31207b, "backoff_delay_duration");
            int m31209b21 = C1032b.m31209b(m31207b, "period_start_time");
            int m31209b22 = C1032b.m31209b(m31207b, "minimum_retention_duration");
            int m31209b23 = C1032b.m31209b(m31207b, "schedule_requested_at");
            int m31209b24 = C1032b.m31209b(m31207b, "run_in_foreground");
            int m31209b25 = C1032b.m31209b(m31207b, "out_of_quota_policy");
            ArrayList arrayList = new ArrayList(m31207b.getCount());
            while (m31207b.moveToNext()) {
                String string = m31207b.getString(m31209b9);
                String string2 = m31207b.getString(m31209b11);
                C1234b c1234b = new C1234b();
                c1234b.m30572k(C1362v.m30251e(m31207b.getInt(m31209b)));
                c1234b.m30570m(m31207b.getInt(m31209b2) != 0);
                c1234b.m30569n(m31207b.getInt(m31209b3) != 0);
                c1234b.m30571l(m31207b.getInt(m31209b4) != 0);
                c1234b.m30568o(m31207b.getInt(m31209b5) != 0);
                c1234b.m30567p(m31207b.getLong(m31209b6));
                c1234b.m30566q(m31207b.getLong(m31209b7));
                c1234b.m30573j(C1362v.m30254b(m31207b.getBlob(m31209b8)));
                C1344p c1344p = new C1344p(string, string2);
                c1344p.f5579d = C1362v.m30249g(m31207b.getInt(m31209b10));
                c1344p.f5581f = m31207b.getString(m31209b12);
                c1344p.f5582g = C1238d.m30552g(m31207b.getBlob(m31209b13));
                c1344p.f5583h = C1238d.m30552g(m31207b.getBlob(m31209b14));
                c1344p.f5584i = m31207b.getLong(m31209b15);
                c1344p.f5585j = m31207b.getLong(m31209b16);
                c1344p.f5586k = m31207b.getLong(m31209b17);
                c1344p.f5588m = m31207b.getInt(m31209b18);
                c1344p.f5589n = C1362v.m30252d(m31207b.getInt(m31209b19));
                c1344p.f5590o = m31207b.getLong(m31209b20);
                c1344p.f5591p = m31207b.getLong(m31209b21);
                c1344p.f5592q = m31207b.getLong(m31209b22);
                c1344p.f5593r = m31207b.getLong(m31209b23);
                c1344p.f5594s = m31207b.getInt(m31209b24) != 0;
                c1344p.f5595t = C1362v.m30250f(m31207b.getInt(m31209b25));
                c1344p.f5587l = c1234b;
                arrayList.add(c1344p);
            }
            m31207b.close();
            m31226f.m31223p();
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            m31207b.close();
            m31226f.m31223p();
            throw th;
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: g */
    public void mo30276g(C1344p c1344p) {
        this.f5598a.m31294b();
        this.f5598a.m31293c();
        try {
            this.f5599b.m31264h(c1344p);
            this.f5598a.m31280r();
        } finally {
            this.f5598a.m31291g();
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: h */
    public List<C1344p> mo30275h() {
        Throwable th;
        C1024k m31226f = C1024k.m31226f("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            int m31209b = C1032b.m31209b(m31207b, "required_network_type");
            int m31209b2 = C1032b.m31209b(m31207b, "requires_charging");
            int m31209b3 = C1032b.m31209b(m31207b, "requires_device_idle");
            int m31209b4 = C1032b.m31209b(m31207b, "requires_battery_not_low");
            int m31209b5 = C1032b.m31209b(m31207b, "requires_storage_not_low");
            int m31209b6 = C1032b.m31209b(m31207b, "trigger_content_update_delay");
            int m31209b7 = C1032b.m31209b(m31207b, "trigger_max_content_delay");
            int m31209b8 = C1032b.m31209b(m31207b, "content_uri_triggers");
            int m31209b9 = C1032b.m31209b(m31207b, "id");
            int m31209b10 = C1032b.m31209b(m31207b, "state");
            int m31209b11 = C1032b.m31209b(m31207b, "worker_class_name");
            int m31209b12 = C1032b.m31209b(m31207b, "input_merger_class_name");
            int m31209b13 = C1032b.m31209b(m31207b, "input");
            int m31209b14 = C1032b.m31209b(m31207b, "output");
            try {
                int m31209b15 = C1032b.m31209b(m31207b, "initial_delay");
                int m31209b16 = C1032b.m31209b(m31207b, "interval_duration");
                int m31209b17 = C1032b.m31209b(m31207b, "flex_duration");
                int m31209b18 = C1032b.m31209b(m31207b, "run_attempt_count");
                int m31209b19 = C1032b.m31209b(m31207b, "backoff_policy");
                int m31209b20 = C1032b.m31209b(m31207b, "backoff_delay_duration");
                int m31209b21 = C1032b.m31209b(m31207b, "period_start_time");
                int m31209b22 = C1032b.m31209b(m31207b, "minimum_retention_duration");
                int m31209b23 = C1032b.m31209b(m31207b, "schedule_requested_at");
                int m31209b24 = C1032b.m31209b(m31207b, "run_in_foreground");
                int m31209b25 = C1032b.m31209b(m31207b, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m31207b.getCount());
                while (m31207b.moveToNext()) {
                    String string = m31207b.getString(m31209b9);
                    String string2 = m31207b.getString(m31209b11);
                    C1234b c1234b = new C1234b();
                    c1234b.m30572k(C1362v.m30251e(m31207b.getInt(m31209b)));
                    c1234b.m30570m(m31207b.getInt(m31209b2) != 0);
                    c1234b.m30569n(m31207b.getInt(m31209b3) != 0);
                    c1234b.m30571l(m31207b.getInt(m31209b4) != 0);
                    c1234b.m30568o(m31207b.getInt(m31209b5) != 0);
                    c1234b.m30567p(m31207b.getLong(m31209b6));
                    c1234b.m30566q(m31207b.getLong(m31209b7));
                    c1234b.m30573j(C1362v.m30254b(m31207b.getBlob(m31209b8)));
                    C1344p c1344p = new C1344p(string, string2);
                    c1344p.f5579d = C1362v.m30249g(m31207b.getInt(m31209b10));
                    c1344p.f5581f = m31207b.getString(m31209b12);
                    c1344p.f5582g = C1238d.m30552g(m31207b.getBlob(m31209b13));
                    c1344p.f5583h = C1238d.m30552g(m31207b.getBlob(m31209b14));
                    c1344p.f5584i = m31207b.getLong(m31209b15);
                    c1344p.f5585j = m31207b.getLong(m31209b16);
                    c1344p.f5586k = m31207b.getLong(m31209b17);
                    c1344p.f5588m = m31207b.getInt(m31209b18);
                    c1344p.f5589n = C1362v.m30252d(m31207b.getInt(m31209b19));
                    c1344p.f5590o = m31207b.getLong(m31209b20);
                    c1344p.f5591p = m31207b.getLong(m31209b21);
                    c1344p.f5592q = m31207b.getLong(m31209b22);
                    c1344p.f5593r = m31207b.getLong(m31209b23);
                    c1344p.f5594s = m31207b.getInt(m31209b24) != 0;
                    c1344p.f5595t = C1362v.m30250f(m31207b.getInt(m31209b25));
                    c1344p.f5587l = c1234b;
                    arrayList.add(c1344p);
                }
                m31207b.close();
                m31226f.m31223p();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m31207b.close();
                m31226f.m31223p();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: i */
    public void mo30274i(String str, C1238d c1238d) {
        this.f5598a.m31294b();
        AbstractC1780f m31219a = this.f5601d.m31219a();
        byte[] m30548k = C1238d.m30548k(c1238d);
        if (m30548k == null) {
            m31219a.mo28899T(1);
        } else {
            m31219a.mo28900J(1, m30548k);
        }
        if (str == null) {
            m31219a.mo28899T(2);
        } else {
            m31219a.mo28898o(2, str);
        }
        this.f5598a.m31293c();
        try {
            m31219a.mo28895r();
            this.f5598a.m31280r();
        } finally {
            this.f5598a.m31291g();
            this.f5601d.m31215f(m31219a);
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: j */
    public List<C1344p> mo30273j() {
        Throwable th;
        C1024k m31226f = C1024k.m31226f("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1", 0);
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            int m31209b = C1032b.m31209b(m31207b, "required_network_type");
            int m31209b2 = C1032b.m31209b(m31207b, "requires_charging");
            int m31209b3 = C1032b.m31209b(m31207b, "requires_device_idle");
            int m31209b4 = C1032b.m31209b(m31207b, "requires_battery_not_low");
            int m31209b5 = C1032b.m31209b(m31207b, "requires_storage_not_low");
            int m31209b6 = C1032b.m31209b(m31207b, "trigger_content_update_delay");
            int m31209b7 = C1032b.m31209b(m31207b, "trigger_max_content_delay");
            int m31209b8 = C1032b.m31209b(m31207b, "content_uri_triggers");
            int m31209b9 = C1032b.m31209b(m31207b, "id");
            int m31209b10 = C1032b.m31209b(m31207b, "state");
            int m31209b11 = C1032b.m31209b(m31207b, "worker_class_name");
            int m31209b12 = C1032b.m31209b(m31207b, "input_merger_class_name");
            int m31209b13 = C1032b.m31209b(m31207b, "input");
            int m31209b14 = C1032b.m31209b(m31207b, "output");
            try {
                int m31209b15 = C1032b.m31209b(m31207b, "initial_delay");
                int m31209b16 = C1032b.m31209b(m31207b, "interval_duration");
                int m31209b17 = C1032b.m31209b(m31207b, "flex_duration");
                int m31209b18 = C1032b.m31209b(m31207b, "run_attempt_count");
                int m31209b19 = C1032b.m31209b(m31207b, "backoff_policy");
                int m31209b20 = C1032b.m31209b(m31207b, "backoff_delay_duration");
                int m31209b21 = C1032b.m31209b(m31207b, "period_start_time");
                int m31209b22 = C1032b.m31209b(m31207b, "minimum_retention_duration");
                int m31209b23 = C1032b.m31209b(m31207b, "schedule_requested_at");
                int m31209b24 = C1032b.m31209b(m31207b, "run_in_foreground");
                int m31209b25 = C1032b.m31209b(m31207b, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m31207b.getCount());
                while (m31207b.moveToNext()) {
                    String string = m31207b.getString(m31209b9);
                    String string2 = m31207b.getString(m31209b11);
                    C1234b c1234b = new C1234b();
                    c1234b.m30572k(C1362v.m30251e(m31207b.getInt(m31209b)));
                    c1234b.m30570m(m31207b.getInt(m31209b2) != 0);
                    c1234b.m30569n(m31207b.getInt(m31209b3) != 0);
                    c1234b.m30571l(m31207b.getInt(m31209b4) != 0);
                    c1234b.m30568o(m31207b.getInt(m31209b5) != 0);
                    c1234b.m30567p(m31207b.getLong(m31209b6));
                    c1234b.m30566q(m31207b.getLong(m31209b7));
                    c1234b.m30573j(C1362v.m30254b(m31207b.getBlob(m31209b8)));
                    C1344p c1344p = new C1344p(string, string2);
                    c1344p.f5579d = C1362v.m30249g(m31207b.getInt(m31209b10));
                    c1344p.f5581f = m31207b.getString(m31209b12);
                    c1344p.f5582g = C1238d.m30552g(m31207b.getBlob(m31209b13));
                    c1344p.f5583h = C1238d.m30552g(m31207b.getBlob(m31209b14));
                    c1344p.f5584i = m31207b.getLong(m31209b15);
                    c1344p.f5585j = m31207b.getLong(m31209b16);
                    c1344p.f5586k = m31207b.getLong(m31209b17);
                    c1344p.f5588m = m31207b.getInt(m31209b18);
                    c1344p.f5589n = C1362v.m30252d(m31207b.getInt(m31209b19));
                    c1344p.f5590o = m31207b.getLong(m31209b20);
                    c1344p.f5591p = m31207b.getLong(m31209b21);
                    c1344p.f5592q = m31207b.getLong(m31209b22);
                    c1344p.f5593r = m31207b.getLong(m31209b23);
                    c1344p.f5594s = m31207b.getInt(m31209b24) != 0;
                    c1344p.f5595t = C1362v.m30250f(m31207b.getInt(m31209b25));
                    c1344p.f5587l = c1234b;
                    arrayList.add(c1344p);
                }
                m31207b.close();
                m31226f.m31223p();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m31207b.close();
                m31226f.m31223p();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: k */
    public boolean mo30272k() {
        C1024k m31226f = C1024k.m31226f("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        boolean z = false;
        try {
            if (m31207b.moveToFirst()) {
                z = false;
                if (m31207b.getInt(0) != 0) {
                    z = true;
                }
            }
            m31207b.close();
            m31226f.m31223p();
            return z;
        } catch (Throwable th) {
            m31207b.close();
            m31226f.m31223p();
            throw th;
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: l */
    public List<String> mo30271l(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            ArrayList arrayList = new ArrayList(m31207b.getCount());
            while (m31207b.moveToNext()) {
                arrayList.add(m31207b.getString(0));
            }
            return arrayList;
        } finally {
            m31207b.close();
            m31226f.m31223p();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: m */
    public WorkInfo$State mo30270m(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5598a.m31294b();
        WorkInfo$State workInfo$State = null;
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            if (m31207b.moveToFirst()) {
                workInfo$State = C1362v.m30249g(m31207b.getInt(0));
            }
            m31207b.close();
            m31226f.m31223p();
            return workInfo$State;
        } catch (Throwable th) {
            m31207b.close();
            m31226f.m31223p();
            throw th;
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: n */
    public C1344p mo30269n(String str) {
        Throwable th;
        int m31209b;
        int m31209b2;
        int m31209b3;
        int m31209b4;
        int m31209b5;
        int m31209b6;
        int m31209b7;
        int m31209b8;
        int m31209b9;
        int m31209b10;
        int m31209b11;
        int m31209b12;
        int m31209b13;
        int m31209b14;
        C1344p c1344p;
        C1024k m31226f = C1024k.m31226f("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            m31209b = C1032b.m31209b(m31207b, "required_network_type");
            m31209b2 = C1032b.m31209b(m31207b, "requires_charging");
            m31209b3 = C1032b.m31209b(m31207b, "requires_device_idle");
            m31209b4 = C1032b.m31209b(m31207b, "requires_battery_not_low");
            m31209b5 = C1032b.m31209b(m31207b, "requires_storage_not_low");
            m31209b6 = C1032b.m31209b(m31207b, "trigger_content_update_delay");
            m31209b7 = C1032b.m31209b(m31207b, "trigger_max_content_delay");
            m31209b8 = C1032b.m31209b(m31207b, "content_uri_triggers");
            m31209b9 = C1032b.m31209b(m31207b, "id");
            m31209b10 = C1032b.m31209b(m31207b, "state");
            m31209b11 = C1032b.m31209b(m31207b, "worker_class_name");
            m31209b12 = C1032b.m31209b(m31207b, "input_merger_class_name");
            m31209b13 = C1032b.m31209b(m31207b, "input");
            m31209b14 = C1032b.m31209b(m31207b, "output");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int m31209b15 = C1032b.m31209b(m31207b, "initial_delay");
            int m31209b16 = C1032b.m31209b(m31207b, "interval_duration");
            int m31209b17 = C1032b.m31209b(m31207b, "flex_duration");
            int m31209b18 = C1032b.m31209b(m31207b, "run_attempt_count");
            int m31209b19 = C1032b.m31209b(m31207b, "backoff_policy");
            int m31209b20 = C1032b.m31209b(m31207b, "backoff_delay_duration");
            int m31209b21 = C1032b.m31209b(m31207b, "period_start_time");
            int m31209b22 = C1032b.m31209b(m31207b, "minimum_retention_duration");
            int m31209b23 = C1032b.m31209b(m31207b, "schedule_requested_at");
            int m31209b24 = C1032b.m31209b(m31207b, "run_in_foreground");
            int m31209b25 = C1032b.m31209b(m31207b, "out_of_quota_policy");
            if (m31207b.moveToFirst()) {
                String string = m31207b.getString(m31209b9);
                String string2 = m31207b.getString(m31209b11);
                C1234b c1234b = new C1234b();
                c1234b.m30572k(C1362v.m30251e(m31207b.getInt(m31209b)));
                c1234b.m30570m(m31207b.getInt(m31209b2) != 0);
                c1234b.m30569n(m31207b.getInt(m31209b3) != 0);
                c1234b.m30571l(m31207b.getInt(m31209b4) != 0);
                c1234b.m30568o(m31207b.getInt(m31209b5) != 0);
                c1234b.m30567p(m31207b.getLong(m31209b6));
                c1234b.m30566q(m31207b.getLong(m31209b7));
                c1234b.m30573j(C1362v.m30254b(m31207b.getBlob(m31209b8)));
                c1344p = new C1344p(string, string2);
                c1344p.f5579d = C1362v.m30249g(m31207b.getInt(m31209b10));
                c1344p.f5581f = m31207b.getString(m31209b12);
                c1344p.f5582g = C1238d.m30552g(m31207b.getBlob(m31209b13));
                c1344p.f5583h = C1238d.m30552g(m31207b.getBlob(m31209b14));
                c1344p.f5584i = m31207b.getLong(m31209b15);
                c1344p.f5585j = m31207b.getLong(m31209b16);
                c1344p.f5586k = m31207b.getLong(m31209b17);
                c1344p.f5588m = m31207b.getInt(m31209b18);
                c1344p.f5589n = C1362v.m30252d(m31207b.getInt(m31209b19));
                c1344p.f5590o = m31207b.getLong(m31209b20);
                c1344p.f5591p = m31207b.getLong(m31209b21);
                c1344p.f5592q = m31207b.getLong(m31209b22);
                c1344p.f5593r = m31207b.getLong(m31209b23);
                c1344p.f5594s = m31207b.getInt(m31209b24) != 0;
                c1344p.f5595t = C1362v.m30250f(m31207b.getInt(m31209b25));
                c1344p.f5587l = c1234b;
            } else {
                c1344p = null;
            }
            m31207b.close();
            m31226f.m31223p();
            return c1344p;
        } catch (Throwable th3) {
            th = th3;
            m31207b.close();
            m31226f.m31223p();
            throw th;
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: o */
    public int mo30268o(String str) {
        this.f5598a.m31294b();
        AbstractC1780f m31219a = this.f5604g.m31219a();
        if (str == null) {
            m31219a.mo28899T(1);
        } else {
            m31219a.mo28898o(1, str);
        }
        this.f5598a.m31293c();
        try {
            int mo28895r = m31219a.mo28895r();
            this.f5598a.m31280r();
            return mo28895r;
        } finally {
            this.f5598a.m31291g();
            this.f5604g.m31215f(m31219a);
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: p */
    public List<String> mo30267p(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            ArrayList arrayList = new ArrayList(m31207b.getCount());
            while (m31207b.moveToNext()) {
                arrayList.add(m31207b.getString(0));
            }
            return arrayList;
        } finally {
            m31207b.close();
            m31226f.m31223p();
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: q */
    public List<C1238d> mo30266q(String str) {
        C1024k m31226f = C1024k.m31226f("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            m31226f.mo28899T(1);
        } else {
            m31226f.mo28898o(1, str);
        }
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            ArrayList arrayList = new ArrayList(m31207b.getCount());
            while (m31207b.moveToNext()) {
                arrayList.add(C1238d.m30552g(m31207b.getBlob(0)));
            }
            return arrayList;
        } finally {
            m31207b.close();
            m31226f.m31223p();
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: r */
    public int mo30265r(String str) {
        this.f5598a.m31294b();
        AbstractC1780f m31219a = this.f5603f.m31219a();
        if (str == null) {
            m31219a.mo28899T(1);
        } else {
            m31219a.mo28898o(1, str);
        }
        this.f5598a.m31293c();
        try {
            int mo28895r = m31219a.mo28895r();
            this.f5598a.m31280r();
            return mo28895r;
        } finally {
            this.f5598a.m31291g();
            this.f5603f.m31215f(m31219a);
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: s */
    public void mo30264s(String str, long j) {
        this.f5598a.m31294b();
        AbstractC1780f m31219a = this.f5602e.m31219a();
        m31219a.mo28901F(1, j);
        if (str == null) {
            m31219a.mo28899T(2);
        } else {
            m31219a.mo28898o(2, str);
        }
        this.f5598a.m31293c();
        try {
            m31219a.mo28895r();
            this.f5598a.m31280r();
        } finally {
            this.f5598a.m31291g();
            this.f5602e.m31215f(m31219a);
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: t */
    public List<C1344p> mo30263t(int i) {
        Throwable th;
        int m31209b;
        int m31209b2;
        int m31209b3;
        int m31209b4;
        int m31209b5;
        int m31209b6;
        int m31209b7;
        int m31209b8;
        int m31209b9;
        int m31209b10;
        int m31209b11;
        int m31209b12;
        int m31209b13;
        int m31209b14;
        C1024k m31226f = C1024k.m31226f("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        m31226f.mo28901F(1, i);
        this.f5598a.m31294b();
        Cursor m31207b = C1033c.m31207b(this.f5598a, m31226f, false, null);
        try {
            m31209b = C1032b.m31209b(m31207b, "required_network_type");
            m31209b2 = C1032b.m31209b(m31207b, "requires_charging");
            m31209b3 = C1032b.m31209b(m31207b, "requires_device_idle");
            m31209b4 = C1032b.m31209b(m31207b, "requires_battery_not_low");
            m31209b5 = C1032b.m31209b(m31207b, "requires_storage_not_low");
            m31209b6 = C1032b.m31209b(m31207b, "trigger_content_update_delay");
            m31209b7 = C1032b.m31209b(m31207b, "trigger_max_content_delay");
            m31209b8 = C1032b.m31209b(m31207b, "content_uri_triggers");
            m31209b9 = C1032b.m31209b(m31207b, "id");
            m31209b10 = C1032b.m31209b(m31207b, "state");
            m31209b11 = C1032b.m31209b(m31207b, "worker_class_name");
            m31209b12 = C1032b.m31209b(m31207b, "input_merger_class_name");
            m31209b13 = C1032b.m31209b(m31207b, "input");
            m31209b14 = C1032b.m31209b(m31207b, "output");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int m31209b15 = C1032b.m31209b(m31207b, "initial_delay");
            int m31209b16 = C1032b.m31209b(m31207b, "interval_duration");
            int m31209b17 = C1032b.m31209b(m31207b, "flex_duration");
            int m31209b18 = C1032b.m31209b(m31207b, "run_attempt_count");
            int m31209b19 = C1032b.m31209b(m31207b, "backoff_policy");
            int m31209b20 = C1032b.m31209b(m31207b, "backoff_delay_duration");
            int m31209b21 = C1032b.m31209b(m31207b, "period_start_time");
            int m31209b22 = C1032b.m31209b(m31207b, "minimum_retention_duration");
            int m31209b23 = C1032b.m31209b(m31207b, "schedule_requested_at");
            int m31209b24 = C1032b.m31209b(m31207b, "run_in_foreground");
            int m31209b25 = C1032b.m31209b(m31207b, "out_of_quota_policy");
            ArrayList arrayList = new ArrayList(m31207b.getCount());
            while (m31207b.moveToNext()) {
                String string = m31207b.getString(m31209b9);
                String string2 = m31207b.getString(m31209b11);
                C1234b c1234b = new C1234b();
                c1234b.m30572k(C1362v.m30251e(m31207b.getInt(m31209b)));
                c1234b.m30570m(m31207b.getInt(m31209b2) != 0);
                c1234b.m30569n(m31207b.getInt(m31209b3) != 0);
                c1234b.m30571l(m31207b.getInt(m31209b4) != 0);
                c1234b.m30568o(m31207b.getInt(m31209b5) != 0);
                c1234b.m30567p(m31207b.getLong(m31209b6));
                c1234b.m30566q(m31207b.getLong(m31209b7));
                c1234b.m30573j(C1362v.m30254b(m31207b.getBlob(m31209b8)));
                C1344p c1344p = new C1344p(string, string2);
                c1344p.f5579d = C1362v.m30249g(m31207b.getInt(m31209b10));
                c1344p.f5581f = m31207b.getString(m31209b12);
                c1344p.f5582g = C1238d.m30552g(m31207b.getBlob(m31209b13));
                c1344p.f5583h = C1238d.m30552g(m31207b.getBlob(m31209b14));
                c1344p.f5584i = m31207b.getLong(m31209b15);
                c1344p.f5585j = m31207b.getLong(m31209b16);
                c1344p.f5586k = m31207b.getLong(m31209b17);
                c1344p.f5588m = m31207b.getInt(m31209b18);
                c1344p.f5589n = C1362v.m30252d(m31207b.getInt(m31209b19));
                c1344p.f5590o = m31207b.getLong(m31209b20);
                c1344p.f5591p = m31207b.getLong(m31209b21);
                c1344p.f5592q = m31207b.getLong(m31209b22);
                c1344p.f5593r = m31207b.getLong(m31209b23);
                c1344p.f5594s = m31207b.getInt(m31209b24) != 0;
                c1344p.f5595t = C1362v.m30250f(m31207b.getInt(m31209b25));
                c1344p.f5587l = c1234b;
                arrayList.add(c1344p);
            }
            m31207b.close();
            m31226f.m31223p();
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            m31207b.close();
            m31226f.m31223p();
            throw th;
        }
    }

    @Override // androidx.work.impl.p018n.AbstractC1347q
    /* renamed from: u */
    public int mo30262u() {
        this.f5598a.m31294b();
        AbstractC1780f m31219a = this.f5606i.m31219a();
        this.f5598a.m31293c();
        try {
            int mo28895r = m31219a.mo28895r();
            this.f5598a.m31280r();
            return mo28895r;
        } finally {
            this.f5598a.m31291g();
            this.f5606i.m31215f(m31219a);
        }
    }
}
