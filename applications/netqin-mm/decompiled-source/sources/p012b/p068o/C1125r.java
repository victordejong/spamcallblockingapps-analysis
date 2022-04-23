package p012b.p068o;

import java.util.HashMap;
/* renamed from: b.o.r */
/* loaded from: classes-dex2jar.jar:b/o/r.class */
public class C1125r {

    /* renamed from: a */
    public final HashMap<String, AbstractC1121p> f4626a = new HashMap<>();

    /* renamed from: a */
    public final AbstractC1121p m34624a(String str) {
        return this.f4626a.get(str);
    }

    /* renamed from: a */
    public final void m34625a() {
        for (AbstractC1121p pVar : this.f4626a.values()) {
            pVar.m34630a();
        }
        this.f4626a.clear();
    }

    /* renamed from: a */
    public final void m34623a(String str, AbstractC1121p pVar) {
        AbstractC1121p put = this.f4626a.put(str, pVar);
        if (put != null) {
            put.mo34609b();
        }
    }
}
