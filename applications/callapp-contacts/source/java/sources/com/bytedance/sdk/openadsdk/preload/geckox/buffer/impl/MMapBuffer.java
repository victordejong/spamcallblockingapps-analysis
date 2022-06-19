package com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl;

import com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5418c;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5423g;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer.class */
class MMapBuffer implements AbstractC5326a {

    /* renamed from: a */
    private long f18815a;

    /* renamed from: b */
    private long f18816b;

    /* renamed from: c */
    private long f18817c;

    /* renamed from: d */
    private AtomicBoolean f18818d = new AtomicBoolean(false);

    /* renamed from: e */
    private File f18819e;

    static {
        C5423g.m32349a("buffer_pg");
    }

    public MMapBuffer(long j, File file) throws IOException {
        m32536d(j);
        this.f18819e = file;
        file.getParentFile().mkdirs();
        m32537c(nCreate(file.getAbsolutePath(), j));
    }

    private native long nCreate(String str, long j) throws IOException;

    private native int nFlush(long j, long j2) throws IOException;

    private native void nRead(long j, long j2, byte[] bArr, int i, int i2);

    private native int nRelease(long j, long j2);

    private native void nWrite(long j, long j2, byte[] bArr, int i, int i2);

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public int mo32529a(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f18818d.get()) {
            if (bArr == null || bArr.length == 0 || i2 <= 0 || i < 0 || i >= bArr.length) {
                return 0;
            }
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                long j = this.f18817c;
                long j2 = this.f18815a;
                if (j == j2) {
                    return 0;
                }
                int i4 = i3;
                if (i3 + j > j2) {
                    i4 = (int) (j2 - j);
                }
                nWrite(this.f18816b, j, bArr, i, i4);
                this.f18817c += i4;
                return i4;
            }
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public long mo32531a(long j) throws IOException {
        synchronized (this) {
            if (!this.f18818d.get()) {
                if (j <= 0) {
                    return 0L;
                }
                long j2 = this.f18817c;
                long j3 = j + j2;
                this.f18817c = j3;
                if (j3 < 0) {
                    this.f18817c = 0L;
                } else {
                    long j4 = this.f18815a;
                    if (j3 > j4) {
                        this.f18817c = j4;
                    }
                }
                return this.f18817c - j2;
            }
            throw new IOException("released!");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public void mo32533a() throws IOException {
        if (!this.f18818d.get()) {
            nFlush(this.f18816b, this.f18815a);
            return;
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public void mo32532a(int i) throws IOException {
        mo32530a(new byte[]{(byte) i});
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public void mo32530a(byte[] bArr) throws IOException {
        mo32529a(bArr, 0, bArr.length);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: b */
    public int mo32526b(byte[] bArr) throws IOException {
        return mo32525b(bArr, 0, bArr.length);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: b */
    public int mo32525b(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f18818d.get()) {
            if (bArr == null || i2 <= 0 || i < 0 || i >= bArr.length) {
                return 0;
            }
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                long j = this.f18817c;
                long j2 = this.f18815a;
                if (j == j2) {
                    return -1;
                }
                int i4 = i3;
                if (i3 + j > j2) {
                    i4 = (int) (j2 - j);
                }
                nRead(this.f18816b, j, bArr, i, i4);
                this.f18817c += i4;
                return i4;
            }
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: b */
    public long mo32528b() {
        return this.f18815a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: b */
    public void mo32527b(long j) throws IOException {
        char c;
        char c2;
        if (!this.f18818d.get()) {
            if (j >= 0) {
                ?? r0 = this.f18815a;
                c = j;
                if (j > r0) {
                    c2 = r0;
                }
                this.f18817c = c;
                return;
            }
            c2 = 0;
            c = c2;
            this.f18817c = c;
            return;
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: c */
    public long mo32524c() throws IOException {
        if (!this.f18818d.get()) {
            return this.f18817c;
        }
        throw new IOException("released!");
    }

    /* renamed from: c */
    void m32537c(long j) {
        this.f18816b = j;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: d */
    public int mo32523d() throws IOException {
        byte[] bArr = new byte[1];
        if (mo32526b(bArr) <= 0) {
            return -1;
        }
        return bArr[0];
    }

    /* renamed from: d */
    void m32536d(long j) {
        this.f18815a = j;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: e */
    public void mo32522e() {
        if (this.f18818d.getAndSet(true)) {
            return;
        }
        nRelease(this.f18816b, this.f18815a);
        this.f18816b = 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: f */
    public File mo32521f() {
        return this.f18819e;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        try {
            mo32522e();
        } catch (Exception e) {
            C5418c.m32359a(e);
        }
    }
}
