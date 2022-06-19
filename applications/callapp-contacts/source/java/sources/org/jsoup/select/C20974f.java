package org.jsoup.select;

import org.jsoup.nodes.AbstractC20921m;
/* renamed from: org.jsoup.select.f */
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/f.class */
public final class C20974f {
    /* renamed from: a */
    public static void m192a(AbstractC20975g abstractC20975g, AbstractC20921m abstractC20921m) {
        AbstractC20921m abstractC20921m2 = abstractC20921m;
        int i = 0;
        while (abstractC20921m2 != null) {
            abstractC20975g.mo191a(abstractC20921m2, i);
            AbstractC20921m abstractC20921m3 = abstractC20921m2;
            int i2 = i;
            if (abstractC20921m2.mo206f() > 0) {
                abstractC20921m2 = abstractC20921m2.m243a(0);
                i++;
            } else {
                while (abstractC20921m3.m245A() == null && i2 > 0) {
                    abstractC20975g.mo190b(abstractC20921m3, i2);
                    abstractC20921m3 = abstractC20921m3.f67501g;
                    i2--;
                }
                abstractC20975g.mo190b(abstractC20921m3, i2);
                if (abstractC20921m3 == abstractC20921m) {
                    return;
                }
                abstractC20921m2 = abstractC20921m3.m245A();
                i = i2;
            }
        }
    }
}
