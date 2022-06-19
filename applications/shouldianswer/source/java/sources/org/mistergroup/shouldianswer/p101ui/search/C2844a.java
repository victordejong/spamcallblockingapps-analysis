package org.mistergroup.shouldianswer.p101ui.search;

import android.text.Html;
import android.text.Spanned;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.customview.p026a.AbstractC0610a;
import androidx.databinding.C0651f;
import java.text.Normalizer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
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
import kotlin.p087i.C1745f;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.components.stickyheaders.C2334a;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2114ac;
import org.mistergroup.shouldianswer.p097a.AbstractC2118ag;
import org.mistergroup.shouldianswer.p101ui.main.p104c.C2646c;
import org.mistergroup.shouldianswer.p101ui.search.C2853d;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.search.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/a.class */
public final class C2844a extends C2334a {

    /* renamed from: b */
    public static final C2845a f8447b = new C2845a(null);

    /* renamed from: k */
    private static final SimpleDateFormat f8448k = new SimpleDateFormat("yyyy-dd-MM");

    /* renamed from: c */
    private AbstractC1674m<? super ContextMenu, ? super C2853d, C1775o> f8449c;

    /* renamed from: d */
    private AbstractC1663b<? super C2853d, C1775o> f8450d;

    /* renamed from: f */
    private List<C2302a> f8452f;

    /* renamed from: g */
    private ArrayList<C2646c> f8453g;

    /* renamed from: h */
    private C2856e f8454h;

    /* renamed from: e */
    private final ArrayList<C2846b> f8451e = new ArrayList<>();

    /* renamed from: i */
    private String f8455i = "";

    /* renamed from: j */
    private final C1745f f8456j = new C1745f("\\p{InCombiningDiacriticalMarks}+");

    /* renamed from: org.mistergroup.shouldianswer.ui.search.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/a$a.class */
    public static final class C2845a {
        private C2845a() {
        }

        public /* synthetic */ C2845a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.search.a$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/a$b.class */
    public final class C2846b {

        /* renamed from: a */
        final /* synthetic */ C2844a f8457a;

        /* renamed from: b */
        private String f8458b;

        /* renamed from: e */
        private Date f8461e;

        /* renamed from: f */
        private boolean f8462f;

        /* renamed from: g */
        private int f8463g;

        /* renamed from: d */
        private List<C2853d> f8460d = new ArrayList();

        /* renamed from: c */
        private C2853d f8459c = new C2853d(C2853d.EnumC2854a.INFO);

        public C2846b(C2844a c2844a, Date date, boolean z, int i) {
            C1694h.m3117b(date, "date");
            this.f8457a = c2844a;
            this.f8461e = date;
            this.f8462f = z;
            this.f8463g = i;
            String format = C2844a.f8448k.format(this.f8461e);
            C1694h.m3122a((Object) format, "SearchAdapter.compareDateFormat.format(date)");
            this.f8458b = format;
            this.f8459c.m392a(this.f8461e);
            C2853d c2853d = this.f8459c;
            c2853d.m393a(c2853d.m380i());
        }

        /* renamed from: a */
        public final String m401a() {
            return this.f8458b;
        }

        /* renamed from: b */
        public final C2853d m400b() {
            return this.f8459c;
        }

        /* renamed from: c */
        public final List<C2853d> m399c() {
            return this.f8460d;
        }

        /* renamed from: d */
        public final boolean m398d() {
            return this.f8462f;
        }
    }

    @AbstractC1634f(m3162b = "SearchAdapter.kt", m3161c = {187, 282}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.search.SearchAdapter$filterData$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.search.a$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/a$c.class */
    public static final class C2847c extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8464a;

        /* renamed from: b */
        Object f8465b;

        /* renamed from: c */
        int f8466c;

        /* renamed from: e */
        private AbstractC1786ad f8468e;

        /* renamed from: org.mistergroup.shouldianswer.ui.search.a$c$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/a$c$1.class */
        public static final class C28481<T> implements Comparator<C2853d> {

            /* renamed from: a */
            public static final C28481 f8469a = new C28481();

            C28481() {
            }

            /* renamed from: a */
            public final int compare(C2853d c2853d, C2853d c2853d2) {
                C1694h.m3117b(c2853d, "contactItem");
                if (c2853d.m382g() < c2853d2.m382g()) {
                    return -1;
                }
                return c2853d.m382g() > c2853d2.m382g() ? 1 : 0;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2847c(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2844a.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2847c) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2847c c2847c = new C2847c(abstractC1641c);
            c2847c.f8468e = (AbstractC1786ad) obj;
            return c2847c;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            boolean z;
            String str;
            String str2;
            String str3;
            Object a = C1622b.m3174a();
            int i = this.f8466c;
            if (i != 0) {
                if (i == 1) {
                    C2856e c2856e = (C2856e) this.f8465b;
                    AbstractC1786ad abstractC1786ad = (AbstractC1786ad) this.f8464a;
                    C1771k.m2979a(obj);
                    return C1775o.f4450a;
                } else if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C2856e c2856e2 = (C2856e) this.f8465b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8464a;
                    C1771k.m2979a(obj);
                    return C1775o.f4450a;
                }
            }
            C1771k.m2979a(obj);
            AbstractC1786ad abstractC1786ad3 = this.f8468e;
            C2856e c2856e3 = new C2856e(new ArrayList());
            if (C2844a.this.f8455i.length() == 0) {
                C2844a c2844a = C2844a.this;
                this.f8464a = abstractC1786ad3;
                this.f8465b = c2856e3;
                this.f8466c = 1;
                if (c2844a.m412a(c2856e3, this) == a) {
                    return a;
                }
                return C1775o.f4450a;
            }
            C3104j.m157a(C3104j.f9124a, "SearchAdapter.filterData searching via contacts", (String) null, 2, (Object) null);
            List<C2302a> list = C2844a.this.f8452f;
            if (list != null) {
                for (C2302a c2302a : list) {
                    if (c2302a.m1659e() == C2302a.EnumC2303a.CONTACT) {
                        C2853d c2853d = new C2853d(C2853d.EnumC2854a.CONTACT);
                        C2385ac m1658f = c2302a.m1658f();
                        if (m1658f == null) {
                            continue;
                        } else {
                            NumberInfo m1350f = m1658f.m1350f();
                            String m1465h = m1350f != null ? m1350f.m1465h() : null;
                            String m1360b = m1658f.m1360b();
                            C1745f c1745f = C2844a.this.f8456j;
                            String normalize = Normalizer.normalize(m1658f.m1360b(), Normalizer.Form.NFD);
                            C1694h.m3122a((Object) normalize, "Normalizer.normalize(pho…ame, Normalizer.Form.NFD)");
                            String m3047a = c1745f.m3047a(normalize, "");
                            C2844a c2844a2 = C2844a.this;
                            int m422a = c2844a2.m422a(m1465h, c2844a2.f8455i);
                            C2844a c2844a3 = C2844a.this;
                            int m422a2 = c2844a3.m422a(m1360b, c2844a3.f8455i);
                            if (m422a2 == -1) {
                                C2844a c2844a4 = C2844a.this;
                                m422a2 = c2844a4.m422a(m3047a, c2844a4.f8455i);
                            }
                            if (m422a != -1 && (m422a2 == -1 || m422a2 >= m422a)) {
                                m422a2 = m422a;
                                z = true;
                            } else {
                                z = true;
                            }
                            if (m422a2 >= 0) {
                                c2853d.m391a(c2302a);
                                c2853d.m390a(m1658f);
                                int length = C2844a.this.f8455i.length();
                                if (z) {
                                    StringBuilder sb = new StringBuilder();
                                    if (m1465h == null) {
                                        str = null;
                                    } else if (m1465h == null) {
                                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                                    } else {
                                        str = m1465h.substring(0, m422a2);
                                        C1694h.m3122a((Object) str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                    }
                                    sb.append(str);
                                    sb.append("<strong>");
                                    if (m1465h == null) {
                                        str2 = null;
                                    } else if (m1465h == null) {
                                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                                    } else {
                                        str2 = m1465h.substring(m422a2, m422a2 + length);
                                        C1694h.m3122a((Object) str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                    }
                                    sb.append(str2);
                                    sb.append("</strong>");
                                    if (m1465h == null) {
                                        str3 = null;
                                    } else if (m1465h == null) {
                                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                                    } else {
                                        str3 = m1465h.substring(length + m422a2);
                                        C1694h.m3122a((Object) str3, "(this as java.lang.String).substring(startIndex)");
                                    }
                                    sb.append(str3);
                                    c2853d.m387b(Html.fromHtml(sb.toString()));
                                    c2853d.m394a((Spanned) null);
                                } else {
                                    StringBuilder sb2 = new StringBuilder();
                                    if (m1360b == null) {
                                        C1694h.m3124a();
                                    }
                                    if (m1360b == null) {
                                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                                    }
                                    String substring = m1360b.substring(0, m422a2);
                                    C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                    sb2.append(substring);
                                    sb2.append("<strong>");
                                    int i2 = length + m422a2;
                                    String substring2 = m1360b.substring(m422a2, i2);
                                    C1694h.m3122a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                    sb2.append(substring2);
                                    sb2.append("</strong>");
                                    String substring3 = m1360b.substring(i2);
                                    C1694h.m3122a((Object) substring3, "(this as java.lang.String).substring(startIndex)");
                                    sb2.append(substring3);
                                    Spanned fromHtml = Html.fromHtml(sb2.toString());
                                    c2853d.m387b(null);
                                    c2853d.m394a(fromHtml);
                                }
                                c2853d.m395a(m422a2);
                                c2856e3.m377a().add(c2853d);
                            } else {
                                continue;
                            }
                        }
                    }
                }
            }
            C3104j.m157a(C3104j.f9124a, "SearchAdapter.filterData searching via logs", (String) null, 2, (Object) null);
            ArrayList arrayList = C2844a.this.f8453g;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C2646c c2646c = (C2646c) it.next();
                    C2853d c2853d2 = new C2853d(C2853d.EnumC2854a.NUMBER);
                    NumberInfo m660f = c2646c.m660f();
                    String m1465h2 = m660f.m1465h();
                    String m1483a = m660f.m1483a(MyApp.f5480c.m1802a());
                    C2844a c2844a5 = C2844a.this;
                    int m422a3 = c2844a5.m422a(m1465h2, c2844a5.f8455i);
                    C2844a c2844a6 = C2844a.this;
                    int m422a4 = c2844a6.m422a(m1483a, c2844a6.f8455i);
                    if (m422a3 != -1 && (m422a4 == -1 || m422a4 >= m422a3)) {
                        m422a4 = m422a3;
                    }
                    if (m422a4 >= 0) {
                        c2853d2.m392a(new Date(c2646c.m659g()));
                        c2853d2.m389a(c2646c);
                        c2853d2.m395a(m422a4 + 10);
                        c2856e3.m377a().add(c2853d2);
                    }
                }
            }
            C3104j.m157a(C3104j.f9124a, "SearchAdapter.filterData sorting", (String) null, 2, (Object) null);
            C1600g.m3198a(c2856e3.m377a(), C28481.f8469a);
            C3104j.m157a(C3104j.f9124a, "SearchAdapter.filterData sorting.end", (String) null, 2, (Object) null);
            C2844a c2844a7 = C2844a.this;
            this.f8464a = abstractC1786ad3;
            this.f8465b = c2856e3;
            this.f8466c = 2;
            if (c2844a7.m412a(c2856e3, this) == a) {
                return a;
            }
            return C1775o.f4450a;
        }
    }

    @AbstractC1634f(m3162b = "SearchAdapter.kt", m3161c = {349, 368}, m3160d = "setFinalData", m3159e = "org.mistergroup.shouldianswer.ui.search.SearchAdapter")
    /* renamed from: org.mistergroup.shouldianswer.ui.search.a$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/a$d.class */
    public static final class C2849d extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f8470a;

        /* renamed from: b */
        int f8471b;

        /* renamed from: d */
        Object f8473d;

        /* renamed from: e */
        Object f8474e;

        /* renamed from: f */
        Object f8475f;

        /* renamed from: g */
        Object f8476g;

        /* renamed from: h */
        Object f8477h;

        /* renamed from: i */
        Object f8478i;

        /* renamed from: j */
        Object f8479j;

        /* renamed from: k */
        Object f8480k;

        /* renamed from: l */
        Object f8481l;

        /* renamed from: m */
        Object f8482m;

        /* renamed from: n */
        int f8483n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2849d(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2844a.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f8470a = obj;
            this.f8471b |= AbstractC0610a.INVALID_ID;
            return C2844a.this.m412a((C2856e) null, this);
        }
    }

    @AbstractC1634f(m3162b = "SearchAdapter.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.search.SearchAdapter$setFinalData$2")
    /* renamed from: org.mistergroup.shouldianswer.ui.search.a$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/a$e.class */
    public static final class C2850e extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f8484a;

        /* renamed from: c */
        private AbstractC1786ad f8486c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2850e(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2844a.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2850e) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2850e c2850e = new C2850e(abstractC1641c);
            c2850e.f8486c = (AbstractC1786ad) obj;
            return c2850e;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f8484a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f8486c;
                C3104j.m157a(C3104j.f9124a, "ContactsAdapter.setFinalData notifyChanges", (String) null, 2, (Object) null);
                C2844a.this.m1566b();
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public C2844a() {
        m420a(this.f8453g, this.f8452f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
        if (r0.length() == 0) goto L15;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m422a(java.lang.String r8, java.lang.String r9) {
        /*
            r7 = this;
            r0 = r8
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L1e
            r0 = r10
            int r0 = r0.length()
            if (r0 != 0) goto L18
            goto L1e
        L18:
            r0 = 0
            r12 = r0
            goto L21
        L1e:
            r0 = 1
            r12 = r0
        L21:
            r0 = r12
            if (r0 == 0) goto L28
            r0 = -1
            return r0
        L28:
            r0 = r9
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L3e
            r0 = r11
            r12 = r0
            r0 = r10
            int r0 = r0.length()
            if (r0 != 0) goto L41
        L3e:
            r0 = 1
            r12 = r0
        L41:
            r0 = r12
            if (r0 == 0) goto L48
            r0 = -1
            return r0
        L48:
            r0 = r8
            if (r0 == 0) goto L80
            r0 = r8
            java.lang.String r0 = r0.toUpperCase()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "(this as java.lang.String).toUpperCase()"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r8
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L76
            r0 = r9
            java.lang.String r0 = r0.toUpperCase()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "(this as java.lang.String).toUpperCase()"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r8
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            int r0 = kotlin.p087i.C1747g.m3018a(r0, r1, r2, r3, r4, r5)
            return r0
        L76:
            kotlin.TypeCastException r0 = new kotlin.TypeCastException
            r1 = r0
            java.lang.String r2 = "null cannot be cast to non-null type java.lang.String"
            r1.<init>(r2)
            throw r0
        L80:
            kotlin.TypeCastException r0 = new kotlin.TypeCastException
            r1 = r0
            java.lang.String r2 = "null cannot be cast to non-null type java.lang.String"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.search.C2844a.m422a(java.lang.String, java.lang.String):int");
    }

    /* renamed from: g */
    private final void m402g() {
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2847c(null), 2, null);
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public int mo427a() {
        return this.f8451e.size();
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public int mo426a(int i) {
        if (i < this.f8451e.size()) {
            return this.f8451e.get(i).m399c().size();
        }
        return 0;
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public int mo425a(int i, int i2) {
        if (i >= this.f8451e.size() || i2 >= this.f8451e.get(i).m399c().size()) {
            return 0;
        }
        return this.f8451e.get(i).m399c().get(i2).m379j().ordinal();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:2|(2:4|(11:6|8|83|(2:10|(2:12|(4:14|15|81|82)(2:16|17))(2:18|19))(5:20|21|(3:23|24|(2:25|(13:27|28|(3:30|31|(2:33|34))|35|(3:37|38|(2:40|41))|42|(1:44)(1:45)|46|(1:48)|49|(1:53)|54|55)(1:84)))(1:56)|57|(6:73|74|75|(2:77|78)|81|82)(5:61|(1:63)(1:64)|65|66|(2:68|69)(1:70)))|71|72|74|75|(0)|81|82))|7|8|83|(0)(0)|71|72|74|75|(0)|81|82) */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x04af, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x04b0, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r9, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x04ac  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m412a(org.mistergroup.shouldianswer.p101ui.search.C2856e r9, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r10) {
        /*
            Method dump skipped, instructions count: 1214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.search.C2844a.m412a(org.mistergroup.shouldianswer.ui.search.e, kotlin.c.c):java.lang.Object");
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public C2334a.C2339e mo424a(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        try {
            int i2 = C2851b.f8487a[C2853d.EnumC2854a.values()[i].ordinal()];
            if (i2 == 1) {
                AbstractC2118ag abstractC2118ag = (AbstractC2118ag) C0651f.m5843a(from, 2131558459, viewGroup, false);
                C1694h.m3122a((Object) abstractC2118ag, "bindingNumber");
                return new C2857f(abstractC2118ag, this);
            } else if (i2 == 2) {
                AbstractC2118ag abstractC2118ag2 = (AbstractC2118ag) C0651f.m5843a(from, 2131558459, viewGroup, false);
                C1694h.m3122a((Object) abstractC2118ag2, "bindingNumber");
                return new C2863g(abstractC2118ag2, this);
            } else if (i2 == 3) {
                AbstractC2118ag abstractC2118ag3 = (AbstractC2118ag) C0651f.m5843a(from, 2131558459, viewGroup, false);
                C1694h.m3122a((Object) abstractC2118ag3, "bindingNumber");
                return new C2867j(abstractC2118ag3, this);
            } else if (i2 == 4) {
                AbstractC2118ag abstractC2118ag4 = (AbstractC2118ag) C0651f.m5843a(from, 2131558459, viewGroup, false);
                C1694h.m3122a((Object) abstractC2118ag4, "bindingNumber");
                return new C2872k(abstractC2118ag4, this);
            } else if (i2 != 5) {
                throw new NoWhenBranchMatchedException();
            } else {
                AbstractC2114ac abstractC2114ac = (AbstractC2114ac) C0651f.m5843a(from, 2131558457, viewGroup, false);
                C1694h.m3122a((Object) abstractC2114ac, "bindingNumber");
                return new C2866i(abstractC2114ac);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            AbstractC2118ag abstractC2118ag5 = (AbstractC2118ag) C0651f.m5843a(from, 2131558459, viewGroup, false);
            C1694h.m3122a((Object) abstractC2118ag5, "bindingNumber");
            return new C2857f(abstractC2118ag5, this);
        }
    }

    /* renamed from: a */
    public final void m423a(String str) {
        C1694h.m3117b(str, "filter");
        this.f8455i = str;
        m402g();
    }

    /* renamed from: a */
    public final void m421a(ArrayList<C2646c> arrayList) {
        C1694h.m3117b(arrayList, "logItems");
        this.f8453g = arrayList;
        m402g();
    }

    /* renamed from: a */
    public final void m420a(ArrayList<C2646c> arrayList, List<C2302a> list) {
        this.f8453g = arrayList;
        this.f8452f = list;
        m402g();
    }

    /* renamed from: a */
    public final void m419a(List<C2302a> list) {
        C1694h.m3117b(list, "contactItems");
        this.f8452f = list;
        m402g();
    }

    /* renamed from: a */
    public final void m418a(AbstractC1663b<? super C2853d, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "callback");
        this.f8450d = abstractC1663b;
    }

    /* renamed from: a */
    public final void m417a(AbstractC1674m<? super ContextMenu, ? super C2853d, C1775o> abstractC1674m) {
        C1694h.m3117b(abstractC1674m, "callback");
        this.f8449c = abstractC1674m;
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public void mo416a(C2334a.C2338d c2338d, int i, int i2) {
        C1694h.m3117b(c2338d, "viewHolder");
        try {
            C2846b c2846b = this.f8451e.get(i);
            C1694h.m3122a((Object) c2846b, "sectionList[sectionIndex]");
            ((C2865h) c2338d).m368a(c2846b.m400b());
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: a */
    public void mo415a(C2334a.C2339e c2339e, int i, int i2, int i3) {
        C1694h.m3117b(c2339e, "viewHolder");
        try {
            C2846b c2846b = this.f8451e.get(i);
            C1694h.m3122a((Object) c2846b, "sectionList[sectionIndex]");
            C2853d c2853d = c2846b.m399c().get(i2);
            if (c2339e instanceof C2863g) {
                ((C2863g) c2339e).m370a(c2853d);
            } else if (c2339e instanceof C2857f) {
                ((C2857f) c2339e).m376a(c2853d);
            } else if (c2339e instanceof C2867j) {
                ((C2867j) c2339e).m367a(c2853d);
            } else if (c2339e instanceof C2872k) {
                ((C2872k) c2339e).m363a(c2853d);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: b */
    public C2334a.C2338d mo410b(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        try {
            AbstractC2114ac abstractC2114ac = (AbstractC2114ac) C0651f.m5843a(LayoutInflater.from(viewGroup.getContext()), 2131558457, viewGroup, false);
            C1694h.m3122a((Object) abstractC2114ac, "bindingInfo");
            return new C2865h(abstractC2114ac);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return null;
        }
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: b */
    public boolean mo411b(int i) {
        if (i < this.f8451e.size()) {
            return this.f8451e.get(i).m398d();
        }
        return false;
    }

    /* renamed from: d */
    public final AbstractC1674m<ContextMenu, C2853d, C1775o> m407d() {
        return this.f8449c;
    }

    @Override // org.mistergroup.shouldianswer.components.stickyheaders.C2334a
    /* renamed from: d */
    public boolean mo406d(int i) {
        return false;
    }

    /* renamed from: e */
    public final AbstractC1663b<C2853d, C1775o> m404e() {
        return this.f8450d;
    }
}
