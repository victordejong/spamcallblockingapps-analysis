package com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl;

import com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5417b;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/b.class */
class C5331b implements AbstractC5326a {

    /* renamed from: a */
    private RandomAccessFile f18820a;

    /* renamed from: b */
    private AtomicBoolean f18821b = new AtomicBoolean(false);

    /* renamed from: c */
    private File f18822c;

    public C5331b(File file) throws IOException {
        this.f18822c = file;
        file.getParentFile().mkdirs();
        try {
            this.f18820a = new RandomAccessFile(file, "rw");
        } catch (Exception e) {
            C5417b.m32360a(this.f18820a);
            throw new IOException("create raf mSwap failed! path: " + file.getAbsolutePath() + " caused by: " + e.getMessage(), e);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public int mo32529a(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f18821b.get()) {
            if (bArr == null || bArr.length == 0 || i2 <= 0 || i < 0 || i >= bArr.length) {
                return 0;
            }
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                this.f18820a.write(bArr, i, i3);
            }
            return i3;
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public long mo32531a(long j) throws IOException {
        long skipBytes;
        synchronized (this) {
            if (this.f18821b.get()) {
                throw new IOException("released!");
            }
            int i = (int) j;
            if (i != j) {
                throw new IOException("too large:".concat(String.valueOf(j)));
            }
            skipBytes = this.f18820a.skipBytes(i);
        }
        return skipBytes;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: a */
    public void mo32533a() throws IOException {
        if (!this.f18821b.get()) {
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
        int read;
        if (!this.f18821b.get()) {
            if (bArr == null || i2 <= 0 || i < 0 || i >= bArr.length) {
                return 0;
            }
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                read = this.f18820a.read(bArr, i, i3);
            }
            return read;
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: b */
    public long mo32528b() throws IOException {
        return this.f18820a.length();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: b */
    public void mo32527b(long j) throws IOException {
        if (!this.f18821b.get()) {
            char c = j;
            if (j < 0) {
                c = 0;
            }
            this.f18820a.seek(c);
            return;
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: c */
    public long mo32524c() throws IOException {
        if (!this.f18821b.get()) {
            return this.f18820a.getFilePointer();
        }
        throw new IOException("released!");
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

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: e */
    public void mo32522e() {
        if (this.f18821b.getAndSet(true)) {
            return;
        }
        C5417b.m32360a(this.f18820a);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a
    /* renamed from: f */
    public File mo32521f() {
        return this.f18822c;
    }
}
