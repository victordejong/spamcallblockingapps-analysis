package p193e.p1485h.p1486a.p1493c.p1507w0;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.clevertap.android.sdk.pushnotification.amp.CTBackgroundJobService;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1485h.p1486a.p1493c.C22727f;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22713b;
import p193e.p1485h.p1486a.p1493c.p1496l0.AbstractC22745a;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22746b;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.w0.i */
/* loaded from: classes-dex2jar.jar:e/h/a/c/w0/i.class */
public class C22867i implements AbstractC22860b {

    /* renamed from: d */
    public final C22727f f63490d;

    /* renamed from: e */
    public final AbstractC22745a f63491e;

    /* renamed from: f */
    public final CleverTapInstanceConfig f63492f;

    /* renamed from: g */
    public final Context f63493g;

    /* renamed from: i */
    public final C22713b f63495i;

    /* renamed from: a */
    public final ArrayList<AbstractC22865g.EnumC22866a> f63487a = new ArrayList<>();

    /* renamed from: b */
    public final ArrayList<AbstractC22859a> f63488b = new ArrayList<>();

    /* renamed from: c */
    public final ArrayList<AbstractC22865g.EnumC22866a> f63489c = new ArrayList<>();

    /* renamed from: h */
    public AbstractC22863e f63494h = new C22861c();

    /* renamed from: j */
    public final Object f63496j = new Object();

    /* renamed from: e.h.a.c.w0.i$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/w0/i$a.class */
    public class CallableC22868a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Bundle f63497a;

        /* renamed from: b */
        public final /* synthetic */ Context f63498b;

        /* renamed from: c */
        public final /* synthetic */ int f63499c;

        public CallableC22868a(Bundle bundle, Context context, int i) {
            C22867i.this = r4;
            this.f63497a = bundle;
            this.f63498b = context;
            this.f63499c = i;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            boolean equals;
            try {
                String string = this.f63497a.getString("extras_from");
                if (string == null || !string.equals("PTReceiver")) {
                    C22735g0 m42081b = C22867i.this.f63492f.m42081b();
                    String str = C22867i.this.f63492f.f2240a;
                    m42081b.m7856a(str, "Handling notification: " + this.f63497a.toString());
                    if (this.f63497a.getString("wzrk_pid") != null) {
                        C22746b mo7819b = C22867i.this.f63491e.mo7819b(this.f63498b);
                        String string2 = this.f63497a.getString("wzrk_pid");
                        synchronized (mo7819b) {
                            equals = string2.equals(mo7819b.m7830f(string2));
                        }
                        if (equals) {
                            C22867i.this.f63492f.m42081b().m7856a(C22867i.this.f63492f.f2240a, "Push Notification already rendered, not showing again");
                            return null;
                        }
                    }
                    String mo7661g = C22867i.this.f63494h.mo7661g(this.f63497a);
                    if (mo7661g == null) {
                        mo7661g = "";
                    }
                    if (mo7661g.isEmpty()) {
                        C22867i.this.f63492f.m42081b().m7855b(C22867i.this.f63492f.f2240a, "Push notification message is empty, not rendering");
                        C22867i.this.f63491e.mo7819b(this.f63498b).m7824l();
                        String string3 = this.f63497a.getString("pf", "");
                        if (TextUtils.isEmpty(string3)) {
                            return null;
                        }
                        C22867i.this.m7646o(this.f63498b, Integer.parseInt(string3));
                        return null;
                    } else if (C22867i.this.f63494h.mo7666b(this.f63497a, this.f63498b).isEmpty()) {
                        String str2 = this.f63498b.getApplicationInfo().name;
                    }
                }
                C22867i.m7658c(C22867i.this, this.f63498b, this.f63497a, this.f63499c);
                return null;
            } catch (Throwable th) {
                C22735g0 m42081b2 = C22867i.this.f63492f.m42081b();
                String str3 = C22867i.this.f63492f.f2240a;
                Objects.requireNonNull(m42081b2);
                return null;
            }
        }
    }

    /* renamed from: e.h.a.c.w0.i$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/w0/i$b.class */
    public class CallableC22869b implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Context f63501a;

        public CallableC22869b(Context context) {
            C22867i.this = r4;
            this.f63501a = context;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            Objects.requireNonNull(C22867i.this.f63492f.m42081b());
            C22867i.m7657d(C22867i.this, this.f63501a);
            return null;
        }
    }

    /* renamed from: e.h.a.c.w0.i$c */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/w0/i$c.class */
    public class CallableC22870c implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Context f63503a;

        /* renamed from: b */
        public final /* synthetic */ JobParameters f63504b;

        public CallableC22870c(Context context, JobParameters jobParameters) {
            C22867i.this = r4;
            this.f63503a = context;
            this.f63504b = jobParameters;
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0150, code lost:
            if (r13 == null) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0178, code lost:
            if (r13 == null) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x017b, code lost:
            r13.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0183, code lost:
            r22 = r20;
         */
        /* JADX WARN: Removed duplicated region for block: B:74:0x028c A[Catch: all -> 0x0294, TRY_ENTER, TryCatch #2 {, blocks: (B:31:0x0143, B:40:0x016a, B:43:0x017b, B:72:0x0280, B:74:0x028c, B:76:0x0293), top: B:85:0x0105 }] */
        /* JADX WARN: Type inference failed for: r0v135, types: [long] */
        @Override // java.util.concurrent.Callable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void call() throws java.lang.Exception {
            /*
                Method dump skipped, instructions count: 674
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1507w0.C22867i.CallableC22870c.call():java.lang.Object");
        }
    }

    public C22867i(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, AbstractC22745a abstractC22745a, C22713b c22713b, C22727f c22727f) {
        this.f63493g = context;
        this.f63492f = cleverTapInstanceConfig;
        this.f63491e = abstractC22745a;
        this.f63495i = c22713b;
        this.f63490d = c22727f;
        if (!cleverTapInstanceConfig.f2245f || cleverTapInstanceConfig.f2244e) {
            return;
        }
        C22895k m7641c = C22882a.m7644a(cleverTapInstanceConfig).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "createOrResetJobScheduler", new CallableC22872k(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:158:0x045a, code lost:
        if (r0.contains(".wav") != false) goto L159;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r15v23, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r15v7, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r2v11, types: [long] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m7658c(p193e.p1485h.p1486a.p1493c.p1507w0.C22867i r7, android.content.Context r8, android.os.Bundle r9, int r10) {
        /*
            Method dump skipped, instructions count: 1697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1507w0.C22867i.m7658c(e.h.a.c.w0.i, android.content.Context, android.os.Bundle, int):void");
    }

    /* renamed from: d */
    public static void m7657d(C22867i c22867i, Context context) {
        JobInfo jobInfo;
        Objects.requireNonNull(c22867i);
        int m2329m0 = C26232y.m2329m0(context, "pfjobid", -1);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (Build.VERSION.SDK_INT < 26) {
            if (m2329m0 >= 0) {
                jobScheduler.cancel(m2329m0);
                C26232y.m2470E1(context, "pfjobid", -1);
            }
            c22867i.f63492f.m42081b().m7856a(c22867i.f63492f.f2240a, "Push Amplification feature is not supported below Oreo");
        } else if (jobScheduler == null) {
        } else {
            int m7651j = c22867i.m7651j(context);
            if (m2329m0 < 0 && m7651j < 0) {
                return;
            }
            if (m7651j < 0) {
                jobScheduler.cancel(m2329m0);
                C26232y.m2470E1(context, "pfjobid", -1);
                return;
            }
            ComponentName componentName = new ComponentName(context, CTBackgroundJobService.class);
            boolean z = m2329m0 < 0 && m7651j > 0;
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    jobInfo = null;
                    break;
                }
                jobInfo = it.next();
                if (jobInfo.getId() == m2329m0) {
                    break;
                }
            }
            boolean z2 = z;
            if (jobInfo != null) {
                z2 = z;
                if (jobInfo.getIntervalMillis() != m7651j * DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL) {
                    jobScheduler.cancel(m2329m0);
                    C26232y.m2470E1(context, "pfjobid", -1);
                    z2 = true;
                }
            }
            if (!z2) {
                return;
            }
            int hashCode = c22867i.f63492f.f2240a.hashCode();
            JobInfo.Builder builder = new JobInfo.Builder(hashCode, componentName);
            builder.setRequiredNetworkType(1);
            builder.setRequiresCharging(false);
            builder.setPeriodic(m7651j * DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, 300000L);
            builder.setRequiresBatteryNotLow(true);
            if (C22741j0.m7840j(context, "android.permission.RECEIVE_BOOT_COMPLETED")) {
                builder.setPersisted(true);
            }
            if (jobScheduler.schedule(builder.build()) != 1) {
                String str = c22867i.f63492f.f2240a;
                return;
            }
            String str2 = c22867i.f63492f.f2240a;
            C26232y.m2470E1(context, "pfjobid", hashCode);
        }
    }

    /* renamed from: e */
    public static Date m7656e(C22867i c22867i, String str) {
        Date date;
        Objects.requireNonNull(c22867i);
        try {
            date = new SimpleDateFormat("HH:mm", Locale.US).parse(str);
        } catch (ParseException e) {
            date = new Date(0L);
        }
        return date;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22860b
    /* renamed from: a */
    public void mo7660a(String str, AbstractC22865g.EnumC22866a enumC22866a) {
        if (!TextUtils.isEmpty(str)) {
            m7655f(str, enumC22866a);
        }
    }

    /* renamed from: b */
    public void m7659b(Context context, Bundle bundle, int i) {
        if (bundle == null || bundle.get("wzrk_pn") == null) {
            return;
        }
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63492f;
        if (cleverTapInstanceConfig.f2244e) {
            cleverTapInstanceConfig.m42081b().m7856a(this.f63492f.f2240a, "Instance is set for Analytics only, cannot create notification");
            return;
        }
        try {
            C22895k m7641c = C22882a.m7644a(cleverTapInstanceConfig).m7641c();
            m7641c.f63554c.execute(new RunnableC22894j(m7641c, "CleverTapAPI#_createNotification", new CallableC22868a(bundle, context, i)));
        } catch (Throwable th) {
            C22735g0 m42081b = this.f63492f.m42081b();
            String str = this.f63492f.f2240a;
            Objects.requireNonNull(m42081b);
        }
    }

    /* renamed from: f */
    public void m7655f(String str, AbstractC22865g.EnumC22866a enumC22866a) {
        if (TextUtils.isEmpty(str) || enumC22866a == null) {
            return;
        }
        int ordinal = enumC22866a.ordinal();
        if (ordinal == 0) {
            m7650k(str, AbstractC22865g.EnumC22866a.FCM, true);
        } else if (ordinal == 1) {
            m7650k(str, AbstractC22865g.EnumC22866a.XPS, true);
        } else if (ordinal == 2) {
            m7650k(str, AbstractC22865g.EnumC22866a.HPS, true);
        } else if (ordinal == 3) {
            m7650k(str, AbstractC22865g.EnumC22866a.BPS, true);
        } else if (ordinal != 4) {
        } else {
            m7650k(str, AbstractC22865g.EnumC22866a.ADM, true);
        }
    }

    /* renamed from: g */
    public void m7654g(boolean z) {
        Iterator<AbstractC22865g.EnumC22866a> it = this.f63487a.iterator();
        while (it.hasNext()) {
            m7648m(null, z, it.next());
        }
    }

    /* renamed from: h */
    public ArrayList<AbstractC22865g.EnumC22866a> m7653h() {
        ArrayList<AbstractC22865g.EnumC22866a> arrayList = new ArrayList<>();
        Iterator<AbstractC22859a> it = this.f63488b.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getPushType());
        }
        return arrayList;
    }

    /* renamed from: i */
    public String m7652i(AbstractC22865g.EnumC22866a enumC22866a) {
        if (enumC22866a != null) {
            String str = enumC22866a.f63484c;
            if (!TextUtils.isEmpty(str)) {
                String m2483B0 = C26232y.m2483B0(this.f63493g, this.f63492f, str, null);
                CleverTapInstanceConfig cleverTapInstanceConfig = this.f63492f;
                cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("PushProvider"), enumC22866a + "getting Cached Token - " + m2483B0);
                return m2483B0;
            }
        }
        if (enumC22866a != null) {
            CleverTapInstanceConfig cleverTapInstanceConfig2 = this.f63492f;
            cleverTapInstanceConfig2.f2253n.m7855b(cleverTapInstanceConfig2.m42082a("PushProvider"), enumC22866a + " Unable to find cached Token for type ");
            return null;
        }
        return null;
    }

    /* renamed from: j */
    public final int m7651j(Context context) {
        return C26232y.m2329m0(context, "pf", 240);
    }

    /* renamed from: k */
    public void m7650k(String str, AbstractC22865g.EnumC22866a enumC22866a, boolean z) {
        if (!z) {
            m7648m(str, false, enumC22866a);
            return;
        }
        m7648m(str, true, enumC22866a);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            C22895k m7643a = C22882a.m7644a(this.f63492f).m7643a();
            m7643a.f63554c.execute(new RunnableC22894j(m7643a, "PushProviders#cacheToken", new CallableC22871j(this, str, enumC22866a)));
        } catch (Throwable th) {
            CleverTapInstanceConfig cleverTapInstanceConfig = this.f63492f;
            String str2 = enumC22866a + "Unable to cache token " + str;
            C22735g0 c22735g0 = cleverTapInstanceConfig.f2253n;
            cleverTapInstanceConfig.m42082a("PushProvider");
            Objects.requireNonNull(c22735g0);
        }
    }

    /* renamed from: l */
    public boolean m7649l() {
        Iterator<AbstractC22865g.EnumC22866a> it = m7653h().iterator();
        while (it.hasNext()) {
            if (m7652i(it.next()) != null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m */
    public final void m7648m(String str, boolean z, AbstractC22865g.EnumC22866a enumC22866a) {
        if (enumC22866a == null) {
            return;
        }
        String m7652i = !TextUtils.isEmpty(str) ? str : m7652i(enumC22866a);
        if (TextUtils.isEmpty(m7652i)) {
            return;
        }
        synchronized (this.f63496j) {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String str2 = z ? "register" : "unregister";
            jSONObject2.put("action", str2);
            jSONObject2.put("id", m7652i);
            jSONObject2.put("type", enumC22866a.f63485d);
            jSONObject.put(RemoteMessageConst.DATA, jSONObject2);
            C22735g0 m42081b = this.f63492f.m42081b();
            String str3 = this.f63492f.f2240a;
            m42081b.m7855b(str3, enumC22866a + str2 + " device token " + m7652i);
            C22727f c22727f = this.f63490d;
            c22727f.f62916c.mo7812d(c22727f.f62919f, jSONObject, 5);
        }
    }

    /* renamed from: n */
    public void m7647n(Context context, JobParameters jobParameters) {
        C22895k m7641c = C22882a.m7644a(this.f63492f).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "runningJobService", new CallableC22870c(context, jobParameters)));
    }

    /* renamed from: o */
    public void m7646o(Context context, int i) {
        Objects.requireNonNull(this.f63492f.m42081b());
        C22735g0 m42081b = this.f63492f.m42081b();
        m7651j(context);
        Objects.requireNonNull(m42081b);
        if (i != m7651j(context)) {
            C26232y.m2470E1(context, "pf", i);
            CleverTapInstanceConfig cleverTapInstanceConfig = this.f63492f;
            if (!cleverTapInstanceConfig.f2245f || cleverTapInstanceConfig.f2244e) {
                return;
            }
            C22895k m7641c = C22882a.m7644a(cleverTapInstanceConfig).m7641c();
            m7641c.f63554c.execute(new RunnableC22894j(m7641c, "createOrResetJobScheduler", new CallableC22869b(context)));
        }
    }
}
