package androidx.work.impl.p015m;

import android.content.Context;
import androidx.work.AbstractC1404j;
import androidx.work.impl.p015m.p016e.AbstractC1303c;
import androidx.work.impl.p015m.p016e.C1301a;
import androidx.work.impl.p015m.p016e.C1302b;
import androidx.work.impl.p015m.p016e.C1305d;
import androidx.work.impl.p015m.p016e.C1306e;
import androidx.work.impl.p015m.p016e.C1307f;
import androidx.work.impl.p015m.p016e.C1308g;
import androidx.work.impl.p015m.p016e.C1309h;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.m.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/d.class */
public class C1300d implements AbstractC1303c.AbstractC1304a {

    /* renamed from: a */
    private static final String f5510a = AbstractC1404j.m30159f("WorkConstraintsTracker");

    /* renamed from: b */
    private final AbstractC1299c f5511b;

    /* renamed from: c */
    private final AbstractC1303c<?>[] f5512c;

    /* renamed from: d */
    private final Object f5513d = new Object();

    public C1300d(Context context, AbstractC1399a abstractC1399a, AbstractC1299c abstractC1299c) {
        Context applicationContext = context.getApplicationContext();
        this.f5511b = abstractC1299c;
        this.f5512c = new AbstractC1303c[]{new C1301a(applicationContext, abstractC1399a), new C1302b(applicationContext, abstractC1399a), new C1309h(applicationContext, abstractC1399a), new C1305d(applicationContext, abstractC1399a), new C1308g(applicationContext, abstractC1399a), new C1307f(applicationContext, abstractC1399a), new C1306e(applicationContext, abstractC1399a)};
    }

    @Override // androidx.work.impl.p015m.p016e.AbstractC1303c.AbstractC1304a
    /* renamed from: a */
    public void mo30336a(List<String> list) {
        synchronized (this.f5513d) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (m30347c(str)) {
                    AbstractC1404j.m30161c().mo30158a(f5510a, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            AbstractC1299c abstractC1299c = this.f5511b;
            if (abstractC1299c != null) {
                abstractC1299c.mo30164f(arrayList);
            }
        }
    }

    @Override // androidx.work.impl.p015m.p016e.AbstractC1303c.AbstractC1304a
    /* renamed from: b */
    public void mo30335b(List<String> list) {
        synchronized (this.f5513d) {
            AbstractC1299c abstractC1299c = this.f5511b;
            if (abstractC1299c != null) {
                abstractC1299c.mo30168b(list);
            }
        }
    }

    /* renamed from: c */
    public boolean m30347c(String str) {
        AbstractC1303c<?>[] abstractC1303cArr;
        synchronized (this.f5513d) {
            for (AbstractC1303c<?> abstractC1303c : this.f5512c) {
                if (abstractC1303c.m30341d(str)) {
                    AbstractC1404j.m30161c().mo30158a(f5510a, String.format("Work %s constrained by %s", str, abstractC1303c.getClass().getSimpleName()), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: d */
    public void m30346d(Iterable<C1344p> iterable) {
        synchronized (this.f5513d) {
            for (AbstractC1303c<?> abstractC1303c : this.f5512c) {
                abstractC1303c.m30338g(null);
            }
            for (AbstractC1303c<?> abstractC1303c2 : this.f5512c) {
                abstractC1303c2.m30340e(iterable);
            }
            for (AbstractC1303c<?> abstractC1303c3 : this.f5512c) {
                abstractC1303c3.m30338g(this);
            }
        }
    }

    /* renamed from: e */
    public void m30345e() {
        synchronized (this.f5513d) {
            for (AbstractC1303c<?> abstractC1303c : this.f5512c) {
                abstractC1303c.m30339f();
            }
        }
    }
}
