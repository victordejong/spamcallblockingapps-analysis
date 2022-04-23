package androidx.recyclerview.widget;

import androidx.b.d;
import androidx.b.g;
import androidx.core.e.c;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    final g<RecyclerView.v, a> f5501a = new g<>();

    /* renamed from: b  reason: collision with root package name */
    final d<RecyclerView.v> f5502b = new d<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q$a.class */
    public static final class a {

        /* renamed from: d  reason: collision with root package name */
        static c.a<a> f5503d = new c.b(20);

        /* renamed from: a  reason: collision with root package name */
        int f5504a;

        /* renamed from: b  reason: collision with root package name */
        RecyclerView.f.b f5505b;

        /* renamed from: c  reason: collision with root package name */
        RecyclerView.f.b f5506c;

        private a() {
        }

        static a a() {
            a a2 = f5503d.a();
            a aVar = a2;
            if (a2 == null) {
                aVar = new a();
            }
            return aVar;
        }

        static void a(a aVar) {
            aVar.f5504a = 0;
            aVar.f5505b = null;
            aVar.f5506c = null;
            f5503d.a(aVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void b() {
            do {
            } while (f5503d.a() != null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q$b.class */
    public interface b {
        void a(RecyclerView.v vVar);

        void a(RecyclerView.v vVar, RecyclerView.f.b bVar, RecyclerView.f.b bVar2);

        void b(RecyclerView.v vVar, RecyclerView.f.b bVar, RecyclerView.f.b bVar2);

        void c(RecyclerView.v vVar, RecyclerView.f.b bVar, RecyclerView.f.b bVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final RecyclerView.f.b a(RecyclerView.v vVar, int i) {
        a c2;
        RecyclerView.f.b bVar;
        int a2 = this.f5501a.a(vVar);
        if (a2 < 0 || (c2 = this.f5501a.c(a2)) == null || (c2.f5504a & i) == 0) {
            return null;
        }
        c2.f5504a &= i ^ (-1);
        if (i == 4) {
            bVar = c2.f5505b;
        } else if (i == 8) {
            bVar = c2.f5506c;
        } else {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        }
        if ((c2.f5504a & 12) == 0) {
            this.f5501a.d(a2);
            a.a(c2);
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final RecyclerView.v a(long j) {
        return this.f5502b.a(j, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f5501a.clear();
        this.f5502b.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, RecyclerView.v vVar) {
        this.f5502b.b(j, vVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(RecyclerView.v vVar, RecyclerView.f.b bVar) {
        a aVar = this.f5501a.get(vVar);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = a.a();
            this.f5501a.put(vVar, aVar2);
        }
        aVar2.f5505b = bVar;
        aVar2.f5504a |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b bVar) {
        for (int size = this.f5501a.size() - 1; size >= 0; size--) {
            RecyclerView.v b2 = this.f5501a.b(size);
            a d2 = this.f5501a.d(size);
            if ((d2.f5504a & 3) == 3) {
                bVar.a(b2);
            } else if ((d2.f5504a & 1) != 0) {
                if (d2.f5505b == null) {
                    bVar.a(b2);
                } else {
                    bVar.a(b2, d2.f5505b, d2.f5506c);
                }
            } else if ((d2.f5504a & 14) == 14) {
                bVar.b(b2, d2.f5505b, d2.f5506c);
            } else if ((d2.f5504a & 12) == 12) {
                bVar.c(b2, d2.f5505b, d2.f5506c);
            } else if ((d2.f5504a & 4) != 0) {
                bVar.a(b2, d2.f5505b, null);
            } else if ((d2.f5504a & 8) != 0) {
                bVar.b(b2, d2.f5505b, d2.f5506c);
            }
            a.a(d2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(RecyclerView.v vVar) {
        a aVar = this.f5501a.get(vVar);
        return (aVar == null || (aVar.f5504a & 1) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(RecyclerView.v vVar, RecyclerView.f.b bVar) {
        a aVar = this.f5501a.get(vVar);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = a.a();
            this.f5501a.put(vVar, aVar2);
        }
        aVar2.f5504a |= 2;
        aVar2.f5505b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(RecyclerView.v vVar) {
        a aVar = this.f5501a.get(vVar);
        return (aVar == null || (aVar.f5504a & 4) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(RecyclerView.v vVar) {
        a aVar = this.f5501a.get(vVar);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = a.a();
            this.f5501a.put(vVar, aVar2);
        }
        aVar2.f5504a |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(RecyclerView.v vVar, RecyclerView.f.b bVar) {
        a aVar = this.f5501a.get(vVar);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = a.a();
            this.f5501a.put(vVar, aVar2);
        }
        aVar2.f5506c = bVar;
        aVar2.f5504a |= 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(RecyclerView.v vVar) {
        a aVar = this.f5501a.get(vVar);
        if (aVar != null) {
            aVar.f5504a &= -2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(RecyclerView.v vVar) {
        int b2 = this.f5502b.b() - 1;
        while (true) {
            if (b2 < 0) {
                break;
            } else if (vVar == this.f5502b.c(b2)) {
                this.f5502b.a(b2);
                break;
            } else {
                b2--;
            }
        }
        a remove = this.f5501a.remove(vVar);
        if (remove != null) {
            a.a(remove);
        }
    }
}
