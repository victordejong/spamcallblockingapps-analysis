package p193e.p194a.p1146q2;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.work.ListenableWorker;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.common.network.util.KnownEndpoints;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import org.apache.avro.Schema;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17834z0;
import p193e.p194a.p1050l5.p1051a.C17843z3;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p852i.p854a0.AbstractC14985c;
import p193e.p194a.p852i.p854a0.AbstractC14987f;
import p193e.p194a.p852i.p854a0.C14984b;
import p193e.p194a.p852i.p854a0.C14986e;
import s1.e0.x;
import s1.f0.r;
import s1.u.i;
import s1.u.s;
import s1.z.b.l;
import s1.z.c.m;
import x3.a0;
/* renamed from: e.a.q2.f0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/f0.class */
public final class C19499f0 extends AbstractC21765k {

    /* renamed from: b */
    public final String f54114b = "InstalledAppsHeartbeatWorkAction";

    /* renamed from: c */
    public final a<C20592g> f54115c;

    /* renamed from: d */
    public final a<AbstractC14985c> f54116d;

    /* renamed from: e */
    public final a<AbstractC19463a0> f54117e;

    /* renamed from: f */
    public final Context f54118f;

    /* renamed from: e.a.q2.f0$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/f0$a.class */
    public static final class C19500a extends m implements l<PackageInfo, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ List f54119b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19500a(List list) {
            super(1);
            this.f54119b = list;
        }

        /* renamed from: d */
        public Object m13268d(Object obj) {
            PackageInfo packageInfo = (PackageInfo) obj;
            List<String> list = this.f54119b;
            boolean z = true;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (String str : list) {
                    String str2 = packageInfo.packageName;
                    s1.z.c.l.d(str2, "packageInfo.packageName");
                    if (r.w(str2, str, true)) {
                        break;
                    }
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }
    }

    /* renamed from: e.a.q2.f0$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/f0$b.class */
    public static final class C19501b extends m implements l<PackageInfo, C14984b> {

        /* renamed from: b */
        public static final C19501b f54120b = new C19501b();

        public C19501b() {
            super(1);
        }

        /* renamed from: d */
        public Object m13267d(Object obj) {
            PackageInfo packageInfo = (PackageInfo) obj;
            String str = packageInfo.packageName;
            s1.z.c.l.d(str, "it.packageName");
            String str2 = packageInfo.versionName;
            s1.z.c.l.d(str2, "it.versionName");
            return new C14984b(str, str2, packageInfo.versionCode, packageInfo.firstInstallTime, packageInfo.lastUpdateTime);
        }
    }

    @Inject
    public C19499f0(a<C20592g> aVar, a<AbstractC14985c> aVar2, a<AbstractC19463a0> aVar3, Context context) {
        s1.z.c.l.e(aVar, "featuresRegistry");
        s1.z.c.l.e(aVar2, "installedPackagesDao");
        s1.z.c.l.e(aVar3, "eventsTracker");
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f54115c = aVar;
        this.f54116d = aVar2;
        this.f54117e = aVar3;
        this.f54118f = context;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a abstractC0414a;
        try {
            a0 execute = ((AbstractC14987f) C8367d.m28633a(KnownEndpoints.USERAPPS, AbstractC14987f.class)).get().execute();
            if (execute == null) {
                ListenableWorker.AbstractC0414a.C0415a c0415a = new ListenableWorker.AbstractC0414a.C0415a();
                s1.z.c.l.d(c0415a, "Result.failure()");
                return c0415a;
            } else if (!execute.b()) {
                int i = execute.a.e;
                if (i == 404) {
                    abstractC0414a = new ListenableWorker.AbstractC0414a.C0417c();
                    s1.z.c.l.d(abstractC0414a, "Result.success()");
                } else if (500 <= i && 599 >= i) {
                    abstractC0414a = new ListenableWorker.AbstractC0414a.C0416b();
                    s1.z.c.l.d(abstractC0414a, "Result.retry()");
                } else {
                    abstractC0414a = new ListenableWorker.AbstractC0414a.C0415a();
                    s1.z.c.l.d(abstractC0414a, "Result.failure()");
                }
                return abstractC0414a;
            } else {
                C14986e c14986e = (C14986e) execute.b;
                if (c14986e == null) {
                    ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
                    s1.z.c.l.d(c0417c, "Result.success()");
                    return c0417c;
                } else if (c14986e.m19314b() <= 0) {
                    ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
                    s1.z.c.l.d(c0417c2, "Result.success()");
                    return c0417c2;
                } else {
                    List<String> m19315a = c14986e.m19315a();
                    if (m19315a == null) {
                        ListenableWorker.AbstractC0414a.C0417c c0417c3 = new ListenableWorker.AbstractC0414a.C0417c();
                        s1.z.c.l.d(c0417c3, "Result.success()");
                        return c0417c3;
                    }
                    PackageManager packageManager = this.f54118f.getPackageManager();
                    if (packageManager != null) {
                        boolean z = false;
                        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
                        if (installedPackages != null) {
                            List<C14984b> r = x.r(x.k(x.g(i.h(installedPackages), new C19500a(m19315a)), C19501b.f54120b));
                            if (r.isEmpty()) {
                                r = null;
                            }
                            if (r != null) {
                                List<C14984b> all = ((AbstractC14985c) this.f54116d.get()).getAll();
                                ArrayList arrayList = new ArrayList();
                                for (Object obj : r) {
                                    if (!all.contains((C14984b) obj)) {
                                        arrayList.add(obj);
                                    }
                                }
                                List<C14984b> K0 = i.K0(arrayList, c14986e.m19314b());
                                ArrayList arrayList2 = new ArrayList(C25225a.m4004J(r, 10));
                                for (C14984b c14984b : r) {
                                    arrayList2.add(c14984b.f42757a);
                                }
                                ArrayList<C14984b> arrayList3 = new ArrayList();
                                for (Object obj2 : all) {
                                    if (!arrayList2.contains(((C14984b) obj2).f42757a)) {
                                        arrayList3.add(obj2);
                                    }
                                }
                                ((AbstractC14985c) this.f54116d.get()).m19316b(K0);
                                ((AbstractC14985c) this.f54116d.get()).m19317a(arrayList3);
                                List<List<C14984b>> k = i.k(K0, c14986e.m19313c());
                                ArrayList arrayList4 = new ArrayList(C25225a.m4004J(arrayList3, 10));
                                for (C14984b c14984b2 : arrayList3) {
                                    arrayList4.add(c14984b2.f42757a);
                                }
                                if (!k.isEmpty()) {
                                    for (List<C14984b> list : k) {
                                        if (!z) {
                                            m13269d(list, arrayList4);
                                            z = true;
                                        } else {
                                            m13269d(list, null);
                                        }
                                    }
                                } else {
                                    m13269d(s.a, arrayList4);
                                }
                                ListenableWorker.AbstractC0414a.C0417c c0417c4 = new ListenableWorker.AbstractC0414a.C0417c();
                                s1.z.c.l.d(c0417c4, "Result.success()");
                                return c0417c4;
                            }
                        }
                    }
                    ListenableWorker.AbstractC0414a.C0417c c0417c5 = new ListenableWorker.AbstractC0414a.C0417c();
                    s1.z.c.l.d(c0417c5, "Result.success()");
                    return c0417c5;
                }
            }
        } catch (Exception e) {
            if (!(e instanceof RuntimeException) && !(e instanceof IOException)) {
                C10480a.m26061I1(e);
            }
            ListenableWorker.AbstractC0414a.C0415a c0415a2 = new ListenableWorker.AbstractC0414a.C0415a();
            s1.z.c.l.d(c0415a2, "Result.failure()");
            return c0415a2;
        }
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f54114b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        boolean z;
        if (Build.VERSION.SDK_INT < 30) {
            C20592g c20592g = (C20592g) this.f54115c.get();
            if (c20592g.f57950j.m10941a(c20592g, C20592g.f57695p6[6]).isEnabled() && TrueApp.m36032b0().mo28540W()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final void m13269d(List<C14984b> list, List<? extends CharSequence> list2) {
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C14984b c14984b : list) {
            arrayList.add(new C17843z3(c14984b.f42757a, c14984b.f42758b, String.valueOf(c14984b.f42759c), String.valueOf(c14984b.f42760d), String.valueOf(c14984b.f42761e)));
        }
        Schema schema = C17834z0.f50759e;
        C17834z0.C17836b c17836b = new C17834z0.C17836b(null);
        c17836b.validate(c17836b.fields()[2], arrayList);
        c17836b.f50767a = arrayList;
        c17836b.fieldSetFlags()[2] = true;
        c17836b.validate(c17836b.fields()[3], list2);
        c17836b.f50768b = list2;
        c17836b.fieldSetFlags()[3] = true;
        ((AbstractC19463a0) this.f54117e.get()).mo13111a(c17836b.build());
    }
}
