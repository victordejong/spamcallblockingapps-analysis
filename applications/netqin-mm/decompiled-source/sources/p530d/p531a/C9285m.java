package p530d.p531a;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import p530d.p531a.AbstractC9257k;
/* renamed from: d.a.m */
/* loaded from: classes2-dex2jar.jar:d/a/m.class */
public final class C9285m {

    /* renamed from: b */
    public static final C9285m f35856b = new C9285m(new AbstractC9257k.C9258a(), AbstractC9257k.C9259b.f35812a);

    /* renamed from: a */
    public final ConcurrentMap<String, AbstractC9270l> f35857a = new ConcurrentHashMap();

    public C9285m(AbstractC9270l... lVarArr) {
        for (AbstractC9270l lVar : lVarArr) {
            this.f35857a.put(lVar.mo2973a(), lVar);
        }
    }

    /* renamed from: a */
    public static C9285m m2999a() {
        return f35856b;
    }

    /* renamed from: a */
    public AbstractC9270l m2998a(String str) {
        return this.f35857a.get(str);
    }
}
