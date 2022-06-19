package com.googlecode.mp4parser.p414a;

import com.googlecode.mp4parser.p425c.C16289h;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.googlecode.mp4parser.a.d */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/d.class */
public final class C16237d {

    /* renamed from: a */
    public C16289h f57292a;

    /* renamed from: b */
    public List<AbstractC16244g> f57293b;

    public C16237d() {
        this.f57292a = C16289h.f57536j;
        this.f57293b = new LinkedList();
    }

    public C16237d(List<AbstractC16244g> list) {
        this.f57292a = C16289h.f57536j;
        this.f57293b = new LinkedList();
        this.f57293b = list;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: a */
    public final long m7585a() {
        char c = this.f57293b.iterator().next().mo7563m().f57318b;
        for (AbstractC16244g abstractC16244g : this.f57293b) {
            char c2 = abstractC16244g.mo7563m().f57318b;
            while (c != 0) {
                ?? r0 = c2 % c;
                c2 = c;
                c = r0;
            }
            c = c2;
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* renamed from: a */
    public final void m7584a(AbstractC16244g abstractC16244g) {
        AbstractC16244g abstractC16244g2;
        long j = abstractC16244g.mo7563m().f57325i;
        Iterator<AbstractC16244g> it2 = this.f57293b.iterator();
        while (true) {
            if (!it2.hasNext()) {
                abstractC16244g2 = null;
                break;
            }
            abstractC16244g2 = it2.next();
            if (abstractC16244g2.mo7563m().f57325i == j) {
                break;
            }
        }
        if (abstractC16244g2 != null) {
            C16245h mo7563m = abstractC16244g.mo7563m();
            char c = 0;
            for (AbstractC16244g abstractC16244g3 : this.f57293b) {
                if (c < abstractC16244g3.mo7563m().f57325i) {
                    c = abstractC16244g3.mo7563m().f57325i;
                }
            }
            mo7563m.f57325i = c + 1;
        }
        this.f57293b.add(abstractC16244g);
    }

    public final String toString() {
        Iterator<AbstractC16244g> it2 = this.f57293b.iterator();
        String str = "Movie{ ";
        while (true) {
            String str2 = str;
            if (!it2.hasNext()) {
                return String.valueOf(str2) + '}';
            }
            AbstractC16244g next = it2.next();
            str = String.valueOf(str2) + "track_" + next.mo7563m().f57325i + " (" + next.mo7562n() + ") ";
        }
    }
}
