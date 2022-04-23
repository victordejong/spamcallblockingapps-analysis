package com.bumptech.glide.e.a;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.e.d;
import com.bumptech.glide.g.k;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/c.class */
public abstract class c<T> implements j<T> {

    /* renamed from: a  reason: collision with root package name */
    private final int f7270a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7271b;

    /* renamed from: c  reason: collision with root package name */
    private d f7272c;

    public c() {
        this(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    public c(int i, int i2) {
        if (k.a(i, i2)) {
            this.f7270a = i;
            this.f7271b = i2;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + i + " and height: " + i2);
    }

    @Override // com.bumptech.glide.manager.m
    public final void a() {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void a(Drawable drawable) {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void a(i iVar) {
        iVar.a(this.f7270a, this.f7271b);
    }

    @Override // com.bumptech.glide.manager.m
    public final void b() {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void b(i iVar) {
    }

    @Override // com.bumptech.glide.manager.m
    public final void c() {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void c(Drawable drawable) {
    }

    @Override // com.bumptech.glide.e.a.j
    public final d getRequest() {
        return this.f7272c;
    }

    @Override // com.bumptech.glide.e.a.j
    public final void setRequest(d dVar) {
        this.f7272c = dVar;
    }
}
