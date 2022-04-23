package p033i.p034a.p046d.p056g;

import java.util.ArrayList;
/* renamed from: i.a.d.g.r */
/* loaded from: classes2-dex2jar.jar:i/a/d/g/r.class */
public final /* synthetic */ class C0418r {
    /* renamed from: a */
    public static AbstractC0419s m212a(Iterable<AbstractC0419s> iterable) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC0419s sVar : iterable) {
            arrayList.add(sVar);
        }
        return arrayList.isEmpty() ? h.e() : arrayList.size() == 1 ? (AbstractC0419s) arrayList.get(0) : g.e(arrayList);
    }
}
