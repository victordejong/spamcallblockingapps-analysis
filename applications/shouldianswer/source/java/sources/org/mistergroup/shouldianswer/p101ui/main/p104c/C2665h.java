package org.mistergroup.shouldianswer.p101ui.main.p104c;

import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.customview.p026a.AbstractC0610a;
import androidx.databinding.C0651f;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Observable;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.NoWhenBranchMatchedException;
import kotlin.p073a.C1600g;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.components.stickyheaders.C2334a;
import org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager;
import org.mistergroup.shouldianswer.model.C2384ab;
import org.mistergroup.shouldianswer.model.C2386ad;
import org.mistergroup.shouldianswer.model.C2432j;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2114ac;
import org.mistergroup.shouldianswer.p097a.AbstractC2116ae;
import org.mistergroup.shouldianswer.p097a.AbstractC2118ag;
import org.mistergroup.shouldianswer.p101ui.main.p104c.C2643a;
import org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3131u;
/* renamed from: org.mistergroup.shouldianswer.ui.main.c.h */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/h.class */
public final class C2665h extends C2334a {

    /* renamed from: b */
    public static final C2666a f7823b = new C2666a(null);

    /* renamed from: r */
    private static final SimpleDateFormat f7824r = new SimpleDateFormat("yyyy-dd-MM");

    /* renamed from: h */
    private AbstractC1674m<? super ContextMenu, ? super C2646c, C1775o> f7830h;

    /* renamed from: i */
    private AbstractC1663b<? super NumberInfo, C1775o> f7831i;

    /* renamed from: k */
    private long f7833k;

    /* renamed from: l */
    private long f7834l;

    /* renamed from: m */
    private C2672j f7835m;

    /* renamed from: n */
    private boolean f7836n;

    /* renamed from: o */
    private int f7837o;

    /* renamed from: p */
    private int f7838p;

    /* renamed from: q */
    private StickyHeaderLayoutManager f7839q;

    /* renamed from: c */
    private final int f7825c = 3;

    /* renamed from: d */
    private final int f7826d = 10;

    /* renamed from: e */
    private C2672j.EnumC2674a f7827e = C2672j.EnumC2674a.NONE;

    /* renamed from: f */
    private final String f7828f = "calllog";

    /* renamed from: g */
    private boolean f7829g = true;

    /* renamed from: j */
    private C2667b f7832j = new C2667b();

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.h$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/h$a.class */
    public static final class C2666a {
        private C2666a() {
        }

        public /* synthetic */ C2666a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final SimpleDateFormat m605a() {
            return C2665h.f7824r;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.h$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/h$b.class */
    public static final class C2667b extends Observable {
        @Override // java.util.Observable
        public void setChanged() {
            super.setChanged();
        }
    }

    @AbstractC1634f(m3162b = "LogsAdapter.kt", m3161c = {277}, m3160d = "deleteCallLogs", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsAdapter")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.h$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/h$c.class */
    public static final class C2668c extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7840a;

        /* renamed from: b */
        int f7841b;

        /* renamed from: d */
        Object f7843d;

        /* renamed from: e */
        Object f7844e;

        /* renamed from: f */
        Object f7845f;

        /* renamed from: g */
        Object f7846g;

        /* renamed from: h */
        Object f7847h;

        /* renamed from: i */
        Object f7848i;

        /* renamed from: j */
        int f7849j;

        /* renamed from: k */
        int f7850k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2668c(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2665h.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7840a = obj;
            this.f7841b |= AbstractC0610a.INVALID_ID;
            return C2665h.this.m627a((ArrayList<C2432j.C2434b>) null, this);
        }
    }

    @AbstractC1634f(m3162b = "LogsAdapter.kt", m3161c = {239, 240}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsAdapter$processLoadMore$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.h$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/h$d.class */
    public static final class C2669d extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7851a;

        /* renamed from: b */
        int f7852b;

        /* renamed from: d */
        final /* synthetic */ int f7854d;

        /* renamed from: e */
        private AbstractC1786ad f7855e;

        @AbstractC1634f(m3162b = "LogsAdapter.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsAdapter$processLoadMore$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.c.h$d$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/h$d$1.class */
        public static final class C26701 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7856a;

            /* renamed from: c */
            private AbstractC1786ad f7858c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C26701(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2669d.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C26701) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C26701 c26701 = new C26701(abstractC1641c);
                c26701.f7858c = (AbstractC1786ad) obj;
                return c26701;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7856a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7858c;
                    int m610k = C2665h.this.m610k();
                    C2665h.this.m614g().setChanged();
                    C2665h.this.m614g().notifyObservers();
                    if (C2665h.this.f7838p > m610k) {
                        C3104j.f9124a.m155b("LogsAdapter.processLoadMore detected request for more items", C2665h.this.f7828f);
                        C2665h.this.m606m(C2665h.this.f7838p);
                    }
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2669d(int i, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2665h.this = r5;
            this.f7854d = i;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2669d) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2669d c2669d = new C2669d(this.f7854d, abstractC1641c);
            c2669d.f7855e = (AbstractC1786ad) obj;
            return c2669d;
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00b8  */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 201
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2665h.C2669d.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: m */
    public final void m606m(int i) {
        int m610k = m610k();
        this.f7833k = C2384ab.f6871a.m1369b();
        this.f7834l = C2386ad.f6885a.m1334c();
        if (i <= this.f7837o || i <= m610k || this.f7836n) {
            if (i <= this.f7838p) {
                return;
            }
            this.f7838p = i;
            C3104j c3104j = C3104j.f9124a;
            c3104j.m155b("LogsAdapter.processLoadMore received request for " + this.f7838p, this.f7828f);
            return;
        }
        int i2 = i - m610k;
        try {
            C3104j c3104j2 = C3104j.f9124a;
            c3104j2.m155b("LogsAdapter.processLoadMore launching background load " + i2 + " new items ", this.f7828f);
            this.f7836n = true;
            this.f7837o = i;
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2669d(i2, null), 2, null);
        } finally {
            this.f7836n = false;
        }
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public int mo427a() {
        LinkedList<C2672j.C2676b> m592c;
        C3104j.f9124a.m155b("LogsAdapter.getNumberOfSections", this.f7828f);
        C2672j c2672j = this.f7835m;
        return (c2672j == null || (m592c = c2672j.m592c()) == null) ? 0 : m592c.size();
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public int mo426a(int i) {
        C3104j.f9124a.m155b("LogsAdapter.getNumberOfItemsInSection " + i, this.f7828f);
        C2672j c2672j = this.f7835m;
        int i2 = 0;
        if (c2672j != null) {
            i2 = 0;
            if (i <= C1600g.m3201a((List) c2672j.m592c())) {
                i2 = c2672j.m592c().get(i).m581c().size();
            }
        }
        return i2;
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public int mo425a(int i, int i2) {
        C2672j c2672j = this.f7835m;
        if (c2672j == null || i > C1600g.m3201a((List) c2672j.m592c()) || i2 > C1600g.m3201a((List) c2672j.m592c().get(i).m581c())) {
            return 0;
        }
        return c2672j.m592c().get(i).m581c().get(i2).m668a().ordinal();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:2|(2:4|(4:6|8|35|(2:10|(9:12|13|28|29|30|19|(5:21|(5:23|24|(2:26|27)|28|29)|30|19|(0))|33|34)(2:14|15))(7:16|17|18|19|(0)|33|34)))|7|8|35|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0172, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0173, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r7, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00e7 -> B:30:0x0154). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x012e -> B:28:0x0134). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m627a(java.util.ArrayList<org.mistergroup.shouldianswer.model.C2432j.C2434b> r7, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r8) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2665h.m627a(java.util.ArrayList, kotlin.c.c):java.lang.Object");
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public C2334a.C2339e mo424a(ViewGroup viewGroup, int i) {
        C2655g c2655g;
        C1694h.m3117b(viewGroup, "parent");
        C2334a.C2339e c2339e = null;
        C3131u.f9265a.m41a();
        try {
            LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
            int i2 = C2671i.f7860b[C2643a.EnumC2644a.values()[i].ordinal()];
            if (i2 == 1) {
                AbstractC2116ae abstractC2116ae = (AbstractC2116ae) C0651f.m5843a(from, 2131558458, viewGroup, false);
                C1694h.m3122a((Object) abstractC2116ae, "binding");
                c2655g = new C2651f(abstractC2116ae, this, this.f7827e);
            } else if (i2 == 2) {
                AbstractC2114ac abstractC2114ac = (AbstractC2114ac) C0651f.m5843a(from, 2131558457, viewGroup, false);
                C1694h.m3122a((Object) abstractC2114ac, "bindingInfo");
                c2655g = new C2650e(abstractC2114ac);
            } else if (i2 != 3) {
                c2655g = c2339e;
            } else {
                AbstractC2118ag abstractC2118ag = (AbstractC2118ag) C0651f.m5843a(from, 2131558459, viewGroup, false);
                C1694h.m3122a((Object) abstractC2118ag, "bindingNumber");
                c2655g = new C2655g(abstractC2118ag, this);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            c2655g = c2339e;
        }
        return c2655g;
    }

    /* renamed from: a */
    public final void m626a(AbstractC1663b<? super NumberInfo, C1775o> abstractC1663b) {
        this.f7831i = abstractC1663b;
    }

    /* renamed from: a */
    public final void m625a(AbstractC1674m<? super ContextMenu, ? super C2646c, C1775o> abstractC1674m) {
        this.f7830h = abstractC1674m;
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public void mo416a(C2334a.C2338d c2338d, int i, int i2) {
        C1694h.m3117b(c2338d, "viewHolder");
        C3131u.f9265a.m41a();
        try {
            C2649d c2649d = (C2649d) c2338d;
            C2672j c2672j = this.f7835m;
            if (c2672j == null) {
                return;
            }
            c2649d.m639a(c2672j.m592c().get(i).m582b());
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public void mo415a(C2334a.C2339e c2339e, int i, int i2, int i3) {
        C1694h.m3117b(c2339e, "viewHolder");
        C3131u.f9265a.m41a();
        try {
            C2672j c2672j = this.f7835m;
            if (c2672j != null) {
                C2672j.C2676b c2676b = c2672j.m592c().get(i);
                C1694h.m3122a((Object) c2676b, "it.sections[sectionIndex]");
                C2672j.C2676b c2676b2 = c2676b;
                int i4 = C2671i.f7861c[C2643a.EnumC2644a.values()[i3].ordinal()];
                if (i4 == 1) {
                    ((C2655g) c2339e).m634a(c2676b2.m581c().get(i2));
                } else if (i4 == 2) {
                    ((C2650e) c2339e).m638a(c2676b2.m582b());
                }
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m622a(C2672j.EnumC2674a enumC2674a) {
        C1694h.m3117b(enumC2674a, "<set-?>");
        this.f7827e = enumC2674a;
    }

    /* renamed from: a */
    public final void m621a(C2672j.EnumC2674a enumC2674a, StickyHeaderLayoutManager stickyHeaderLayoutManager) {
        C1694h.m3117b(enumC2674a, "filterType");
        C1694h.m3117b(stickyHeaderLayoutManager, "layoutManager");
        this.f7839q = stickyHeaderLayoutManager;
        if (enumC2674a == C2672j.EnumC2674a.ALL && enumC2674a == this.f7827e) {
            return;
        }
        C2672j c2672j = null;
        C3104j.m157a(C3104j.f9124a, "LogsAdapter.setFilter " + enumC2674a.name(), (String) null, 2, (Object) null);
        this.f7827e = enumC2674a;
        C2672j c2672j2 = this.f7835m;
        if (c2672j2 != null) {
            c2672j2.m590e();
        }
        this.f7835m = C2384ab.f6871a.m1371a()[enumC2674a.m585a()];
        if (this.f7835m == null) {
            int i = C2671i.f7859a[enumC2674a.ordinal()];
            if (i == 1) {
                c2672j = new C2672j(C2672j.EnumC2674a.ALL);
            } else if (i == 2) {
                c2672j = new C2672j(C2672j.EnumC2674a.FAMILIAR);
            } else if (i == 3) {
                c2672j = new C2672j(C2672j.EnumC2674a.UNFAMILIAR);
            } else if (i == 4) {
                c2672j = new C2672j(C2672j.EnumC2674a.BLOCKED);
            } else if (i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            this.f7835m = c2672j;
            if (enumC2674a == C2672j.EnumC2674a.ALL) {
                C2384ab.f6871a.m1371a()[enumC2674a.m585a()] = this.f7835m;
            }
        }
        m1566b();
        C2672j c2672j3 = this.f7835m;
        if (c2672j3 != null) {
            c2672j3.m600a(this);
        }
        C2672j c2672j4 = this.f7835m;
        if (c2672j4 != null) {
            c2672j4.m591d();
        }
        stickyHeaderLayoutManager.scrollToPosition(0);
        this.f7837o = m610k();
        this.f7838p = this.f7837o;
        m606m(this.f7826d + 1);
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: b */
    public C2334a.C2338d mo410b(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        try {
            C3131u.f9265a.m41a();
            AbstractC2114ac abstractC2114ac = (AbstractC2114ac) C0651f.m5843a(LayoutInflater.from(viewGroup.getContext()), 2131558457, viewGroup, false);
            C1694h.m3122a((Object) abstractC2114ac, "bindingInfo");
            return new C2649d(abstractC2114ac);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return null;
        }
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: b */
    public boolean mo411b(int i) {
        return true;
    }

    /* renamed from: d */
    public final C2672j.EnumC2674a m618d() {
        return this.f7827e;
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: d */
    public boolean mo406d(int i) {
        return false;
    }

    /* renamed from: e */
    public final AbstractC1674m<ContextMenu, C2646c, C1775o> m617e() {
        return this.f7830h;
    }

    /* renamed from: f */
    public final int m615f(int i, int i2) {
        C2672j c2672j = this.f7835m;
        int i3 = 0;
        if (c2672j != null) {
            i3 = 0;
            if (i <= C1600g.m3201a((List) c2672j.m592c())) {
                i3 = 0;
                for (int i4 = 0; i4 < i; i4++) {
                    i3 += c2672j.m592c().get(i4).m581c().size();
                }
            }
        }
        return i3 + i2;
    }

    /* renamed from: f */
    public final AbstractC1663b<NumberInfo, C1775o> m616f() {
        return this.f7831i;
    }

    /* renamed from: g */
    public final C2667b m614g() {
        return this.f7832j;
    }

    /* renamed from: h */
    public final void m613h() {
        C3104j.m157a(C3104j.f9124a, "LogsAdapter.onNewContent scrollToTop", (String) null, 2, (Object) null);
        StickyHeaderLayoutManager stickyHeaderLayoutManager = this.f7839q;
        if (stickyHeaderLayoutManager != null) {
            stickyHeaderLayoutManager.scrollToPosition(0);
        }
    }

    /* renamed from: i */
    public final void m612i() {
        if (this.f7833k != C2384ab.f6871a.m1369b() || this.f7834l != C2386ad.f6885a.m1334c()) {
            C3104j.m157a(C3104j.f9124a, "LogsAdapter.onActivate - NumberInfoCache invalidate", (String) null, 2, (Object) null);
            C2707o.f8020a.m569a();
            if (this.f7827e == C2672j.EnumC2674a.BLOCKED) {
                C3104j.m157a(C3104j.f9124a, "LogsAdapter.onActivate - reloading due blockingChangedTime differs", (String) null, 2, (Object) null);
                C2672j.EnumC2674a enumC2674a = this.f7827e;
                StickyHeaderLayoutManager stickyHeaderLayoutManager = this.f7839q;
                if (stickyHeaderLayoutManager == null) {
                    C1694h.m3124a();
                }
                m621a(enumC2674a, stickyHeaderLayoutManager);
                return;
            }
        }
        C2672j c2672j = this.f7835m;
        if (c2672j != null) {
            c2672j.m591d();
        }
    }

    /* renamed from: j */
    public final void m611j() {
        C2672j c2672j = this.f7835m;
        if (c2672j != null) {
            c2672j.m590e();
        }
    }

    /* renamed from: k */
    public final int m610k() {
        C2672j c2672j = this.f7835m;
        int i = 0;
        if (c2672j != null) {
            int size = c2672j.m592c().size();
            i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += c2672j.m592c().get(i2).m581c().size();
            }
        }
        return i;
    }

    /* renamed from: l */
    public final void m608l(int i) {
        m606m((this.f7825c + Math.round(i / this.f7826d)) * this.f7826d);
    }

    /* renamed from: l */
    public final boolean m609l() {
        C2672j c2672j = this.f7835m;
        return c2672j != null ? c2672j.m595b() : false;
    }
}
