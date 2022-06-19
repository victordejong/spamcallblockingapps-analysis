package com.truecaller.backup.worker;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import com.truecaller.backup.C3467R;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.inject.Named;
import javax.inject.Provider;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26444m;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26833i;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.C26851u;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26831g;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.p1069l2.AbstractC18368a;
import p193e.p194a.p1066n.p1069l2.AbstractC18369b;
import p193e.p194a.p1066n.p1069l2.C18370c;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21763i;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import s1.a.c;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.i;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� 72\u00020\u00012\u00020\u0002:\u0001\u0010BE\b\u0007\u0012\b\b\u0001\u0010&\u001a\u00020#\u0012\b\b\u0001\u00104\u001a\u000203\u0012\u0006\u0010,\u001a\u00020'\u0012\u0006\u00102\u001a\u00020-\u0012\u000e\b\u0001\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0019¢\u0006\u0004\b5\u00106J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0012\u0010\u000bJ\u000f\u0010\u0013\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0013\u0010\u000bR\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u001aR\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001c\u0010,\u001a\u00020'8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u001c\u00102\u001a\u00020-8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101¨\u00068"}, d2 = {"Lcom/truecaller/backup/worker/BackupWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "Le/a/n/l2/b;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Ls1/s;", "onStopped", "()V", "j", "k", "", "stringRes", "a", "(I)V", "f", "l", "Ljavax/inject/Provider;", "Landroid/content/Intent;", "e", "Ljavax/inject/Provider;", "backupSettingsIntent", "Le/a/n/l2/a;", "Le/a/n/l2/a;", "presenter", "Le/a/h4/n;", "Le/a/h4/n;", "getNotificationManager", "()Le/a/h4/n;", "setNotificationManager", "(Le/a/h4/n;)V", "notificationManager", "Landroid/content/Context;", C22021b.f61237c, "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Le/a/u3/g;", AbstractC2405c.f7629a, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "featuresRegistry", "Le/a/q2/a;", "d", "Le/a/q2/a;", "n", "()Le/a/q2/a;", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/u3/g;Le/a/q2/a;Ljavax/inject/Provider;Le/a/n/l2/a;)V", "g", "backup_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/worker/BackupWorker.class */
public final class BackupWorker extends TrackedWorker implements AbstractC18369b {

    /* renamed from: g */
    public static final C3472a f10190g = new C3472a(null);

    /* renamed from: a */
    public AbstractC14920n f10191a;

    /* renamed from: b */
    public final Context f10192b;

    /* renamed from: c */
    public final C20592g f10193c;

    /* renamed from: d */
    public final AbstractC19462a f10194d;

    /* renamed from: e */
    public final Provider<Intent> f10195e;

    /* renamed from: f */
    public final AbstractC18368a f10196f;

    /* renamed from: com.truecaller.backup.worker.BackupWorker$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/backup/worker/BackupWorker$a.class */
    public static final class C3472a implements AbstractC21763i {
        public C3472a(f fVar) {
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        /* renamed from: a */
        public C21762h mo9107a() {
            c a = d0.a(BackupWorker.class);
            i a2 = i.a(1L);
            l.d(a2, "Duration.standardDays(1)");
            C21762h c21762h = new C21762h(a, a2);
            c21762h.m9108f(m35885b());
            EnumC26674a enumC26674a = EnumC26674a.LINEAR;
            i c = i.c(2L);
            l.d(c, "Duration.standardHours(2)");
            c21762h.m9110d(enumC26674a, c);
            return c21762h;
        }

        /* renamed from: b */
        public final EnumC26841q m35885b() {
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            l.d(m28551L, "ApplicationBase.getAppBase()");
            AbstractC8412c m28549N = m28551L.m28549N();
            l.d(m28549N, "ApplicationBase.getAppBase().commonGraph");
            return m28549N.mo12420d().getInt("backupNetworkType", 1) != 2 ? EnumC26841q.CONNECTED : EnumC26841q.UNMETERED;
        }

        /* renamed from: c */
        public final void m35884c() {
            HashMap hashMap = new HashMap();
            hashMap.put("backupNow", Boolean.TRUE);
            C26829f c26829f = new C26829f(hashMap);
            C26829f.m1300g(c26829f);
            l.d(c26829f, "Data.Builder()\n         …\n                .build()");
            C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
            l.d(m1431n, "WorkManager.getInstance(…icationBase.getAppBase())");
            C26842r.C26843a c26843a = new C26842r.C26843a(BackupWorker.class);
            c26843a.f75127c.f74906e = c26829f;
            C26842r m1272b = c26843a.m1272b();
            l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
            m1431n.m1279i("OneTimeBackupWorker", EnumC26832h.KEEP, m1272b);
        }

        /* renamed from: d */
        public final void m35883d() {
            C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
            l.d(m1431n, "WorkManager.getInstance(…icationBase.getAppBase())");
            C26825d.C26826a c26826a = new C26825d.C26826a();
            c26826a.f75068c = m35885b();
            C26825d c26825d = new C26825d(c26826a);
            l.d(c26825d, "Constraints.Builder()\n  …\n                .build()");
            EnumC26831g enumC26831g = EnumC26831g.REPLACE;
            i a = i.a(1L);
            l.d(a, "Duration.standardDays(1)");
            long j = ((w3.b.a.e0.f) a).a;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            C26851u.C26852a c26852a = new C26851u.C26852a(BackupWorker.class, j, timeUnit);
            c26852a.f75127c.f74911j = c26825d;
            EnumC26674a enumC26674a = EnumC26674a.LINEAR;
            i c = i.c(2L);
            l.d(c, "Duration.standardHours(2)");
            m1431n.mo1280h("BackupWorker", enumC26831g, c26852a.m1269e(enumC26674a, ((w3.b.a.e0.f) c).a, timeUnit).m1268f(5L, TimeUnit.MINUTES).m1272b());
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        public String getName() {
            return "BackupWorker";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackupWorker(Context context, WorkerParameters workerParameters, C20592g c20592g, AbstractC19462a abstractC19462a, @Named("backup_settings") Provider<Intent> provider, AbstractC18368a abstractC18368a) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(provider, "backupSettingsIntent");
        l.e(abstractC18368a, "presenter");
        this.f10192b = context;
        this.f10193c = c20592g;
        this.f10194d = abstractC19462a;
        this.f10195e = provider;
        this.f10196f = abstractC18368a;
    }

    /* renamed from: s */
    public static final void m35886s() {
        HashMap hashMap = new HashMap();
        hashMap.put("backupNow", Boolean.TRUE);
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        l.d(c26829f, "Data.Builder()\n         …\n                .build()");
        C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
        l.d(m1431n, "WorkManager.getInstance(…icationBase.getAppBase())");
        C26842r.C26843a c26843a = new C26842r.C26843a(BackupWorker.class);
        c26843a.f75127c.f74906e = c26829f;
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        m1431n.m1279i("OneTimeBackupWorker", EnumC26832h.KEEP, m1272b);
    }

    @Override // p193e.p194a.p1066n.p1069l2.AbstractC18369b
    /* renamed from: a */
    public void mo15132a(int i) {
        Toast.makeText(this.f10192b, i, 0).show();
    }

    @Override // p193e.p194a.p1066n.p1069l2.AbstractC18369b
    /* renamed from: f */
    public void mo15131f() {
        C27062a.m968b(this.f10192b).m966d(new Intent("com.truecaller.backup.BACKUP_DONE"));
    }

    @Override // p193e.p194a.p1066n.p1069l2.AbstractC18369b
    /* renamed from: j */
    public void mo15130j() {
        int m13612L = C19291g.m13612L(this.f10192b, C3467R.attr.tcx_brandBackgroundBlue);
        Context context = this.f10192b;
        AbstractC14920n abstractC14920n = this.f10191a;
        if (abstractC14920n == null) {
            l.l("notificationManager");
            throw null;
        }
        C26450q c26450q = new C26450q(context, abstractC14920n.mo19425a("backup"));
        c26450q.f74123D = m13612L;
        c26450q.f74137R.icon = 17301640;
        c26450q.m1855n(this.f10192b.getString(C3467R.string.backup_notification_backing_up));
        c26450q.m1853p(2, true);
        c26450q.m1848u(0, 0, true);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "NotificationCompat.Build…\n                .build()");
        setForegroundAsync(new C26833i(C3467R.C3469id.back_up_progress_notification_id, m1865d)).get();
    }

    @Override // p193e.p194a.p1066n.p1069l2.AbstractC18369b
    /* renamed from: k */
    public void mo15129k() {
        int m13612L = C19291g.m13612L(this.f10192b, C3467R.attr.tcx_brandBackgroundBlue);
        PendingIntent activity = PendingIntent.getActivity(this.f10192b, 0, (Intent) this.f10195e.get(), 201326592);
        C26444m m1875b = new C26444m.C26445a(C3467R.C3468drawable.ic_google_drive, this.f10192b.getString(C3467R.string.backup_notification_fix), activity).m1875b();
        l.d(m1875b, "NotificationCompat.Actio…gIntent\n        ).build()");
        Context context = this.f10192b;
        AbstractC14920n abstractC14920n = this.f10191a;
        if (abstractC14920n == null) {
            l.l("notificationManager");
            throw null;
        }
        C26450q c26450q = new C26450q(context, abstractC14920n.mo19425a("backup"));
        c26450q.f74123D = m13612L;
        c26450q.f74137R.icon = C3467R.C3468drawable.ic_cloud_error;
        c26450q.m1855n(this.f10192b.getString(C3467R.string.backup_settings_title));
        c26450q.m1856m(this.f10192b.getString(C3467R.string.backup_notification_failure));
        c26450q.f74147g = activity;
        c26450q.m1867b(m1875b);
        c26450q.m1853p(16, true);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "NotificationCompat.Build…rue)\n            .build()");
        AbstractC14920n abstractC14920n2 = this.f10191a;
        if (abstractC14920n2 != null) {
            abstractC14920n2.mo19419g(C3467R.C3469id.back_up_error_notification_id, m1865d);
        } else {
            l.l("notificationManager");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.p1069l2.AbstractC18369b
    /* renamed from: l */
    public void mo15128l() {
        f10190g.m35883d();
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        return this.f10194d;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        return this.f10193c;
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ((AbstractC20574a) this.f10196f).mo9806c();
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        return true;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        ListenableWorker.AbstractC0414a abstractC0414a;
        Context applicationContext = this.f10192b.getApplicationContext();
        Context context = applicationContext;
        if (!(applicationContext instanceof AbstractC14932g)) {
            context = null;
        }
        AbstractC14932g abstractC14932g = (AbstractC14932g) context;
        if (abstractC14932g != null) {
            this.f10191a = abstractC14932g.mo19403n();
            try {
                ((AbstractC20576b) this.f10196f).f57683a = this;
                BackupWorkResult m15125Kj = ((C18370c) this.f10196f).m15125Kj(getInputData().m1305b("backupNow", false), getRunAttemptCount());
                String str = "Backup worker is finished. Result is " + m15125Kj;
                int ordinal = m15125Kj.ordinal();
                if (ordinal == 0) {
                    abstractC0414a = new ListenableWorker.AbstractC0414a.C0417c();
                    l.d(abstractC0414a, "Result.success()");
                } else if (ordinal != 1) {
                    throw new s1.i();
                } else {
                    abstractC0414a = new ListenableWorker.AbstractC0414a.C0416b();
                    l.d(abstractC0414a, "Result.retry()");
                }
                ((AbstractC20574a) this.f10196f).mo9806c();
                return abstractC0414a;
            } catch (Throwable th) {
                ((AbstractC20574a) this.f10196f).mo9806c();
                throw th;
            }
        }
        throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
    }
}
