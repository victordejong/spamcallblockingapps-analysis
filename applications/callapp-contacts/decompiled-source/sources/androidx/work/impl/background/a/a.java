package androidx.work.impl.background.a;

import androidx.work.impl.model.WorkSpec;
import androidx.work.k;
import androidx.work.r;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final String f6019a = k.a("DelayedWorkTracker");

    /* renamed from: b  reason: collision with root package name */
    final b f6020b;

    /* renamed from: c  reason: collision with root package name */
    final r f6021c;

    /* renamed from: d  reason: collision with root package name */
    final Map<String, Runnable> f6022d = new HashMap();

    public a(b bVar, r rVar) {
        this.f6020b = bVar;
        this.f6021c = rVar;
    }

    public final void a(final WorkSpec workSpec) {
        Runnable remove = this.f6022d.remove(workSpec.id);
        if (remove != null) {
            this.f6021c.a(remove);
        }
        Runnable runnable = new Runnable() { // from class: androidx.work.impl.background.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                k.a();
                String str = a.f6019a;
                String.format("Scheduling work %s", workSpec.id);
                a.this.f6020b.a(workSpec);
            }
        };
        this.f6022d.put(workSpec.id, runnable);
        long currentTimeMillis = System.currentTimeMillis();
        this.f6021c.a(workSpec.calculateNextRunTime() - currentTimeMillis, runnable);
    }
}
