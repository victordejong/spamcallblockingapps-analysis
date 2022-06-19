package androidx.work.impl.workers;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.C0680b;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p015b0.C0713a;
import p067d1.C2158h;
import p088f1.C2709b;
import p186o1.AbstractC3824h;
import p186o1.C3816b;
import p197p1.C4006j;
import p282x1.AbstractC4818h;
import p282x1.AbstractC4823k;
import p282x1.AbstractC4834q;
import p282x1.AbstractC4845t;
import p282x1.C4817g;
import p282x1.C4819i;
import p282x1.C4824l;
import p282x1.C4832p;
import p282x1.C4835r;
import p282x1.C4846u;
import p282x1.C4848v;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/DiagnosticsWorker.class */
public class DiagnosticsWorker extends Worker {

    /* renamed from: a */
    public static final String f2744a = AbstractC3824h.m1773e("DiagnosticsWrkr");

    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static String m7446a(AbstractC4823k abstractC4823k, AbstractC4845t abstractC4845t, AbstractC4818h abstractC4818h, List<C4832p> list) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", Build.VERSION.SDK_INT >= 23 ? "Job Id" : "Alarm Id"));
        for (C4832p c4832p : list) {
            C4817g m396a = ((C4819i) abstractC4818h).m396a(c4832p.f14831a);
            Integer valueOf = m396a != null ? Integer.valueOf(m396a.f14817b) : null;
            String str = c4832p.f14831a;
            C4824l c4824l = (C4824l) abstractC4823k;
            Objects.requireNonNull(c4824l);
            C2158h m3806l = C2158h.m3806l("SELECT name FROM workname WHERE work_spec_id=?", 1);
            if (str == null) {
                m3806l.m3804p(1);
            } else {
                m3806l.m3803r(1, str);
            }
            c4824l.f14823a.m3820b();
            Cursor m3217a = C2709b.m3217a(c4824l.f14823a, m3806l, false, null);
            try {
                ArrayList arrayList = new ArrayList(m3217a.getCount());
                while (m3217a.moveToNext()) {
                    arrayList.add(m3217a.getString(0));
                }
                m3217a.close();
                m3806l.release();
                sb.append(String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", c4832p.f14831a, c4832p.f14833c, valueOf, c4832p.f14832b.name(), TextUtils.join(",", arrayList), TextUtils.join(",", ((C4846u) abstractC4845t).m372a(c4832p.f14831a))));
            } catch (Throwable th) {
                m3217a.close();
                m3806l.release();
                throw th;
            }
        }
        return sb.toString();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0671a doWork() {
        Throwable th;
        WorkDatabase workDatabase = C4006j.m1535c(getApplicationContext()).f12584c;
        AbstractC4834q mo7475q = workDatabase.mo7475q();
        AbstractC4823k mo7477o = workDatabase.mo7477o();
        AbstractC4845t mo7474r = workDatabase.mo7474r();
        AbstractC4818h mo7478n = workDatabase.mo7478n();
        long currentTimeMillis = System.currentTimeMillis();
        long millis = TimeUnit.DAYS.toMillis(1L);
        C4835r c4835r = (C4835r) mo7475q;
        Objects.requireNonNull(c4835r);
        C2158h m3806l = C2158h.m3806l("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC", 1);
        m3806l.m3805o(1, currentTimeMillis - millis);
        c4835r.f14851a.m3820b();
        Cursor m3217a = C2709b.m3217a(c4835r.f14851a, m3806l, false, null);
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
                List<C4832p> m385d = c4835r.m385d();
                List<C4832p> m387b = c4835r.m387b(200);
                if (!arrayList.isEmpty()) {
                    AbstractC3824h m1774c = AbstractC3824h.m1774c();
                    String str = f2744a;
                    m1774c.mo1770d(str, "Recently completed work:\n\n", new Throwable[0]);
                    AbstractC3824h.m1774c().mo1770d(str, m7446a(mo7477o, mo7474r, mo7478n, arrayList), new Throwable[0]);
                }
                if (!((ArrayList) m385d).isEmpty()) {
                    AbstractC3824h m1774c2 = AbstractC3824h.m1774c();
                    String str2 = f2744a;
                    m1774c2.mo1770d(str2, "Running work:\n\n", new Throwable[0]);
                    AbstractC3824h.m1774c().mo1770d(str2, m7446a(mo7477o, mo7474r, mo7478n, m385d), new Throwable[0]);
                }
                if (!((ArrayList) m387b).isEmpty()) {
                    AbstractC3824h m1774c3 = AbstractC3824h.m1774c();
                    String str3 = f2744a;
                    m1774c3.mo1770d(str3, "Enqueued work:\n\n", new Throwable[0]);
                    AbstractC3824h.m1774c().mo1770d(str3, m7446a(mo7477o, mo7474r, mo7478n, m387b), new Throwable[0]);
                }
                return new ListenableWorker.AbstractC0671a.C0674c();
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
}
