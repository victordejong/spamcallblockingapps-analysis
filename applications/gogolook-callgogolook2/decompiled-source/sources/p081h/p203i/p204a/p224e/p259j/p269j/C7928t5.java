package p081h.p203i.p204a.p224e.p259j.p269j;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.iid.FirebaseInstanceId;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p204a.p224e.p234c.C6777a;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p379z.C10062a;
/* renamed from: h.i.a.e.j.j.t5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/t5.class */
public class C7928t5 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: l */
    public static C7928t5 f18594l;

    /* renamed from: a */
    public final ThreadPoolExecutor f18595a;

    /* renamed from: b */
    public C9435c f18596b;

    /* renamed from: c */
    public C10062a f18597c;

    /* renamed from: e */
    public Context f18599e;

    /* renamed from: g */
    public String f18601g;

    /* renamed from: h */
    public C7860m f18602h;

    /* renamed from: k */
    public boolean f18605k;

    /* renamed from: f */
    public C6777a f18600f = null;

    /* renamed from: i */
    public C7797e6 f18603i = null;

    /* renamed from: j */
    public C7761a3 f18604j = null;

    /* renamed from: d */
    public FirebaseInstanceId f18598d = null;

    @VisibleForTesting(otherwise = 2)
    public C7928t5(@Nullable ThreadPoolExecutor threadPoolExecutor, @Nullable C6777a aVar, @Nullable C7797e6 e6Var, @Nullable C7761a3 a3Var, @Nullable FirebaseInstanceId firebaseInstanceId) {
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        this.f18595a = threadPoolExecutor2;
        this.f18595a.execute(new RunnableC7935u5(this));
    }

    /* renamed from: a */
    public static String m18879a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    @Nullable
    /* renamed from: c */
    public static C7928t5 m18867c() {
        if (f18594l == null) {
            synchronized (C7928t5.class) {
                try {
                    if (f18594l == null) {
                        try {
                            C9435c.m15163j();
                            f18594l = new C7928t5(null, null, null, null, null);
                        } catch (IllegalStateException e) {
                            return null;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18594l;
    }

    /* renamed from: a */
    public final void m18880a() {
        this.f18596b = C9435c.m15163j();
        this.f18597c = C10062a.m13511c();
        this.f18599e = this.f18596b.m15173b();
        this.f18601g = this.f18596b.m15169d().m15149b();
        this.f18602h = new C7860m();
        C7860m mVar = this.f18602h;
        mVar.f18407c = this.f18601g;
        mVar.f18408d = m18871b();
        this.f18602h.f18409e = new C7853l();
        this.f18602h.f18409e.f18396c = this.f18599e.getPackageName();
        C7853l lVar = this.f18602h.f18409e;
        lVar.f18397d = "1.0.0.206222422";
        lVar.f18398e = m18879a(this.f18599e);
        if (this.f18600f == null) {
            try {
                this.f18600f = C6777a.m21931a(this.f18599e, "FIREPERF");
            } catch (SecurityException e) {
                this.f18600f = null;
            }
        }
        if (this.f18603i == null) {
            this.f18603i = new C7797e6(this.f18599e, this.f18601g, 100L, 500L);
        }
        if (this.f18604j == null) {
            this.f18604j = C7761a3.m19547d();
        }
        this.f18605k = C7790e.m19481a(this.f18599e);
    }

    /* renamed from: a */
    public final void m18878a(@NonNull C7889p pVar, int i) {
        try {
            byte[] a = AbstractC7843j5.m19276a(pVar);
            C7889p pVar2 = new C7889p();
            AbstractC7843j5.m19275a(pVar2, a);
            this.f18595a.execute(new RunnableC7949w5(this, pVar2, i));
        } catch (C7830i5 e) {
        }
    }

    /* renamed from: a */
    public final void m18877a(@NonNull C7903r rVar) {
        boolean z;
        if (this.f18600f != null && this.f18597c.m13514b()) {
            String str = this.f18602h.f18408d;
            if (str == null || str.isEmpty()) {
                this.f18602h.f18408d = m18871b();
            }
            String str2 = this.f18602h.f18408d;
            if (!(str2 == null || str2.isEmpty())) {
                Context context = this.f18599e;
                ArrayList arrayList = new ArrayList();
                C7917t tVar = rVar.f18525d;
                if (tVar != null) {
                    arrayList.add(new C7971z5(tVar));
                }
                C7889p pVar = rVar.f18526e;
                if (pVar != null) {
                    arrayList.add(new C7963y5(pVar, context));
                }
                C7860m mVar = rVar.f18524c;
                if (mVar != null) {
                    arrayList.add(new C7780c5(mVar));
                }
                if (!arrayList.isEmpty()) {
                    int size = arrayList.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            z = true;
                            break;
                        }
                        Object obj = arrayList.get(i);
                        i++;
                        if (!((AbstractC7765a6) obj).mo18716a()) {
                            z = false;
                            break;
                        }
                    }
                } else {
                    z = false;
                }
                if (z) {
                    if (!this.f18603i.m19432a(rVar)) {
                        if (rVar.f18526e != null) {
                            this.f18604j.m19555a(EnumC7844j6.NETWORK_TRACE_EVENT_RATE_LIMITED.toString(), 1L);
                        } else if (rVar.f18525d != null) {
                            this.f18604j.m19555a(EnumC7844j6.TRACE_EVENT_RATE_LIMITED.toString(), 1L);
                        }
                        if (this.f18605k) {
                            C7889p pVar2 = rVar.f18526e;
                            if (pVar2 != null) {
                                String valueOf = String.valueOf(pVar2.f18496c);
                                if (valueOf.length() != 0) {
                                    "Rate Limited NetworkRequestMetric - ".concat(valueOf);
                                } else {
                                    new String("Rate Limited NetworkRequestMetric - ");
                                }
                            } else {
                                String valueOf2 = String.valueOf(rVar.f18525d.f18568c);
                                if (valueOf2.length() != 0) {
                                    "Rate Limited TraceMetric - ".concat(valueOf2);
                                } else {
                                    new String("Rate Limited TraceMetric - ");
                                }
                            }
                        }
                    } else {
                        try {
                            this.f18600f.m21928a(AbstractC7843j5.m19276a(rVar)).m21915a();
                        } catch (SecurityException e) {
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m18873a(@NonNull C7917t tVar, int i) {
        try {
            byte[] a = AbstractC7843j5.m19276a(tVar);
            C7917t tVar2 = new C7917t();
            AbstractC7843j5.m19275a(tVar2, a);
            this.f18595a.execute(new RunnableC7942v5(this, tVar2, i));
        } catch (C7830i5 e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 35);
            sb.append("Clone TraceMetric throws exception ");
            sb.append(valueOf);
            sb.toString();
        }
    }

    /* renamed from: a */
    public final void m18872a(boolean z) {
        this.f18595a.execute(new RunnableC7956x5(this, z));
    }

    /* renamed from: b */
    public final String m18871b() {
        if (!this.f18597c.m13514b()) {
            return null;
        }
        if (this.f18598d == null) {
            this.f18598d = FirebaseInstanceId.getInstance();
        }
        FirebaseInstanceId firebaseInstanceId = this.f18598d;
        if (firebaseInstanceId != null) {
            return firebaseInstanceId.getId();
        }
        return null;
    }

    /* renamed from: b */
    public final void m18870b(@NonNull C7889p pVar, int i) {
        if (this.f18597c.m13514b()) {
            if (this.f18605k) {
                Long l = pVar.f18506m;
                long j = 0;
                long longValue = l == null ? 0L : l.longValue();
                Long l2 = pVar.f18499f;
                if (l2 != null) {
                    j = l2.longValue();
                }
                String.format("Logging NetworkRequestMetric - %s %db %dms,", pVar.f18496c, Long.valueOf(j), Long.valueOf(longValue / 1000));
            }
            if (!C7797e6.m19435a()) {
                pVar.f18508o = null;
                if (this.f18605k) {
                    String.format("Sessions are disabled. Dropping all sessions from network request - %s", pVar.f18496c);
                }
            }
            C7903r rVar = new C7903r();
            rVar.f18524c = this.f18602h;
            rVar.f18524c.f18411g = Integer.valueOf(i);
            rVar.f18526e = pVar;
            m18877a(rVar);
        }
    }

    /* renamed from: b */
    public final void m18869b(@NonNull C7917t tVar, int i) {
        if (this.f18597c.m13514b()) {
            int i2 = 0;
            if (this.f18605k) {
                Long l = tVar.f18571f;
                String.format("Logging TraceMetric - %s %dms", tVar.f18568c, Long.valueOf((l == null ? 0L : l.longValue()) / 1000));
            }
            if (!C7797e6.m19435a()) {
                tVar.f18575j = null;
                if (this.f18605k) {
                    String.format("Sessions are disabled. Dropping all sessions from trace - %s", tVar.f18568c);
                }
            }
            C7903r rVar = new C7903r();
            rVar.f18524c = this.f18602h;
            rVar.f18524c.f18411g = Integer.valueOf(i);
            rVar.f18525d = tVar;
            Map<String, String> a = this.f18597c.m13519a();
            if (!a.isEmpty()) {
                rVar.f18524c.f18412h = new C7867n[a.size()];
                for (String str : a.keySet()) {
                    String str2 = a.get(str);
                    C7867n nVar = new C7867n();
                    nVar.f18421c = str;
                    nVar.f18422d = str2;
                    rVar.f18524c.f18412h[i2] = nVar;
                    i2++;
                }
            }
            m18877a(rVar);
        }
    }

    /* renamed from: b */
    public final void m18868b(boolean z) {
        this.f18603i.m19429a(z);
    }
}
