package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.n8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/n8.class */
public final class C8263n8 extends C8388u8 {

    /* renamed from: d */
    public final int f19097d;

    /* renamed from: e */
    public final int f19098e;

    public C8263n8(byte[] bArr, int i, int i2) {
        super(bArr);
        AbstractC8209k8.m18376b(i, i + i2, bArr.length);
        this.f19097d = i;
        this.f19098e = i2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8388u8, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    /* renamed from: g */
    public final byte mo18142g(int i) {
        AbstractC8209k8.m18377b(i, size());
        return this.f19333c[this.f19097d + i];
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8388u8, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    /* renamed from: h */
    public final byte mo18141h(int i) {
        return this.f19333c[this.f19097d + i];
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8388u8
    /* renamed from: s */
    public final int mo18139s() {
        return this.f19097d;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8388u8, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    public final int size() {
        return this.f19098e;
    }
}
