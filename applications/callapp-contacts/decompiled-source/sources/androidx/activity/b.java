package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:androidx/activity/b.class */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f535a;

    /* renamed from: b  reason: collision with root package name */
    private CopyOnWriteArrayList<a> f536b = new CopyOnWriteArrayList<>();

    public b(boolean z) {
        this.f535a = z;
    }

    public final void a() {
        Iterator<a> it2 = this.f536b.iterator();
        while (it2.hasNext()) {
            it2.next().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(a aVar) {
        this.f536b.add(aVar);
    }

    public abstract void b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(a aVar) {
        this.f536b.remove(aVar);
    }
}
