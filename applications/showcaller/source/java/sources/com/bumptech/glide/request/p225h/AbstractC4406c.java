package com.bumptech.glide.request.p225h;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.p223p.C4383k;
import com.bumptech.glide.request.AbstractC4399c;
/* renamed from: com.bumptech.glide.request.h.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/h/c.class */
public abstract class AbstractC4406c<T> implements AbstractC4411h<T> {

    /* renamed from: d */
    private final int f13482d;

    /* renamed from: e */
    private final int f13483e;

    /* renamed from: f */
    private AbstractC4399c f13484f;

    public AbstractC4406c() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public AbstractC4406c(int i, int i2) {
        if (C4383k.m22699s(i, i2)) {
            this.f13482d = i;
            this.f13483e = i2;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + i + " and height: " + i2);
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    /* renamed from: a */
    public void mo22567a() {
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: b */
    public final void mo22558b(AbstractC4410g abstractC4410g) {
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: d */
    public final void mo22557d(AbstractC4399c abstractC4399c) {
        this.f13484f = abstractC4399c;
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: e */
    public void mo22559e(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: f */
    public void mo22556f(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: g */
    public final AbstractC4399c mo22555g() {
        return this.f13484f;
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: i */
    public final void mo22553i(AbstractC4410g abstractC4410g) {
        abstractC4410g.mo22561e(this.f13482d, this.f13483e);
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    public void onStart() {
    }
}
