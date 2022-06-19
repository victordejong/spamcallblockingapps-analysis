package com.bumptech.glide.p073f.p074a;

import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.p077h.C1457j;
@Deprecated
/* renamed from: com.bumptech.glide.f.a.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/a/f.class */
public abstract class AbstractC1408f<Z> extends AbstractC1403a<Z> {

    /* renamed from: a */
    private final int f4633a;

    /* renamed from: b */
    private final int f4634b;

    public AbstractC1408f() {
        this(RecyclerView.UNDEFINED_DURATION, RecyclerView.UNDEFINED_DURATION);
    }

    public AbstractC1408f(int i, int i2) {
        this.f4633a = i;
        this.f4634b = i2;
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: a */
    public final void mo17184a(AbstractC1409g abstractC1409g) {
        if (!C1457j.m16980a(this.f4633a, this.f4634b)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f4633a + " and height: " + this.f4634b + ", either provide dimensions in the constructor or call override()");
        }
        abstractC1409g.mo17100a(this.f4633a, this.f4634b);
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: b */
    public void mo17179b(AbstractC1409g abstractC1409g) {
    }
}
