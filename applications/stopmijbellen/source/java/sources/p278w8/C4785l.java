package p278w8;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p267v8.AbstractC4654a;
import p267v8.C4655b;
/* renamed from: w8.l */
/* loaded from: classes2-dex2jar.jar:w8/l.class */
public class C4785l extends AbstractC4772c implements AbstractC4654a, Iterable<AbstractC4787n> {

    /* renamed from: g */
    public C4655b f14709g;

    /* renamed from: h */
    public boolean f14710h;

    /* renamed from: i */
    public boolean f14711i;

    /* renamed from: f */
    public final List<AbstractC4787n> f14708f = new ArrayList();

    /* renamed from: j */
    public boolean f14712j = true;

    public C4785l() {
        super(null);
        this.f14688d = "AND";
    }

    /* renamed from: j */
    public static C4785l m468j() {
        C4785l c4785l = new C4785l();
        c4785l.f14712j = false;
        c4785l.f14710h = true;
        return c4785l;
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        if (this.f14710h) {
            C4655b c4655b = new C4655b();
            mo465c(c4655b);
            this.f14709g = c4655b;
        }
        C4655b c4655b2 = this.f14709g;
        return c4655b2 == null ? "" : c4655b2.mo238b();
    }

    @Override // p278w8.AbstractC4787n
    /* renamed from: c */
    public void mo465c(C4655b c4655b) {
        int size = this.f14708f.size();
        if (this.f14712j && size > 0) {
            c4655b.f14350a.append((Object) "(");
        }
        for (int i = 0; i < size; i++) {
            AbstractC4787n abstractC4787n = this.f14708f.get(i);
            abstractC4787n.mo465c(c4655b);
            if (!this.f14711i && abstractC4787n.mo462g() && i < size - 1) {
                c4655b.m677d(abstractC4787n.mo463e());
            } else if (i < size - 1) {
                c4655b.f14350a.append((Object) ", ");
            }
        }
        if (!this.f14712j || size <= 0) {
            return;
        }
        c4655b.f14350a.append((Object) ")");
    }

    @Override // java.lang.Iterable
    public Iterator<AbstractC4787n> iterator() {
        return this.f14708f.iterator();
    }

    /* renamed from: k */
    public final C4785l m467k(String str, AbstractC4787n abstractC4787n) {
        if (abstractC4787n != null) {
            if (this.f14708f.size() > 0) {
                List<AbstractC4787n> list = this.f14708f;
                list.get(list.size() - 1).mo464d(str);
            }
            this.f14708f.add(abstractC4787n);
            this.f14710h = true;
        }
        return this;
    }

    public String toString() {
        C4655b c4655b = new C4655b();
        mo465c(c4655b);
        return c4655b.mo238b();
    }
}
