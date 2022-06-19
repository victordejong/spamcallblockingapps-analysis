package p193e.p194a.p195a.p231g.p234l0;

import com.truecaller.data.entity.Number;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.k;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.g.l0.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/l0/f.class */
public final class C6230f {

    /* renamed from: a */
    public final boolean f20908a;

    /* renamed from: b */
    public final String f20909b;

    /* renamed from: c */
    public final boolean f20910c;

    /* renamed from: d */
    public final List<String> f20911d;

    /* renamed from: e */
    public final List<Long> f20912e;

    /* renamed from: f */
    public final List<Integer> f20913f;

    /* renamed from: g */
    public final List<Integer> f20914g;

    /* renamed from: h */
    public final List<String> f20915h;

    /* renamed from: i */
    public final List<Boolean> f20916i;

    /* renamed from: j */
    public final List<Integer> f20917j;

    /* renamed from: k */
    public final List<Integer> f20918k;

    /* renamed from: l */
    public final String f20919l;

    /* renamed from: m */
    public final List<Number> f20920m;

    /* renamed from: n */
    public final String f20921n;

    /* renamed from: o */
    public final long f20922o;

    /* renamed from: p */
    public final long f20923p;

    /* renamed from: q */
    public final int f20924q;

    /* renamed from: r */
    public final int f20925r;

    /* renamed from: s */
    public final String f20926s;

    /* renamed from: t */
    public final String f20927t;

    /* renamed from: u */
    public final String f20928u;

    /* renamed from: v */
    public int f20929v;

    /* renamed from: e.a.a.g.l0.f$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g/l0/f$a.class */
    public static final class C6231a extends m implements l<k<? extends String, ? extends Number>, String> {

        /* renamed from: b */
        public static final C6231a f20930b = new C6231a();

        public C6231a() {
            super(1);
        }

        /* renamed from: d */
        public Object m31721d(Object obj) {
            k kVar = (k) obj;
            s1.z.c.l.e(kVar, "<name for destructuring parameter 0>");
            String str = (String) kVar.a;
            Number number = (Number) kVar.b;
            if (str.length() == 0) {
                str = null;
            }
            if (str == null) {
                String m35477g = number.m35477g();
                str = null;
                if (m35477g != null) {
                    s1.z.c.l.d(m35477g, "it");
                    str = null;
                    if (!(m35477g.length() == 0)) {
                        str = m35477g;
                    }
                }
            }
            return str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C6230f(String str, boolean z, List<String> list, List<Long> list2, List<Integer> list3, List<Integer> list4, List<String> list5, List<Boolean> list6, List<Integer> list7, List<Integer> list8, String str2, List<? extends Number> list9, String str3, long j, long j2, int i, int i2, String str4, String str5, String str6, int i3) {
        s1.z.c.l.e(list, "names");
        s1.z.c.l.e(list2, "phonebookIds");
        s1.z.c.l.e(list3, "sources");
        s1.z.c.l.e(list4, "spamScores");
        s1.z.c.l.e(list5, "spamTypes");
        s1.z.c.l.e(list6, "isTopSpammers");
        s1.z.c.l.e(list7, "filterActions");
        s1.z.c.l.e(list8, "participantTypes");
        s1.z.c.l.e(list9, "normalizedNumbers");
        this.f20909b = str;
        this.f20910c = z;
        this.f20911d = list;
        this.f20912e = list2;
        this.f20913f = list3;
        this.f20914g = list4;
        this.f20915h = list5;
        this.f20916i = list6;
        this.f20917j = list7;
        this.f20918k = list8;
        this.f20919l = str2;
        this.f20920m = list9;
        this.f20921n = str3;
        this.f20922o = j;
        this.f20923p = j2;
        this.f20924q = i;
        this.f20925r = i2;
        this.f20926s = str4;
        this.f20927t = str5;
        this.f20928u = str6;
        this.f20929v = i3;
        this.f20908a = i == 0 || str3 != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x008c, code lost:
        if ((r10.length() == 0) == false) goto L21;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m31722a() {
        /*
            r9 = this;
            r0 = r9
            java.lang.String r0 = r0.f20927t
            r10 = r0
            r0 = r10
            if (r0 == 0) goto Lb
            r0 = r10
            return r0
        Lb:
            r0 = r9
            java.util.List<java.lang.String> r0 = r0.f20911d
            int r0 = r0.size()
            r1 = r9
            java.util.List<com.truecaller.data.entity.Number> r1 = r1.f20920m
            int r1 = r1.size()
            if (r0 != r1) goto L44
            r0 = r9
            java.util.List<java.lang.String> r0 = r0.f20911d
            r1 = r9
            java.util.List<com.truecaller.data.entity.Number> r1 = r1.f20920m
            java.util.List r0 = s1.u.i.i1(r0, r1)
            s1.e0.k r0 = s1.u.i.h(r0)
            e.a.a.g.l0.f$a r1 = p193e.p194a.p195a.p231g.p234l0.C6230f.C6231a.f20930b
            s1.e0.k r0 = s1.e0.x.l(r0, r1)
            java.lang.String r1 = ", "
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 62
            java.lang.String r0 = s1.e0.x.j(r0, r1, r2, r3, r4, r5, r6, r7)
            r10 = r0
            goto Lb1
        L44:
            r0 = r9
            java.util.List<com.truecaller.data.entity.Number> r0 = r0.f20920m
            r10 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r10
            java.util.Iterator r0 = r0.iterator()
            r12 = r0
        L58:
            r0 = r12
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto La3
            r0 = r12
            java.lang.Object r0 = r0.next()
            com.truecaller.data.entity.Number r0 = (com.truecaller.data.entity.Number) r0
            java.lang.String r0 = r0.m35477g()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L92
            r0 = r10
            java.lang.String r1 = "it"
            s1.z.c.l.d(r0, r1)
            r0 = r10
            int r0 = r0.length()
            if (r0 != 0) goto L87
            r0 = 1
            r13 = r0
            goto L8a
        L87:
            r0 = 0
            r13 = r0
        L8a:
            r0 = r13
            if (r0 != 0) goto L92
            goto L94
        L92:
            r0 = 0
            r10 = r0
        L94:
            r0 = r10
            if (r0 == 0) goto L58
            r0 = r11
            r1 = r10
            boolean r0 = r0.add(r1)
            goto L58
        La3:
            r0 = r11
            java.lang.String r1 = ", "
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 62
            java.lang.String r0 = s1.u.i.O(r0, r1, r2, r3, r4, r5, r6, r7)
            r10 = r0
        Lb1:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.p234l0.C6230f.m31722a():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b9, code lost:
        if (s1.z.c.l.a(r0, r0) != false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof p193e.p194a.p195a.p231g.p234l0.C6230f
            if (r0 != 0) goto L12
            r0 = 0
            return r0
        L12:
            r0 = r3
            java.lang.String r0 = r0.f20909b
            r6 = r0
            r0 = r4
            e.a.a.g.l0.f r0 = (p193e.p194a.p195a.p231g.p234l0.C6230f) r0
            r7 = r0
            r0 = r6
            r1 = r7
            java.lang.String r1 = r1.f20909b
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto Lbf
            r0 = r3
            java.util.List<java.lang.String> r0 = r0.f20911d
            r1 = r7
            java.util.List<java.lang.String> r1 = r1.f20911d
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto Lbf
            r0 = r3
            java.util.List<com.truecaller.data.entity.Number> r0 = r0.f20920m
            r6 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L4c:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L74
            r0 = r6
            java.lang.Object r0 = r0.next()
            com.truecaller.data.entity.Number r0 = (com.truecaller.data.entity.Number) r0
            java.lang.String r0 = r0.m35479e()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L4c
            r0 = r4
            r1 = r8
            boolean r0 = r0.add(r1)
            goto L4c
        L74:
            r0 = r7
            java.util.List<com.truecaller.data.entity.Number> r0 = r0.f20920m
            r6 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L8b:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Lb3
            r0 = r8
            java.lang.Object r0 = r0.next()
            com.truecaller.data.entity.Number r0 = (com.truecaller.data.entity.Number) r0
            java.lang.String r0 = r0.m35479e()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L8b
            r0 = r7
            r1 = r6
            boolean r0 = r0.add(r1)
            goto L8b
        Lb3:
            r0 = r4
            r1 = r7
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto Lbf
            goto Lc1
        Lbf:
            r0 = 0
            r5 = r0
        Lc1:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.p234l0.C6230f.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f20909b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f20910c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        List<String> list = this.f20911d;
        int hashCode2 = list != null ? list.hashCode() : 0;
        List<Long> list2 = this.f20912e;
        int hashCode3 = list2 != null ? list2.hashCode() : 0;
        List<Integer> list3 = this.f20913f;
        int hashCode4 = list3 != null ? list3.hashCode() : 0;
        List<Integer> list4 = this.f20914g;
        int hashCode5 = list4 != null ? list4.hashCode() : 0;
        List<String> list5 = this.f20915h;
        int hashCode6 = list5 != null ? list5.hashCode() : 0;
        List<Boolean> list6 = this.f20916i;
        int hashCode7 = list6 != null ? list6.hashCode() : 0;
        List<Integer> list7 = this.f20917j;
        int hashCode8 = list7 != null ? list7.hashCode() : 0;
        List<Integer> list8 = this.f20918k;
        int hashCode9 = list8 != null ? list8.hashCode() : 0;
        String str2 = this.f20919l;
        int hashCode10 = str2 != null ? str2.hashCode() : 0;
        List<Number> list9 = this.f20920m;
        int hashCode11 = list9 != null ? list9.hashCode() : 0;
        String str3 = this.f20921n;
        int hashCode12 = str3 != null ? str3.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f20922o);
        int m34274a2 = C4876d.m34274a(this.f20923p);
        int i3 = this.f20924q;
        int i4 = this.f20925r;
        String str4 = this.f20926s;
        int hashCode13 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f20927t;
        int hashCode14 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f20928u;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + m34274a) * 31) + m34274a2) * 31) + i3) * 31) + i4) * 31) + hashCode13) * 31) + hashCode14) * 31) + i) * 31) + this.f20929v;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NewConversationDestination(conversationId=");
        m8728C.append(this.f20909b);
        m8728C.append(", isConversationHidden=");
        m8728C.append(this.f20910c);
        m8728C.append(", names=");
        m8728C.append(this.f20911d);
        m8728C.append(", phonebookIds=");
        m8728C.append(this.f20912e);
        m8728C.append(", sources=");
        m8728C.append(this.f20913f);
        m8728C.append(", spamScores=");
        m8728C.append(this.f20914g);
        m8728C.append(", spamTypes=");
        m8728C.append(this.f20915h);
        m8728C.append(", isTopSpammers=");
        m8728C.append(this.f20916i);
        m8728C.append(", filterActions=");
        m8728C.append(this.f20917j);
        m8728C.append(", participantTypes=");
        m8728C.append(this.f20918k);
        m8728C.append(", imageUri=");
        m8728C.append(this.f20919l);
        m8728C.append(", normalizedNumbers=");
        m8728C.append(this.f20920m);
        m8728C.append(", contactImPeerId=");
        m8728C.append(this.f20921n);
        m8728C.append(", contactImRegistrationTimestamp=");
        m8728C.append(this.f20922o);
        m8728C.append(", timestamp=");
        m8728C.append(this.f20923p);
        m8728C.append(", transportType=");
        m8728C.append(this.f20924q);
        m8728C.append(", group=");
        m8728C.append(this.f20925r);
        m8728C.append(", imGroupId=");
        m8728C.append(this.f20926s);
        m8728C.append(", imGroupTitle=");
        m8728C.append(this.f20927t);
        m8728C.append(", imGroupAvatar=");
        m8728C.append(this.f20928u);
        m8728C.append(", preferredTransport=");
        return C22128a.m8697J2(m8728C, this.f20929v, ")");
    }
}
