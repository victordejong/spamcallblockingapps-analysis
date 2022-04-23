package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC0555f;
import androidx.work.impl.k.d;
import androidx.work.impl.p006k.AbstractC0579c;
import androidx.work.impl.p009l.C0589j;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.background.systemalarm.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/c.class */
class C0563c {

    /* renamed from: e */
    private static final String f2998e = AbstractC0555f.m11738f("ConstraintsCmdHandler");

    /* renamed from: a */
    private final Context f2999a;

    /* renamed from: b */
    private final int f3000b;

    /* renamed from: c */
    private final e f3001c;

    /* renamed from: d */
    private final d f3002d;

    C0563c(Context context, int i, e eVar) {
        this.f2999a = context;
        this.f3000b = i;
        this.f3001c = eVar;
        this.f3002d = new d(context, eVar.f(), (AbstractC0579c) null);
    }

    /* renamed from: a */
    void m11728a() {
        List<C0589j> q = this.f3001c.g().n().y().m11648q();
        ConstraintProxy.m11734a(this.f2999a, q);
        this.f3002d.d(q);
        ArrayList<C0589j> arrayList = new ArrayList(q.size());
        long currentTimeMillis = System.currentTimeMillis();
        for (C0589j jVar : q) {
            String str = jVar.f3085a;
            if (currentTimeMillis >= jVar.m11668a() && (!jVar.m11667b() || this.f3002d.c(str))) {
                arrayList.add(jVar);
            }
        }
        for (C0589j jVar2 : arrayList) {
            String str2 = jVar2.f3085a;
            final Intent c = b.c(this.f2999a, str2);
            AbstractC0555f.m11741c().m11743a(f2998e, String.format("Creating a delay_met command for workSpec with id (%s)", str2), new Throwable[0]);
            final e eVar = this.f3001c;
            final int i = this.f3000b;
            eVar.k(new Runnable(eVar, c, i) { // from class: androidx.work.impl.background.systemalarm.e$b

                /* renamed from: b */
                private final e f3004b;

                /* renamed from: c */
                private final Intent f3005c;

                /* renamed from: d */
                private final int f3006d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f3004b = eVar;
                    this.f3005c = c;
                    this.f3006d = i;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.f3004b.b(this.f3005c, this.f3006d);
                }
            });
        }
        this.f3002d.e();
    }
}
