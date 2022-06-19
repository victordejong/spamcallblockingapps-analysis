package org.mistergroup.shouldianswer.components.p099a;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.databinding.C0651f;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.p073a.C1600g;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2114ac;
import org.mistergroup.shouldianswer.p097a.AbstractC2118ag;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.components.a.e */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/e.class */
public final class C2314e extends RecyclerView.AbstractC0945a<RecyclerView.AbstractC0977w> {

    /* renamed from: b */
    private boolean f6535b;

    /* renamed from: c */
    private AbstractC1674m<? super ContextMenu, ? super C2302a, C1775o> f6536c;

    /* renamed from: d */
    private AbstractC1663b<? super C2302a, C1775o> f6537d;

    /* renamed from: g */
    private boolean f6540g;

    /* renamed from: h */
    private boolean f6541h;

    /* renamed from: i */
    private boolean f6542i;

    /* renamed from: k */
    private List<C2302a> f6544k;

    /* renamed from: l */
    private String f6545l;

    /* renamed from: a */
    private C2315a f6534a = new C2315a();

    /* renamed from: e */
    private final ArrayList<C2316b> f6538e = new ArrayList<>();

    /* renamed from: f */
    private boolean f6539f = true;

    /* renamed from: j */
    private boolean f6543j = true;

    /* renamed from: m */
    private final ArrayList<C2302a> f6546m = new ArrayList<>();

    /* renamed from: org.mistergroup.shouldianswer.components.a.e$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/e$a.class */
    public static final class C2315a extends Observable {
        @Override // java.util.Observable
        public void setChanged() {
            super.setChanged();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.components.a.e$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/e$b.class */
    public final class C2316b {

        /* renamed from: a */
        final /* synthetic */ C2314e f6547a;

        /* renamed from: b */
        private int f6548b;

        /* renamed from: c */
        private String f6549c;

        /* renamed from: d */
        private int f6550d;

        public C2316b(C2314e c2314e, String str, int i) {
            C1694h.m3117b(str, "title");
            this.f6547a = c2314e;
            this.f6549c = str;
            this.f6550d = i;
        }

        /* renamed from: a */
        public final int m1626a() {
            return this.f6548b;
        }

        /* renamed from: a */
        public final void m1625a(int i) {
            this.f6548b = i;
        }

        /* renamed from: b */
        public final String m1624b() {
            return this.f6549c;
        }

        /* renamed from: c */
        public final int m1623c() {
            return this.f6550d;
        }
    }

    @AbstractC1634f(m3162b = "ContactsAdapter.kt", m3161c = {238}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.components.contacts.ContactsAdapter$setFilter$1")
    /* renamed from: org.mistergroup.shouldianswer.components.a.e$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/e$c.class */
    public static final class C2317c extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6551a;

        /* renamed from: b */
        Object f6552b;

        /* renamed from: c */
        int f6553c;

        /* renamed from: e */
        final /* synthetic */ String f6555e;

        /* renamed from: f */
        private AbstractC1786ad f6556f;

        /* renamed from: org.mistergroup.shouldianswer.components.a.e$c$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/e$c$1.class */
        public static final class C23181<T> implements Comparator<C2302a> {

            /* renamed from: a */
            public static final C23181 f6557a = new C23181();

            C23181() {
            }

            /* renamed from: a */
            public final int compare(C2302a c2302a, C2302a c2302a2) {
                C1694h.m3117b(c2302a, "contactItem");
                if (c2302a.m1660d() < c2302a2.m1660d()) {
                    return -1;
                }
                return c2302a.m1660d() > c2302a2.m1660d() ? 1 : 0;
            }
        }

        @AbstractC1634f(m3162b = "ContactsAdapter.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.components.contacts.ContactsAdapter$setFilter$1$3")
        /* renamed from: org.mistergroup.shouldianswer.components.a.e$c$2 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/e$c$2.class */
        public static final class C23192 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f6558a;

            /* renamed from: c */
            final /* synthetic */ ArrayList f6560c;

            /* renamed from: d */
            private AbstractC1786ad f6561d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C23192(ArrayList arrayList, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2317c.this = r5;
                this.f6560c = arrayList;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C23192) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C23192 c23192 = new C23192(this.f6560c, abstractC1641c);
                c23192.f6561d = (AbstractC1786ad) obj;
                return c23192;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f6558a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f6561d;
                    C2314e.this.m1642a((List<C2302a>) this.f6560c, true);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2317c(String str, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2314e.this = r5;
            this.f6555e = str;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2317c) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2317c c2317c = new C2317c(this.f6555e, abstractC1641c);
            c2317c.f6556f = (AbstractC1786ad) obj;
            return c2317c;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            boolean z;
            String str;
            String str2;
            String str3;
            NumberInfo m1350f;
            Object a = C1622b.m3174a();
            int i = this.f6553c;
            try {
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f6556f;
                    C3104j.m157a(C3104j.f9124a, "ContactsAdapter.setFilter sorting.startByIntent", (String) null, 2, (Object) null);
                    ArrayList arrayList = new ArrayList();
                    if (!TextUtils.isEmpty(this.f6555e)) {
                        List<C2302a> list = C2314e.this.f6544k;
                        if (list != null) {
                            for (C2302a c2302a : list) {
                                if (c2302a.m1659e() == C2302a.EnumC2303a.CONTACT) {
                                    C2385ac m1658f = c2302a.m1658f();
                                    String m1465h = (m1658f == null || (m1350f = m1658f.m1350f()) == null) ? null : m1350f.m1465h();
                                    String m1360b = m1658f != null ? m1658f.m1360b() : null;
                                    int m1643a = C2314e.this.m1643a(m1465h, this.f6555e);
                                    int m1643a2 = C2314e.this.m1643a(m1360b, this.f6555e);
                                    if (m1643a != -1 && (m1643a2 == -1 || m1643a2 >= m1643a)) {
                                        m1643a2 = m1643a;
                                        z = true;
                                    } else {
                                        z = true;
                                    }
                                    if (m1643a2 != -1) {
                                        String str4 = this.f6555e;
                                        if (str4 == null) {
                                            C1694h.m3124a();
                                        }
                                        int length = str4.length();
                                        if (z) {
                                            StringBuilder sb = new StringBuilder();
                                            if (m1465h == null) {
                                                str = null;
                                            } else if (m1465h == null) {
                                                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                                            } else {
                                                str = m1465h.substring(0, m1643a2);
                                                C1694h.m3122a((Object) str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                            }
                                            sb.append(str);
                                            sb.append("<strong>");
                                            if (m1465h == null) {
                                                str2 = null;
                                            } else if (m1465h == null) {
                                                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                                            } else {
                                                str2 = m1465h.substring(m1643a2, m1643a2 + length);
                                                C1694h.m3122a((Object) str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                            }
                                            sb.append(str2);
                                            sb.append("</strong>");
                                            if (m1465h == null) {
                                                str3 = null;
                                            } else if (m1465h == null) {
                                                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                                            } else {
                                                str3 = m1465h.substring(length + m1643a2);
                                                C1694h.m3122a((Object) str3, "(this as java.lang.String).substring(startIndex)");
                                            }
                                            sb.append(str3);
                                            c2302a.m1662b(Html.fromHtml(sb.toString()));
                                            c2302a.m1665a((Spanned) null);
                                        } else {
                                            StringBuilder sb2 = new StringBuilder();
                                            if (m1360b == null) {
                                                C1694h.m3124a();
                                            }
                                            if (m1360b == null) {
                                                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                                            }
                                            String substring = m1360b.substring(0, m1643a2);
                                            C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                            sb2.append(substring);
                                            sb2.append("<strong>");
                                            int i2 = length + m1643a2;
                                            String substring2 = m1360b.substring(m1643a2, i2);
                                            C1694h.m3122a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                            sb2.append(substring2);
                                            sb2.append("</strong>");
                                            String substring3 = m1360b.substring(i2);
                                            C1694h.m3122a((Object) substring3, "(this as java.lang.String).substring(startIndex)");
                                            sb2.append(substring3);
                                            Spanned fromHtml = Html.fromHtml(sb2.toString());
                                            c2302a.m1662b(null);
                                            c2302a.m1665a(fromHtml);
                                        }
                                        c2302a.m1666a(m1643a2);
                                        arrayList.add(c2302a);
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        }
                        C1600g.m3198a(arrayList, C23181.f6557a);
                    }
                    C3104j.m157a(C3104j.f9124a, "ContactsAdapter.setFilter sorting.end", (String) null, 2, (Object) null);
                    this.f6551a = abstractC1786ad;
                    this.f6552b = arrayList;
                    this.f6553c = 1;
                    if (C1890e.m2686a(C3084c.m192b(), new C23192(arrayList, null), this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ArrayList arrayList2 = (ArrayList) this.f6552b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f6551a;
                    C1771k.m2979a(obj);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            return C1775o.f4450a;
        }
    }

    public C2314e(List<C2302a> list) {
        C1694h.m3117b(list, "ContactItems");
    }

    /* renamed from: a */
    public final int m1643a(String str, String str2) {
        boolean z;
        boolean z2;
        if (TextUtils.isEmpty(str2)) {
            return 0;
        }
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (str == null) {
            C1694h.m3124a();
        }
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String upperCase = str.toUpperCase();
        C1694h.m3122a((Object) upperCase, "(this as java.lang.String).toUpperCase()");
        int length = upperCase.length();
        if (str2 == null) {
            C1694h.m3124a();
        }
        int length2 = length - str2.length();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new char[]{'1'});
        arrayList.add(new char[]{'2', 'A', 'B', 'C'});
        arrayList.add(new char[]{'3', 'D', 'E', 'F'});
        arrayList.add(new char[]{'4', 'G', 'H', 'I'});
        arrayList.add(new char[]{'5', 'J', 'K', 'L'});
        arrayList.add(new char[]{'6', 'M', 'N', 'O'});
        arrayList.add(new char[]{'7', 'P', 'Q', 'R', 'S'});
        arrayList.add(new char[]{'8', 'T', 'U', 'V'});
        arrayList.add(new char[]{'9', 'W', 'X', 'Y', 'Z'});
        arrayList.add(new char[]{'0', '+'});
        arrayList.add(new char[]{'*'});
        arrayList.add(new char[]{'#'});
        if (length2 < 0) {
            return -1;
        }
        int i = 0;
        while (true) {
            int length3 = str2.length();
            int i2 = 0;
            while (true) {
                if (i2 < length3) {
                    char charAt = upperCase.charAt(i + i2);
                    char[] cArr = null;
                    char charAt2 = str2.charAt(i2);
                    if (charAt2 == '#') {
                        cArr = (char[]) arrayList.get(11);
                    } else if (charAt2 != '*') {
                        switch (charAt2) {
                            case '0':
                                cArr = (char[]) arrayList.get(9);
                                break;
                            case '1':
                                cArr = (char[]) arrayList.get(0);
                                break;
                            case '2':
                                cArr = (char[]) arrayList.get(1);
                                break;
                            case '3':
                                cArr = (char[]) arrayList.get(2);
                                break;
                            case '4':
                                cArr = (char[]) arrayList.get(3);
                                break;
                            case '5':
                                cArr = (char[]) arrayList.get(4);
                                break;
                            case '6':
                                cArr = (char[]) arrayList.get(5);
                                break;
                            case '7':
                                cArr = (char[]) arrayList.get(6);
                                break;
                            case '8':
                                cArr = (char[]) arrayList.get(7);
                                break;
                            case '9':
                                cArr = (char[]) arrayList.get(8);
                                break;
                        }
                    } else {
                        cArr = (char[]) arrayList.get(10);
                    }
                    if (cArr == null) {
                        z = false;
                    } else {
                        int length4 = cArr.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length4) {
                                z2 = false;
                            } else if (charAt == cArr[i3]) {
                                z2 = true;
                            } else {
                                i3++;
                            }
                        }
                        if (!z2) {
                            z = false;
                        } else {
                            i2++;
                        }
                    }
                } else {
                    z = true;
                }
            }
            if (z) {
                return i;
            }
            if (i == length2) {
                return -1;
            }
            i++;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m1637a(C2314e c2314e, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        c2314e.m1642a(list, z);
    }

    /* renamed from: a */
    public final int m1645a(float f) {
        char round = (char) (Math.round(f) + 65);
        Iterator<C2316b> it = this.f6538e.iterator();
        int i = 0;
        while (it.hasNext()) {
            C2316b next = it.next();
            if (!(next.m1624b().length() == 0)) {
                if (next.m1624b().charAt(0) >= round) {
                    return next.m1623c();
                }
                i = next.m1623c();
            }
        }
        return i;
    }

    /* renamed from: a */
    public final C2315a m1646a() {
        return this.f6534a;
    }

    /* renamed from: a */
    public final void m1644a(String str) {
        this.f6545l = str;
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2317c(str, null), 2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0120, code lost:
        if ((!kotlin.p081e.p083b.C1694h.m3123a((java.lang.Object) r0, (java.lang.Object) r9.m1624b())) != false) goto L44;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1642a(java.util.List<org.mistergroup.shouldianswer.components.p099a.C2302a> r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.components.p099a.C2314e.m1642a(java.util.List, boolean):void");
    }

    /* renamed from: a */
    public final void m1641a(AbstractC1663b<? super C2302a, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "callback");
        this.f6537d = abstractC1663b;
    }

    /* renamed from: a */
    public final void m1640a(AbstractC1674m<? super ContextMenu, ? super C2302a, C1775o> abstractC1674m) {
        C1694h.m3117b(abstractC1674m, "callback");
        this.f6536c = abstractC1674m;
    }

    /* renamed from: a */
    public final void m1636a(boolean z) {
        this.f6535b = z;
    }

    /* renamed from: b */
    public final void m1634b(boolean z) {
        this.f6539f = z;
    }

    /* renamed from: b */
    public final boolean m1635b() {
        return this.f6535b;
    }

    /* renamed from: c */
    public final AbstractC1674m<ContextMenu, C2302a, C1775o> m1633c() {
        return this.f6536c;
    }

    /* renamed from: c */
    public final void m1632c(boolean z) {
        this.f6540g = z;
    }

    /* renamed from: d */
    public final AbstractC1663b<C2302a, C1775o> m1631d() {
        return this.f6537d;
    }

    /* renamed from: d */
    public final void m1630d(boolean z) {
        this.f6541h = z;
    }

    /* renamed from: e */
    public final void m1628e(boolean z) {
        this.f6542i = z;
    }

    /* renamed from: e */
    public final boolean m1629e() {
        return this.f6542i;
    }

    /* renamed from: f */
    public final boolean m1627f() {
        return this.f6543j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemCount() {
        return this.f6546m.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemViewType(int i) {
        return this.f6546m.get(i).m1659e().ordinal();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onBindViewHolder(RecyclerView.AbstractC0977w abstractC0977w, int i) {
        C1694h.m3117b(abstractC0977w, "holder");
        try {
            C2302a c2302a = this.f6546m.get(i);
            C1694h.m3122a((Object) c2302a, "items[position]");
            C2302a c2302a2 = c2302a;
            if (abstractC0977w instanceof C2311c) {
                ((C2311c) abstractC0977w).m1649a(c2302a2);
            } else if (abstractC0977w instanceof C2305b) {
                ((C2305b) abstractC0977w).m1655a(c2302a2);
            } else if (abstractC0977w instanceof C2313d) {
                ((C2313d) abstractC0977w).m1647a(c2302a2);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public RecyclerView.AbstractC0977w onCreateViewHolder(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        try {
            int i2 = C2320f.f6562a[C2302a.EnumC2303a.f6516d.m1657a(i).ordinal()];
            if (i2 == 1) {
                AbstractC2114ac abstractC2114ac = (AbstractC2114ac) C0651f.m5843a(from, 2131558457, viewGroup, false);
                C1694h.m3122a((Object) abstractC2114ac, "bindingInfo");
                return new C2313d(abstractC2114ac);
            } else if (i2 == 2) {
                AbstractC2118ag abstractC2118ag = (AbstractC2118ag) C0651f.m5843a(from, 2131558459, viewGroup, false);
                C1694h.m3122a((Object) abstractC2118ag, "bindingNumber");
                return new C2305b(abstractC2118ag, this);
            } else if (i2 != 3) {
                throw new NoWhenBranchMatchedException();
            } else {
                AbstractC2118ag abstractC2118ag2 = (AbstractC2118ag) C0651f.m5843a(from, 2131558459, viewGroup, false);
                C1694h.m3122a((Object) abstractC2118ag2, "bindingNumber");
                return new C2311c(abstractC2118ag2, this);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            AbstractC2118ag abstractC2118ag3 = (AbstractC2118ag) C0651f.m5843a(from, 2131558459, viewGroup, false);
            C1694h.m3122a((Object) abstractC2118ag3, "bindingNumber");
            return new C2305b(abstractC2118ag3, this);
        }
    }
}
