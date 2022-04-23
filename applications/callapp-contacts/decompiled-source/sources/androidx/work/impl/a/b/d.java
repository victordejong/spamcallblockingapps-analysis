package androidx.work.impl.a.b;

import android.content.Context;
import androidx.work.impl.utils.b.a;
import androidx.work.k;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/d.class */
public abstract class d<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f6001d = k.a("ConstraintTracker");

    /* renamed from: a  reason: collision with root package name */
    protected final a f6002a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f6003b;

    /* renamed from: c  reason: collision with root package name */
    T f6004c;
    private final Object e = new Object();
    private final Set<androidx.work.impl.a.a<T>> f = new LinkedHashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, a aVar) {
        this.f6003b = context.getApplicationContext();
        this.f6002a = aVar;
    }

    public final void a(androidx.work.impl.a.a<T> aVar) {
        synchronized (this.e) {
            if (this.f.add(aVar)) {
                if (this.f.size() == 1) {
                    this.f6004c = b();
                    k.a();
                    String.format("%s: initial state = %s", getClass().getSimpleName(), this.f6004c);
                    c();
                }
                aVar.a(this.f6004c);
            }
        }
    }

    public final void a(T t) {
        synchronized (this.e) {
            T t2 = this.f6004c;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.f6004c = t;
                final ArrayList arrayList = new ArrayList(this.f);
                this.f6002a.a().execute(new Runnable() { // from class: androidx.work.impl.a.b.d.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        for (androidx.work.impl.a.a aVar : arrayList) {
                            aVar.a(d.this.f6004c);
                        }
                    }
                });
            }
        }
    }

    public abstract T b();

    public final void b(androidx.work.impl.a.a<T> aVar) {
        synchronized (this.e) {
            if (this.f.remove(aVar) && this.f.isEmpty()) {
                d();
            }
        }
    }

    public abstract void c();

    public abstract void d();
}
