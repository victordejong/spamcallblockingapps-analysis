package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.g.g2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/g2.class */
public final class C7596g2 implements AbstractC7589f2 {
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7589f2
    /* renamed from: a */
    public final int mo20156a(int i, Object obj, Object obj2) {
        C7577e2 e2Var = (C7577e2) obj;
        if (e2Var.isEmpty()) {
            return 0;
        }
        Iterator it = e2Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7589f2
    /* renamed from: a */
    public final C7570d2<?, ?> mo20155a(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7589f2
    /* renamed from: a */
    public final Object mo20154a(Object obj, Object obj2) {
        C7577e2 e2Var = (C7577e2) obj;
        C7577e2 e2Var2 = (C7577e2) obj2;
        C7577e2 e2Var3 = e2Var;
        if (!e2Var2.isEmpty()) {
            e2Var3 = e2Var;
            if (!e2Var.m20212d()) {
                e2Var3 = e2Var.m20211e();
            }
            e2Var3.m20214a(e2Var2);
        }
        return e2Var3;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7589f2
    /* renamed from: b */
    public final Object mo20153b(Object obj) {
        return C7577e2.m20208h().m20211e();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7589f2
    /* renamed from: c */
    public final Object mo20152c(Object obj) {
        ((C7577e2) obj).m20209g();
        return obj;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7589f2
    /* renamed from: d */
    public final boolean mo20151d(Object obj) {
        return !((C7577e2) obj).m20212d();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7589f2
    /* renamed from: e */
    public final Map<?, ?> mo20150e(Object obj) {
        return (C7577e2) obj;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7589f2
    /* renamed from: f */
    public final Map<?, ?> mo20149f(Object obj) {
        return (C7577e2) obj;
    }
}
