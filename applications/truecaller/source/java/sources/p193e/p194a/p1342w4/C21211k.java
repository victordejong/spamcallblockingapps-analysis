package p193e.p194a.p1342w4;

import com.truecaller.data.entity.SpamCategoryModel;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p288a0.AbstractC7395n;
import p193e.p194a.p997k3.AbstractC16451d;
import p193e.p194a.p997k3.C16449c;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.w4.k */
/* loaded from: classes13-dex2jar.jar:e/a/w4/k.class */
public final class C21211k implements AbstractC16451d {

    /* renamed from: a */
    public final AbstractC7395n f59417a;

    @Inject
    public C21211k(AbstractC7395n abstractC7395n) {
        l.e(abstractC7395n, "spamCategoryFetcher");
        this.f59417a = abstractC7395n;
    }

    @Override // p193e.p194a.p997k3.AbstractC16451d
    /* renamed from: a */
    public C16449c mo10130a() {
        Iterable iterable = (Iterable) d.c3((f) null, new C21210j(this, null), 1, (Object) null);
        int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(iterable, 10));
        int i = m3942Y1;
        if (m3942Y1 < 16) {
            i = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (Object obj : iterable) {
            linkedHashMap.put(Long.valueOf(((SpamCategoryModel) obj).getId()), obj);
        }
        return new C16449c(new C16449c.C16450a(linkedHashMap));
    }
}
