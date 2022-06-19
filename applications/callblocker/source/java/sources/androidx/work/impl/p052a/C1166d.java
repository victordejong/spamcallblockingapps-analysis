package androidx.work.impl.p052a;

import android.content.Context;
import androidx.work.AbstractC1293l;
import androidx.work.impl.p052a.p053a.AbstractC1146c;
import androidx.work.impl.p052a.p053a.C1144a;
import androidx.work.impl.p052a.p053a.C1145b;
import androidx.work.impl.p052a.p053a.C1148d;
import androidx.work.impl.p052a.p053a.C1149e;
import androidx.work.impl.p052a.p053a.C1150f;
import androidx.work.impl.p052a.p053a.C1151g;
import androidx.work.impl.p052a.p053a.C1152h;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.p058b.AbstractC1271a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.a.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/d.class */
public class C1166d implements AbstractC1146c.AbstractC1147a {

    /* renamed from: a */
    private static final String f3974a = AbstractC1293l.m17541a("WorkConstraintsTracker");

    /* renamed from: b */
    private final AbstractC1165c f3975b;

    /* renamed from: c */
    private final AbstractC1146c<?>[] f3976c;

    /* renamed from: d */
    private final Object f3977d = new Object();

    public C1166d(Context context, AbstractC1271a abstractC1271a, AbstractC1165c abstractC1165c) {
        Context applicationContext = context.getApplicationContext();
        this.f3975b = abstractC1165c;
        this.f3976c = new AbstractC1146c[]{new C1144a(applicationContext, abstractC1271a), new C1145b(applicationContext, abstractC1271a), new C1152h(applicationContext, abstractC1271a), new C1148d(applicationContext, abstractC1271a), new C1151g(applicationContext, abstractC1271a), new C1150f(applicationContext, abstractC1271a), new C1149e(applicationContext, abstractC1271a)};
    }

    /* renamed from: a */
    public void m17831a() {
        synchronized (this.f3977d) {
            for (AbstractC1146c<?> abstractC1146c : this.f3976c) {
                abstractC1146c.m17869a();
            }
        }
    }

    /* renamed from: a */
    public void m17830a(Iterable<C1191p> iterable) {
        synchronized (this.f3977d) {
            for (AbstractC1146c<?> abstractC1146c : this.f3976c) {
                abstractC1146c.m17868a((AbstractC1146c.AbstractC1147a) null);
            }
            for (AbstractC1146c<?> abstractC1146c2 : this.f3976c) {
                abstractC1146c2.m17866a(iterable);
            }
            for (AbstractC1146c<?> abstractC1146c3 : this.f3976c) {
                abstractC1146c3.m17868a((AbstractC1146c.AbstractC1147a) this);
            }
        }
    }

    @Override // androidx.work.impl.p052a.p053a.AbstractC1146c.AbstractC1147a
    /* renamed from: a */
    public void mo17828a(List<String> list) {
        synchronized (this.f3977d) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (m17829a(str)) {
                    AbstractC1293l.m17543a().mo17539b(f3974a, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            if (this.f3975b != null) {
                this.f3975b.mo17557a(arrayList);
            }
        }
    }

    /* renamed from: a */
    public boolean m17829a(String str) {
        boolean z = false;
        synchronized (this.f3977d) {
            AbstractC1146c<?>[] abstractC1146cArr = this.f3976c;
            int length = abstractC1146cArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                }
                AbstractC1146c<?> abstractC1146c = abstractC1146cArr[i];
                if (abstractC1146c.m17864a(str)) {
                    AbstractC1293l.m17543a().mo17539b(f3974a, String.format("Work %s constrained by %s", str, abstractC1146c.getClass().getSimpleName()), new Throwable[0]);
                    break;
                }
                i++;
            }
        }
        return z;
    }

    @Override // androidx.work.impl.p052a.p053a.AbstractC1146c.AbstractC1147a
    /* renamed from: b */
    public void mo17827b(List<String> list) {
        synchronized (this.f3977d) {
            if (this.f3975b != null) {
                this.f3975b.mo17556b(list);
            }
        }
    }
}
