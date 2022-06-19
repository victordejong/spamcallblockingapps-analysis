package androidx.work.impl.p055b;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0757f;
import androidx.room.AbstractC1012b;
import androidx.room.AbstractC1044i;
import androidx.room.AbstractC1056o;
import androidx.room.C1053l;
import androidx.room.p050b.C1014b;
import androidx.room.p050b.C1015c;
import androidx.room.p050b.C1017e;
import androidx.work.C1129c;
import androidx.work.C1133e;
import androidx.work.C1308s;
import androidx.work.impl.p055b.C1191p;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.b.r */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/r.class */
public final class C1195r implements AbstractC1194q {

    /* renamed from: a */
    private final AbstractC1044i f4032a;

    /* renamed from: b */
    private final AbstractC1012b<C1191p> f4033b;

    /* renamed from: c */
    private final AbstractC1056o f4034c;

    /* renamed from: d */
    private final AbstractC1056o f4035d;

    /* renamed from: e */
    private final AbstractC1056o f4036e;

    /* renamed from: f */
    private final AbstractC1056o f4037f;

    /* renamed from: g */
    private final AbstractC1056o f4038g;

    /* renamed from: h */
    private final AbstractC1056o f4039h;

    /* renamed from: i */
    private final AbstractC1056o f4040i;

    /* renamed from: j */
    private final AbstractC1056o f4041j;

    public C1195r(AbstractC1044i abstractC1044i) {
        this.f4032a = abstractC1044i;
        this.f4033b = new AbstractC1012b<C1191p>(abstractC1044i) { // from class: androidx.work.impl.b.r.1
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            /* renamed from: a */
            public void mo17779a(AbstractC0757f abstractC0757f, C1191p c1191p) {
                if (c1191p.f4013a == null) {
                    abstractC0757f.mo18257a(1);
                } else {
                    abstractC0757f.mo18254a(1, c1191p.f4013a);
                }
                abstractC0757f.mo18255a(2, C1209v.m17774a(c1191p.f4014b));
                if (c1191p.f4015c == null) {
                    abstractC0757f.mo18257a(3);
                } else {
                    abstractC0757f.mo18254a(3, c1191p.f4015c);
                }
                if (c1191p.f4016d == null) {
                    abstractC0757f.mo18257a(4);
                } else {
                    abstractC0757f.mo18254a(4, c1191p.f4016d);
                }
                byte[] m17922a = C1133e.m17922a(c1191p.f4017e);
                if (m17922a == null) {
                    abstractC0757f.mo18257a(5);
                } else {
                    abstractC0757f.mo18253a(5, m17922a);
                }
                byte[] m17922a2 = C1133e.m17922a(c1191p.f4018f);
                if (m17922a2 == null) {
                    abstractC0757f.mo18257a(6);
                } else {
                    abstractC0757f.mo18253a(6, m17922a2);
                }
                abstractC0757f.mo18255a(7, c1191p.f4019g);
                abstractC0757f.mo18255a(8, c1191p.f4020h);
                abstractC0757f.mo18255a(9, c1191p.f4021i);
                abstractC0757f.mo18255a(10, c1191p.f4023k);
                abstractC0757f.mo18255a(11, C1209v.m17777a(c1191p.f4024l));
                abstractC0757f.mo18255a(12, c1191p.f4025m);
                abstractC0757f.mo18255a(13, c1191p.f4026n);
                abstractC0757f.mo18255a(14, c1191p.f4027o);
                abstractC0757f.mo18255a(15, c1191p.f4028p);
                abstractC0757f.mo18255a(16, c1191p.f4029q ? 1 : 0);
                C1129c c1129c = c1191p.f4022j;
                if (c1129c == null) {
                    abstractC0757f.mo18257a(17);
                    abstractC0757f.mo18257a(18);
                    abstractC0757f.mo18257a(19);
                    abstractC0757f.mo18257a(20);
                    abstractC0757f.mo18257a(21);
                    abstractC0757f.mo18257a(22);
                    abstractC0757f.mo18257a(23);
                    abstractC0757f.mo18257a(24);
                    return;
                }
                abstractC0757f.mo18255a(17, C1209v.m17775a(c1129c.m17946a()));
                abstractC0757f.mo18255a(18, c1129c.m17941b() ? 1 : 0);
                abstractC0757f.mo18255a(19, c1129c.m17938c() ? 1 : 0);
                abstractC0757f.mo18255a(20, c1129c.m17936d() ? 1 : 0);
                abstractC0757f.mo18255a(21, c1129c.m17934e() ? 1 : 0);
                abstractC0757f.mo18255a(22, c1129c.m17933f());
                abstractC0757f.mo18255a(23, c1129c.m17932g());
                byte[] m17776a = C1209v.m17776a(c1129c.m17931h());
                if (m17776a == null) {
                    abstractC0757f.mo18257a(24);
                } else {
                    abstractC0757f.mo18253a(24, m17776a);
                }
            }
        };
        this.f4034c = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.r.2
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "DELETE FROM workspec WHERE id=?";
            }
        };
        this.f4035d = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.r.3
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "UPDATE workspec SET output=? WHERE id=?";
            }
        };
        this.f4036e = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.r.4
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "UPDATE workspec SET period_start_time=? WHERE id=?";
            }
        };
        this.f4037f = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.r.5
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
            }
        };
        this.f4038g = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.r.6
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
            }
        };
        this.f4039h = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.r.7
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
            }
        };
        this.f4040i = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.r.8
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
            }
        };
        this.f4041j = new AbstractC1056o(abstractC1044i) { // from class: androidx.work.impl.b.r.9
            @Override // androidx.room.AbstractC1056o
            /* renamed from: a */
            public String mo17781a() {
                return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
            }
        };
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: a */
    public int mo17799a(C1308s.EnumC1309a enumC1309a, String... strArr) {
        this.f4032a.m18292f();
        StringBuilder m18343a = C1017e.m18343a();
        m18343a.append("UPDATE workspec SET state=");
        m18343a.append("?");
        m18343a.append(" WHERE id IN (");
        C1017e.m18342a(m18343a, strArr.length);
        m18343a.append(")");
        AbstractC0757f m18296a = this.f4032a.m18296a(m18343a.toString());
        m18296a.mo18255a(1, C1209v.m17774a(enumC1309a));
        int i = 2;
        for (String str : strArr) {
            if (str == null) {
                m18296a.mo18257a(i);
            } else {
                m18296a.mo18254a(i, str);
            }
            i++;
        }
        this.f4032a.m18291g();
        try {
            int mo19505a = m18296a.mo19505a();
            this.f4032a.m18288j();
            return mo19505a;
        } finally {
            this.f4032a.m18290h();
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: a */
    public List<String> mo17802a() {
        C1053l m18251a = C1053l.m18251a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.f4032a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f4032a, m18251a, false, null);
        try {
            ArrayList arrayList = new ArrayList(m18346a.getCount());
            while (m18346a.moveToNext()) {
                arrayList.add(m18346a.getString(0));
            }
            return arrayList;
        } finally {
            m18346a.close();
            m18251a.m18258a();
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: a */
    public List<C1191p> mo17801a(int i) {
        C1053l m18251a = C1053l.m18251a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        m18251a.mo18255a(1, i);
        this.f4032a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f4032a, m18251a, false, null);
        try {
            int m18348a = C1014b.m18348a(m18346a, "required_network_type");
            int m18348a2 = C1014b.m18348a(m18346a, "requires_charging");
            int m18348a3 = C1014b.m18348a(m18346a, "requires_device_idle");
            int m18348a4 = C1014b.m18348a(m18346a, "requires_battery_not_low");
            int m18348a5 = C1014b.m18348a(m18346a, "requires_storage_not_low");
            int m18348a6 = C1014b.m18348a(m18346a, "trigger_content_update_delay");
            int m18348a7 = C1014b.m18348a(m18346a, "trigger_max_content_delay");
            int m18348a8 = C1014b.m18348a(m18346a, "content_uri_triggers");
            int m18348a9 = C1014b.m18348a(m18346a, "id");
            int m18348a10 = C1014b.m18348a(m18346a, "state");
            int m18348a11 = C1014b.m18348a(m18346a, "worker_class_name");
            int m18348a12 = C1014b.m18348a(m18346a, "input_merger_class_name");
            int m18348a13 = C1014b.m18348a(m18346a, "input");
            int m18348a14 = C1014b.m18348a(m18346a, "output");
            int m18348a15 = C1014b.m18348a(m18346a, "initial_delay");
            int m18348a16 = C1014b.m18348a(m18346a, "interval_duration");
            int m18348a17 = C1014b.m18348a(m18346a, "flex_duration");
            int m18348a18 = C1014b.m18348a(m18346a, "run_attempt_count");
            int m18348a19 = C1014b.m18348a(m18346a, "backoff_policy");
            int m18348a20 = C1014b.m18348a(m18346a, "backoff_delay_duration");
            int m18348a21 = C1014b.m18348a(m18346a, "period_start_time");
            int m18348a22 = C1014b.m18348a(m18346a, "minimum_retention_duration");
            int m18348a23 = C1014b.m18348a(m18346a, "schedule_requested_at");
            int m18348a24 = C1014b.m18348a(m18346a, "run_in_foreground");
            ArrayList arrayList = new ArrayList(m18346a.getCount());
            while (m18346a.moveToNext()) {
                String string = m18346a.getString(m18348a9);
                String string2 = m18346a.getString(m18348a11);
                C1129c c1129c = new C1129c();
                c1129c.m17943a(C1209v.m17771c(m18346a.getInt(m18348a)));
                c1129c.m17942a(m18346a.getInt(m18348a2) != 0);
                c1129c.m17939b(m18346a.getInt(m18348a3) != 0);
                c1129c.m17937c(m18346a.getInt(m18348a4) != 0);
                c1129c.m17935d(m18346a.getInt(m18348a5) != 0);
                c1129c.m17945a(m18346a.getLong(m18348a6));
                c1129c.m17940b(m18346a.getLong(m18348a7));
                c1129c.m17944a(C1209v.m17773a(m18346a.getBlob(m18348a8)));
                C1191p c1191p = new C1191p(string, string2);
                c1191p.f4014b = C1209v.m17778a(m18346a.getInt(m18348a10));
                c1191p.f4016d = m18346a.getString(m18348a12);
                c1191p.f4017e = C1133e.m17920a(m18346a.getBlob(m18348a13));
                c1191p.f4018f = C1133e.m17920a(m18346a.getBlob(m18348a14));
                c1191p.f4019g = m18346a.getLong(m18348a15);
                c1191p.f4020h = m18346a.getLong(m18348a16);
                c1191p.f4021i = m18346a.getLong(m18348a17);
                c1191p.f4023k = m18346a.getInt(m18348a18);
                c1191p.f4024l = C1209v.m17772b(m18346a.getInt(m18348a19));
                c1191p.f4025m = m18346a.getLong(m18348a20);
                c1191p.f4026n = m18346a.getLong(m18348a21);
                c1191p.f4027o = m18346a.getLong(m18348a22);
                c1191p.f4028p = m18346a.getLong(m18348a23);
                c1191p.f4029q = m18346a.getInt(m18348a24) != 0;
                c1191p.f4022j = c1129c;
                arrayList.add(c1191p);
            }
            return arrayList;
        } finally {
            m18346a.close();
            m18251a.m18258a();
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: a */
    public void mo17800a(C1191p c1191p) {
        this.f4032a.m18292f();
        this.f4032a.m18291g();
        try {
            this.f4033b.m18353a((AbstractC1012b<C1191p>) c1191p);
            this.f4032a.m18288j();
        } finally {
            this.f4032a.m18290h();
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: a */
    public void mo17798a(String str) {
        this.f4032a.m18292f();
        AbstractC0757f m18238c = this.f4034c.m18238c();
        if (str == null) {
            m18238c.mo18257a(1);
        } else {
            m18238c.mo18254a(1, str);
        }
        this.f4032a.m18291g();
        try {
            m18238c.mo19505a();
            this.f4032a.m18288j();
        } finally {
            this.f4032a.m18290h();
            this.f4034c.m18241a(m18238c);
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: a */
    public void mo17797a(String str, long j) {
        this.f4032a.m18292f();
        AbstractC0757f m18238c = this.f4036e.m18238c();
        m18238c.mo18255a(1, j);
        if (str == null) {
            m18238c.mo18257a(2);
        } else {
            m18238c.mo18254a(2, str);
        }
        this.f4032a.m18291g();
        try {
            m18238c.mo19505a();
            this.f4032a.m18288j();
        } finally {
            this.f4032a.m18290h();
            this.f4036e.m18241a(m18238c);
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: a */
    public void mo17796a(String str, C1133e c1133e) {
        this.f4032a.m18292f();
        AbstractC0757f m18238c = this.f4035d.m18238c();
        byte[] m17922a = C1133e.m17922a(c1133e);
        if (m17922a == null) {
            m18238c.mo18257a(1);
        } else {
            m18238c.mo18253a(1, m17922a);
        }
        if (str == null) {
            m18238c.mo18257a(2);
        } else {
            m18238c.mo18254a(2, str);
        }
        this.f4032a.m18291g();
        try {
            m18238c.mo19505a();
            this.f4032a.m18288j();
        } finally {
            this.f4032a.m18290h();
            this.f4035d.m18241a(m18238c);
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: b */
    public int mo17795b() {
        this.f4032a.m18292f();
        AbstractC0757f m18238c = this.f4040i.m18238c();
        this.f4032a.m18291g();
        try {
            int mo19505a = m18238c.mo19505a();
            this.f4032a.m18288j();
            return mo19505a;
        } finally {
            this.f4032a.m18290h();
            this.f4040i.m18241a(m18238c);
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: b */
    public int mo17793b(String str, long j) {
        this.f4032a.m18292f();
        AbstractC0757f m18238c = this.f4039h.m18238c();
        m18238c.mo18255a(1, j);
        if (str == null) {
            m18238c.mo18257a(2);
        } else {
            m18238c.mo18254a(2, str);
        }
        this.f4032a.m18291g();
        try {
            int mo19505a = m18238c.mo19505a();
            this.f4032a.m18288j();
            return mo19505a;
        } finally {
            this.f4032a.m18290h();
            this.f4039h.m18241a(m18238c);
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: b */
    public C1191p mo17794b(String str) {
        C1191p c1191p;
        C1053l m18251a = C1053l.m18251a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE id=?", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f4032a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f4032a, m18251a, false, null);
        try {
            int m18348a = C1014b.m18348a(m18346a, "required_network_type");
            int m18348a2 = C1014b.m18348a(m18346a, "requires_charging");
            int m18348a3 = C1014b.m18348a(m18346a, "requires_device_idle");
            int m18348a4 = C1014b.m18348a(m18346a, "requires_battery_not_low");
            int m18348a5 = C1014b.m18348a(m18346a, "requires_storage_not_low");
            int m18348a6 = C1014b.m18348a(m18346a, "trigger_content_update_delay");
            int m18348a7 = C1014b.m18348a(m18346a, "trigger_max_content_delay");
            int m18348a8 = C1014b.m18348a(m18346a, "content_uri_triggers");
            int m18348a9 = C1014b.m18348a(m18346a, "id");
            int m18348a10 = C1014b.m18348a(m18346a, "state");
            int m18348a11 = C1014b.m18348a(m18346a, "worker_class_name");
            int m18348a12 = C1014b.m18348a(m18346a, "input_merger_class_name");
            int m18348a13 = C1014b.m18348a(m18346a, "input");
            int m18348a14 = C1014b.m18348a(m18346a, "output");
            int m18348a15 = C1014b.m18348a(m18346a, "initial_delay");
            int m18348a16 = C1014b.m18348a(m18346a, "interval_duration");
            int m18348a17 = C1014b.m18348a(m18346a, "flex_duration");
            int m18348a18 = C1014b.m18348a(m18346a, "run_attempt_count");
            int m18348a19 = C1014b.m18348a(m18346a, "backoff_policy");
            int m18348a20 = C1014b.m18348a(m18346a, "backoff_delay_duration");
            int m18348a21 = C1014b.m18348a(m18346a, "period_start_time");
            int m18348a22 = C1014b.m18348a(m18346a, "minimum_retention_duration");
            int m18348a23 = C1014b.m18348a(m18346a, "schedule_requested_at");
            int m18348a24 = C1014b.m18348a(m18346a, "run_in_foreground");
            if (m18346a.moveToFirst()) {
                String string = m18346a.getString(m18348a9);
                String string2 = m18346a.getString(m18348a11);
                C1129c c1129c = new C1129c();
                c1129c.m17943a(C1209v.m17771c(m18346a.getInt(m18348a)));
                c1129c.m17942a(m18346a.getInt(m18348a2) != 0);
                c1129c.m17939b(m18346a.getInt(m18348a3) != 0);
                c1129c.m17937c(m18346a.getInt(m18348a4) != 0);
                c1129c.m17935d(m18346a.getInt(m18348a5) != 0);
                c1129c.m17945a(m18346a.getLong(m18348a6));
                c1129c.m17940b(m18346a.getLong(m18348a7));
                c1129c.m17944a(C1209v.m17773a(m18346a.getBlob(m18348a8)));
                c1191p = new C1191p(string, string2);
                c1191p.f4014b = C1209v.m17778a(m18346a.getInt(m18348a10));
                c1191p.f4016d = m18346a.getString(m18348a12);
                c1191p.f4017e = C1133e.m17920a(m18346a.getBlob(m18348a13));
                c1191p.f4018f = C1133e.m17920a(m18346a.getBlob(m18348a14));
                c1191p.f4019g = m18346a.getLong(m18348a15);
                c1191p.f4020h = m18346a.getLong(m18348a16);
                c1191p.f4021i = m18346a.getLong(m18348a17);
                c1191p.f4023k = m18346a.getInt(m18348a18);
                c1191p.f4024l = C1209v.m17772b(m18346a.getInt(m18348a19));
                c1191p.f4025m = m18346a.getLong(m18348a20);
                c1191p.f4026n = m18346a.getLong(m18348a21);
                c1191p.f4027o = m18346a.getLong(m18348a22);
                c1191p.f4028p = m18346a.getLong(m18348a23);
                c1191p.f4029q = m18346a.getInt(m18348a24) != 0;
                c1191p.f4022j = c1129c;
            } else {
                c1191p = null;
            }
            m18346a.close();
            m18251a.m18258a();
            return c1191p;
        } catch (Throwable th) {
            m18346a.close();
            m18251a.m18258a();
            throw th;
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: c */
    public List<C1191p> mo17792c() {
        C1053l m18251a = C1053l.m18251a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f4032a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f4032a, m18251a, false, null);
        try {
            int m18348a = C1014b.m18348a(m18346a, "required_network_type");
            int m18348a2 = C1014b.m18348a(m18346a, "requires_charging");
            int m18348a3 = C1014b.m18348a(m18346a, "requires_device_idle");
            int m18348a4 = C1014b.m18348a(m18346a, "requires_battery_not_low");
            int m18348a5 = C1014b.m18348a(m18346a, "requires_storage_not_low");
            int m18348a6 = C1014b.m18348a(m18346a, "trigger_content_update_delay");
            int m18348a7 = C1014b.m18348a(m18346a, "trigger_max_content_delay");
            int m18348a8 = C1014b.m18348a(m18346a, "content_uri_triggers");
            int m18348a9 = C1014b.m18348a(m18346a, "id");
            int m18348a10 = C1014b.m18348a(m18346a, "state");
            int m18348a11 = C1014b.m18348a(m18346a, "worker_class_name");
            int m18348a12 = C1014b.m18348a(m18346a, "input_merger_class_name");
            int m18348a13 = C1014b.m18348a(m18346a, "input");
            int m18348a14 = C1014b.m18348a(m18346a, "output");
            int m18348a15 = C1014b.m18348a(m18346a, "initial_delay");
            int m18348a16 = C1014b.m18348a(m18346a, "interval_duration");
            int m18348a17 = C1014b.m18348a(m18346a, "flex_duration");
            int m18348a18 = C1014b.m18348a(m18346a, "run_attempt_count");
            int m18348a19 = C1014b.m18348a(m18346a, "backoff_policy");
            int m18348a20 = C1014b.m18348a(m18346a, "backoff_delay_duration");
            int m18348a21 = C1014b.m18348a(m18346a, "period_start_time");
            int m18348a22 = C1014b.m18348a(m18346a, "minimum_retention_duration");
            int m18348a23 = C1014b.m18348a(m18346a, "schedule_requested_at");
            int m18348a24 = C1014b.m18348a(m18346a, "run_in_foreground");
            ArrayList arrayList = new ArrayList(m18346a.getCount());
            while (m18346a.moveToNext()) {
                String string = m18346a.getString(m18348a9);
                String string2 = m18346a.getString(m18348a11);
                C1129c c1129c = new C1129c();
                c1129c.m17943a(C1209v.m17771c(m18346a.getInt(m18348a)));
                c1129c.m17942a(m18346a.getInt(m18348a2) != 0);
                c1129c.m17939b(m18346a.getInt(m18348a3) != 0);
                c1129c.m17937c(m18346a.getInt(m18348a4) != 0);
                c1129c.m17935d(m18346a.getInt(m18348a5) != 0);
                c1129c.m17945a(m18346a.getLong(m18348a6));
                c1129c.m17940b(m18346a.getLong(m18348a7));
                c1129c.m17944a(C1209v.m17773a(m18346a.getBlob(m18348a8)));
                C1191p c1191p = new C1191p(string, string2);
                c1191p.f4014b = C1209v.m17778a(m18346a.getInt(m18348a10));
                c1191p.f4016d = m18346a.getString(m18348a12);
                c1191p.f4017e = C1133e.m17920a(m18346a.getBlob(m18348a13));
                c1191p.f4018f = C1133e.m17920a(m18346a.getBlob(m18348a14));
                c1191p.f4019g = m18346a.getLong(m18348a15);
                c1191p.f4020h = m18346a.getLong(m18348a16);
                c1191p.f4021i = m18346a.getLong(m18348a17);
                c1191p.f4023k = m18346a.getInt(m18348a18);
                c1191p.f4024l = C1209v.m17772b(m18346a.getInt(m18348a19));
                c1191p.f4025m = m18346a.getLong(m18348a20);
                c1191p.f4026n = m18346a.getLong(m18348a21);
                c1191p.f4027o = m18346a.getLong(m18348a22);
                c1191p.f4028p = m18346a.getLong(m18348a23);
                c1191p.f4029q = m18346a.getInt(m18348a24) != 0;
                c1191p.f4022j = c1129c;
                arrayList.add(c1191p);
            }
            return arrayList;
        } finally {
            m18346a.close();
            m18251a.m18258a();
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: c */
    public List<C1191p.C1193a> mo17791c(String str) {
        C1053l m18251a = C1053l.m18251a("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f4032a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f4032a, m18251a, false, null);
        try {
            int m18348a = C1014b.m18348a(m18346a, "id");
            int m18348a2 = C1014b.m18348a(m18346a, "state");
            ArrayList arrayList = new ArrayList(m18346a.getCount());
            while (m18346a.moveToNext()) {
                C1191p.C1193a c1193a = new C1191p.C1193a();
                c1193a.f4030a = m18346a.getString(m18348a);
                c1193a.f4031b = C1209v.m17778a(m18346a.getInt(m18348a2));
                arrayList.add(c1193a);
            }
            return arrayList;
        } finally {
            m18346a.close();
            m18251a.m18258a();
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: d */
    public int mo17789d(String str) {
        this.f4032a.m18292f();
        AbstractC0757f m18238c = this.f4037f.m18238c();
        if (str == null) {
            m18238c.mo18257a(1);
        } else {
            m18238c.mo18254a(1, str);
        }
        this.f4032a.m18291g();
        try {
            int mo19505a = m18238c.mo19505a();
            this.f4032a.m18288j();
            return mo19505a;
        } finally {
            this.f4032a.m18290h();
            this.f4037f.m18241a(m18238c);
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: d */
    public List<C1191p> mo17790d() {
        C1053l m18251a = C1053l.m18251a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=1", 0);
        this.f4032a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f4032a, m18251a, false, null);
        try {
            int m18348a = C1014b.m18348a(m18346a, "required_network_type");
            int m18348a2 = C1014b.m18348a(m18346a, "requires_charging");
            int m18348a3 = C1014b.m18348a(m18346a, "requires_device_idle");
            int m18348a4 = C1014b.m18348a(m18346a, "requires_battery_not_low");
            int m18348a5 = C1014b.m18348a(m18346a, "requires_storage_not_low");
            int m18348a6 = C1014b.m18348a(m18346a, "trigger_content_update_delay");
            int m18348a7 = C1014b.m18348a(m18346a, "trigger_max_content_delay");
            int m18348a8 = C1014b.m18348a(m18346a, "content_uri_triggers");
            int m18348a9 = C1014b.m18348a(m18346a, "id");
            int m18348a10 = C1014b.m18348a(m18346a, "state");
            int m18348a11 = C1014b.m18348a(m18346a, "worker_class_name");
            int m18348a12 = C1014b.m18348a(m18346a, "input_merger_class_name");
            int m18348a13 = C1014b.m18348a(m18346a, "input");
            int m18348a14 = C1014b.m18348a(m18346a, "output");
            int m18348a15 = C1014b.m18348a(m18346a, "initial_delay");
            int m18348a16 = C1014b.m18348a(m18346a, "interval_duration");
            int m18348a17 = C1014b.m18348a(m18346a, "flex_duration");
            int m18348a18 = C1014b.m18348a(m18346a, "run_attempt_count");
            int m18348a19 = C1014b.m18348a(m18346a, "backoff_policy");
            int m18348a20 = C1014b.m18348a(m18346a, "backoff_delay_duration");
            int m18348a21 = C1014b.m18348a(m18346a, "period_start_time");
            int m18348a22 = C1014b.m18348a(m18346a, "minimum_retention_duration");
            int m18348a23 = C1014b.m18348a(m18346a, "schedule_requested_at");
            int m18348a24 = C1014b.m18348a(m18346a, "run_in_foreground");
            ArrayList arrayList = new ArrayList(m18346a.getCount());
            while (m18346a.moveToNext()) {
                String string = m18346a.getString(m18348a9);
                String string2 = m18346a.getString(m18348a11);
                C1129c c1129c = new C1129c();
                c1129c.m17943a(C1209v.m17771c(m18346a.getInt(m18348a)));
                c1129c.m17942a(m18346a.getInt(m18348a2) != 0);
                c1129c.m17939b(m18346a.getInt(m18348a3) != 0);
                c1129c.m17937c(m18346a.getInt(m18348a4) != 0);
                c1129c.m17935d(m18346a.getInt(m18348a5) != 0);
                c1129c.m17945a(m18346a.getLong(m18348a6));
                c1129c.m17940b(m18346a.getLong(m18348a7));
                c1129c.m17944a(C1209v.m17773a(m18346a.getBlob(m18348a8)));
                C1191p c1191p = new C1191p(string, string2);
                c1191p.f4014b = C1209v.m17778a(m18346a.getInt(m18348a10));
                c1191p.f4016d = m18346a.getString(m18348a12);
                c1191p.f4017e = C1133e.m17920a(m18346a.getBlob(m18348a13));
                c1191p.f4018f = C1133e.m17920a(m18346a.getBlob(m18348a14));
                c1191p.f4019g = m18346a.getLong(m18348a15);
                c1191p.f4020h = m18346a.getLong(m18348a16);
                c1191p.f4021i = m18346a.getLong(m18348a17);
                c1191p.f4023k = m18346a.getInt(m18348a18);
                c1191p.f4024l = C1209v.m17772b(m18346a.getInt(m18348a19));
                c1191p.f4025m = m18346a.getLong(m18348a20);
                c1191p.f4026n = m18346a.getLong(m18348a21);
                c1191p.f4027o = m18346a.getLong(m18348a22);
                c1191p.f4028p = m18346a.getLong(m18348a23);
                c1191p.f4029q = m18346a.getInt(m18348a24) != 0;
                c1191p.f4022j = c1129c;
                arrayList.add(c1191p);
            }
            return arrayList;
        } finally {
            m18346a.close();
            m18251a.m18258a();
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: e */
    public int mo17788e(String str) {
        this.f4032a.m18292f();
        AbstractC0757f m18238c = this.f4038g.m18238c();
        if (str == null) {
            m18238c.mo18257a(1);
        } else {
            m18238c.mo18254a(1, str);
        }
        this.f4032a.m18291g();
        try {
            int mo19505a = m18238c.mo19505a();
            this.f4032a.m18288j();
            return mo19505a;
        } finally {
            this.f4032a.m18290h();
            this.f4038g.m18241a(m18238c);
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: f */
    public C1308s.EnumC1309a mo17787f(String str) {
        C1053l m18251a = C1053l.m18251a("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f4032a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f4032a, m18251a, false, null);
        C1308s.EnumC1309a enumC1309a = null;
        try {
            if (m18346a.moveToFirst()) {
                enumC1309a = C1209v.m17778a(m18346a.getInt(0));
            }
            m18346a.close();
            m18251a.m18258a();
            return enumC1309a;
        } catch (Throwable th) {
            m18346a.close();
            m18251a.m18258a();
            throw th;
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: g */
    public List<C1133e> mo17786g(String str) {
        C1053l m18251a = C1053l.m18251a("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f4032a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f4032a, m18251a, false, null);
        try {
            ArrayList arrayList = new ArrayList(m18346a.getCount());
            while (m18346a.moveToNext()) {
                arrayList.add(C1133e.m17920a(m18346a.getBlob(0)));
            }
            return arrayList;
        } finally {
            m18346a.close();
            m18251a.m18258a();
        }
    }

    @Override // androidx.work.impl.p055b.AbstractC1194q
    /* renamed from: h */
    public List<String> mo17785h(String str) {
        C1053l m18251a = C1053l.m18251a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m18251a.mo18257a(1);
        } else {
            m18251a.mo18254a(1, str);
        }
        this.f4032a.m18292f();
        Cursor m18346a = C1015c.m18346a(this.f4032a, m18251a, false, null);
        try {
            ArrayList arrayList = new ArrayList(m18346a.getCount());
            while (m18346a.moveToNext()) {
                arrayList.add(m18346a.getString(0));
            }
            return arrayList;
        } finally {
            m18346a.close();
            m18251a.m18258a();
        }
    }
}
