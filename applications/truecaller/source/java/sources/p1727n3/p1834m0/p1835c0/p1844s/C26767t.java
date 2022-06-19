package p1727n3.p1834m0.p1835c0.p1844s;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p1727n3.p1788g.AbstractC26181g;
import p1727n3.p1788g.C26174a;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
/* renamed from: n3.m0.c0.s.t */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/s/t.class */
public final class C26767t implements AbstractC26764q {

    /* renamed from: a */
    public final AbstractC25677q f74932a;

    /* renamed from: b */
    public final AbstractC25663k<C26760p> f74933b;

    /* renamed from: c */
    public final AbstractC25646c0 f74934c;

    /* renamed from: d */
    public final AbstractC25646c0 f74935d;

    /* renamed from: e */
    public final AbstractC25646c0 f74936e;

    /* renamed from: f */
    public final AbstractC25646c0 f74937f;

    /* renamed from: g */
    public final AbstractC25646c0 f74938g;

    /* renamed from: h */
    public final AbstractC25646c0 f74939h;

    /* renamed from: i */
    public final AbstractC25646c0 f74940i;

    /* renamed from: n3.m0.c0.s.t$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/t$b.class */
    public class C26768b extends AbstractC25646c0 {
        public C26768b(C26767t c26767t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* renamed from: n3.m0.c0.s.t$c */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/t$c.class */
    public class C26769c extends AbstractC25646c0 {
        public C26769c(C26767t c26767t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* renamed from: n3.m0.c0.s.t$d */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/t$d.class */
    public class C26770d extends AbstractC25646c0 {
        public C26770d(C26767t c26767t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    /* renamed from: n3.m0.c0.s.t$e */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/t$e.class */
    public class C26771e extends AbstractC25646c0 {
        public C26771e(C26767t c26767t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    /* renamed from: n3.m0.c0.s.t$f */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/t$f.class */
    public class C26772f extends AbstractC25646c0 {
        public C26772f(C26767t c26767t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* renamed from: n3.m0.c0.s.t$g */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/t$g.class */
    public class C26773g extends AbstractC25646c0 {
        public C26773g(C26767t c26767t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* renamed from: n3.m0.c0.s.t$h */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/t$h.class */
    public class C26774h extends AbstractC25646c0 {
        public C26774h(C26767t c26767t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    /* renamed from: n3.m0.c0.s.t$i */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/t$i.class */
    public class C26775i extends AbstractC25646c0 {
        public C26775i(C26767t c26767t, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        }
    }

    public C26767t(AbstractC25677q abstractC25677q) {
        this.f74932a = abstractC25677q;
        this.f74933b = new a(this, abstractC25677q);
        this.f74934c = new C26768b(this, abstractC25677q);
        this.f74935d = new C26769c(this, abstractC25677q);
        this.f74936e = new C26770d(this, abstractC25677q);
        this.f74937f = new C26771e(this, abstractC25677q);
        this.f74938g = new C26772f(this, abstractC25677q);
        this.f74939h = new C26773g(this, abstractC25677q);
        this.f74940i = new C26774h(this, abstractC25677q);
        new C26775i(this, abstractC25677q);
    }

    /* renamed from: a */
    public final void m1356a(C26174a<String, ArrayList<C26829f>> c26174a) {
        ArrayList<C26829f> arrayList;
        AbstractC26181g.C26184c c26184c = (AbstractC26181g.C26184c) c26174a.keySet();
        if (c26184c.isEmpty()) {
            return;
        }
        if (c26174a.f73025c > 999) {
            C26174a<String, ArrayList<C26829f>> c26174a2 = new C26174a<>(999);
            int i = c26174a.f73025c;
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                c26174a2.put(c26174a.m2576l(i2), c26174a.m2572p(i2));
                int i4 = i2 + 1;
                int i5 = i3 + 1;
                i2 = i4;
                i3 = i5;
                if (i5 == 999) {
                    m1356a(c26174a2);
                    c26174a2 = new C26174a<>(999);
                    i3 = 0;
                    i2 = i4;
                }
            }
            if (i3 <= 0) {
                return;
            }
            m1356a(c26174a2);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size = c26184c.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        Object it = c26184c.iterator();
        int i6 = 1;
        while (true) {
            AbstractC26181g.C26182a c26182a = (AbstractC26181g.C26182a) it;
            if (!c26182a.hasNext()) {
                break;
            }
            String str = (String) c26182a.next();
            if (str == null) {
                m3059j.mo2648y0(i6);
            } else {
                m3059j.mo2651f0(i6, str);
            }
            i6++;
        }
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            int m43240f0 = MediaSessionCompat.m43240f0(m3090b, "work_spec_id");
            if (m43240f0 == -1) {
                return;
            }
            while (m3090b.moveToNext()) {
                if (!m3090b.isNull(m43240f0) && (arrayList = c26174a.get(m3090b.getString(m43240f0))) != null) {
                    arrayList.add(C26829f.m1306a(m3090b.getBlob(0)));
                }
            }
        } finally {
            m3090b.close();
        }
    }

    /* renamed from: b */
    public final void m1355b(C26174a<String, ArrayList<String>> c26174a) {
        ArrayList<String> arrayList;
        AbstractC26181g.C26184c c26184c = (AbstractC26181g.C26184c) c26174a.keySet();
        if (c26184c.isEmpty()) {
            return;
        }
        if (c26174a.f73025c > 999) {
            C26174a<String, ArrayList<String>> c26174a2 = new C26174a<>(999);
            int i = c26174a.f73025c;
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                c26174a2.put(c26174a.m2576l(i2), c26174a.m2572p(i2));
                int i4 = i2 + 1;
                int i5 = i3 + 1;
                i2 = i4;
                i3 = i5;
                if (i5 == 999) {
                    m1355b(c26174a2);
                    c26174a2 = new C26174a<>(999);
                    i3 = 0;
                    i2 = i4;
                }
            }
            if (i3 <= 0) {
                return;
            }
            m1355b(c26174a2);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size = c26184c.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        Object it = c26184c.iterator();
        int i6 = 1;
        while (true) {
            AbstractC26181g.C26182a c26182a = (AbstractC26181g.C26182a) it;
            if (!c26182a.hasNext()) {
                break;
            }
            String str = (String) c26182a.next();
            if (str == null) {
                m3059j.mo2648y0(i6);
            } else {
                m3059j.mo2651f0(i6, str);
            }
            i6++;
        }
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            int m43240f0 = MediaSessionCompat.m43240f0(m3090b, "work_spec_id");
            if (m43240f0 == -1) {
                return;
            }
            while (m3090b.moveToNext()) {
                if (!m3090b.isNull(m43240f0) && (arrayList = c26174a.get(m3090b.getString(m43240f0))) != null) {
                    arrayList.add(m3090b.getString(0));
                }
            }
        } finally {
            m3090b.close();
        }
    }

    /* renamed from: c */
    public void m1354c(String str) {
        this.f74932a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f74934c.acquire();
        if (str == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str);
        }
        this.f74932a.beginTransaction();
        try {
            acquire.m2673A();
            this.f74932a.setTransactionSuccessful();
        } finally {
            this.f74932a.endTransaction();
            this.f74934c.release(acquire);
        }
    }

    /* renamed from: d */
    public List<C26760p> m1353d(int i) {
        Throwable th;
        C25686y m3059j = C25686y.m3059j("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        m3059j.mo2650l0(1, i);
        this.f74932a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "required_network_type");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "requires_charging");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "requires_device_idle");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "requires_battery_not_low");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "requires_storage_not_low");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "trigger_content_update_delay");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "trigger_max_content_delay");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "content_uri_triggers");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "state");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "worker_class_name");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "input_merger_class_name");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "input");
            int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "output");
            try {
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "initial_delay");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "interval_duration");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "flex_duration");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "run_attempt_count");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "backoff_policy");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "backoff_delay_duration");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "period_start_time");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "minimum_retention_duration");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "schedule_requested_at");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "run_in_foreground");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    String string = m3090b.getString(m43237g09);
                    String string2 = m3090b.getString(m43237g011);
                    C26825d c26825d = new C26825d();
                    c26825d.f75058a = C26232y.m2431O0(m3090b.getInt(m43237g0));
                    c26825d.f75059b = m3090b.getInt(m43237g02) != 0;
                    c26825d.f75060c = m3090b.getInt(m43237g03) != 0;
                    c26825d.f75061d = m3090b.getInt(m43237g04) != 0;
                    c26825d.f75062e = m3090b.getInt(m43237g05) != 0;
                    c26825d.f75063f = m3090b.getLong(m43237g06);
                    c26825d.f75064g = m3090b.getLong(m43237g07);
                    c26825d.f75065h = C26232y.m2314q(m3090b.getBlob(m43237g08));
                    C26760p c26760p = new C26760p(string, string2);
                    c26760p.f74903b = C26232y.m2423Q0(m3090b.getInt(m43237g010));
                    c26760p.f74905d = m3090b.getString(m43237g012);
                    c26760p.f74906e = C26829f.m1306a(m3090b.getBlob(m43237g013));
                    c26760p.f74907f = C26829f.m1306a(m3090b.getBlob(m43237g014));
                    c26760p.f74908g = m3090b.getLong(m43237g015);
                    c26760p.f74909h = m3090b.getLong(m43237g016);
                    c26760p.f74910i = m3090b.getLong(m43237g017);
                    c26760p.f74912k = m3090b.getInt(m43237g018);
                    c26760p.f74913l = C26232y.m2435N0(m3090b.getInt(m43237g019));
                    c26760p.f74914m = m3090b.getLong(m43237g020);
                    c26760p.f74915n = m3090b.getLong(m43237g021);
                    c26760p.f74916o = m3090b.getLong(m43237g022);
                    c26760p.f74917p = m3090b.getLong(m43237g023);
                    c26760p.f74918q = m3090b.getInt(m43237g024) != 0;
                    c26760p.f74919r = C26232y.m2427P0(m3090b.getInt(m43237g025));
                    c26760p.f74911j = c26825d;
                    arrayList.add(c26760p);
                }
                m3090b.close();
                m3059j.m3057l();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m3090b.close();
                m3059j.m3057l();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: e */
    public List<C26760p> m1352e(int i) {
        Throwable th;
        C25686y m3059j = C25686y.m3059j("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        m3059j.mo2650l0(1, i);
        this.f74932a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "required_network_type");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "requires_charging");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "requires_device_idle");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "requires_battery_not_low");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "requires_storage_not_low");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "trigger_content_update_delay");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "trigger_max_content_delay");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "content_uri_triggers");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "state");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "worker_class_name");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "input_merger_class_name");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "input");
            int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "output");
            try {
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "initial_delay");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "interval_duration");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "flex_duration");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "run_attempt_count");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "backoff_policy");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "backoff_delay_duration");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "period_start_time");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "minimum_retention_duration");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "schedule_requested_at");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "run_in_foreground");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    String string = m3090b.getString(m43237g09);
                    String string2 = m3090b.getString(m43237g011);
                    C26825d c26825d = new C26825d();
                    c26825d.f75058a = C26232y.m2431O0(m3090b.getInt(m43237g0));
                    c26825d.f75059b = m3090b.getInt(m43237g02) != 0;
                    c26825d.f75060c = m3090b.getInt(m43237g03) != 0;
                    c26825d.f75061d = m3090b.getInt(m43237g04) != 0;
                    c26825d.f75062e = m3090b.getInt(m43237g05) != 0;
                    c26825d.f75063f = m3090b.getLong(m43237g06);
                    c26825d.f75064g = m3090b.getLong(m43237g07);
                    c26825d.f75065h = C26232y.m2314q(m3090b.getBlob(m43237g08));
                    C26760p c26760p = new C26760p(string, string2);
                    c26760p.f74903b = C26232y.m2423Q0(m3090b.getInt(m43237g010));
                    c26760p.f74905d = m3090b.getString(m43237g012);
                    c26760p.f74906e = C26829f.m1306a(m3090b.getBlob(m43237g013));
                    c26760p.f74907f = C26829f.m1306a(m3090b.getBlob(m43237g014));
                    c26760p.f74908g = m3090b.getLong(m43237g015);
                    c26760p.f74909h = m3090b.getLong(m43237g016);
                    c26760p.f74910i = m3090b.getLong(m43237g017);
                    c26760p.f74912k = m3090b.getInt(m43237g018);
                    c26760p.f74913l = C26232y.m2435N0(m3090b.getInt(m43237g019));
                    c26760p.f74914m = m3090b.getLong(m43237g020);
                    c26760p.f74915n = m3090b.getLong(m43237g021);
                    c26760p.f74916o = m3090b.getLong(m43237g022);
                    c26760p.f74917p = m3090b.getLong(m43237g023);
                    c26760p.f74918q = m3090b.getInt(m43237g024) != 0;
                    c26760p.f74919r = C26232y.m2427P0(m3090b.getInt(m43237g025));
                    c26760p.f74911j = c26825d;
                    arrayList.add(c26760p);
                }
                m3090b.close();
                m3059j.m3057l();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m3090b.close();
                m3059j.m3057l();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: f */
    public List<C26760p> m1351f() {
        Throwable th;
        C25686y m3059j = C25686y.m3059j("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1", 0);
        this.f74932a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "required_network_type");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "requires_charging");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "requires_device_idle");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "requires_battery_not_low");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "requires_storage_not_low");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "trigger_content_update_delay");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "trigger_max_content_delay");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "content_uri_triggers");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "state");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "worker_class_name");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "input_merger_class_name");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "input");
            int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "output");
            try {
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "initial_delay");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "interval_duration");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "flex_duration");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "run_attempt_count");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "backoff_policy");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "backoff_delay_duration");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "period_start_time");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "minimum_retention_duration");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "schedule_requested_at");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "run_in_foreground");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    String string = m3090b.getString(m43237g09);
                    String string2 = m3090b.getString(m43237g011);
                    C26825d c26825d = new C26825d();
                    c26825d.f75058a = C26232y.m2431O0(m3090b.getInt(m43237g0));
                    c26825d.f75059b = m3090b.getInt(m43237g02) != 0;
                    c26825d.f75060c = m3090b.getInt(m43237g03) != 0;
                    c26825d.f75061d = m3090b.getInt(m43237g04) != 0;
                    c26825d.f75062e = m3090b.getInt(m43237g05) != 0;
                    c26825d.f75063f = m3090b.getLong(m43237g06);
                    c26825d.f75064g = m3090b.getLong(m43237g07);
                    c26825d.f75065h = C26232y.m2314q(m3090b.getBlob(m43237g08));
                    C26760p c26760p = new C26760p(string, string2);
                    c26760p.f74903b = C26232y.m2423Q0(m3090b.getInt(m43237g010));
                    c26760p.f74905d = m3090b.getString(m43237g012);
                    c26760p.f74906e = C26829f.m1306a(m3090b.getBlob(m43237g013));
                    c26760p.f74907f = C26829f.m1306a(m3090b.getBlob(m43237g014));
                    c26760p.f74908g = m3090b.getLong(m43237g015);
                    c26760p.f74909h = m3090b.getLong(m43237g016);
                    c26760p.f74910i = m3090b.getLong(m43237g017);
                    c26760p.f74912k = m3090b.getInt(m43237g018);
                    c26760p.f74913l = C26232y.m2435N0(m3090b.getInt(m43237g019));
                    c26760p.f74914m = m3090b.getLong(m43237g020);
                    c26760p.f74915n = m3090b.getLong(m43237g021);
                    c26760p.f74916o = m3090b.getLong(m43237g022);
                    c26760p.f74917p = m3090b.getLong(m43237g023);
                    c26760p.f74918q = m3090b.getInt(m43237g024) != 0;
                    c26760p.f74919r = C26232y.m2427P0(m3090b.getInt(m43237g025));
                    c26760p.f74911j = c26825d;
                    arrayList.add(c26760p);
                }
                m3090b.close();
                m3059j.m3057l();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m3090b.close();
                m3059j.m3057l();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: g */
    public List<C26760p> m1350g() {
        Throwable th;
        C25686y m3059j = C25686y.m3059j("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f74932a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "required_network_type");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "requires_charging");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "requires_device_idle");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "requires_battery_not_low");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "requires_storage_not_low");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "trigger_content_update_delay");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "trigger_max_content_delay");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "content_uri_triggers");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "state");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "worker_class_name");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "input_merger_class_name");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "input");
            int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "output");
            try {
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "initial_delay");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "interval_duration");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "flex_duration");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "run_attempt_count");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "backoff_policy");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "backoff_delay_duration");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "period_start_time");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "minimum_retention_duration");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "schedule_requested_at");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "run_in_foreground");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "out_of_quota_policy");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    String string = m3090b.getString(m43237g09);
                    String string2 = m3090b.getString(m43237g011);
                    C26825d c26825d = new C26825d();
                    c26825d.f75058a = C26232y.m2431O0(m3090b.getInt(m43237g0));
                    c26825d.f75059b = m3090b.getInt(m43237g02) != 0;
                    c26825d.f75060c = m3090b.getInt(m43237g03) != 0;
                    c26825d.f75061d = m3090b.getInt(m43237g04) != 0;
                    c26825d.f75062e = m3090b.getInt(m43237g05) != 0;
                    c26825d.f75063f = m3090b.getLong(m43237g06);
                    c26825d.f75064g = m3090b.getLong(m43237g07);
                    c26825d.f75065h = C26232y.m2314q(m3090b.getBlob(m43237g08));
                    C26760p c26760p = new C26760p(string, string2);
                    c26760p.f74903b = C26232y.m2423Q0(m3090b.getInt(m43237g010));
                    c26760p.f74905d = m3090b.getString(m43237g012);
                    c26760p.f74906e = C26829f.m1306a(m3090b.getBlob(m43237g013));
                    c26760p.f74907f = C26829f.m1306a(m3090b.getBlob(m43237g014));
                    c26760p.f74908g = m3090b.getLong(m43237g015);
                    c26760p.f74909h = m3090b.getLong(m43237g016);
                    c26760p.f74910i = m3090b.getLong(m43237g017);
                    c26760p.f74912k = m3090b.getInt(m43237g018);
                    c26760p.f74913l = C26232y.m2435N0(m3090b.getInt(m43237g019));
                    c26760p.f74914m = m3090b.getLong(m43237g020);
                    c26760p.f74915n = m3090b.getLong(m43237g021);
                    c26760p.f74916o = m3090b.getLong(m43237g022);
                    c26760p.f74917p = m3090b.getLong(m43237g023);
                    c26760p.f74918q = m3090b.getInt(m43237g024) != 0;
                    c26760p.f74919r = C26232y.m2427P0(m3090b.getInt(m43237g025));
                    c26760p.f74911j = c26825d;
                    arrayList.add(c26760p);
                }
                m3090b.close();
                m3059j.m3057l();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m3090b.close();
                m3059j.m3057l();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: h */
    public C26855x.EnumC26856a m1349h(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f74932a.assertNotSuspendingTransaction();
        C26855x.EnumC26856a enumC26856a = null;
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            if (m3090b.moveToFirst()) {
                enumC26856a = C26232y.m2423Q0(m3090b.getInt(0));
            }
            m3090b.close();
            m3059j.m3057l();
            return enumC26856a;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    /* renamed from: i */
    public List<String> m1348i(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f74932a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(m3090b.getString(0));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    /* renamed from: j */
    public List<String> m1347j(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f74932a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(m3090b.getString(0));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    /* renamed from: k */
    public C26760p m1346k(String str) {
        Throwable th;
        int m43237g0;
        int m43237g02;
        int m43237g03;
        int m43237g04;
        int m43237g05;
        int m43237g06;
        int m43237g07;
        int m43237g08;
        int m43237g09;
        int m43237g010;
        int m43237g011;
        int m43237g012;
        int m43237g013;
        int m43237g014;
        C26760p c26760p;
        C25686y m3059j = C25686y.m3059j("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f74932a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            m43237g0 = MediaSessionCompat.m43237g0(m3090b, "required_network_type");
            m43237g02 = MediaSessionCompat.m43237g0(m3090b, "requires_charging");
            m43237g03 = MediaSessionCompat.m43237g0(m3090b, "requires_device_idle");
            m43237g04 = MediaSessionCompat.m43237g0(m3090b, "requires_battery_not_low");
            m43237g05 = MediaSessionCompat.m43237g0(m3090b, "requires_storage_not_low");
            m43237g06 = MediaSessionCompat.m43237g0(m3090b, "trigger_content_update_delay");
            m43237g07 = MediaSessionCompat.m43237g0(m3090b, "trigger_max_content_delay");
            m43237g08 = MediaSessionCompat.m43237g0(m3090b, "content_uri_triggers");
            m43237g09 = MediaSessionCompat.m43237g0(m3090b, "id");
            m43237g010 = MediaSessionCompat.m43237g0(m3090b, "state");
            m43237g011 = MediaSessionCompat.m43237g0(m3090b, "worker_class_name");
            m43237g012 = MediaSessionCompat.m43237g0(m3090b, "input_merger_class_name");
            m43237g013 = MediaSessionCompat.m43237g0(m3090b, "input");
            m43237g014 = MediaSessionCompat.m43237g0(m3090b, "output");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "initial_delay");
            int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "interval_duration");
            int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "flex_duration");
            int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "run_attempt_count");
            int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "backoff_policy");
            int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "backoff_delay_duration");
            int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "period_start_time");
            int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "minimum_retention_duration");
            int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "schedule_requested_at");
            int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "run_in_foreground");
            int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "out_of_quota_policy");
            if (m3090b.moveToFirst()) {
                String string = m3090b.getString(m43237g09);
                String string2 = m3090b.getString(m43237g011);
                C26825d c26825d = new C26825d();
                c26825d.f75058a = C26232y.m2431O0(m3090b.getInt(m43237g0));
                c26825d.f75059b = m3090b.getInt(m43237g02) != 0;
                c26825d.f75060c = m3090b.getInt(m43237g03) != 0;
                c26825d.f75061d = m3090b.getInt(m43237g04) != 0;
                c26825d.f75062e = m3090b.getInt(m43237g05) != 0;
                c26825d.f75063f = m3090b.getLong(m43237g06);
                c26825d.f75064g = m3090b.getLong(m43237g07);
                c26825d.f75065h = C26232y.m2314q(m3090b.getBlob(m43237g08));
                c26760p = new C26760p(string, string2);
                c26760p.f74903b = C26232y.m2423Q0(m3090b.getInt(m43237g010));
                c26760p.f74905d = m3090b.getString(m43237g012);
                c26760p.f74906e = C26829f.m1306a(m3090b.getBlob(m43237g013));
                c26760p.f74907f = C26829f.m1306a(m3090b.getBlob(m43237g014));
                c26760p.f74908g = m3090b.getLong(m43237g015);
                c26760p.f74909h = m3090b.getLong(m43237g016);
                c26760p.f74910i = m3090b.getLong(m43237g017);
                c26760p.f74912k = m3090b.getInt(m43237g018);
                c26760p.f74913l = C26232y.m2435N0(m3090b.getInt(m43237g019));
                c26760p.f74914m = m3090b.getLong(m43237g020);
                c26760p.f74915n = m3090b.getLong(m43237g021);
                c26760p.f74916o = m3090b.getLong(m43237g022);
                c26760p.f74917p = m3090b.getLong(m43237g023);
                c26760p.f74918q = m3090b.getInt(m43237g024) != 0;
                c26760p.f74919r = C26232y.m2427P0(m3090b.getInt(m43237g025));
                c26760p.f74911j = c26825d;
            } else {
                c26760p = null;
            }
            m3090b.close();
            m3059j.m3057l();
            return c26760p;
        } catch (Throwable th3) {
            th = th3;
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    /* renamed from: l */
    public List<C26760p.C26762b> m1345l(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f74932a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74932a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "state");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                C26760p.C26762b c26762b = new C26760p.C26762b();
                c26762b.f74920a = m3090b.getString(m43237g0);
                c26762b.f74921b = C26232y.m2423Q0(m3090b.getInt(m43237g02));
                arrayList.add(c26762b);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    /* renamed from: m */
    public int m1344m(String str) {
        this.f74932a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f74937f.acquire();
        if (str == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str);
        }
        this.f74932a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f74932a.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f74932a.endTransaction();
            this.f74937f.release(acquire);
        }
    }

    /* renamed from: n */
    public int m1343n(String str, long j) {
        this.f74932a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f74939h.acquire();
        acquire.mo2650l0(1, j);
        if (str == null) {
            acquire.mo2648y0(2);
        } else {
            acquire.mo2651f0(2, str);
        }
        this.f74932a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f74932a.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f74932a.endTransaction();
            this.f74939h.release(acquire);
        }
    }

    /* renamed from: o */
    public int m1342o(String str) {
        this.f74932a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f74938g.acquire();
        if (str == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str);
        }
        this.f74932a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f74932a.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f74932a.endTransaction();
            this.f74938g.release(acquire);
        }
    }

    /* renamed from: p */
    public void m1341p(String str, C26829f c26829f) {
        this.f74932a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f74935d.acquire();
        byte[] m1300g = C26829f.m1300g(c26829f);
        if (m1300g == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2649o0(1, m1300g);
        }
        if (str == null) {
            acquire.mo2648y0(2);
        } else {
            acquire.mo2651f0(2, str);
        }
        this.f74932a.beginTransaction();
        try {
            acquire.m2673A();
            this.f74932a.setTransactionSuccessful();
        } finally {
            this.f74932a.endTransaction();
            this.f74935d.release(acquire);
        }
    }

    /* renamed from: q */
    public void m1340q(String str, long j) {
        this.f74932a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f74936e.acquire();
        acquire.mo2650l0(1, j);
        if (str == null) {
            acquire.mo2648y0(2);
        } else {
            acquire.mo2651f0(2, str);
        }
        this.f74932a.beginTransaction();
        try {
            acquire.m2673A();
            this.f74932a.setTransactionSuccessful();
        } finally {
            this.f74932a.endTransaction();
            this.f74936e.release(acquire);
        }
    }

    /* renamed from: r */
    public int m1339r(C26855x.EnumC26856a enumC26856a, String... strArr) {
        this.f74932a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE workspec SET state=");
        sb.append("?");
        sb.append(" WHERE id IN (");
        C25655d.m3086a(sb, strArr.length);
        sb.append(")");
        AbstractC26154f compileStatement = this.f74932a.compileStatement(sb.toString());
        compileStatement.mo2650l0(1, C26232y.m2402V1(enumC26856a));
        int i = 2;
        for (String str : strArr) {
            if (str == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2651f0(i, str);
            }
            i++;
        }
        this.f74932a.beginTransaction();
        try {
            int m2673A = compileStatement.m2673A();
            this.f74932a.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f74932a.endTransaction();
        }
    }
}
