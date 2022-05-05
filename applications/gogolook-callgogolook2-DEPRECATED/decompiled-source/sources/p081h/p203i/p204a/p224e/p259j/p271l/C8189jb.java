package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.jb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/jb.class */
public final class C8189jb implements AbstractC8354sa {

    /* renamed from: a */
    public final AbstractC8390ua f18992a;

    /* renamed from: b */
    public final String f18993b;

    /* renamed from: c */
    public final Object[] f18994c;

    /* renamed from: d */
    public final int f18995d;

    public C8189jb(AbstractC8390ua uaVar, String str, Object[] objArr) {
        this.f18992a = uaVar;
        this.f18993b = str;
        this.f18994c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f18995d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.f18995d = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8354sa
    /* renamed from: D */
    public final int mo18172D() {
        return (this.f18995d & 1) == 1 ? AbstractC8228l9.C8234f.f19073i : AbstractC8228l9.C8234f.f19074j;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8354sa
    /* renamed from: E */
    public final AbstractC8390ua mo18171E() {
        return this.f18992a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8354sa
    /* renamed from: F */
    public final boolean mo18170F() {
        return (this.f18995d & 2) == 2;
    }

    /* renamed from: a */
    public final String m18444a() {
        return this.f18993b;
    }

    /* renamed from: b */
    public final Object[] m18443b() {
        return this.f18994c;
    }
}
