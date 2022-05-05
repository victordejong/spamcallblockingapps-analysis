package p081h.p119d.p120a.p145w.p147j;

import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.w.j.h */
/* loaded from: classes-dex2jar.jar:h/d/a/w/j/h.class */
public abstract class AbstractC6078h<Z> extends AbstractC6071a<Z> {

    /* renamed from: b */
    public final int f15122b;

    /* renamed from: c */
    public final int f15123c;

    public AbstractC6078h() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public AbstractC6078h(int i, int i2) {
        this.f15122b = i;
        this.f15123c = i2;
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public final void mo23905a(AbstractC6079i iVar) {
        if (C6096h.m23863a(this.f15122b, this.f15123c)) {
            iVar.mo23913a(this.f15122b, this.f15123c);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f15122b + " and height: " + this.f15123c + ", either provide dimensions in the constructor or call override()");
    }
}
