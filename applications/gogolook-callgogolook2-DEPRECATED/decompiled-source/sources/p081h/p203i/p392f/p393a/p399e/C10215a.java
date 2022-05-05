package p081h.p203i.p392f.p393a.p399e;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p081h.p203i.p392f.p393a.p397c.C10211a;
import p081h.p203i.p392f.p393a.p397c.C10212b;
import p081h.p203i.p392f.p393a.p399e.C10215a.AbstractC10216a;
/* renamed from: h.i.f.a.e.a */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/e/a.class */
public class C10215a<T extends AbstractC10216a> {

    /* renamed from: a */
    public final C10211a f23041a;

    /* renamed from: b */
    public final int f23042b;

    /* renamed from: c */
    public List<T> f23043c;

    /* renamed from: d */
    public List<C10215a<T>> f23044d;

    /* renamed from: h.i.f.a.e.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/e/a$a.class */
    public interface AbstractC10216a {
        /* renamed from: c */
        C10212b mo13100c();
    }

    public C10215a(double d, double d2, double d3, double d4) {
        this(new C10211a(d, d2, d3, d4));
    }

    public C10215a(double d, double d2, double d3, double d4, int i) {
        this(new C10211a(d, d2, d3, d4), i);
    }

    public C10215a(C10211a aVar) {
        this(aVar, 0);
    }

    public C10215a(C10211a aVar, int i) {
        this.f23044d = null;
        this.f23041a = aVar;
        this.f23042b = i;
    }

    /* renamed from: a */
    public Collection<T> m13104a(C10211a aVar) {
        ArrayList arrayList = new ArrayList();
        m13103a(aVar, arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public void m13106a() {
        this.f23044d = null;
        List<T> list = this.f23043c;
        if (list != null) {
            list.clear();
        }
    }

    /* renamed from: a */
    public final void m13105a(double d, double d2, T t) {
        List<C10215a<T>> list = this.f23044d;
        if (list != null) {
            C10211a aVar = this.f23041a;
            if (d2 < aVar.f23037f) {
                if (d < aVar.f23036e) {
                    list.get(0).m13105a(d, d2, t);
                } else {
                    list.get(1).m13105a(d, d2, t);
                }
            } else if (d < aVar.f23036e) {
                list.get(2).m13105a(d, d2, t);
            } else {
                list.get(3).m13105a(d, d2, t);
            }
        } else {
            if (this.f23043c == null) {
                this.f23043c = new ArrayList();
            }
            this.f23043c.add(t);
            if (this.f23043c.size() > 50 && this.f23042b < 40) {
                m13101b();
            }
        }
    }

    /* renamed from: a */
    public final void m13103a(C10211a aVar, Collection<T> collection) {
        if (this.f23041a.m13109b(aVar)) {
            List<C10215a<T>> list = this.f23044d;
            if (list != null) {
                for (C10215a<T> aVar2 : list) {
                    aVar2.m13103a(aVar, collection);
                }
            } else if (this.f23043c != null) {
                if (aVar.m13111a(this.f23041a)) {
                    collection.addAll(this.f23043c);
                    return;
                }
                for (T t : this.f23043c) {
                    if (aVar.m13110a(t.mo13100c())) {
                        collection.add(t);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m13102a(T t) {
        C10212b c = t.mo13100c();
        if (this.f23041a.m13113a(c.f23038a, c.f23039b)) {
            m13105a(c.f23038a, c.f23039b, t);
        }
    }

    /* renamed from: b */
    public final void m13101b() {
        this.f23044d = new ArrayList(4);
        List<C10215a<T>> list = this.f23044d;
        C10211a aVar = this.f23041a;
        list.add(new C10215a<>(aVar.f23032a, aVar.f23036e, aVar.f23033b, aVar.f23037f, this.f23042b + 1));
        List<C10215a<T>> list2 = this.f23044d;
        C10211a aVar2 = this.f23041a;
        list2.add(new C10215a<>(aVar2.f23036e, aVar2.f23034c, aVar2.f23033b, aVar2.f23037f, this.f23042b + 1));
        List<C10215a<T>> list3 = this.f23044d;
        C10211a aVar3 = this.f23041a;
        list3.add(new C10215a<>(aVar3.f23032a, aVar3.f23036e, aVar3.f23037f, aVar3.f23035d, this.f23042b + 1));
        List<C10215a<T>> list4 = this.f23044d;
        C10211a aVar4 = this.f23041a;
        list4.add(new C10215a<>(aVar4.f23036e, aVar4.f23034c, aVar4.f23037f, aVar4.f23035d, this.f23042b + 1));
        List<T> list5 = this.f23043c;
        this.f23043c = null;
        for (T t : list5) {
            m13105a(t.mo13100c().f23038a, t.mo13100c().f23039b, t);
        }
    }
}
