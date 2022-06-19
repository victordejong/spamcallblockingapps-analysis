package com.googlecode.mp4parser.p414a.p419d;

import com.googlecode.mp4parser.p414a.AbstractC16222a;
import com.googlecode.mp4parser.p414a.AbstractC16243f;
import com.googlecode.mp4parser.p414a.AbstractC16244g;
import com.googlecode.mp4parser.p414a.C16245h;
import com.googlecode.mp4parser.p420b.p422b.C16250a;
import com.googlecode.mp4parser.p420b.p422b.C16268b;
import com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b;
import com.googlecode.mp4parser.p420b.p422b.p423a.C16257e;
import com.googlecode.mp4parser.p420b.p422b.p423a.C16260h;
import com.googlecode.mp4parser.p425c.AbstractC16287f;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.C3466ac;
import com.p102b.p103a.p104a.C3485d;
import com.p102b.p103a.p104a.C3504u;
import com.p102b.p103a.p104a.C3506v;
import com.p102b.p103a.p104a.p107c.AbstractC3482c;
import com.p102b.p103a.p104a.p107c.C3480b;
import com.p102b.p103a.p104a.p107c.C3483d;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.googlecode.mp4parser.a.d.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/d/a.class */
public class C16238a extends AbstractC16222a {

    /* renamed from: h */
    private static AbstractC16287f f57294h = AbstractC16287f.m7514a(C16238a.class);

    /* renamed from: d */
    AbstractC16244g[] f57295d;

    /* renamed from: e */
    C3506v f57296e;

    /* renamed from: f */
    List<AbstractC16243f> f57297f;

    /* renamed from: g */
    long[] f57298g;

    public C16238a(AbstractC16244g... abstractC16244gArr) throws IOException {
        super(m7579a(abstractC16244gArr));
        this.f57295d = abstractC16244gArr;
        for (AbstractC16244g abstractC16244g : abstractC16244gArr) {
            C3506v c3506v = this.f57296e;
            if (c3506v == null) {
                C3506v c3506v2 = new C3506v();
                this.f57296e = c3506v2;
                c3506v2.m7496a((AbstractC3476b) abstractC16244g.mo7564l().mo7494a(AbstractC3482c.class).get(0));
            } else {
                this.f57296e = m7581a(c3506v, abstractC16244g.mo7564l());
            }
        }
        this.f57297f = new ArrayList();
        for (AbstractC16244g abstractC16244g2 : abstractC16244gArr) {
            this.f57297f.addAll(abstractC16244g2.mo7566j());
        }
        int i = 0;
        for (AbstractC16244g abstractC16244g3 : abstractC16244gArr) {
            i += abstractC16244g3.mo7565k().length;
        }
        this.f57298g = new long[i];
        int i2 = 0;
        for (AbstractC16244g abstractC16244g4 : abstractC16244gArr) {
            long[] mo7565k = abstractC16244g4.mo7565k();
            System.arraycopy(mo7565k, 0, this.f57298g, i2, mo7565k.length);
            i2 += mo7565k.length;
        }
    }

    /* renamed from: a */
    private static C3480b m7583a(C3480b c3480b, C3480b c3480b2) {
        C3480b c3480b3 = new C3480b(c3480b2.getType());
        if (c3480b.f13214j != c3480b2.f13214j) {
            f57294h.mo7511c("BytesPerFrame differ");
            return null;
        }
        c3480b3.f13214j = c3480b.f13214j;
        if (c3480b.f13213i != c3480b2.f13213i) {
            return null;
        }
        c3480b3.f13213i = c3480b.f13213i;
        if (c3480b.f13215k != c3480b2.f13215k) {
            f57294h.mo7511c("BytesPerSample differ");
            return null;
        }
        c3480b3.f13215k = c3480b.f13215k;
        if (c3480b.f13206b != c3480b2.f13206b) {
            return null;
        }
        c3480b3.f13206b = c3480b.f13206b;
        if (c3480b.f13211g != c3480b2.f13211g) {
            f57294h.mo7511c("ChannelCount differ");
            return null;
        }
        c3480b3.f13211g = c3480b.f13211g;
        if (c3480b.f13210f != c3480b2.f13210f) {
            return null;
        }
        c3480b3.f13210f = c3480b.f13210f;
        if (c3480b.f13208d != c3480b2.f13208d) {
            return null;
        }
        c3480b3.f13208d = c3480b.f13208d;
        if (c3480b.f13207c != c3480b2.f13207c) {
            return null;
        }
        c3480b3.f13207c = c3480b.f13207c;
        if (c3480b.f13212h != c3480b2.f13212h) {
            return null;
        }
        c3480b3.f13212h = c3480b.f13212h;
        if (c3480b.f13209e != c3480b2.f13209e) {
            return null;
        }
        c3480b3.f13209e = c3480b.f13209e;
        if (!Arrays.equals(c3480b.f13216l, c3480b2.f13216l)) {
            return null;
        }
        c3480b3.f13216l = c3480b.f13216l;
        if (c3480b.mo7491b().size() == c3480b2.mo7491b().size()) {
            Iterator<AbstractC3476b> it2 = c3480b2.mo7491b().iterator();
            for (AbstractC3476b abstractC3476b : c3480b.mo7491b()) {
                AbstractC3476b next = it2.next();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    abstractC3476b.getBox(Channels.newChannel(byteArrayOutputStream));
                    next.getBox(Channels.newChannel(byteArrayOutputStream2));
                    if (Arrays.equals(byteArrayOutputStream.toByteArray(), byteArrayOutputStream2.toByteArray())) {
                        c3480b3.m7496a(abstractC3476b);
                    } else if ("esds".equals(abstractC3476b.getType()) && "esds".equals(next.getType())) {
                        C16268b c16268b = (C16268b) abstractC3476b;
                        c16268b.m7552a(m7580a(c16268b.m7532b(), ((C16268b) next).m7532b()));
                        c3480b3.m7496a(abstractC3476b);
                    }
                } catch (IOException e) {
                    f57294h.mo7512b(e.getMessage());
                    return null;
                }
            }
        }
        return c3480b3;
    }

    /* renamed from: a */
    private static C3483d m7582a(C3483d c3483d, C3483d c3483d2) {
        C3483d c3483d3 = new C3483d();
        if (c3483d.f13225d != c3483d2.f13225d) {
            f57294h.mo7511c("Horizontal Resolution differs");
            return null;
        }
        c3483d3.f13225d = c3483d.f13225d;
        c3483d3.f13228g = c3483d.f13228g;
        if (c3483d.f13229h != c3483d2.f13229h) {
            f57294h.mo7511c("Depth differs");
            return null;
        }
        c3483d3.f13229h = c3483d.f13229h;
        if (c3483d.f13227f != c3483d2.f13227f) {
            f57294h.mo7511c("frame count differs");
            return null;
        }
        c3483d3.f13227f = c3483d.f13227f;
        if (c3483d.f13224c != c3483d2.f13224c) {
            f57294h.mo7511c("height differs");
            return null;
        }
        c3483d3.f13224c = c3483d.f13224c;
        if (c3483d.f13223b != c3483d2.f13223b) {
            f57294h.mo7511c("width differs");
            return null;
        }
        c3483d3.f13223b = c3483d.f13223b;
        if (c3483d.f13226e != c3483d2.f13226e) {
            f57294h.mo7511c("vert resolution differs");
            return null;
        }
        c3483d3.f13226e = c3483d.f13226e;
        if (c3483d.f13225d != c3483d2.f13225d) {
            f57294h.mo7511c("horizontal resolution differs");
            return null;
        }
        c3483d3.f13225d = c3483d.f13225d;
        if (c3483d.mo7491b().size() == c3483d2.mo7491b().size()) {
            Iterator<AbstractC3476b> it2 = c3483d2.mo7491b().iterator();
            for (AbstractC3476b abstractC3476b : c3483d.mo7491b()) {
                AbstractC3476b next = it2.next();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    abstractC3476b.getBox(Channels.newChannel(byteArrayOutputStream));
                    next.getBox(Channels.newChannel(byteArrayOutputStream2));
                    if (Arrays.equals(byteArrayOutputStream.toByteArray(), byteArrayOutputStream2.toByteArray())) {
                        c3483d3.m7496a(abstractC3476b);
                    } else if ((abstractC3476b instanceof C16250a) && (next instanceof C16250a)) {
                        C16250a c16250a = (C16250a) abstractC3476b;
                        c16250a.m7552a(m7580a(c16250a.m7553a(), ((C16250a) next).m7553a()));
                        c3483d3.m7496a(abstractC3476b);
                    }
                } catch (IOException e) {
                    f57294h.mo7512b(e.getMessage());
                    return null;
                }
            }
        }
        return c3483d3;
    }

    /* renamed from: a */
    private C3506v m7581a(C3506v c3506v, C3506v c3506v2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            c3506v.getBox(Channels.newChannel(byteArrayOutputStream));
            c3506v2.getBox(Channels.newChannel(byteArrayOutputStream2));
            if (!Arrays.equals(byteArrayOutputStream2.toByteArray(), byteArrayOutputStream.toByteArray())) {
                AbstractC3482c abstractC3482c = (AbstractC3482c) c3506v.mo7494a(AbstractC3482c.class).get(0);
                AbstractC3482c abstractC3482c2 = (AbstractC3482c) c3506v2.mo7494a(AbstractC3482c.class).get(0);
                C3483d c3483d = null;
                if (abstractC3482c.getType().equals(abstractC3482c2.getType())) {
                    if (!(abstractC3482c instanceof C3483d) || !(abstractC3482c2 instanceof C3483d)) {
                        c3483d = null;
                        if (abstractC3482c instanceof C3480b) {
                            c3483d = null;
                            if (abstractC3482c2 instanceof C3480b) {
                                c3483d = m7583a((C3480b) abstractC3482c, (C3480b) abstractC3482c2);
                            }
                        }
                    } else {
                        c3483d = m7582a((C3483d) abstractC3482c, (C3483d) abstractC3482c2);
                    }
                }
                if (c3483d == null) {
                    throw new IOException("Cannot merge " + c3506v.mo7494a(AbstractC3482c.class).get(0) + " and " + c3506v2.mo7494a(AbstractC3482c.class).get(0));
                }
                c3506v.mo7492a(Collections.singletonList(c3483d));
            }
            return c3506v;
        } catch (IOException e) {
            f57294h.mo7511c(e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    private static C16260h m7580a(AbstractC16254b abstractC16254b, AbstractC16254b abstractC16254b2) {
        if (!(abstractC16254b instanceof C16260h) || !(abstractC16254b2 instanceof C16260h)) {
            f57294h.mo7511c("I can only merge ESDescriptors");
            return null;
        }
        C16260h c16260h = (C16260h) abstractC16254b;
        C16260h c16260h2 = (C16260h) abstractC16254b2;
        if (c16260h.f57460c != c16260h2.f57460c || c16260h.f57466i != c16260h2.f57466i || c16260h.f57458a != c16260h2.f57458a || c16260h.f57467j != c16260h2.f57467j || c16260h.f57461d != c16260h2.f57461d || c16260h.f57465h != c16260h2.f57465h || c16260h.f57459b != c16260h2.f57459b) {
            return null;
        }
        if (c16260h.f57464g != null) {
            c16260h.f57464g.equals(c16260h2.f57464g);
        }
        if (c16260h.f57468k == null ? c16260h2.f57468k != null : !c16260h.f57468k.equals(c16260h2.f57468k)) {
            C16257e c16257e = c16260h.f57468k;
            C16257e c16257e2 = c16260h2.f57468k;
            if (c16257e.f57453h != null && c16257e2.f57453h != null && !c16257e.f57453h.equals(c16257e2.f57453h)) {
                return null;
            }
            if (c16257e.f57451f != c16257e2.f57451f) {
                c16257e.f57451f = (c16257e.f57451f + c16257e2.f57451f) / 2;
            }
            if (c16257e.f57452g != null) {
                if (!c16257e.f57452g.equals(c16257e2.f57452g)) {
                    return null;
                }
            } else if (c16257e2.f57452g != null) {
                return null;
            }
            if (c16257e.f57450e != c16257e2.f57450e) {
                c16257e.f57450e = Math.max(c16257e.f57450e, c16257e2.f57450e);
            }
            if (!c16257e.f57454i.equals(c16257e2.f57454i) || c16257e.f57446a != c16257e2.f57446a || c16257e.f57447b != c16257e2.f57447b || c16257e.f57448c != c16257e2.f57448c) {
                return null;
            }
        }
        if (c16260h.f57470m != null) {
            if (!c16260h.f57470m.equals(c16260h2.f57470m)) {
                return null;
            }
        } else if (c16260h2.f57470m != null) {
            return null;
        }
        if (c16260h.f57469l != null) {
            if (!c16260h.f57469l.equals(c16260h2.f57469l)) {
                return null;
            }
        } else if (c16260h2.f57469l != null) {
            return null;
        }
        return c16260h;
    }

    /* renamed from: a */
    private static String m7579a(AbstractC16244g... abstractC16244gArr) {
        String str = "";
        for (AbstractC16244g abstractC16244g : abstractC16244gArr) {
            str = String.valueOf(str) + abstractC16244g.mo7569f() + " + ";
        }
        return str.substring(0, str.length() - 3);
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: a */
    public final List<C3485d.C3486a> mo7574a() {
        if (this.f57295d[0].mo7574a() == null || this.f57295d[0].mo7574a().isEmpty()) {
            return null;
        }
        LinkedList<int[]> linkedList = new LinkedList();
        for (AbstractC16244g abstractC16244g : this.f57295d) {
            linkedList.add(C3485d.m37892a(abstractC16244g.mo7574a()));
        }
        LinkedList linkedList2 = new LinkedList();
        for (int[] iArr : linkedList) {
            for (int i : iArr) {
                if (linkedList2.isEmpty() || ((C3485d.C3486a) linkedList2.getLast()).f13239b != i) {
                    linkedList2.add(new C3485d.C3486a(1, i));
                } else {
                    ((C3485d.C3486a) linkedList2.getLast()).f13238a++;
                }
            }
        }
        return linkedList2;
    }

    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: b */
    public final long[] mo7573b() {
        AbstractC16244g[] abstractC16244gArr;
        if (this.f57295d[0].mo7573b() == null || this.f57295d[0].mo7573b().length <= 0) {
            return null;
        }
        int i = 0;
        for (AbstractC16244g abstractC16244g : this.f57295d) {
            i += abstractC16244g.mo7573b() != null ? abstractC16244g.mo7573b().length : 0;
        }
        long[] jArr = new long[i];
        char c = 0;
        AbstractC16244g[] abstractC16244gArr2 = this.f57295d;
        int length = abstractC16244gArr2.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= length) {
                return jArr;
            }
            AbstractC16244g abstractC16244g2 = abstractC16244gArr2[i2];
            int i5 = i4;
            if (abstractC16244g2.mo7573b() != null) {
                long[] mo7573b = abstractC16244g2.mo7573b();
                int length2 = mo7573b.length;
                int i6 = 0;
                while (i6 < length2) {
                    jArr[i4] = mo7573b[i6] + c;
                    i6++;
                    i4++;
                }
                i5 = i4;
            }
            c += abstractC16244g2.mo7566j().size();
            i2++;
            i3 = i5;
        }
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: c */
    public final List<C3504u.C3505a> mo7572c() {
        if (this.f57295d[0].mo7572c() == null || this.f57295d[0].mo7572c().isEmpty()) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        for (AbstractC16244g abstractC16244g : this.f57295d) {
            linkedList.addAll(abstractC16244g.mo7572c());
        }
        return linkedList;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        for (AbstractC16244g abstractC16244g : this.f57295d) {
            abstractC16244g.close();
        }
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: d */
    public final C3466ac mo7571d() {
        return this.f57295d[0].mo7571d();
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: j */
    public final List<AbstractC16243f> mo7566j() {
        return this.f57297f;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: k */
    public final long[] mo7565k() {
        long[] jArr;
        synchronized (this) {
            jArr = this.f57298g;
        }
        return jArr;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: l */
    public final C3506v mo7564l() {
        return this.f57296e;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: m */
    public final C16245h mo7563m() {
        return this.f57295d[0].mo7563m();
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: n */
    public final String mo7562n() {
        return this.f57295d[0].mo7562n();
    }
}
