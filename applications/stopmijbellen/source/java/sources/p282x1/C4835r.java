package p282x1;

import android.database.Cursor;
import androidx.work.C0680b;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import p015b0.C0713a;
import p067d1.AbstractC2141b;
import p067d1.AbstractC2151f;
import p067d1.AbstractC2160j;
import p067d1.C2158h;
import p088f1.C2709b;
import p110h1.C3001f;
import p186o1.C3816b;
import p186o1.EnumC3836m;
import p282x1.C4832p;
/* renamed from: x1.r */
/* loaded from: classes-dex2jar.jar:x1/r.class */
public final class C4835r implements AbstractC4834q {

    /* renamed from: a */
    public final AbstractC2151f f14851a;

    /* renamed from: b */
    public final AbstractC2141b<C4832p> f14852b;

    /* renamed from: c */
    public final AbstractC2160j f14853c;

    /* renamed from: d */
    public final AbstractC2160j f14854d;

    /* renamed from: e */
    public final AbstractC2160j f14855e;

    /* renamed from: f */
    public final AbstractC2160j f14856f;

    /* renamed from: g */
    public final AbstractC2160j f14857g;

    /* renamed from: h */
    public final AbstractC2160j f14858h;

    /* renamed from: i */
    public final AbstractC2160j f14859i;

    /* renamed from: x1.r$a */
    /* loaded from: classes-dex2jar.jar:x1/r$a.class */
    public class C4836a extends AbstractC2141b<C4832p> {
        public C4836a(C4835r c4835r, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX WARN: Can't wrap try/catch for region: R(6:63|(5:112|64|65|66|67)|(5:120|68|(3:72|69|70)|110|75)|116|78|90) */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x039e, code lost:
            r7 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x03cb, code lost:
            r7.printStackTrace();
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:93:0x03d9  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x03e5  */
        @Override // p067d1.AbstractC2141b
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo370d(p110h1.C3001f r6, p282x1.C4832p r7) {
            /*
                Method dump skipped, instructions count: 1116
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p282x1.C4835r.C4836a.mo370d(h1.f, java.lang.Object):void");
        }
    }

    /* renamed from: x1.r$b */
    /* loaded from: classes-dex2jar.jar:x1/r$b.class */
    public class C4837b extends AbstractC2160j {
        public C4837b(C4835r c4835r, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* renamed from: x1.r$c */
    /* loaded from: classes-dex2jar.jar:x1/r$c.class */
    public class C4838c extends AbstractC2160j {
        public C4838c(C4835r c4835r, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* renamed from: x1.r$d */
    /* loaded from: classes-dex2jar.jar:x1/r$d.class */
    public class C4839d extends AbstractC2160j {
        public C4839d(C4835r c4835r, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    /* renamed from: x1.r$e */
    /* loaded from: classes-dex2jar.jar:x1/r$e.class */
    public class C4840e extends AbstractC2160j {
        public C4840e(C4835r c4835r, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    /* renamed from: x1.r$f */
    /* loaded from: classes-dex2jar.jar:x1/r$f.class */
    public class C4841f extends AbstractC2160j {
        public C4841f(C4835r c4835r, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* renamed from: x1.r$g */
    /* loaded from: classes-dex2jar.jar:x1/r$g.class */
    public class C4842g extends AbstractC2160j {
        public C4842g(C4835r c4835r, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* renamed from: x1.r$h */
    /* loaded from: classes-dex2jar.jar:x1/r$h.class */
    public class C4843h extends AbstractC2160j {
        public C4843h(C4835r c4835r, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    public C4835r(AbstractC2151f abstractC2151f) {
        this.f14851a = abstractC2151f;
        this.f14852b = new C4836a(this, abstractC2151f);
        this.f14853c = new C4837b(this, abstractC2151f);
        this.f14854d = new C4838c(this, abstractC2151f);
        this.f14855e = new C4839d(this, abstractC2151f);
        this.f14856f = new C4840e(this, abstractC2151f);
        this.f14857g = new C4841f(this, abstractC2151f);
        this.f14858h = new C4842g(this, abstractC2151f);
        this.f14859i = new C4843h(this, abstractC2151f);
        new AtomicBoolean(false);
    }

    /* renamed from: a */
    public void m388a(String str) {
        this.f14851a.m3820b();
        C3001f m3800a = this.f14853c.m3800a();
        if (str == null) {
            m3800a.f10100a.bindNull(1);
        } else {
            m3800a.f10100a.bindString(1, str);
        }
        this.f14851a.m3819c();
        try {
            m3800a.m2768d();
            this.f14851a.m3811k();
            this.f14851a.m3815g();
            AbstractC2160j abstractC2160j = this.f14853c;
            if (m3800a != abstractC2160j.f7911c) {
                return;
            }
            abstractC2160j.f7909a.set(false);
        } catch (Throwable th) {
            this.f14851a.m3815g();
            this.f14853c.m3799c(m3800a);
            throw th;
        }
    }

    /* renamed from: b */
    public List<C4832p> m387b(int i) {
        Throwable th;
        C2158h m3806l = C2158h.m3806l("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        m3806l.m3805o(1, i);
        this.f14851a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14851a, m3806l, false, null);
        try {
            int m7442e = C0713a.m7442e(m3217a, "required_network_type");
            int m7442e2 = C0713a.m7442e(m3217a, "requires_charging");
            int m7442e3 = C0713a.m7442e(m3217a, "requires_device_idle");
            int m7442e4 = C0713a.m7442e(m3217a, "requires_battery_not_low");
            int m7442e5 = C0713a.m7442e(m3217a, "requires_storage_not_low");
            int m7442e6 = C0713a.m7442e(m3217a, "trigger_content_update_delay");
            int m7442e7 = C0713a.m7442e(m3217a, "trigger_max_content_delay");
            int m7442e8 = C0713a.m7442e(m3217a, "content_uri_triggers");
            int m7442e9 = C0713a.m7442e(m3217a, FacebookAdapter.KEY_ID);
            int m7442e10 = C0713a.m7442e(m3217a, "state");
            int m7442e11 = C0713a.m7442e(m3217a, "worker_class_name");
            int m7442e12 = C0713a.m7442e(m3217a, "input_merger_class_name");
            int m7442e13 = C0713a.m7442e(m3217a, "input");
            int m7442e14 = C0713a.m7442e(m3217a, "output");
            try {
                int m7442e15 = C0713a.m7442e(m3217a, "initial_delay");
                int m7442e16 = C0713a.m7442e(m3217a, "interval_duration");
                int m7442e17 = C0713a.m7442e(m3217a, "flex_duration");
                int m7442e18 = C0713a.m7442e(m3217a, "run_attempt_count");
                int m7442e19 = C0713a.m7442e(m3217a, "backoff_policy");
                int m7442e20 = C0713a.m7442e(m3217a, "backoff_delay_duration");
                int m7442e21 = C0713a.m7442e(m3217a, "period_start_time");
                int m7442e22 = C0713a.m7442e(m3217a, "minimum_retention_duration");
                int m7442e23 = C0713a.m7442e(m3217a, "schedule_requested_at");
                int m7442e24 = C0713a.m7442e(m3217a, "run_in_foreground");
                int m7442e25 = C0713a.m7442e(m3217a, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m3217a.getCount());
                while (m3217a.moveToNext()) {
                    String string = m3217a.getString(m7442e9);
                    String string2 = m3217a.getString(m7442e11);
                    C3816b c3816b = new C3816b();
                    c3816b.f12294a = C4848v.m367c(m3217a.getInt(m7442e));
                    c3816b.f12295b = m3217a.getInt(m7442e2) != 0;
                    c3816b.f12296c = m3217a.getInt(m7442e3) != 0;
                    c3816b.f12297d = m3217a.getInt(m7442e4) != 0;
                    c3816b.f12298e = m3217a.getInt(m7442e5) != 0;
                    c3816b.f12299f = m3217a.getLong(m7442e6);
                    c3816b.f12300g = m3217a.getLong(m7442e7);
                    c3816b.f12301h = C4848v.m369a(m3217a.getBlob(m7442e8));
                    C4832p c4832p = new C4832p(string, string2);
                    c4832p.f14832b = C4848v.m365e(m3217a.getInt(m7442e10));
                    c4832p.f14834d = m3217a.getString(m7442e12);
                    c4832p.f14835e = C0680b.m7485a(m3217a.getBlob(m7442e13));
                    c4832p.f14836f = C0680b.m7485a(m3217a.getBlob(m7442e14));
                    c4832p.f14837g = m3217a.getLong(m7442e15);
                    c4832p.f14838h = m3217a.getLong(m7442e16);
                    c4832p.f14839i = m3217a.getLong(m7442e17);
                    c4832p.f14841k = m3217a.getInt(m7442e18);
                    c4832p.f14842l = C4848v.m368b(m3217a.getInt(m7442e19));
                    c4832p.f14843m = m3217a.getLong(m7442e20);
                    c4832p.f14844n = m3217a.getLong(m7442e21);
                    c4832p.f14845o = m3217a.getLong(m7442e22);
                    c4832p.f14846p = m3217a.getLong(m7442e23);
                    c4832p.f14847q = m3217a.getInt(m7442e24) != 0;
                    c4832p.f14848r = C4848v.m366d(m3217a.getInt(m7442e25));
                    c4832p.f14840j = c3816b;
                    arrayList.add(c4832p);
                }
                m3217a.close();
                m3806l.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m3217a.close();
                m3806l.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: c */
    public List<C4832p> m386c(int i) {
        Throwable th;
        C2158h m3806l = C2158h.m3806l("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        m3806l.m3805o(1, i);
        this.f14851a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14851a, m3806l, false, null);
        try {
            int m7442e = C0713a.m7442e(m3217a, "required_network_type");
            int m7442e2 = C0713a.m7442e(m3217a, "requires_charging");
            int m7442e3 = C0713a.m7442e(m3217a, "requires_device_idle");
            int m7442e4 = C0713a.m7442e(m3217a, "requires_battery_not_low");
            int m7442e5 = C0713a.m7442e(m3217a, "requires_storage_not_low");
            int m7442e6 = C0713a.m7442e(m3217a, "trigger_content_update_delay");
            int m7442e7 = C0713a.m7442e(m3217a, "trigger_max_content_delay");
            int m7442e8 = C0713a.m7442e(m3217a, "content_uri_triggers");
            int m7442e9 = C0713a.m7442e(m3217a, FacebookAdapter.KEY_ID);
            int m7442e10 = C0713a.m7442e(m3217a, "state");
            int m7442e11 = C0713a.m7442e(m3217a, "worker_class_name");
            int m7442e12 = C0713a.m7442e(m3217a, "input_merger_class_name");
            int m7442e13 = C0713a.m7442e(m3217a, "input");
            int m7442e14 = C0713a.m7442e(m3217a, "output");
            try {
                int m7442e15 = C0713a.m7442e(m3217a, "initial_delay");
                int m7442e16 = C0713a.m7442e(m3217a, "interval_duration");
                int m7442e17 = C0713a.m7442e(m3217a, "flex_duration");
                int m7442e18 = C0713a.m7442e(m3217a, "run_attempt_count");
                int m7442e19 = C0713a.m7442e(m3217a, "backoff_policy");
                int m7442e20 = C0713a.m7442e(m3217a, "backoff_delay_duration");
                int m7442e21 = C0713a.m7442e(m3217a, "period_start_time");
                int m7442e22 = C0713a.m7442e(m3217a, "minimum_retention_duration");
                int m7442e23 = C0713a.m7442e(m3217a, "schedule_requested_at");
                int m7442e24 = C0713a.m7442e(m3217a, "run_in_foreground");
                int m7442e25 = C0713a.m7442e(m3217a, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m3217a.getCount());
                while (m3217a.moveToNext()) {
                    String string = m3217a.getString(m7442e9);
                    String string2 = m3217a.getString(m7442e11);
                    C3816b c3816b = new C3816b();
                    c3816b.f12294a = C4848v.m367c(m3217a.getInt(m7442e));
                    c3816b.f12295b = m3217a.getInt(m7442e2) != 0;
                    c3816b.f12296c = m3217a.getInt(m7442e3) != 0;
                    c3816b.f12297d = m3217a.getInt(m7442e4) != 0;
                    c3816b.f12298e = m3217a.getInt(m7442e5) != 0;
                    c3816b.f12299f = m3217a.getLong(m7442e6);
                    c3816b.f12300g = m3217a.getLong(m7442e7);
                    c3816b.f12301h = C4848v.m369a(m3217a.getBlob(m7442e8));
                    C4832p c4832p = new C4832p(string, string2);
                    c4832p.f14832b = C4848v.m365e(m3217a.getInt(m7442e10));
                    c4832p.f14834d = m3217a.getString(m7442e12);
                    c4832p.f14835e = C0680b.m7485a(m3217a.getBlob(m7442e13));
                    c4832p.f14836f = C0680b.m7485a(m3217a.getBlob(m7442e14));
                    c4832p.f14837g = m3217a.getLong(m7442e15);
                    c4832p.f14838h = m3217a.getLong(m7442e16);
                    c4832p.f14839i = m3217a.getLong(m7442e17);
                    c4832p.f14841k = m3217a.getInt(m7442e18);
                    c4832p.f14842l = C4848v.m368b(m3217a.getInt(m7442e19));
                    c4832p.f14843m = m3217a.getLong(m7442e20);
                    c4832p.f14844n = m3217a.getLong(m7442e21);
                    c4832p.f14845o = m3217a.getLong(m7442e22);
                    c4832p.f14846p = m3217a.getLong(m7442e23);
                    c4832p.f14847q = m3217a.getInt(m7442e24) != 0;
                    c4832p.f14848r = C4848v.m366d(m3217a.getInt(m7442e25));
                    c4832p.f14840j = c3816b;
                    arrayList.add(c4832p);
                }
                m3217a.close();
                m3806l.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m3217a.close();
                m3806l.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: d */
    public List<C4832p> m385d() {
        Throwable th;
        C2158h m3806l = C2158h.m3806l("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1", 0);
        this.f14851a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14851a, m3806l, false, null);
        try {
            int m7442e = C0713a.m7442e(m3217a, "required_network_type");
            int m7442e2 = C0713a.m7442e(m3217a, "requires_charging");
            int m7442e3 = C0713a.m7442e(m3217a, "requires_device_idle");
            int m7442e4 = C0713a.m7442e(m3217a, "requires_battery_not_low");
            int m7442e5 = C0713a.m7442e(m3217a, "requires_storage_not_low");
            int m7442e6 = C0713a.m7442e(m3217a, "trigger_content_update_delay");
            int m7442e7 = C0713a.m7442e(m3217a, "trigger_max_content_delay");
            int m7442e8 = C0713a.m7442e(m3217a, "content_uri_triggers");
            int m7442e9 = C0713a.m7442e(m3217a, FacebookAdapter.KEY_ID);
            int m7442e10 = C0713a.m7442e(m3217a, "state");
            int m7442e11 = C0713a.m7442e(m3217a, "worker_class_name");
            int m7442e12 = C0713a.m7442e(m3217a, "input_merger_class_name");
            int m7442e13 = C0713a.m7442e(m3217a, "input");
            int m7442e14 = C0713a.m7442e(m3217a, "output");
            try {
                int m7442e15 = C0713a.m7442e(m3217a, "initial_delay");
                int m7442e16 = C0713a.m7442e(m3217a, "interval_duration");
                int m7442e17 = C0713a.m7442e(m3217a, "flex_duration");
                int m7442e18 = C0713a.m7442e(m3217a, "run_attempt_count");
                int m7442e19 = C0713a.m7442e(m3217a, "backoff_policy");
                int m7442e20 = C0713a.m7442e(m3217a, "backoff_delay_duration");
                int m7442e21 = C0713a.m7442e(m3217a, "period_start_time");
                int m7442e22 = C0713a.m7442e(m3217a, "minimum_retention_duration");
                int m7442e23 = C0713a.m7442e(m3217a, "schedule_requested_at");
                int m7442e24 = C0713a.m7442e(m3217a, "run_in_foreground");
                int m7442e25 = C0713a.m7442e(m3217a, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m3217a.getCount());
                while (m3217a.moveToNext()) {
                    String string = m3217a.getString(m7442e9);
                    String string2 = m3217a.getString(m7442e11);
                    C3816b c3816b = new C3816b();
                    c3816b.f12294a = C4848v.m367c(m3217a.getInt(m7442e));
                    c3816b.f12295b = m3217a.getInt(m7442e2) != 0;
                    c3816b.f12296c = m3217a.getInt(m7442e3) != 0;
                    c3816b.f12297d = m3217a.getInt(m7442e4) != 0;
                    c3816b.f12298e = m3217a.getInt(m7442e5) != 0;
                    c3816b.f12299f = m3217a.getLong(m7442e6);
                    c3816b.f12300g = m3217a.getLong(m7442e7);
                    c3816b.f12301h = C4848v.m369a(m3217a.getBlob(m7442e8));
                    C4832p c4832p = new C4832p(string, string2);
                    c4832p.f14832b = C4848v.m365e(m3217a.getInt(m7442e10));
                    c4832p.f14834d = m3217a.getString(m7442e12);
                    c4832p.f14835e = C0680b.m7485a(m3217a.getBlob(m7442e13));
                    c4832p.f14836f = C0680b.m7485a(m3217a.getBlob(m7442e14));
                    c4832p.f14837g = m3217a.getLong(m7442e15);
                    c4832p.f14838h = m3217a.getLong(m7442e16);
                    c4832p.f14839i = m3217a.getLong(m7442e17);
                    c4832p.f14841k = m3217a.getInt(m7442e18);
                    c4832p.f14842l = C4848v.m368b(m3217a.getInt(m7442e19));
                    c4832p.f14843m = m3217a.getLong(m7442e20);
                    c4832p.f14844n = m3217a.getLong(m7442e21);
                    c4832p.f14845o = m3217a.getLong(m7442e22);
                    c4832p.f14846p = m3217a.getLong(m7442e23);
                    c4832p.f14847q = m3217a.getInt(m7442e24) != 0;
                    c4832p.f14848r = C4848v.m366d(m3217a.getInt(m7442e25));
                    c4832p.f14840j = c3816b;
                    arrayList.add(c4832p);
                }
                m3217a.close();
                m3806l.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m3217a.close();
                m3806l.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: e */
    public List<C4832p> m384e() {
        Throwable th;
        C2158h m3806l = C2158h.m3806l("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f14851a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14851a, m3806l, false, null);
        try {
            int m7442e = C0713a.m7442e(m3217a, "required_network_type");
            int m7442e2 = C0713a.m7442e(m3217a, "requires_charging");
            int m7442e3 = C0713a.m7442e(m3217a, "requires_device_idle");
            int m7442e4 = C0713a.m7442e(m3217a, "requires_battery_not_low");
            int m7442e5 = C0713a.m7442e(m3217a, "requires_storage_not_low");
            int m7442e6 = C0713a.m7442e(m3217a, "trigger_content_update_delay");
            int m7442e7 = C0713a.m7442e(m3217a, "trigger_max_content_delay");
            int m7442e8 = C0713a.m7442e(m3217a, "content_uri_triggers");
            int m7442e9 = C0713a.m7442e(m3217a, FacebookAdapter.KEY_ID);
            int m7442e10 = C0713a.m7442e(m3217a, "state");
            int m7442e11 = C0713a.m7442e(m3217a, "worker_class_name");
            int m7442e12 = C0713a.m7442e(m3217a, "input_merger_class_name");
            int m7442e13 = C0713a.m7442e(m3217a, "input");
            int m7442e14 = C0713a.m7442e(m3217a, "output");
            try {
                int m7442e15 = C0713a.m7442e(m3217a, "initial_delay");
                int m7442e16 = C0713a.m7442e(m3217a, "interval_duration");
                int m7442e17 = C0713a.m7442e(m3217a, "flex_duration");
                int m7442e18 = C0713a.m7442e(m3217a, "run_attempt_count");
                int m7442e19 = C0713a.m7442e(m3217a, "backoff_policy");
                int m7442e20 = C0713a.m7442e(m3217a, "backoff_delay_duration");
                int m7442e21 = C0713a.m7442e(m3217a, "period_start_time");
                int m7442e22 = C0713a.m7442e(m3217a, "minimum_retention_duration");
                int m7442e23 = C0713a.m7442e(m3217a, "schedule_requested_at");
                int m7442e24 = C0713a.m7442e(m3217a, "run_in_foreground");
                int m7442e25 = C0713a.m7442e(m3217a, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m3217a.getCount());
                while (m3217a.moveToNext()) {
                    String string = m3217a.getString(m7442e9);
                    String string2 = m3217a.getString(m7442e11);
                    C3816b c3816b = new C3816b();
                    c3816b.f12294a = C4848v.m367c(m3217a.getInt(m7442e));
                    c3816b.f12295b = m3217a.getInt(m7442e2) != 0;
                    c3816b.f12296c = m3217a.getInt(m7442e3) != 0;
                    c3816b.f12297d = m3217a.getInt(m7442e4) != 0;
                    c3816b.f12298e = m3217a.getInt(m7442e5) != 0;
                    c3816b.f12299f = m3217a.getLong(m7442e6);
                    c3816b.f12300g = m3217a.getLong(m7442e7);
                    c3816b.f12301h = C4848v.m369a(m3217a.getBlob(m7442e8));
                    C4832p c4832p = new C4832p(string, string2);
                    c4832p.f14832b = C4848v.m365e(m3217a.getInt(m7442e10));
                    c4832p.f14834d = m3217a.getString(m7442e12);
                    c4832p.f14835e = C0680b.m7485a(m3217a.getBlob(m7442e13));
                    c4832p.f14836f = C0680b.m7485a(m3217a.getBlob(m7442e14));
                    c4832p.f14837g = m3217a.getLong(m7442e15);
                    c4832p.f14838h = m3217a.getLong(m7442e16);
                    c4832p.f14839i = m3217a.getLong(m7442e17);
                    c4832p.f14841k = m3217a.getInt(m7442e18);
                    c4832p.f14842l = C4848v.m368b(m3217a.getInt(m7442e19));
                    c4832p.f14843m = m3217a.getLong(m7442e20);
                    c4832p.f14844n = m3217a.getLong(m7442e21);
                    c4832p.f14845o = m3217a.getLong(m7442e22);
                    c4832p.f14846p = m3217a.getLong(m7442e23);
                    c4832p.f14847q = m3217a.getInt(m7442e24) != 0;
                    c4832p.f14848r = C4848v.m366d(m3217a.getInt(m7442e25));
                    c4832p.f14840j = c3816b;
                    arrayList.add(c4832p);
                }
                m3217a.close();
                m3806l.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m3217a.close();
                m3806l.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    public EnumC3836m m383f(String str) {
        C2158h m3806l = C2158h.m3806l("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            m3806l.m3804p(1);
        } else {
            m3806l.m3803r(1, str);
        }
        this.f14851a.m3820b();
        EnumC3836m enumC3836m = null;
        Cursor m3217a = C2709b.m3217a(this.f14851a, m3806l, false, null);
        try {
            if (m3217a.moveToFirst()) {
                enumC3836m = C4848v.m365e(m3217a.getInt(0));
            }
            m3217a.close();
            m3806l.release();
            return enumC3836m;
        } catch (Throwable th) {
            m3217a.close();
            m3806l.release();
            throw th;
        }
    }

    /* renamed from: g */
    public List<String> m382g(String str) {
        C2158h m3806l = C2158h.m3806l("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m3806l.m3804p(1);
        } else {
            m3806l.m3803r(1, str);
        }
        this.f14851a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14851a, m3806l, false, null);
        try {
            ArrayList arrayList = new ArrayList(m3217a.getCount());
            while (m3217a.moveToNext()) {
                arrayList.add(m3217a.getString(0));
            }
            return arrayList;
        } finally {
            m3217a.close();
            m3806l.release();
        }
    }

    /* renamed from: h */
    public List<String> m381h(String str) {
        C2158h m3806l = C2158h.m3806l("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            m3806l.m3804p(1);
        } else {
            m3806l.m3803r(1, str);
        }
        this.f14851a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14851a, m3806l, false, null);
        try {
            ArrayList arrayList = new ArrayList(m3217a.getCount());
            while (m3217a.moveToNext()) {
                arrayList.add(m3217a.getString(0));
            }
            return arrayList;
        } finally {
            m3217a.close();
            m3806l.release();
        }
    }

    /* renamed from: i */
    public C4832p m380i(String str) {
        Throwable th;
        C4832p c4832p;
        C2158h m3806l = C2158h.m3806l("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?", 1);
        if (str == null) {
            m3806l.m3804p(1);
        } else {
            m3806l.m3803r(1, str);
        }
        this.f14851a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14851a, m3806l, false, null);
        try {
            int m7442e = C0713a.m7442e(m3217a, "required_network_type");
            int m7442e2 = C0713a.m7442e(m3217a, "requires_charging");
            int m7442e3 = C0713a.m7442e(m3217a, "requires_device_idle");
            int m7442e4 = C0713a.m7442e(m3217a, "requires_battery_not_low");
            int m7442e5 = C0713a.m7442e(m3217a, "requires_storage_not_low");
            int m7442e6 = C0713a.m7442e(m3217a, "trigger_content_update_delay");
            int m7442e7 = C0713a.m7442e(m3217a, "trigger_max_content_delay");
            int m7442e8 = C0713a.m7442e(m3217a, "content_uri_triggers");
            int m7442e9 = C0713a.m7442e(m3217a, FacebookAdapter.KEY_ID);
            int m7442e10 = C0713a.m7442e(m3217a, "state");
            int m7442e11 = C0713a.m7442e(m3217a, "worker_class_name");
            int m7442e12 = C0713a.m7442e(m3217a, "input_merger_class_name");
            int m7442e13 = C0713a.m7442e(m3217a, "input");
            int m7442e14 = C0713a.m7442e(m3217a, "output");
            try {
                int m7442e15 = C0713a.m7442e(m3217a, "initial_delay");
                int m7442e16 = C0713a.m7442e(m3217a, "interval_duration");
                int m7442e17 = C0713a.m7442e(m3217a, "flex_duration");
                int m7442e18 = C0713a.m7442e(m3217a, "run_attempt_count");
                int m7442e19 = C0713a.m7442e(m3217a, "backoff_policy");
                int m7442e20 = C0713a.m7442e(m3217a, "backoff_delay_duration");
                int m7442e21 = C0713a.m7442e(m3217a, "period_start_time");
                int m7442e22 = C0713a.m7442e(m3217a, "minimum_retention_duration");
                int m7442e23 = C0713a.m7442e(m3217a, "schedule_requested_at");
                int m7442e24 = C0713a.m7442e(m3217a, "run_in_foreground");
                int m7442e25 = C0713a.m7442e(m3217a, "out_of_quota_policy");
                if (m3217a.moveToFirst()) {
                    String string = m3217a.getString(m7442e9);
                    String string2 = m3217a.getString(m7442e11);
                    C3816b c3816b = new C3816b();
                    c3816b.f12294a = C4848v.m367c(m3217a.getInt(m7442e));
                    c3816b.f12295b = m3217a.getInt(m7442e2) != 0;
                    c3816b.f12296c = m3217a.getInt(m7442e3) != 0;
                    c3816b.f12297d = m3217a.getInt(m7442e4) != 0;
                    c3816b.f12298e = m3217a.getInt(m7442e5) != 0;
                    c3816b.f12299f = m3217a.getLong(m7442e6);
                    c3816b.f12300g = m3217a.getLong(m7442e7);
                    c3816b.f12301h = C4848v.m369a(m3217a.getBlob(m7442e8));
                    c4832p = new C4832p(string, string2);
                    c4832p.f14832b = C4848v.m365e(m3217a.getInt(m7442e10));
                    c4832p.f14834d = m3217a.getString(m7442e12);
                    c4832p.f14835e = C0680b.m7485a(m3217a.getBlob(m7442e13));
                    c4832p.f14836f = C0680b.m7485a(m3217a.getBlob(m7442e14));
                    c4832p.f14837g = m3217a.getLong(m7442e15);
                    c4832p.f14838h = m3217a.getLong(m7442e16);
                    c4832p.f14839i = m3217a.getLong(m7442e17);
                    c4832p.f14841k = m3217a.getInt(m7442e18);
                    c4832p.f14842l = C4848v.m368b(m3217a.getInt(m7442e19));
                    c4832p.f14843m = m3217a.getLong(m7442e20);
                    c4832p.f14844n = m3217a.getLong(m7442e21);
                    c4832p.f14845o = m3217a.getLong(m7442e22);
                    c4832p.f14846p = m3217a.getLong(m7442e23);
                    c4832p.f14847q = m3217a.getInt(m7442e24) != 0;
                    c4832p.f14848r = C4848v.m366d(m3217a.getInt(m7442e25));
                    c4832p.f14840j = c3816b;
                } else {
                    c4832p = null;
                }
                m3217a.close();
                m3806l.release();
                return c4832p;
            } catch (Throwable th2) {
                th = th2;
                m3217a.close();
                m3806l.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: j */
    public List<C4832p.C4833a> m379j(String str) {
        C2158h m3806l = C2158h.m3806l("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m3806l.m3804p(1);
        } else {
            m3806l.m3803r(1, str);
        }
        this.f14851a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14851a, m3806l, false, null);
        try {
            int m7442e = C0713a.m7442e(m3217a, FacebookAdapter.KEY_ID);
            int m7442e2 = C0713a.m7442e(m3217a, "state");
            ArrayList arrayList = new ArrayList(m3217a.getCount());
            while (m3217a.moveToNext()) {
                C4832p.C4833a c4833a = new C4832p.C4833a();
                c4833a.f14849a = m3217a.getString(m7442e);
                c4833a.f14850b = C4848v.m365e(m3217a.getInt(m7442e2));
                arrayList.add(c4833a);
            }
            return arrayList;
        } finally {
            m3217a.close();
            m3806l.release();
        }
    }

    /* renamed from: k */
    public int m378k(String str) {
        this.f14851a.m3820b();
        C3001f m3800a = this.f14856f.m3800a();
        if (str == null) {
            m3800a.f10100a.bindNull(1);
        } else {
            m3800a.f10100a.bindString(1, str);
        }
        this.f14851a.m3819c();
        try {
            int m2768d = m3800a.m2768d();
            this.f14851a.m3811k();
            this.f14851a.m3815g();
            AbstractC2160j abstractC2160j = this.f14856f;
            if (m3800a == abstractC2160j.f7911c) {
                abstractC2160j.f7909a.set(false);
            }
            return m2768d;
        } catch (Throwable th) {
            this.f14851a.m3815g();
            this.f14856f.m3799c(m3800a);
            throw th;
        }
    }

    /* renamed from: l */
    public int m377l(String str, long j) {
        this.f14851a.m3820b();
        C3001f m3800a = this.f14858h.m3800a();
        m3800a.f10100a.bindLong(1, j);
        if (str == null) {
            m3800a.f10100a.bindNull(2);
        } else {
            m3800a.f10100a.bindString(2, str);
        }
        this.f14851a.m3819c();
        try {
            int m2768d = m3800a.m2768d();
            this.f14851a.m3811k();
            return m2768d;
        } finally {
            this.f14851a.m3815g();
            AbstractC2160j abstractC2160j = this.f14858h;
            if (m3800a == abstractC2160j.f7911c) {
                abstractC2160j.f7909a.set(false);
            }
        }
    }

    /* renamed from: m */
    public int m376m(String str) {
        this.f14851a.m3820b();
        C3001f m3800a = this.f14857g.m3800a();
        if (str == null) {
            m3800a.f10100a.bindNull(1);
        } else {
            m3800a.f10100a.bindString(1, str);
        }
        this.f14851a.m3819c();
        try {
            int m2768d = m3800a.m2768d();
            this.f14851a.m3811k();
            this.f14851a.m3815g();
            AbstractC2160j abstractC2160j = this.f14857g;
            if (m3800a == abstractC2160j.f7911c) {
                abstractC2160j.f7909a.set(false);
            }
            return m2768d;
        } catch (Throwable th) {
            this.f14851a.m3815g();
            this.f14857g.m3799c(m3800a);
            throw th;
        }
    }

    /* renamed from: n */
    public void m375n(String str, C0680b c0680b) {
        this.f14851a.m3820b();
        C3001f m3800a = this.f14854d.m3800a();
        byte[] m7483c = C0680b.m7483c(c0680b);
        if (m7483c == null) {
            m3800a.f10100a.bindNull(1);
        } else {
            m3800a.f10100a.bindBlob(1, m7483c);
        }
        if (str == null) {
            m3800a.f10100a.bindNull(2);
        } else {
            m3800a.f10100a.bindString(2, str);
        }
        this.f14851a.m3819c();
        try {
            m3800a.m2768d();
            this.f14851a.m3811k();
            this.f14851a.m3815g();
            AbstractC2160j abstractC2160j = this.f14854d;
            if (m3800a != abstractC2160j.f7911c) {
                return;
            }
            abstractC2160j.f7909a.set(false);
        } catch (Throwable th) {
            this.f14851a.m3815g();
            this.f14854d.m3799c(m3800a);
            throw th;
        }
    }

    /* renamed from: o */
    public void m374o(String str, long j) {
        this.f14851a.m3820b();
        C3001f m3800a = this.f14855e.m3800a();
        m3800a.f10100a.bindLong(1, j);
        if (str == null) {
            m3800a.f10100a.bindNull(2);
        } else {
            m3800a.f10100a.bindString(2, str);
        }
        this.f14851a.m3819c();
        try {
            m3800a.m2768d();
            this.f14851a.m3811k();
            this.f14851a.m3815g();
            AbstractC2160j abstractC2160j = this.f14855e;
            if (m3800a != abstractC2160j.f7911c) {
                return;
            }
            abstractC2160j.f7909a.set(false);
        } catch (Throwable th) {
            this.f14851a.m3815g();
            AbstractC2160j abstractC2160j2 = this.f14855e;
            if (m3800a == abstractC2160j2.f7911c) {
                abstractC2160j2.f7909a.set(false);
            }
            throw th;
        }
    }

    /* renamed from: p */
    public int m373p(EnumC3836m enumC3836m, String... strArr) {
        this.f14851a.m3820b();
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE workspec SET state=");
        sb.append("?");
        sb.append(" WHERE id IN (");
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            sb.append("?");
            if (i < length - 1) {
                sb.append(",");
            }
        }
        sb.append(")");
        C3001f m3818d = this.f14851a.m3818d(sb.toString());
        m3818d.f10100a.bindLong(1, C4848v.m364f(enumC3836m));
        int i2 = 2;
        for (String str : strArr) {
            if (str == null) {
                m3818d.f10100a.bindNull(i2);
            } else {
                m3818d.f10100a.bindString(i2, str);
            }
            i2++;
        }
        this.f14851a.m3819c();
        try {
            int m2768d = m3818d.m2768d();
            this.f14851a.m3811k();
            return m2768d;
        } finally {
            this.f14851a.m3815g();
        }
    }
}
