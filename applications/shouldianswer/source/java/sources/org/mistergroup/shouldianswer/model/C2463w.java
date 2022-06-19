package org.mistergroup.shouldianswer.model;

import java.util.List;
import java.util.Observable;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.model.w */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/w.class */
public final class C2463w extends Observable {

    /* renamed from: a */
    public static final C2463w f7201a = new C2463w();

    /* renamed from: b */
    private static final AbstractC2456u f7202b = AppDatabase.f6633d.m1524a().mo1507o();

    private C2463w() {
    }

    /* renamed from: a */
    public final Object m973a(String str, String str2, boolean z, boolean z2, AbstractC1641c<? super NumberCaption> abstractC1641c) {
        NumberCaption numberCaption;
        List<NumberCaption> list;
        NumberCaption numberCaption2 = null;
        try {
            if (z) {
                AbstractC2456u abstractC2456u = f7202b;
                if (str2 == null) {
                    C1694h.m3124a();
                }
                list = abstractC2456u.mo977b(str, str2);
            } else {
                AbstractC2456u abstractC2456u2 = f7202b;
                if (str2 == null) {
                    C1694h.m3124a();
                }
                list = abstractC2456u2.mo978a(str, str2);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        if (!list.isEmpty()) {
            if (list.size() > 1) {
                throw new Exception("NumberCaptions.getByNumber findByNumberNormalized returns more than 1 item!");
            }
            numberCaption = list.get(0);
            if (z2 && numberCaption != null) {
                C3104j.m157a(C3104j.f9124a, "NumberCaption.getByNumber " + str + " returns contactId=" + String.valueOf(numberCaption.m1499a()), (String) null, 2, (Object) null);
            }
            return numberCaption;
        }
        numberCaption = numberCaption2;
        if (z2) {
            C3104j.m157a(C3104j.f9124a, "NumberCaption.getByNumber " + str + " returns contactId=" + String.valueOf(numberCaption.m1499a()), (String) null, 2, (Object) null);
        }
        return numberCaption;
    }

    /* renamed from: a */
    public final Object m972a(List<NumberCaption> list, AbstractC1641c<? super C1775o> abstractC1641c) {
        for (NumberCaption numberCaption : list) {
            f7202b.mo979a(numberCaption.m1499a());
        }
        return C1775o.f4450a;
    }

    /* renamed from: a */
    public final Object m971a(AbstractC1641c<? super List<NumberCaption>> abstractC1641c) {
        return f7202b.mo980a();
    }

    /* renamed from: a */
    public final Object m970a(NumberInfo numberInfo, boolean z, AbstractC1641c<? super NumberCaption> abstractC1641c) {
        return m973a(numberInfo.m1479b(), numberInfo.m1475c(), false, z, abstractC1641c);
    }
}
