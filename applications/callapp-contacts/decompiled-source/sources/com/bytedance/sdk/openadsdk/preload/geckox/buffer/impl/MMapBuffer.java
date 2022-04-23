package com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl;

import com.bytedance.sdk.openadsdk.preload.geckox.buffer.a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.c;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.g;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer.class */
class MMapBuffer implements a {

    /* renamed from: a  reason: collision with root package name */
    private long f10167a;

    /* renamed from: b  reason: collision with root package name */
    private long f10168b;

    /* renamed from: c  reason: collision with root package name */
    private long f10169c;

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f10170d = new AtomicBoolean(false);
    private File e;

    static {
        g.a("buffer_pg");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MMapBuffer(long j, File file) throws IOException {
        d(j);
        this.e = file;
        file.getParentFile().mkdirs();
        c(nCreate(file.getAbsolutePath(), j));
    }

    private native long nCreate(String str, long j) throws IOException;

    private native int nFlush(long j, long j2) throws IOException;

    private native void nRead(long j, long j2, byte[] bArr, int i, int i2);

    private native int nRelease(long j, long j2);

    private native void nWrite(long j, long j2, byte[] bArr, int i, int i2);

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public int a(byte[] bArr, int i, int i2) throws IOException {
        if (this.f10170d.get()) {
            throw new IOException("released!");
        } else if (bArr == null || bArr.length == 0 || i2 <= 0 || i < 0 || i >= bArr.length) {
            return 0;
        } else {
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                long j = this.f10169c;
                long j2 = this.f10167a;
                if (j == j2) {
                    return 0;
                }
                int i4 = i3;
                if (i3 + j > j2) {
                    i4 = (int) (j2 - j);
                }
                nWrite(this.f10168b, j, bArr, i, i4);
                this.f10169c += i4;
                return i4;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public long a(long j) throws IOException {
        synchronized (this) {
            if (this.f10170d.get()) {
                throw new IOException("released!");
            } else if (j <= 0) {
                return 0L;
            } else {
                long j2 = this.f10169c;
                long j3 = j + j2;
                this.f10169c = j3;
                if (j3 < 0) {
                    this.f10169c = 0L;
                } else {
                    long j4 = this.f10167a;
                    if (j3 > j4) {
                        this.f10169c = j4;
                    }
                }
                return this.f10169c - j2;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public void a() throws IOException {
        if (!this.f10170d.get()) {
            nFlush(this.f10168b, this.f10167a);
            return;
        }
        throw new IOException("released!");
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
        if (this.f10170d.get()) {
            throw new IOException("released!");
        } else if (bArr == null || i2 <= 0 || i < 0 || i >= bArr.length) {
            return 0;
        } else {
            int i3 = i2;
            if (i + i2 > bArr.length) {
                i3 = bArr.length - i;
            }
            synchronized (this) {
                long j = this.f10169c;
                long j2 = this.f10167a;
                if (j == j2) {
                    return -1;
                }
                int i4 = i3;
                if (i3 + j > j2) {
                    i4 = (int) (j2 - j);
                }
                nRead(this.f10168b, j, bArr, i, i4);
                this.f10169c += i4;
                return i4;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public long b() {
        return this.f10167a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
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
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.f10170d
            boolean r0 = r0.get()
            if (r0 != 0) goto L_0x0034
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
            long r0 = r0.f10167a
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
            r0.f10169c = r1
            return
        L_0x0034:
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            java.lang.String r2 = "released!"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.MMapBuffer.b(long):void");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public long c() throws IOException {
        if (!this.f10170d.get()) {
            return this.f10169c;
        }
        throw new IOException("released!");
    }

    void c(long j) {
        this.f10168b = j;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public int d() throws IOException {
        byte[] bArr = new byte[1];
        if (b(bArr) <= 0) {
            return -1;
        }
        return bArr[0];
    }

    void d(long j) {
        this.f10167a = j;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public void e() {
        if (!this.f10170d.getAndSet(true)) {
            nRelease(this.f10168b, this.f10167a);
            this.f10168b = 0L;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.buffer.a
    public File f() {
        return this.e;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        try {
            e();
        } catch (Exception e) {
            c.a(e);
        }
    }
}
