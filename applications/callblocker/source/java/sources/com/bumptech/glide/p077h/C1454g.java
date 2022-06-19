package com.bumptech.glide.p077h;

import androidx.recyclerview.widget.RecyclerView;
import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.h.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/g.class */
public class C1454g extends FilterInputStream {

    /* renamed from: a */
    private int f4765a = RecyclerView.UNDEFINED_DURATION;

    public C1454g(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: a */
    private long m16993a(long j) {
        char c;
        if (this.f4765a == 0) {
            c = 65535;
        } else {
            c = j;
            if (this.f4765a != Integer.MIN_VALUE) {
                c = j;
                if (j > this.f4765a) {
                    c = this.f4765a;
                }
            }
        }
        return c;
    }

    /* renamed from: b */
    private void m16992b(long j) {
        if (this.f4765a == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.f4765a = (int) (this.f4765a - j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return this.f4765a == Integer.MIN_VALUE ? super.available() : Math.min(this.f4765a, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            super.mark(i);
            this.f4765a = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read;
        if (m16993a(1L) == -1) {
            read = -1;
        } else {
            read = super.read();
            m16992b(1L);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read;
        int m16993a = (int) m16993a(i2);
        if (m16993a == -1) {
            read = -1;
        } else {
            read = super.read(bArr, i, m16993a);
            m16992b(read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        synchronized (this) {
            super.reset();
            this.f4765a = RecyclerView.UNDEFINED_DURATION;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        char skip;
        long m16993a = m16993a(j);
        if (m16993a == -1) {
            skip = 0;
        } else {
            skip = super.skip(m16993a);
            m16992b(skip);
        }
        return skip;
    }
}
