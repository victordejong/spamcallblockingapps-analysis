package androidx.work.impl.a.a;

import androidx.work.impl.a.b.d;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/c.class */
public abstract class c<T> implements androidx.work.impl.a.a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f5987a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public T f5988b;

    /* renamed from: c  reason: collision with root package name */
    private d<T> f5989c;

    /* renamed from: d  reason: collision with root package name */
    private a f5990d;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/c$a.class */
    public interface a {
        void a(List<String> list);

        void b(List<String> list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(d<T> dVar) {
        this.f5989c = dVar;
    }

    private void a(a aVar, T t) {
        if (!this.f5987a.isEmpty() && aVar != null) {
            if (t == null || b(t)) {
                aVar.b(this.f5987a);
            } else {
                aVar.a(this.f5987a);
            }
        }
    }

    public final void a() {
        if (!this.f5987a.isEmpty()) {
            this.f5987a.clear();
            this.f5989c.b(this);
        }
    }

    public final void a(a aVar) {
        if (this.f5990d != aVar) {
            this.f5990d = aVar;
            a(aVar, this.f5988b);
        }
    }

    public final void a(Iterable<WorkSpec> iterable) {
        this.f5987a.clear();
        for (WorkSpec workSpec : iterable) {
            if (a(workSpec)) {
                this.f5987a.add(workSpec.id);
            }
        }
        if (this.f5987a.isEmpty()) {
            this.f5989c.b(this);
        } else {
            this.f5989c.a((androidx.work.impl.a.a) this);
        }
        a(this.f5990d, this.f5988b);
    }

    @Override // androidx.work.impl.a.a
    public final void a(T t) {
        this.f5988b = t;
        a(this.f5990d, t);
    }

    abstract boolean a(WorkSpec workSpec);

    public abstract boolean b(T t);
}
