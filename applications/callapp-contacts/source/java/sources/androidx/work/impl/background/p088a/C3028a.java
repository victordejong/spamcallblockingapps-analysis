package androidx.work.impl.background.p088a;

import androidx.work.AbstractC3145k;
import androidx.work.AbstractC3161r;
import androidx.work.impl.model.WorkSpec;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.work.impl.background.a.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/a/a.class */
public final class C3028a {

    /* renamed from: a */
    static final String f11207a = AbstractC3145k.m39275a("DelayedWorkTracker");

    /* renamed from: b */
    final C3030b f11208b;

    /* renamed from: c */
    final AbstractC3161r f11209c;

    /* renamed from: d */
    final Map<String, Runnable> f11210d = new HashMap();

    public C3028a(C3030b c3030b, AbstractC3161r abstractC3161r) {
        this.f11208b = c3030b;
        this.f11209c = abstractC3161r;
    }

    /* renamed from: a */
    public final void m39437a(final WorkSpec workSpec) {
        Runnable remove = this.f11210d.remove(workSpec.f11397id);
        if (remove != null) {
            this.f11209c.mo39269a(remove);
        }
        Runnable runnable = new Runnable() { // from class: androidx.work.impl.background.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3145k.m39277a();
                String str = C3028a.f11207a;
                String.format("Scheduling work %s", workSpec.f11397id);
                C3028a.this.f11208b.mo39386a(workSpec);
            }
        };
        this.f11210d.put(workSpec.f11397id, runnable);
        long currentTimeMillis = System.currentTimeMillis();
        this.f11209c.mo39270a(workSpec.calculateNextRunTime() - currentTimeMillis, runnable);
    }
}
