package com.bumptech.glide.load.resource.p125d;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.p109b.AbstractC3542a;
/* renamed from: com.bumptech.glide.load.resource.d.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/b.class */
public final class C3908b implements AbstractC3542a.AbstractC3543a {

    /* renamed from: a */
    private final AbstractC3712e f14305a;

    /* renamed from: b */
    private final AbstractC3707b f14306b;

    public C3908b(AbstractC3712e abstractC3712e) {
        this(abstractC3712e, null);
    }

    public C3908b(AbstractC3712e abstractC3712e, AbstractC3707b abstractC3707b) {
        this.f14305a = abstractC3712e;
        this.f14306b = abstractC3707b;
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a.AbstractC3543a
    /* renamed from: a */
    public final Bitmap mo37228a(int i, int i2, Bitmap.Config config) {
        return this.f14305a.mo37457b(i, i2, config);
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a.AbstractC3543a
    /* renamed from: a */
    public final void mo37227a(Bitmap bitmap) {
        this.f14305a.mo37266a(bitmap);
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a.AbstractC3543a
    /* renamed from: a */
    public final void mo37226a(byte[] bArr) {
        AbstractC3707b abstractC3707b = this.f14306b;
        if (abstractC3707b == null) {
            return;
        }
        abstractC3707b.mo37470a((AbstractC3707b) bArr);
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a.AbstractC3543a
    /* renamed from: a */
    public final void mo37225a(int[] iArr) {
        AbstractC3707b abstractC3707b = this.f14306b;
        if (abstractC3707b == null) {
            return;
        }
        abstractC3707b.mo37470a((AbstractC3707b) iArr);
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a.AbstractC3543a
    /* renamed from: a */
    public final byte[] mo37229a(int i) {
        AbstractC3707b abstractC3707b = this.f14306b;
        return abstractC3707b == null ? new byte[i] : (byte[]) abstractC3707b.mo37474a(i, byte[].class);
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a.AbstractC3543a
    /* renamed from: b */
    public final int[] mo37224b(int i) {
        AbstractC3707b abstractC3707b = this.f14306b;
        return abstractC3707b == null ? new int[i] : (int[]) abstractC3707b.mo37474a(i, int[].class);
    }
}
