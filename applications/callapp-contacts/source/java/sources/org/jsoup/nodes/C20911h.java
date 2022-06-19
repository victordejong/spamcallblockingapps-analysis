package org.jsoup.nodes;

import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.C20906f;
import org.jsoup.p590a.AbstractC20776a;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20782c;
import org.jsoup.p592c.C20815h;
import org.jsoup.select.AbstractC20975g;
import org.jsoup.select.C20933c;
import org.jsoup.select.C20974f;
/* renamed from: org.jsoup.nodes.h */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/h.class */
public class C20911h extends AbstractC20921m {

    /* renamed from: a */
    private static final List<AbstractC20921m> f67477a = Collections.emptyList();

    /* renamed from: b */
    private static final Pattern f67478b = Pattern.compile("\\s+");

    /* renamed from: c */
    private static final String f67479c = C20901b.m290h("baseUri");

    /* renamed from: d */
    private WeakReference<List<C20911h>> f67480d;

    /* renamed from: e */
    public C20815h f67481e;

    /* renamed from: f */
    public List<AbstractC20921m> f67482f;

    /* renamed from: i */
    private C20901b f67483i;

    /* renamed from: org.jsoup.nodes.h$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/h$a.class */
    public static final class C20913a extends AbstractC20776a<AbstractC20921m> {

        /* renamed from: a */
        private final C20911h f67486a;

        C20913a(C20911h c20911h, int i) {
            super(i);
            this.f67486a = c20911h;
        }

        @Override // org.jsoup.p590a.AbstractC20776a
        /* renamed from: a */
        public final void mo258a() {
            this.f67486a.mo226o();
        }
    }

    public C20911h(String str) {
        this(C20815h.m393a(str), "", null);
    }

    public C20911h(C20815h c20815h, String str) {
        this(c20815h, str, null);
    }

    public C20911h(C20815h c20815h, String str, C20901b c20901b) {
        C20779c.m507a(c20815h);
        this.f67482f = f67477a;
        this.f67483i = c20901b;
        this.f67481e = c20815h;
        if (str != null) {
            m234f(str);
        }
    }

    /* renamed from: a */
    private static <E extends C20911h> int m275a(C20911h c20911h, List<E> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i) == c20911h) {
                return i;
            }
        }
        return 0;
    }

    /* renamed from: a */
    private void m279a(StringBuilder sb) {
        for (AbstractC20921m abstractC20921m : this.f67482f) {
            if (abstractC20921m instanceof C20925p) {
                m272b(sb, (C20925p) abstractC20921m);
            } else if (abstractC20921m instanceof C20911h) {
                m276a((C20911h) abstractC20921m, sb);
            }
        }
    }

    /* renamed from: a */
    private static void m276a(C20911h c20911h, StringBuilder sb) {
        if (!c20911h.f67481e.f67387a.equals("br") || C20925p.m217a(sb)) {
            return;
        }
        sb.append(StringUtils.SPACE);
    }

    /* renamed from: b */
    public static void m272b(StringBuilder sb, C20925p c20925p) {
        String k = c20925p.m246k();
        if (m269d(c20925p.f67501g) || (c20925p instanceof C20903c)) {
            sb.append(k);
        } else {
            C20782c.m490a(sb, k, C20925p.m217a(sb));
        }
    }

    /* renamed from: d */
    public static boolean m269d(AbstractC20921m abstractC20921m) {
        if (abstractC20921m instanceof C20911h) {
            C20911h c20911h = (C20911h) abstractC20921m;
            int i = 0;
            while (!c20911h.f67481e.f67393g) {
                C20911h c20911h2 = (C20911h) c20911h.f67501g;
                i++;
                if (i >= 6) {
                    return false;
                }
                c20911h = c20911h2;
                if (c20911h2 == null) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public final <T extends Appendable> T mo241a(T t) {
        int size = this.f67482f.size();
        for (int i = 0; i < size; i++) {
            this.f67482f.get(i).m238b(t);
        }
        return t;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public String mo215a() {
        return this.f67481e.f67387a;
    }

    /* renamed from: a */
    public final C20911h m274a(AbstractC20921m abstractC20921m) {
        C20779c.m507a(abstractC20921m);
        m228i(abstractC20921m);
        mo231h();
        this.f67482f.add(abstractC20921m);
        abstractC20921m.f67502h = this.f67482f.size() - 1;
        return this;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    void mo214a(Appendable appendable, int i, C20906f.C20907a c20907a) throws IOException {
        if (c20907a.f67466e) {
            if (this.f67481e.f67390d || (((C20911h) this.f67501g) != null && ((C20911h) this.f67501g).f67481e.f67390d) || c20907a.f67467f) {
                boolean z = false;
                if (!this.f67481e.f67389c) {
                    z = false;
                    if (!this.f67481e.f67391e) {
                        z = false;
                        if (((C20911h) this.f67501g).f67481e.f67389c) {
                            z = false;
                            if (m244B() != null) {
                                z = false;
                                if (!c20907a.f67467f) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
                if (!z && (!(appendable instanceof StringBuilder) || ((StringBuilder) appendable).length() > 0)) {
                    m237c(appendable, i, c20907a);
                }
            }
        }
        appendable.append('<').append(this.f67481e.f67387a);
        C20901b c20901b = this.f67483i;
        if (c20901b != null) {
            c20901b.m311a(appendable, c20907a);
        }
        if (!this.f67482f.isEmpty() || !this.f67481e.m394a()) {
            appendable.append('>');
        } else if (c20907a.f67469h != C20906f.C20907a.EnumC20908a.f67470a || !this.f67481e.f67391e) {
            appendable.append(" />");
        } else {
            appendable.append('>');
        }
    }

    /* renamed from: b */
    public final C20911h mo212a(String str, String str2) {
        super.mo212a(str, str2);
        return this;
    }

    /* renamed from: b */
    public final C20911h m271b(AbstractC20921m abstractC20921m) {
        C20779c.m507a(abstractC20921m);
        m242a(0, abstractC20921m);
        return this;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: b */
    void mo211b(Appendable appendable, int i, C20906f.C20907a c20907a) throws IOException {
        if (!this.f67482f.isEmpty() || !this.f67481e.m394a()) {
            if (c20907a.f67466e && !this.f67482f.isEmpty() && (this.f67481e.f67390d || (c20907a.f67467f && (this.f67482f.size() > 1 || (this.f67482f.size() == 1 && !(this.f67482f.get(0) instanceof C20925p)))))) {
                m237c(appendable, i, c20907a);
            }
            appendable.append("</").append(this.f67481e.f67387a).append('>');
        }
    }

    /* renamed from: c */
    public final C20911h mo233f(AbstractC20921m abstractC20921m) {
        return (C20911h) super.mo233f(abstractC20921m);
    }

    /* renamed from: d */
    public C20911h clone() {
        return (C20911h) super.clone();
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: d */
    protected final void mo236d(String str) {
        mo227j().m300b(f67479c, str);
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: e */
    public final /* synthetic */ AbstractC20921m mo207e() {
        this.f67482f.clear();
        return this;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: e */
    public final /* synthetic */ AbstractC20921m mo235e(AbstractC20921m abstractC20921m) {
        C20911h c20911h = (C20911h) super.mo235e(abstractC20921m);
        C20901b c20901b = this.f67483i;
        c20911h.f67483i = c20901b != null ? c20901b.clone() : null;
        C20913a c20913a = new C20913a(c20911h, this.f67482f.size());
        c20911h.f67482f = c20913a;
        c20913a.addAll(this.f67482f);
        c20911h.m234f(mo205g());
        return c20911h;
    }

    /* renamed from: e */
    public final boolean m268e(String str) {
        int i;
        boolean z;
        if (!mo229i()) {
            return false;
        }
        String m293e = this.f67483i.m293e("class");
        int length = m293e.length();
        int length2 = str.length();
        if (length == 0 || length < length2) {
            return false;
        }
        if (length == length2) {
            return str.equalsIgnoreCase(m293e);
        }
        boolean z2 = false;
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            if (Character.isWhitespace(m293e.charAt(i3))) {
                z = z2;
                i = i2;
                if (!z2) {
                    continue;
                } else if (i3 - i2 == length2 && m293e.regionMatches(true, i2, str, 0, length2)) {
                    return true;
                } else {
                    z = false;
                    i = i2;
                }
            } else {
                z = z2;
                i = i2;
                if (!z2) {
                    i = i3;
                    z = true;
                }
            }
            i3++;
            z2 = z;
            i2 = i;
        }
        if (z2 && length - i2 == length2) {
            return m293e.regionMatches(true, i2, str, 0, length2);
        }
        return false;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: f */
    public final int mo206f() {
        return this.f67482f.size();
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: g */
    public final String mo205g() {
        String str = f67479c;
        C20911h c20911h = this;
        while (true) {
            C20911h c20911h2 = c20911h;
            if (c20911h2 != null) {
                if (c20911h2.mo229i() && c20911h2.f67483i.m292f(str)) {
                    return c20911h2.f67483i.m295d(str);
                }
                c20911h = (C20911h) c20911h2.f67501g;
            } else {
                return "";
            }
        }
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: h */
    protected final List<AbstractC20921m> mo231h() {
        if (this.f67482f == f67477a) {
            this.f67482f = new C20913a(this, 4);
        }
        return this.f67482f;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: i */
    protected final boolean mo229i() {
        return this.f67483i != null;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: j */
    public final C20901b mo227j() {
        if (!mo229i()) {
            this.f67483i = new C20901b();
        }
        return this.f67483i;
    }

    /* renamed from: k */
    public final String m267k() {
        return mo229i() ? this.f67483i.m293e("id") : "";
    }

    /* renamed from: l */
    public final C20911h m266l() {
        return m264n().get(0);
    }

    /* renamed from: m */
    public final C20933c m265m() {
        return new C20933c(m264n());
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0 == null) goto L6;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<org.jsoup.nodes.C20911h> m264n() {
        /*
            r5 = this;
            r0 = r5
            java.lang.ref.WeakReference<java.util.List<org.jsoup.nodes.h>> r0 = r0.f67480d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L17
            r0 = r6
            java.lang.Object r0 = r0.get()
            java.util.List r0 = (java.util.List) r0
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L66
        L17:
            r0 = r5
            java.util.List<org.jsoup.nodes.m> r0 = r0.f67482f
            int r0 = r0.size()
            r8 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r6 = r0
            r0 = 0
            r9 = r0
        L2d:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L5a
            r0 = r5
            java.util.List<org.jsoup.nodes.m> r0 = r0.f67482f
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            org.jsoup.nodes.m r0 = (org.jsoup.nodes.AbstractC20921m) r0
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof org.jsoup.nodes.C20911h
            if (r0 == 0) goto L54
            r0 = r6
            r1 = r7
            org.jsoup.nodes.h r1 = (org.jsoup.nodes.C20911h) r1
            boolean r0 = r0.add(r1)
        L54:
            int r9 = r9 + 1
            goto L2d
        L5a:
            r0 = r5
            java.lang.ref.WeakReference r1 = new java.lang.ref.WeakReference
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r0.f67480d = r1
        L66:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.C20911h.m264n():java.util.List");
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: o */
    public final void mo226o() {
        super.mo226o();
        this.f67480d = null;
    }

    /* renamed from: p */
    public final C20911h m263p() {
        List<C20911h> m264n;
        int m275a;
        if (this.f67501g != null && (m275a = m275a(this, (m264n = ((C20911h) this.f67501g).m264n()))) > 0) {
            return m264n.get(m275a - 1);
        }
        return null;
    }

    /* renamed from: q */
    public final int m262q() {
        if (((C20911h) this.f67501g) == null) {
            return 0;
        }
        return m275a(this, ((C20911h) this.f67501g).m264n());
    }

    /* renamed from: r */
    public final String m261r() {
        final StringBuilder m496a = C20782c.m496a();
        C20974f.m192a(new AbstractC20975g() { // from class: org.jsoup.nodes.h.1
            @Override // org.jsoup.select.AbstractC20975g
            /* renamed from: a */
            public final void mo191a(AbstractC20921m abstractC20921m, int i) {
                if (abstractC20921m instanceof C20925p) {
                    C20911h.m272b(m496a, (C20925p) abstractC20921m);
                } else if (!(abstractC20921m instanceof C20911h)) {
                } else {
                    C20911h c20911h = (C20911h) abstractC20921m;
                    if (m496a.length() <= 0) {
                        return;
                    }
                    if ((!c20911h.f67481e.f67389c && !c20911h.f67481e.f67387a.equals("br")) || C20925p.m217a(m496a)) {
                        return;
                    }
                    m496a.append(' ');
                }
            }

            @Override // org.jsoup.select.AbstractC20975g
            /* renamed from: b */
            public final void mo190b(AbstractC20921m abstractC20921m, int i) {
                if (!(abstractC20921m instanceof C20911h) || !((C20911h) abstractC20921m).f67481e.f67389c || !(abstractC20921m.m245A() instanceof C20925p) || C20925p.m217a(m496a)) {
                    return;
                }
                m496a.append(' ');
            }
        }, this);
        return C20782c.m491a(m496a).trim();
    }

    /* renamed from: s */
    public final String m260s() {
        StringBuilder m496a = C20782c.m496a();
        m279a(m496a);
        return C20782c.m491a(m496a).trim();
    }

    /* renamed from: t */
    public final String m259t() {
        StringBuilder m496a = C20782c.m496a();
        for (AbstractC20921m abstractC20921m : this.f67482f) {
            if (abstractC20921m instanceof C20905e) {
                m496a.append(((C20905e) abstractC20921m).m246k());
            } else if (abstractC20921m instanceof C20904d) {
                m496a.append(((C20904d) abstractC20921m).m246k());
            } else if (abstractC20921m instanceof C20911h) {
                m496a.append(((C20911h) abstractC20921m).m259t());
            } else if (abstractC20921m instanceof C20903c) {
                m496a.append(((C20903c) abstractC20921m).m246k());
            }
        }
        return C20782c.m491a(m496a);
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ AbstractC20921m mo225u() {
        return (C20911h) super.mo225u();
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ AbstractC20921m mo224v() {
        return (C20911h) this.f67501g;
    }
}
