package org.jsoup.select;

import org.jsoup.nodes.m;
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/f.class */
public final class f {
    public static void a(g gVar, m mVar) {
        m mVar2 = mVar;
        int i = 0;
        while (mVar2 != null) {
            gVar.a(mVar2, i);
            m mVar3 = mVar2;
            int i2 = i;
            if (mVar2.f() > 0) {
                mVar2 = mVar2.a(0);
                i++;
            } else {
                while (mVar3.A() == null && i2 > 0) {
                    gVar.b(mVar3, i2);
                    mVar3 = mVar3.g;
                    i2--;
                }
                gVar.b(mVar3, i2);
                if (mVar3 != mVar) {
                    mVar2 = mVar3.A();
                    i = i2;
                } else {
                    return;
                }
            }
        }
    }
}
