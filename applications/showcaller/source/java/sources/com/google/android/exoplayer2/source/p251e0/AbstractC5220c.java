package com.google.android.exoplayer2.source.p251e0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.C5481l;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.source.e0.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/e0/c.class */
public abstract class AbstractC5220c extends AbstractC5219b {

    /* renamed from: i */
    private byte[] f16404i;

    /* renamed from: j */
    private volatile boolean f16405j;

    public AbstractC5220c(AbstractC5478j abstractC5478j, C5481l c5481l, int i, Format format, int i2, Object obj, byte[] bArr) {
        super(abstractC5478j, c5481l, i, format, i2, obj, -9223372036854775807L, -9223372036854775807L);
        this.f16404i = bArr;
    }

    /* renamed from: i */
    private void m20099i(int i) {
        byte[] bArr = this.f16404i;
        if (bArr == null) {
            this.f16404i = new byte[16384];
        } else if (bArr.length >= i + 16384) {
        } else {
            this.f16404i = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC5465e
    /* renamed from: a */
    public final void mo18957a() {
        try {
            this.f16403h.mo18949b(this.f16396a);
            int i = 0;
            int i2 = 0;
            while (i != -1 && !this.f16405j) {
                m20099i(i2);
                int read = this.f16403h.read(this.f16404i, i2, 16384);
                i = read;
                if (read != -1) {
                    i2 += read;
                    i = read;
                }
            }
            if (!this.f16405j) {
                mo20061g(this.f16404i, i2);
            }
        } finally {
            C5515h0.m18827j(this.f16403h);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC5465e
    /* renamed from: c */
    public final void mo18955c() {
        this.f16405j = true;
    }

    /* renamed from: g */
    protected abstract void mo20061g(byte[] bArr, int i);

    /* renamed from: h */
    public byte[] m20100h() {
        return this.f16404i;
    }
}
