package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.flurry.sdk.bw */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bw.class */
public final class C2896bw {

    /* renamed from: a */
    public static C2896bw f4357a;

    /* renamed from: b */
    public LinkedList<AbstractC2895bv> f4358b = new LinkedList<>();

    public C2896bw() {
        m33456a(new C2897bx());
        m33456a(new C2898by());
    }

    /* renamed from: a */
    public static C2896bw m33457a() {
        if (f4357a == null) {
            f4357a = new C2896bw();
        }
        return f4357a;
    }

    /* renamed from: a */
    public final List<AbstractC3469lr> m33455a(List<AbstractC3469lr> list) {
        if (this.f4358b.size() == 0 || list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (AbstractC3469lr lrVar : list) {
            boolean z = true;
            Iterator<AbstractC2895bv> it = this.f4358b.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (!it.next().mo33454a(lrVar)) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (z) {
                arrayList.add(lrVar);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m33456a(AbstractC2895bv bvVar) {
        this.f4358b.add(bvVar);
    }
}
