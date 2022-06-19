package com.bumptech.glide.load.p214j.p218g;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.p207l.AbstractC3984a;
/* renamed from: com.bumptech.glide.load.j.g.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/b.class */
public final class C4254b implements AbstractC3984a.AbstractC3985a {

    /* renamed from: a */
    private final AbstractC4096e f13151a;

    /* renamed from: b */
    private final AbstractC4091b f13152b;

    public C4254b(AbstractC4096e abstractC4096e, AbstractC4091b abstractC4091b) {
        this.f13151a = abstractC4096e;
        this.f13152b = abstractC4091b;
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a.AbstractC3985a
    /* renamed from: a */
    public Bitmap mo23043a(int i, int i2, Bitmap.Config config) {
        return this.f13151a.mo23257e(i, i2, config);
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a.AbstractC3985a
    /* renamed from: b */
    public int[] mo23042b(int i) {
        AbstractC4091b abstractC4091b = this.f13152b;
        return abstractC4091b == null ? new int[i] : (int[]) abstractC4091b.mo23275e(i, int[].class);
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a.AbstractC3985a
    /* renamed from: c */
    public void mo23041c(Bitmap bitmap) {
        this.f13151a.mo22911c(bitmap);
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a.AbstractC3985a
    /* renamed from: d */
    public void mo23040d(byte[] bArr) {
        AbstractC4091b abstractC4091b = this.f13152b;
        if (abstractC4091b == null) {
            return;
        }
        abstractC4091b.mo23276d(bArr);
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a.AbstractC3985a
    /* renamed from: e */
    public byte[] mo23039e(int i) {
        AbstractC4091b abstractC4091b = this.f13152b;
        return abstractC4091b == null ? new byte[i] : (byte[]) abstractC4091b.mo23275e(i, byte[].class);
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a.AbstractC3985a
    /* renamed from: f */
    public void mo23038f(int[] iArr) {
        AbstractC4091b abstractC4091b = this.f13152b;
        if (abstractC4091b == null) {
            return;
        }
        abstractC4091b.mo23276d(iArr);
    }
}
