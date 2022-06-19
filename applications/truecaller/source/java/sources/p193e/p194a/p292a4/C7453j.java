package p193e.p194a.p292a4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a4.j */
/* loaded from: classes10-dex2jar.jar:e/a/a4/j.class */
public final class C7453j implements AbstractC7460m {

    /* renamed from: a */
    public final String f23694a;

    /* renamed from: b */
    public final List<AbstractC7460m> f23695b;

    /* renamed from: e.a.a4.j$a */
    /* loaded from: classes10-dex2jar.jar:e/a/a4/j$a.class */
    public static final class C7454a extends m implements l<AbstractC7460m, CharSequence> {

        /* renamed from: b */
        public static final C7454a f23696b = new C7454a();

        public C7454a() {
            super(1);
        }

        /* renamed from: d */
        public Object m29592d(Object obj) {
            AbstractC7460m abstractC7460m = (AbstractC7460m) obj;
            s1.z.c.l.e(abstractC7460m, "it");
            return abstractC7460m.getName();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C7453j(List<? extends AbstractC7460m> list) {
        s1.z.c.l.e(list, "conditionsList");
        this.f23695b = list;
        this.f23694a = i.O(list, " and ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C7454a.f23696b, 30);
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    /* renamed from: a */
    public boolean mo29587a() {
        boolean z;
        List<AbstractC7460m> list = this.f23695b;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    if (((AbstractC7460m) it.next()).mo29587a()) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    /* renamed from: b */
    public boolean mo29586b() {
        boolean z;
        List<AbstractC7460m> list = this.f23695b;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                z = true;
                if (it.hasNext()) {
                    if (!((AbstractC7460m) it.next()).mo29586b()) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    public String getName() {
        return this.f23694a;
    }
}
