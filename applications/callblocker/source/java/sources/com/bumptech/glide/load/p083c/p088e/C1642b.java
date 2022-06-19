package com.bumptech.glide.load.p083c.p088e;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.p069b.AbstractC1355a;
/* renamed from: com.bumptech.glide.load.c.e.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/b.class */
public final class C1642b implements AbstractC1355a.AbstractC1356a {

    /* renamed from: a */
    private final AbstractC1678e f5042a;

    /* renamed from: b */
    private final AbstractC1673b f5043b;

    public C1642b(AbstractC1678e abstractC1678e, AbstractC1673b abstractC1673b) {
        this.f5042a = abstractC1678e;
        this.f5043b = abstractC1673b;
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a.AbstractC1356a
    /* renamed from: a */
    public Bitmap mo16668a(int i, int i2, Bitmap.Config config) {
        return this.f5042a.mo16538b(i, i2, config);
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a.AbstractC1356a
    /* renamed from: a */
    public void mo16667a(Bitmap bitmap) {
        this.f5042a.mo16540a(bitmap);
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a.AbstractC1356a
    /* renamed from: a */
    public void mo16666a(byte[] bArr) {
        if (this.f5043b == null) {
            return;
        }
        this.f5043b.mo16557a((AbstractC1673b) bArr);
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a.AbstractC1356a
    /* renamed from: a */
    public void mo16665a(int[] iArr) {
        if (this.f5043b == null) {
            return;
        }
        this.f5043b.mo16557a((AbstractC1673b) iArr);
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a.AbstractC1356a
    /* renamed from: a */
    public byte[] mo16669a(int i) {
        return this.f5043b == null ? new byte[i] : (byte[]) this.f5043b.mo16562a(i, byte[].class);
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a.AbstractC1356a
    /* renamed from: b */
    public int[] mo16664b(int i) {
        return this.f5043b == null ? new int[i] : (int[]) this.f5043b.mo16562a(i, int[].class);
    }
}
