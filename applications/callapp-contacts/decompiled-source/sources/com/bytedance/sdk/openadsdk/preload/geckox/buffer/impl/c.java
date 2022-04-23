package com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl;

import com.bytedance.sdk.openadsdk.preload.geckox.buffer.a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.b;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c.class */
class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private long f10174a;

    /* renamed from: b  reason: collision with root package name */
    private long f10175b;

    /* renamed from: c  reason: collision with root package name */
    private RandomAccessFile f10176c;

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f10177d = new AtomicBoolean(false);
    private File e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(long j, File file) throws IOException {
        this.f10174a = j;
        this.e = file;
        file.getParentFile().mkdirs();
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.f10176c = randomAccessFile;
            randomAccessFile.setLength(j);
        } catch (Exception e) {
            b.a(this.f10176c);
            throw new IOException("create raf swap failed! path: " + file.getAbsolutePath() + " caused by: " + e.getMessage(), e);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public int a(byte[] bArr, int i, int i2) throws IOException {
        if (this.f10177d.get()) {
            throw new IOException("released!");
        } else if (bArr == null || bArr.length == 0 || i2 <= 0 || i < 0 || i >= bArr.length) {
            return 0;
        } else {
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                long j = this.f10175b;
                long j2 = this.f10174a;
                if (j == j2) {
                    return 0;
                }
                int i4 = i3;
                if (i3 + j > j2) {
                    i4 = (int) (j2 - j);
                }
                this.f10176c.write(bArr, i, i4);
                this.f10175b += i4;
                return i4;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public long a(long j) throws IOException {
        long j2;
        synchronized (this) {
            if (!this.f10177d.get()) {
                int i = (int) j;
                if (i == j) {
                    int skipBytes = this.f10176c.skipBytes(i);
                    this.f10175b = this.f10176c.getFilePointer();
                    j2 = skipBytes;
                } else {
                    throw new IOException("too large:".concat(String.valueOf(j)));
                }
            } else {
                throw new IOException("released!");
            }
        }
        return j2;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public void a() throws IOException {
        if (this.f10177d.get()) {
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
        if (this.f10177d.get()) {
            throw new IOException("released!");
        } else if (bArr == null || i2 <= 0 || i < 0 || i >= bArr.length) {
            return 0;
        } else {
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                long j = this.f10175b;
                long j2 = this.f10174a;
                if (j == j2) {
                    return -1;
                }
                int i4 = i3;
                if (i3 + j > j2) {
                    i4 = (int) (j2 - j);
                }
                int read = this.f10176c.read(bArr, i, i4);
                if (read == -1) {
                    return -1;
                }
                this.f10175b += read;
                return read;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public long b() {
        return this.f10174a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(long r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.f10177d
            boolean r0 = r0.get()
            if (r0 != 0) goto L_0x003c
            r0 = 0
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0019
            r0 = r8
            r6 = r0
        L_0x0014:
            r0 = r6
            r8 = r0
            goto L_0x002e
        L_0x0019:
            r0 = r5
            long r0 = r0.f10174a
            r10 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x002e
            r0 = r10
            r6 = r0
            goto L_0x0014
        L_0x002e:
            r0 = r5
            r1 = r8
            r0.f10175b = r1
            r0 = r5
            java.io.RandomAccessFile r0 = r0.f10176c
            r1 = r8
            r0.seek(r1)
            return
        L_0x003c:
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            java.lang.String r2 = "released!"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.c.b(long):void");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public long c() throws IOException {
        if (!this.f10177d.get()) {
            return this.f10175b;
        }
        throw new IOException("released!");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public int d() throws IOException {
        byte[] bArr = new byte[1];
        if (b(bArr) == 0) {
            return -1;
        }
        return bArr[0];
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public void e() {
        if (!this.f10177d.getAndSet(true)) {
            b.a(this.f10176c);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public File f() {
        return this.e;
    }
}
