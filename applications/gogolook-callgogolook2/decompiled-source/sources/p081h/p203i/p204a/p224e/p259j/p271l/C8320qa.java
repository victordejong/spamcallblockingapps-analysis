package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Map;
/* renamed from: h.i.a.e.j.l.qa */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/qa.class */
public final class C8320qa implements AbstractC8339ra {
    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8339ra
    /* renamed from: a */
    public final int mo18185a(int i, Object obj, Object obj2) {
        C8287oa oaVar = (C8287oa) obj;
        C8250ma maVar = (C8250ma) obj2;
        int i2 = 0;
        if (oaVar.isEmpty()) {
            return 0;
        }
        for (Map.Entry entry : oaVar.entrySet()) {
            i2 += maVar.m18276a(i, (int) entry.getKey(), entry.getValue());
        }
        return i2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8339ra
    /* renamed from: a */
    public final Object mo18184a(Object obj) {
        ((C8287oa) obj).m18239e();
        return obj;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8339ra
    /* renamed from: b */
    public final Object mo18182b(Object obj, Object obj2) {
        C8287oa oaVar = (C8287oa) obj;
        C8287oa oaVar2 = (C8287oa) obj2;
        C8287oa oaVar3 = oaVar;
        if (!oaVar2.isEmpty()) {
            oaVar3 = oaVar;
            if (!oaVar.m18240d()) {
                oaVar3 = oaVar.m18238f();
            }
            oaVar3.m18242a(oaVar2);
        }
        return oaVar3;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8339ra
    /* renamed from: b */
    public final Map<?, ?> mo18183b(Object obj) {
        return (C8287oa) obj;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8339ra
    /* renamed from: c */
    public final C8303pa<?, ?> mo18181c(Object obj) {
        return ((C8250ma) obj).m18277a();
    }
}
