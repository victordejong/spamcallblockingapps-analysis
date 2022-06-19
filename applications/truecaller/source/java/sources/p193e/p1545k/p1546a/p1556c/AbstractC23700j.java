package p193e.p1545k.p1546a.p1556c;

import java.io.IOException;
import java.util.Collection;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23531v;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
import p193e.p1545k.p1546a.p1556c.p1574n0.EnumC23892a;
/* renamed from: e.k.a.c.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j.class */
public abstract class AbstractC23700j<T> implements AbstractC23484r {

    /* renamed from: e.k.a.c.j$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/j$a.class */
    public static abstract class AbstractC23701a extends AbstractC23700j<Object> {
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r
    /* renamed from: c */
    public T mo6233c(AbstractC23632g abstractC23632g) throws C23733k {
        return null;
    }

    /* renamed from: d */
    public abstract T mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k;

    /* renamed from: e */
    public T mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, T t) throws IOException {
        abstractC23632g.m6503C(this);
        return mo6232d(abstractC23376j, abstractC23632g);
    }

    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return abstractC23709e.mo6208b(abstractC23376j, abstractC23632g);
    }

    /* renamed from: g */
    public Object m6229g(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        abstractC23632g.m6503C(this);
        return mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
    }

    /* renamed from: h */
    public AbstractC23488u mo6228h(String str) {
        StringBuilder m8692L = C22128a.m8692L("Cannot handle managed/back reference '", str, "': type: value deserializer of type ");
        m8692L.append(getClass().getName());
        m8692L.append(" does not support them");
        throw new IllegalArgumentException(m8692L.toString());
    }

    /* renamed from: i */
    public EnumC23892a mo6227i() {
        return EnumC23892a.DYNAMIC;
    }

    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return mo6233c(abstractC23632g);
    }

    /* renamed from: k */
    public Collection<Object> mo6225k() {
        return null;
    }

    /* renamed from: l */
    public C23531v mo6224l() {
        return null;
    }

    /* renamed from: m */
    public Class<?> mo6223m() {
        return null;
    }

    /* renamed from: n */
    public boolean mo6222n() {
        return false;
    }

    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return null;
    }

    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return null;
    }

    /* renamed from: q */
    public AbstractC23700j<T> mo6219q(AbstractC23929s abstractC23929s) {
        return this;
    }
}
