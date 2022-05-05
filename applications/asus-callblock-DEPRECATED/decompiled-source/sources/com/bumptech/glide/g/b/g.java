package com.bumptech.glide.g.b;

import com.bumptech.glide.i.h;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/g.class */
public abstract class g<Z> extends a<Z> {

    /* renamed from: a  reason: collision with root package name */
    private final int f3435a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3436b;

    public g() {
        this((byte) 0);
    }

    private g(byte b2) {
        this.f3435a = Integer.MIN_VALUE;
        this.f3436b = Integer.MIN_VALUE;
    }

    @Override // com.bumptech.glide.g.b.j
    public final void getSize(h hVar) {
        if (!h.a(this.f3435a, this.f3436b)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f3435a + " and height: " + this.f3436b + ", either provide dimensions in the constructor or call override()");
        }
        hVar.a(this.f3435a, this.f3436b);
    }
}
