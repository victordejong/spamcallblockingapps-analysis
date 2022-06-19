package androidx.work.impl.p085a;

import android.content.Context;
import androidx.work.AbstractC3145k;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.p085a.p086a.AbstractC3006c;
import androidx.work.impl.p085a.p086a.C3004a;
import androidx.work.impl.p085a.p086a.C3005b;
import androidx.work.impl.p085a.p086a.C3008d;
import androidx.work.impl.p085a.p086a.C3009e;
import androidx.work.impl.p085a.p086a.C3010f;
import androidx.work.impl.p085a.p086a.C3011g;
import androidx.work.impl.p085a.p086a.C3012h;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.a.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/d.class */
public final class C3026d implements AbstractC3006c.AbstractC3007a {

    /* renamed from: a */
    private static final String f11203a = AbstractC3145k.m39275a("WorkConstraintsTracker");

    /* renamed from: b */
    private final AbstractC3025c f11204b;

    /* renamed from: c */
    private final AbstractC3006c<?>[] f11205c;

    /* renamed from: d */
    private final Object f11206d = new Object();

    public C3026d(Context context, AbstractC3119a abstractC3119a, AbstractC3025c abstractC3025c) {
        Context applicationContext = context.getApplicationContext();
        this.f11204b = abstractC3025c;
        this.f11205c = new AbstractC3006c[]{new C3004a(applicationContext, abstractC3119a), new C3005b(applicationContext, abstractC3119a), new C3012h(applicationContext, abstractC3119a), new C3008d(applicationContext, abstractC3119a), new C3011g(applicationContext, abstractC3119a), new C3010f(applicationContext, abstractC3119a), new C3009e(applicationContext, abstractC3119a)};
    }

    C3026d(AbstractC3025c abstractC3025c, AbstractC3006c<?>[] abstractC3006cArr) {
        this.f11204b = abstractC3025c;
        this.f11205c = abstractC3006cArr;
    }

    /* renamed from: a */
    public final void m39442a() {
        synchronized (this.f11206d) {
            for (AbstractC3006c<?> abstractC3006c : this.f11205c) {
                abstractC3006c.m39461a();
            }
        }
    }

    /* renamed from: a */
    public final void m39441a(Iterable<WorkSpec> iterable) {
        synchronized (this.f11206d) {
            for (AbstractC3006c<?> abstractC3006c : this.f11205c) {
                abstractC3006c.m39460a((AbstractC3006c.AbstractC3007a) null);
            }
            for (AbstractC3006c<?> abstractC3006c2 : this.f11205c) {
                abstractC3006c2.m39458a(iterable);
            }
            for (AbstractC3006c<?> abstractC3006c3 : this.f11205c) {
                abstractC3006c3.m39460a((AbstractC3006c.AbstractC3007a) this);
            }
        }
    }

    @Override // androidx.work.impl.p085a.p086a.AbstractC3006c.AbstractC3007a
    /* renamed from: a */
    public final void mo39439a(List<String> list) {
        synchronized (this.f11206d) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (m39440a(str)) {
                    AbstractC3145k.m39277a();
                    String.format("Constraints met for %s", str);
                    arrayList.add(str);
                }
            }
            AbstractC3025c abstractC3025c = this.f11204b;
            if (abstractC3025c != null) {
                abstractC3025c.mo39282a(arrayList);
            }
        }
    }

    /* renamed from: a */
    public final boolean m39440a(String str) {
        AbstractC3006c<?>[] abstractC3006cArr;
        synchronized (this.f11206d) {
            for (AbstractC3006c<?> abstractC3006c : this.f11205c) {
                if (abstractC3006c.f11169b != 0 && abstractC3006c.mo39455b(abstractC3006c.f11169b) && abstractC3006c.f11168a.contains(str)) {
                    AbstractC3145k.m39277a();
                    String.format("Work %s constrained by %s", str, abstractC3006c.getClass().getSimpleName());
                    return false;
                }
            }
            return true;
        }
    }

    @Override // androidx.work.impl.p085a.p086a.AbstractC3006c.AbstractC3007a
    /* renamed from: b */
    public final void mo39438b(List<String> list) {
        synchronized (this.f11206d) {
            AbstractC3025c abstractC3025c = this.f11204b;
            if (abstractC3025c != null) {
                abstractC3025c.mo39280b(list);
            }
        }
    }
}
