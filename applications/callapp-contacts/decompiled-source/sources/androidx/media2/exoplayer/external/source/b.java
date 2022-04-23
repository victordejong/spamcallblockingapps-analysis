package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import android.os.Looper;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.w;
import androidx.media2.exoplayer.external.util.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/b.class */
public abstract class b implements t {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<t.b> f3592a = new ArrayList<>(1);

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<t.b> f3593b = new HashSet<>(1);

    /* renamed from: c  reason: collision with root package name */
    private final u.a f3594c = new u.a();

    /* renamed from: d  reason: collision with root package name */
    private Looper f3595d;
    private al e;

    /* JADX INFO: Access modifiers changed from: protected */
    public final u.a a(int i, t.a aVar) {
        return this.f3594c.a(i, aVar, 0L);
    }

    public final u.a a(t.a aVar) {
        return this.f3594c.a(0, aVar, 0L);
    }

    protected void a() {
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(Handler handler, u uVar) {
        u.a aVar = this.f3594c;
        a.a((handler == null || uVar == null) ? false : true);
        aVar.f3754c.add(new u.a.C0086a(handler, uVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(al alVar) {
        this.e = alVar;
        Iterator<t.b> it2 = this.f3592a.iterator();
        while (it2.hasNext()) {
            it2.next().a(this, alVar);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(t.b bVar) {
        a.a(this.f3595d);
        boolean isEmpty = this.f3593b.isEmpty();
        this.f3593b.add(bVar);
        if (isEmpty) {
            a();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(t.b bVar, w wVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f3595d;
        a.a(looper == null || looper == myLooper);
        al alVar = this.e;
        this.f3592a.add(bVar);
        if (this.f3595d == null) {
            this.f3595d = myLooper;
            this.f3593b.add(bVar);
            a(wVar);
        } else if (alVar != null) {
            a(bVar);
            bVar.a(this, alVar);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(u uVar) {
        u.a aVar = this.f3594c;
        Iterator<u.a.C0086a> it2 = aVar.f3754c.iterator();
        while (it2.hasNext()) {
            u.a.C0086a next = it2.next();
            if (next.f3757b == uVar) {
                aVar.f3754c.remove(next);
            }
        }
    }

    protected abstract void a(w wVar);

    protected void b() {
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void b(t.b bVar) {
        boolean isEmpty = this.f3593b.isEmpty();
        this.f3593b.remove(bVar);
        if ((!isEmpty) && this.f3593b.isEmpty()) {
            b();
        }
    }

    protected abstract void c();

    @Override // androidx.media2.exoplayer.external.source.t
    public final void c(t.b bVar) {
        this.f3592a.remove(bVar);
        if (this.f3592a.isEmpty()) {
            this.f3595d = null;
            this.e = null;
            this.f3593b.clear();
            c();
            return;
        }
        b(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean d() {
        return !this.f3593b.isEmpty();
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public Object e() {
        return null;
    }
}
