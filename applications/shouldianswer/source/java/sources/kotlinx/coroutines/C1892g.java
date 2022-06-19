package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1642d;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.C1652g;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.C1636h;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.C1920r;
import kotlinx.coroutines.internal.C1925w;
import kotlinx.coroutines.p089a.C1779a;
import kotlinx.coroutines.p089a.C1780b;
/* renamed from: kotlinx.coroutines.g */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/g.class */
public final /* synthetic */ class C1892g {
    /* renamed from: a */
    public static final <T> Object m2679a(AbstractC1646f abstractC1646f, AbstractC1674m<? super AbstractC1786ad, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m, AbstractC1641c<? super T> abstractC1641c) {
        Object obj;
        AbstractC1646f mo2555a = abstractC1641c.mo2555a();
        AbstractC1646f plus = mo2555a.plus(abstractC1646f);
        if (plus == mo2555a) {
            C1920r c1920r = new C1920r(plus, abstractC1641c);
            obj = C1780b.m2968a((AbstractC1778a) c1920r, c1920r, (AbstractC1674m<? super C1920r, ? super AbstractC1641c<? super T>, ? extends Object>) abstractC1674m);
        } else if (C1694h.m3123a((AbstractC1642d) plus.get(AbstractC1642d.f4366a), (AbstractC1642d) mo2555a.get(AbstractC1642d.f4366a))) {
            C1888cn c1888cn = new C1888cn(plus, abstractC1641c);
            Object m2581a = C1925w.m2581a(plus, null);
            try {
                obj = C1780b.m2968a((AbstractC1778a) c1888cn, c1888cn, (AbstractC1674m<? super C1888cn, ? super AbstractC1641c<? super T>, ? extends Object>) abstractC1674m);
            } finally {
                C1925w.m2580b(plus, m2581a);
            }
        } else {
            C1807ap c1807ap = new C1807ap(plus, abstractC1641c);
            c1807ap.m2971f();
            C1779a.m2970a(abstractC1674m, c1807ap, c1807ap);
            obj = c1807ap.m2939k();
        }
        if (obj == C1622b.m3174a()) {
            C1636h.m3152c(abstractC1641c);
        }
        return obj;
    }

    /* renamed from: a */
    public static final AbstractC1850bk m2678a(AbstractC1786ad abstractC1786ad, AbstractC1646f abstractC1646f, EnumC1787ae enumC1787ae, AbstractC1674m<? super AbstractC1786ad, ? super AbstractC1641c<? super C1775o>, ? extends Object> abstractC1674m) {
        C1694h.m3117b(abstractC1786ad, "receiver$0");
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(enumC1787ae, "start");
        C1694h.m3117b(abstractC1674m, "block");
        AbstractC1646f m2515a = C1949x.m2515a(abstractC1786ad, abstractC1646f);
        C1865bt c1865bt = enumC1787ae.m2958a() ? new C1865bt(m2515a, abstractC1674m) : new C1876cd(m2515a, true);
        c1865bt.m2974a(enumC1787ae, (EnumC1787ae) c1865bt, (AbstractC1674m<? super EnumC1787ae, ? super AbstractC1641c<? super T>, ? extends Object>) abstractC1674m);
        return c1865bt;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC1850bk m2677a(AbstractC1786ad abstractC1786ad, AbstractC1646f abstractC1646f, EnumC1787ae enumC1787ae, AbstractC1674m abstractC1674m, int i, Object obj) {
        if ((i & 1) != 0) {
            abstractC1646f = C1652g.f4369a;
        }
        if ((i & 2) != 0) {
            enumC1787ae = EnumC1787ae.DEFAULT;
        }
        return C1890e.m2683b(abstractC1786ad, abstractC1646f, enumC1787ae, abstractC1674m);
    }

    /* renamed from: b */
    public static final <T> AbstractC1793ak<T> m2676b(AbstractC1786ad abstractC1786ad, AbstractC1646f abstractC1646f, EnumC1787ae enumC1787ae, AbstractC1674m<? super AbstractC1786ad, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m) {
        C1694h.m3117b(abstractC1786ad, "receiver$0");
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(enumC1787ae, "start");
        C1694h.m3117b(abstractC1674m, "block");
        AbstractC1646f m2515a = C1949x.m2515a(abstractC1786ad, abstractC1646f);
        C1864bs c1864bs = enumC1787ae.m2958a() ? new C1864bs(m2515a, abstractC1674m) : new C1794al(m2515a, true);
        c1864bs.m2974a(enumC1787ae, (EnumC1787ae) c1864bs, (AbstractC1674m<? super EnumC1787ae, ? super AbstractC1641c<? super T>, ? extends Object>) abstractC1674m);
        return c1864bs;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC1793ak m2675b(AbstractC1786ad abstractC1786ad, AbstractC1646f abstractC1646f, EnumC1787ae enumC1787ae, AbstractC1674m abstractC1674m, int i, Object obj) {
        if ((i & 1) != 0) {
            abstractC1646f = C1652g.f4369a;
        }
        if ((i & 2) != 0) {
            enumC1787ae = EnumC1787ae.DEFAULT;
        }
        return C1890e.m2685a(abstractC1786ad, abstractC1646f, enumC1787ae, abstractC1674m);
    }
}
