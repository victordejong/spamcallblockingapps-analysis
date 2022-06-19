package com.bumptech.glide.p116g;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.g.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/h.class */
public final class C3641h extends FilterInputStream {

    /* renamed from: a */
    private int f13751a = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    public C3641h(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: a */
    private long m37591a(long j) {
        int i = this.f13751a;
        if (i == 0) {
            return -1L;
        }
        char c = j;
        if (i != Integer.MIN_VALUE) {
            c = j;
            if (j > i) {
                c = i;
            }
        }
        return c;
    }

    /* renamed from: b */
    private void m37590b(long j) {
        int i = this.f13751a;
        if (i == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.f13751a = (int) (i - j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        int i = this.f13751a;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            super.mark(i);
            this.f13751a = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (m37591a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m37590b(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int m37591a = (int) m37591a(i2);
        if (m37591a == -1) {
            return -1;
        }
        int read = super.read(bArr, i, m37591a);
        m37590b(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            super.reset();
            this.f13751a = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long m37591a = m37591a(j);
        if (m37591a == -1) {
            return 0L;
        }
        long skip = super.skip(m37591a);
        m37590b(skip);
        return skip;
    }
}
