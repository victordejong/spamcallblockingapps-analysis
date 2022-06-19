package com.bumptech.glide.p112e.p113a;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.p112e.AbstractC3599d;
import com.bumptech.glide.p116g.C3644k;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* renamed from: com.bumptech.glide.e.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/c.class */
public abstract class AbstractC3575c<T> implements AbstractC3585j<T> {

    /* renamed from: a */
    private final int f13618a;

    /* renamed from: b */
    private final int f13619b;

    /* renamed from: c */
    private AbstractC3599d f13620c;

    public AbstractC3575c() {
        this(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    public AbstractC3575c(int i, int i2) {
        if (C3644k.m37581a(i, i2)) {
            this.f13618a = i;
            this.f13619b = i2;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + i + " and height: " + i2);
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: a */
    public final void mo37150a() {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: a */
    public final void mo27009a(Drawable drawable) {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: a */
    public final void mo37660a(AbstractC3584i abstractC3584i) {
        abstractC3584i.mo37651a(this.f13618a, this.f13619b);
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: b */
    public final void mo37149b() {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: b */
    public final void mo37658b(AbstractC3584i abstractC3584i) {
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: c */
    public final void mo37148c() {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: c */
    public final void mo37657c(Drawable drawable) {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    public final AbstractC3599d getRequest() {
        return this.f13620c;
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    public final void setRequest(AbstractC3599d abstractC3599d) {
        this.f13620c = abstractC3599d;
    }
}
