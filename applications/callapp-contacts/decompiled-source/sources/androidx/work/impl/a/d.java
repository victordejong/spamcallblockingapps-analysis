package androidx.work.impl.a;

import android.content.Context;
import androidx.work.impl.a.a.b;
import androidx.work.impl.a.a.c;
import androidx.work.impl.a.a.e;
import androidx.work.impl.a.a.f;
import androidx.work.impl.a.a.g;
import androidx.work.impl.a.a.h;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.b.a;
import androidx.work.k;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/d.class */
public final class d implements c.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6015a = k.a("WorkConstraintsTracker");

    /* renamed from: b  reason: collision with root package name */
    private final c f6016b;

    /* renamed from: c  reason: collision with root package name */
    private final c<?>[] f6017c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f6018d = new Object();

    public d(Context context, a aVar, c cVar) {
        Context applicationContext = context.getApplicationContext();
        this.f6016b = cVar;
        this.f6017c = new c[]{new androidx.work.impl.a.a.a(applicationContext, aVar), new b(applicationContext, aVar), new h(applicationContext, aVar), new androidx.work.impl.a.a.d(applicationContext, aVar), new g(applicationContext, aVar), new f(applicationContext, aVar), new e(applicationContext, aVar)};
    }

    d(c cVar, c<?>[] cVarArr) {
        this.f6016b = cVar;
        this.f6017c = cVarArr;
    }

    public final void a() {
        synchronized (this.f6018d) {
            for (c<?> cVar : this.f6017c) {
                cVar.a();
            }
        }
    }

    public final void a(Iterable<WorkSpec> iterable) {
        synchronized (this.f6018d) {
            for (c<?> cVar : this.f6017c) {
                cVar.a((c.a) null);
            }
            for (c<?> cVar2 : this.f6017c) {
                cVar2.a(iterable);
            }
            for (c<?> cVar3 : this.f6017c) {
                cVar3.a((c.a) this);
            }
        }
    }

    @Override // androidx.work.impl.a.a.c.a
    public final void a(List<String> list) {
        synchronized (this.f6018d) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (a(str)) {
                    k.a();
                    String.format("Constraints met for %s", str);
                    arrayList.add(str);
                }
            }
            c cVar = this.f6016b;
            if (cVar != null) {
                cVar.a(arrayList);
            }
        }
    }

    public final boolean a(String str) {
        c<?>[] cVarArr;
        synchronized (this.f6018d) {
            for (c<?> cVar : this.f6017c) {
                if (cVar.f5988b != 0 && cVar.b(cVar.f5988b) && cVar.f5987a.contains(str)) {
                    k.a();
                    String.format("Work %s constrained by %s", str, cVar.getClass().getSimpleName());
                    return false;
                }
            }
            return true;
        }
    }

    @Override // androidx.work.impl.a.a.c.a
    public final void b(List<String> list) {
        synchronized (this.f6018d) {
            c cVar = this.f6016b;
            if (cVar != null) {
                cVar.b(list);
            }
        }
    }
}
