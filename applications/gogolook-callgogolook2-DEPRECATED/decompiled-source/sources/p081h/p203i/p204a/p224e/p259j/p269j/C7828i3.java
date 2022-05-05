package p081h.p203i.p204a.p224e.p259j.p269j;

import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
/* renamed from: h.i.a.e.j.j.i3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/i3.class */
public final class C7828i3 implements AbstractC7906r2 {

    /* renamed from: a */
    public final AbstractC7925t2 f18351a;

    /* renamed from: b */
    public final String f18352b;

    /* renamed from: c */
    public final Object[] f18353c;

    /* renamed from: d */
    public final int f18354d;

    public C7828i3(AbstractC7925t2 t2Var, String str, Object[] objArr) {
        this.f18351a = t2Var;
        this.f18352b = str;
        this.f18353c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f18354d = charAt;
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
                this.f18354d = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7906r2
    /* renamed from: a */
    public final int mo18808a() {
        return (this.f18354d & 1) == 1 ? AbstractC7869n1.C7874e.f18436i : AbstractC7869n1.C7874e.f18437j;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7906r2
    /* renamed from: b */
    public final boolean mo18807b() {
        return (this.f18354d & 2) == 2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7906r2
    /* renamed from: c */
    public final AbstractC7925t2 mo18806c() {
        return this.f18351a;
    }

    /* renamed from: d */
    public final String m19344d() {
        return this.f18352b;
    }

    /* renamed from: e */
    public final Object[] m19343e() {
        return this.f18353c;
    }
}
