package p193e.p194a.p195a.p200c.p221r8;

import p1727n3.p1807k.p1820h.C26556f;
import p193e.p194a.p195a.p200c.p221r8.C5701c;
/* renamed from: e.a.a.c.r8.d */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/r8/d.class */
public abstract class AbstractC5702d<T extends C5701c> extends C26556f<T> {

    /* renamed from: c */
    public int f19151c = 0;

    public AbstractC5702d(int i) {
        super(i);
    }

    @Override // p1727n3.p1807k.p1820h.C26556f, p1727n3.p1807k.p1820h.AbstractC26555e
    /* renamed from: a */
    public Object mo1689a() {
        this.f19151c++;
        Object obj = (C5701c) super.mo1689a();
        Object obj2 = obj;
        if (obj == null) {
            obj2 = mo32778e();
        }
        return obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p1727n3.p1807k.p1820h.C26556f, p1727n3.p1807k.p1820h.AbstractC26555e
    /* renamed from: b */
    public boolean mo1688b(Object obj) {
        C5701c c5701c = (C5701c) obj;
        this.f19151c--;
        boolean mo1688b = super.mo1688b(c5701c);
        if (mo1688b) {
            mo32772d(c5701c);
        }
        return mo1688b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [e.a.a.c.r8.c] */
    /* renamed from: c */
    public T m32779c() {
        this.f19151c++;
        ?? r0 = (C5701c) super.mo1689a();
        T t = r0;
        if (r0 == 0) {
            t = mo32778e();
        }
        return t;
    }

    /* renamed from: d */
    public abstract void mo32772d(T t);

    /* renamed from: e */
    public abstract T mo32778e();

    /* renamed from: f */
    public boolean m32777f(T t) {
        this.f19151c--;
        boolean mo1688b = super.mo1688b(t);
        if (mo1688b) {
            mo32772d(t);
        }
        return mo1688b;
    }
}
