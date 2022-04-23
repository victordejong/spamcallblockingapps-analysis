package androidx.work.impl.background.a;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.Configuration;
import androidx.work.WorkerParameters;
import androidx.work.impl.a.c;
import androidx.work.impl.a.d;
import androidx.work.impl.e;
import androidx.work.impl.j;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.b.a;
import androidx.work.impl.utils.f;
import androidx.work.k;
import androidx.work.t;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/a/b.class */
public class b implements c, androidx.work.impl.b, e {

    /* renamed from: b  reason: collision with root package name */
    private static final String f6025b = k.a("GreedyScheduler");

    /* renamed from: a  reason: collision with root package name */
    Boolean f6026a;

    /* renamed from: c  reason: collision with root package name */
    private final Context f6027c;

    /* renamed from: d  reason: collision with root package name */
    private final j f6028d;
    private final d e;
    private a g;
    private boolean h;
    private final Set<WorkSpec> f = new HashSet();
    private final Object i = new Object();

    public b(Context context, Configuration configuration, a aVar, j jVar) {
        this.f6027c = context;
        this.f6028d = jVar;
        this.e = new d(context, aVar, this);
        this.g = new a(this, configuration.getRunnableScheduler());
    }

    public b(Context context, j jVar, d dVar) {
        this.f6027c = context;
        this.f6028d = jVar;
        this.e = dVar;
    }

    private void b() {
        this.f6026a = Boolean.valueOf(f.a(this.f6027c, this.f6028d.f6117b));
    }

    private void c() {
        if (!this.h) {
            this.f6028d.f.a(this);
            this.h = true;
        }
    }

    @Override // androidx.work.impl.e
    public final void a(String str) {
        Runnable remove;
        if (this.f6026a == null) {
            b();
        }
        if (!this.f6026a.booleanValue()) {
            k.a();
            return;
        }
        c();
        k.a();
        String.format("Cancelling work ID %s", str);
        a aVar = this.g;
        if (!(aVar == null || (remove = aVar.f6022d.remove(str)) == null)) {
            aVar.f6021c.a(remove);
        }
        this.f6028d.c(str);
    }

    @Override // androidx.work.impl.b
    public final void a(String str, boolean z) {
        synchronized (this.i) {
            Iterator<WorkSpec> it2 = this.f.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                WorkSpec next = it2.next();
                if (next.id.equals(str)) {
                    k.a();
                    String.format("Stopping tracking for %s", str);
                    this.f.remove(next);
                    this.e.a(this.f);
                    break;
                }
            }
        }
    }

    @Override // androidx.work.impl.a.c
    public final void a(List<String> list) {
        for (String str : list) {
            k.a();
            String.format("Constraints met: Scheduling work ID %s", str);
            this.f6028d.a(str, (WorkerParameters.a) null);
        }
    }

    @Override // androidx.work.impl.e
    public final void a(WorkSpec... workSpecArr) {
        if (this.f6026a == null) {
            b();
        }
        if (!this.f6026a.booleanValue()) {
            k.a();
            return;
        }
        c();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (WorkSpec workSpec : workSpecArr) {
            long calculateNextRunTime = workSpec.calculateNextRunTime();
            long currentTimeMillis = System.currentTimeMillis();
            if (workSpec.state == t.a.ENQUEUED) {
                if (currentTimeMillis < calculateNextRunTime) {
                    a aVar = this.g;
                    if (aVar != null) {
                        aVar.a(workSpec);
                    }
                } else if (!workSpec.hasConstraints()) {
                    k.a();
                    String.format("Starting work for %s", workSpec.id);
                    this.f6028d.a(workSpec.id, (WorkerParameters.a) null);
                } else if (Build.VERSION.SDK_INT >= 23 && workSpec.constraints.f5968d) {
                    k.a();
                    String.format("Ignoring WorkSpec %s, Requires device idle.", workSpec);
                } else if (Build.VERSION.SDK_INT < 24 || !workSpec.constraints.a()) {
                    hashSet.add(workSpec);
                    hashSet2.add(workSpec.id);
                } else {
                    k.a();
                    String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", workSpec);
                }
            }
        }
        synchronized (this.i) {
            if (!hashSet.isEmpty()) {
                k.a();
                String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2));
                this.f.addAll(hashSet);
                this.e.a(this.f);
            }
        }
    }

    @Override // androidx.work.impl.e
    public final boolean a() {
        return false;
    }

    @Override // androidx.work.impl.a.c
    public final void b(List<String> list) {
        for (String str : list) {
            k.a();
            String.format("Constraints not met: Cancelling work ID %s", str);
            this.f6028d.c(str);
        }
    }
}
