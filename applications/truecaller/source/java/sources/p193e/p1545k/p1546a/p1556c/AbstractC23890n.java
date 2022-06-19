package p193e.p1545k.p1546a.p1556c;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
/* renamed from: e.k.a.c.n */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n.class */
public abstract class AbstractC23890n<T> {

    /* renamed from: e.k.a.c.n$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n$a.class */
    public static abstract class AbstractC23891a extends AbstractC23890n<Object> {
    }

    /* renamed from: c */
    public Class<T> mo5897c() {
        return null;
    }

    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, T t) {
        return t == null;
    }

    /* renamed from: e */
    public boolean mo5895e() {
        return false;
    }

    /* renamed from: f */
    public abstract void mo5894f(T t, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException;

    /* renamed from: g */
    public void mo5893g(T t, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        Class<T> mo5897c = mo5897c();
        Class<T> cls = mo5897c;
        if (mo5897c == null) {
            cls = t.getClass();
        }
        abstractC23425a0.mo6466m(abstractC23425a0.m6525f(cls), String.format("Type id handling not implemented for type %s (by serializer of type %s)", cls.getName(), getClass().getName()));
        throw null;
    }

    /* renamed from: h */
    public AbstractC23890n<T> mo5892h(AbstractC23929s abstractC23929s) {
        return this;
    }

    /* renamed from: i */
    public boolean mo5891i() {
        return false;
    }
}
