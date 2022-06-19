package com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl;

import com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5417b;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c.class */
class C5332c implements AbstractC5326a {

    /* renamed from: a */
    private long f18823a;

    /* renamed from: b */
    private long f18824b;

    /* renamed from: c */
    private RandomAccessFile f18825c;

    /* renamed from: d */
    private AtomicBoolean f18826d = new AtomicBoolean(false);

    /* renamed from: e */
    private File f18827e;

    public C5332c(long j, File file) throws IOException {
        this.f18823a = j;
        this.f18827e = file;
        file.getParentFile().mkdirs();
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.f18825c = randomAccessFile;
            randomAccessFile.setLength(j);
        } catch (Exception e) {
            C5417b.m32360a(this.f18825c);
            throw new IOException("create raf swap failed! path: " + file.getAbsolutePath() + " caused by: " + e.getMessage(), e);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public int mo32529a(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f18826d.get()) {
            if (bArr == null || bArr.length == 0 || i2 <= 0 || i < 0 || i >= bArr.length) {
                return 0;
            }
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                long j = this.f18824b;
                long j2 = this.f18823a;
                if (j == j2) {
                    return 0;
                }
                int i4 = i3;
                if (i3 + j > j2) {
                    i4 = (int) (j2 - j);
                }
                this.f18825c.write(bArr, i, i4);
                this.f18824b += i4;
                return i4;
            }
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public long mo32531a(long j) throws IOException {
        long j2;
        synchronized (this) {
            if (this.f18826d.get()) {
                throw new IOException("released!");
            }
            int i = (int) j;
            if (i != j) {
                throw new IOException("too large:".concat(String.valueOf(j)));
            }
            int skipBytes = this.f18825c.skipBytes(i);
            this.f18824b = this.f18825c.getFilePointer();
            j2 = skipBytes;
        }
        return j2;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public void mo32533a() throws IOException {
        if (!this.f18826d.get()) {
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
        if (!this.f18826d.get()) {
            if (bArr == null || i2 <= 0 || i < 0 || i >= bArr.length) {
                return 0;
            }
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                long j = this.f18824b;
                long j2 = this.f18823a;
                if (j == j2) {
                    return -1;
                }
                int i4 = i3;
                if (i3 + j > j2) {
                    i4 = (int) (j2 - j);
                }
                int read = this.f18825c.read(bArr, i, i4);
                if (read == -1) {
                    return -1;
                }
                this.f18824b += read;
                return read;
            }
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: b */
    public long mo32528b() {
        return this.f18823a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: b */
    public void mo32527b(long j) throws IOException {
        char c;
        char c2;
        if (!this.f18826d.get()) {
            if (j >= 0) {
                ?? r0 = this.f18823a;
                c = j;
                if (j > r0) {
                    c2 = r0;
                }
                this.f18824b = c;
                this.f18825c.seek(c);
                return;
            }
            c2 = 0;
            c = c2;
            this.f18824b = c;
            this.f18825c.seek(c);
            return;
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: c */
    public long mo32524c() throws IOException {
        if (!this.f18826d.get()) {
            return this.f18824b;
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: d */
    public int mo32523d() throws IOException {
        byte[] bArr = new byte[1];
        if (mo32526b(bArr) == 0) {
            return -1;
        }
        return bArr[0];
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: e */
    public void mo32522e() {
        if (this.f18826d.getAndSet(true)) {
            return;
        }
        C5417b.m32360a(this.f18825c);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: f */
    public File mo32521f() {
        return this.f18827e;
    }
}
