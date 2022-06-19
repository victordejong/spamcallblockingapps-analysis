package androidx.work.impl.background.p088a;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.AbstractC3145k;
import androidx.work.C3163t;
import androidx.work.Configuration;
import androidx.work.WorkerParameters;
import androidx.work.impl.AbstractC3027b;
import androidx.work.impl.AbstractC3048e;
import androidx.work.impl.C3068j;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.p085a.AbstractC3025c;
import androidx.work.impl.p085a.C3026d;
import androidx.work.impl.utils.C3125f;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.work.impl.background.a.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/a/b.class */
public class C3030b implements AbstractC3025c, AbstractC3027b, AbstractC3048e {

    /* renamed from: b */
    private static final String f11213b = AbstractC3145k.m39275a("GreedyScheduler");

    /* renamed from: a */
    Boolean f11214a;

    /* renamed from: c */
    private final Context f11215c;

    /* renamed from: d */
    private final C3068j f11216d;

    /* renamed from: e */
    private final C3026d f11217e;

    /* renamed from: g */
    private C3028a f11219g;

    /* renamed from: h */
    private boolean f11220h;

    /* renamed from: f */
    private final Set<WorkSpec> f11218f = new HashSet();

    /* renamed from: i */
    private final Object f11221i = new Object();

    public C3030b(Context context, Configuration configuration, AbstractC3119a abstractC3119a, C3068j c3068j) {
        this.f11215c = context;
        this.f11216d = c3068j;
        this.f11217e = new C3026d(context, abstractC3119a, this);
        this.f11219g = new C3028a(this, configuration.getRunnableScheduler());
    }

    public C3030b(Context context, C3068j c3068j, C3026d c3026d) {
        this.f11215c = context;
        this.f11216d = c3068j;
        this.f11217e = c3026d;
    }

    /* renamed from: b */
    private void m39436b() {
        this.f11214a = Boolean.valueOf(C3125f.m39293a(this.f11215c, this.f11216d.f11354b));
    }

    /* renamed from: c */
    private void m39435c() {
        if (!this.f11220h) {
            this.f11216d.f11358f.m39398a(this);
            this.f11220h = true;
        }
    }

    @Override // androidx.work.impl.AbstractC3048e
    /* renamed from: a */
    public final void mo39387a(String str) {
        Runnable remove;
        if (this.f11214a == null) {
            m39436b();
        }
        if (!this.f11214a.booleanValue()) {
            AbstractC3145k.m39277a();
            return;
        }
        m39435c();
        AbstractC3145k.m39277a();
        String.format("Cancelling work ID %s", str);
        C3028a c3028a = this.f11219g;
        if (c3028a != null && (remove = c3028a.f11210d.remove(str)) != null) {
            c3028a.f11209c.mo39269a(remove);
        }
        this.f11216d.m39356c(str);
    }

    @Override // androidx.work.impl.AbstractC3027b
    /* renamed from: a */
    public final void mo39374a(String str, boolean z) {
        synchronized (this.f11221i) {
            Iterator<WorkSpec> it2 = this.f11218f.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                WorkSpec next = it2.next();
                if (next.f11397id.equals(str)) {
                    AbstractC3145k.m39277a();
                    String.format("Stopping tracking for %s", str);
                    this.f11218f.remove(next);
                    this.f11217e.m39441a(this.f11218f);
                    break;
                }
            }
        }
    }

    @Override // androidx.work.impl.p085a.AbstractC3025c
    /* renamed from: a */
    public final void mo39282a(List<String> list) {
        for (String str : list) {
            AbstractC3145k.m39277a();
            String.format("Constraints met: Scheduling work ID %s", str);
            this.f11216d.m39361a(str, (WorkerParameters.C2985a) null);
        }
    }

    @Override // androidx.work.impl.AbstractC3048e
    /* renamed from: a */
    public final void mo39386a(WorkSpec... workSpecArr) {
        if (this.f11214a == null) {
            m39436b();
        }
        if (!this.f11214a.booleanValue()) {
            AbstractC3145k.m39277a();
            return;
        }
        m39435c();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (WorkSpec workSpec : workSpecArr) {
            long calculateNextRunTime = workSpec.calculateNextRunTime();
            long currentTimeMillis = System.currentTimeMillis();
            if (workSpec.state == C3163t.EnumC3164a.ENQUEUED) {
                if (currentTimeMillis < calculateNextRunTime) {
                    C3028a c3028a = this.f11219g;
                    if (c3028a != null) {
                        c3028a.m39437a(workSpec);
                    }
                } else if (!workSpec.hasConstraints()) {
                    AbstractC3145k.m39277a();
                    String.format("Starting work for %s", workSpec.f11397id);
                    this.f11216d.m39361a(workSpec.f11397id, (WorkerParameters.C2985a) null);
                } else if (Build.VERSION.SDK_INT >= 23 && workSpec.constraints.f11132d) {
                    AbstractC3145k.m39277a();
                    String.format("Ignoring WorkSpec %s, Requires device idle.", workSpec);
                } else if (Build.VERSION.SDK_INT < 24 || !workSpec.constraints.m39517a()) {
                    hashSet.add(workSpec);
                    hashSet2.add(workSpec.f11397id);
                } else {
                    AbstractC3145k.m39277a();
                    String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", workSpec);
                }
            }
        }
        synchronized (this.f11221i) {
            if (!hashSet.isEmpty()) {
                AbstractC3145k.m39277a();
                String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2));
                this.f11218f.addAll(hashSet);
                this.f11217e.m39441a(this.f11218f);
            }
        }
    }

    @Override // androidx.work.impl.AbstractC3048e
    /* renamed from: a */
    public final boolean mo39388a() {
        return false;
    }

    @Override // androidx.work.impl.p085a.AbstractC3025c
    /* renamed from: b */
    public final void mo39280b(List<String> list) {
        for (String str : list) {
            AbstractC3145k.m39277a();
            String.format("Constraints not met: Cancelling work ID %s", str);
            this.f11216d.m39356c(str);
        }
    }
}
