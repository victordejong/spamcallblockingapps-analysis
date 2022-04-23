package com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl;

import com.bytedance.sdk.openadsdk.preload.geckox.buffer.a;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/b.class */
class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f10171a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f10172b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private File f10173c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(File file) throws IOException {
        this.f10173c = file;
        file.getParentFile().mkdirs();
        try {
            this.f10171a = new RandomAccessFile(file, "rw");
        } catch (Exception e) {
            com.bytedance.sdk.openadsdk.preload.geckox.utils.b.a(this.f10171a);
            throw new IOException("create raf mSwap failed! path: " + file.getAbsolutePath() + " caused by: " + e.getMessage(), e);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public int a(byte[] bArr, int i, int i2) throws IOException {
        if (this.f10172b.get()) {
            throw new IOException("released!");
        } else if (bArr == null || bArr.length == 0 || i2 <= 0 || i < 0 || i >= bArr.length) {
            return 0;
        } else {
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                this.f10171a.write(bArr, i, i3);
            }
            return i3;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public long a(long j) throws IOException {
        long skipBytes;
        synchronized (this) {
            if (!this.f10172b.get()) {
                int i = (int) j;
                if (i == j) {
                    skipBytes = this.f10171a.skipBytes(i);
                } else {
                    throw new IOException("too large:".concat(String.valueOf(j)));
                }
            } else {
                throw new IOException("released!");
            }
        }
        return skipBytes;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public void a() throws IOException {
        if (this.f10172b.get()) {
            throw new IOException("released!");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public void a(int i) throws IOException {
        a(new byte[]{(byte) i});
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public void a(byte[] bArr) throws IOException {
        a(bArr, 0, bArr.length);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public int b(byte[] bArr) throws IOException {
        return b(bArr, 0, bArr.length);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public int b(byte[] bArr, int i, int i2) throws IOException {
        int read;
        if (this.f10172b.get()) {
            throw new IOException("released!");
        } else if (bArr == null || i2 <= 0 || i < 0 || i >= bArr.length) {
            return 0;
        } else {
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                read = this.f10171a.read(bArr, i, i3);
            }
            return read;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public long b() throws IOException {
        return this.f10171a.length();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public void b(long j) throws IOException {
        if (!this.f10172b.get()) {
            long j2 = j;
            if (j < 0) {
                j2 = 0;
            }
            this.f10171a.seek(j2);
            return;
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public long c() throws IOException {
        if (!this.f10172b.get()) {
            return this.f10171a.getFilePointer();
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public int d() throws IOException {
        byte[] bArr = new byte[1];
        if (b(bArr) <= 0) {
            return -1;
        }
        return bArr[0];
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public void e() {
        if (!this.f10172b.getAndSet(true)) {
            com.bytedance.sdk.openadsdk.preload.geckox.utils.b.a(this.f10171a);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public File f() {
        return this.f10173c;
    }
}
