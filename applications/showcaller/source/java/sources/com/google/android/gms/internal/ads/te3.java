package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/te3.class */
final class te3 extends InputStream {

    /* renamed from: d */
    private Iterator<ByteBuffer> f29949d;

    /* renamed from: e */
    private ByteBuffer f29950e;

    /* renamed from: f */
    private int f29951f = 0;

    /* renamed from: g */
    private int f29952g;

    /* renamed from: h */
    private int f29953h;

    /* renamed from: i */
    private boolean f29954i;

    /* renamed from: j */
    private byte[] f29955j;

    /* renamed from: k */
    private int f29956k;

    /* renamed from: l */
    private long f29957l;

    public te3(Iterable<ByteBuffer> iterable) {
        this.f29949d = iterable.iterator();
        for (ByteBuffer byteBuffer : iterable) {
            this.f29951f++;
        }
        this.f29952g = -1;
        if (!m10714a()) {
            this.f29950e = se3.f29465d;
            this.f29952g = 0;
            this.f29953h = 0;
            this.f29957l = 0L;
        }
    }

    /* renamed from: a */
    private final boolean m10714a() {
        this.f29952g++;
        if (!this.f29949d.hasNext()) {
            return false;
        }
        ByteBuffer next = this.f29949d.next();
        this.f29950e = next;
        this.f29953h = next.position();
        if (this.f29950e.hasArray()) {
            this.f29954i = true;
            this.f29955j = this.f29950e.array();
            this.f29956k = this.f29950e.arrayOffset();
            return true;
        }
        this.f29954i = false;
        this.f29957l = bh3.m16370A(this.f29950e);
        this.f29955j = null;
        return true;
    }

    /* renamed from: e */
    private final void m10713e(int i) {
        int i2 = this.f29953h + i;
        this.f29953h = i2;
        if (i2 == this.f29950e.limit()) {
            m10714a();
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte m16337z;
        if (this.f29952g == this.f29951f) {
            return -1;
        }
        if (this.f29954i) {
            m16337z = this.f29955j[this.f29953h + this.f29956k];
            m10713e(1);
        } else {
            m16337z = bh3.m16337z(this.f29953h + this.f29957l);
            m10713e(1);
        }
        return m16337z & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.f29952g == this.f29951f) {
            return -1;
        }
        int limit = this.f29950e.limit();
        int i3 = this.f29953h;
        int i4 = limit - i3;
        int i5 = i2;
        if (i2 > i4) {
            i5 = i4;
        }
        if (this.f29954i) {
            System.arraycopy(this.f29955j, i3 + this.f29956k, bArr, i, i5);
            m10713e(i5);
        } else {
            int position = this.f29950e.position();
            ByteBuffer byteBuffer = (ByteBuffer) this.f29950e.position(this.f29953h);
            this.f29950e.get(bArr, i, i5);
            ByteBuffer byteBuffer2 = (ByteBuffer) this.f29950e.position(position);
            m10713e(i5);
        }
        return i5;
    }
}
