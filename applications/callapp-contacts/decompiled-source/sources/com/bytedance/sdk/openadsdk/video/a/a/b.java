package com.bytedance.sdk.openadsdk.video.a.a;

import android.content.Context;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.video.b.a;
import com.bytedance.sdk.openadsdk.video.d.c;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/a/a/b.class */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    public File f10332a;

    /* renamed from: b  reason: collision with root package name */
    private volatile long f10333b = -2147483648L;

    /* renamed from: c  reason: collision with root package name */
    private final Object f10334c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private long f10335d = 0;
    private volatile boolean e = false;
    private volatile boolean f = false;
    private RandomAccessFile g;
    private final a h;

    public b(Context context, a aVar) {
        this.g = null;
        this.h = aVar;
        try {
            File a2 = c.a(context, aVar.b());
            this.f10332a = a2;
            boolean a3 = c.a(a2);
            this.g = new RandomAccessFile(this.f10332a, a3 ? "r" : "rw");
            if (!a3) {
                c();
            }
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.video.d.a.b("VideoCacheImpl", "Error using file ", aVar.a(), " as disc cache");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() throws IOException {
        synchronized (this.f10334c) {
            if (c.a(this.f10332a)) {
                com.bytedance.sdk.openadsdk.video.d.a.b("VideoCacheImpl", "complete: isCompleted ", this.h.a(), this.h.b());
                return;
            }
            File file = new File(this.f10332a.getParentFile(), this.f10332a.getName().substring(0, this.f10332a.getName().length() - 9));
            if (this.f10332a.renameTo(file)) {
                this.f10332a = file;
                RandomAccessFile randomAccessFile = this.g;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.g = new RandomAccessFile(this.f10332a, "rw");
                com.bytedance.sdk.openadsdk.video.d.a.b("VideoCacheImpl", "complete: rename ", this.h.b(), this.h.a());
                return;
            }
            throw new IOException("Error renaming file " + this.f10332a + " to " + file + " for completion!");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00af, code lost:
        if (r15 <= 0) goto L_0x00b5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b4, code lost:
        return r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ba, code lost:
        if (r14 <= 20000) goto L_0x0011;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00bd, code lost:
        return -1;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:? -> B:35:0x00cf). Please submit an issue!!! */
    @Override // com.bytedance.sdk.openadsdk.video.a.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(long r9, byte[] r11, int r12, int r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.video.a.a.b.a(long, byte[], int, int):int");
    }

    @Override // com.bytedance.sdk.openadsdk.video.a.a.a
    public void a() {
        try {
            if (!this.e) {
                this.g.close();
            }
        } finally {
            this.e = true;
        }
        this.e = true;
    }

    @Override // com.bytedance.sdk.openadsdk.video.a.a.a
    public long b() throws IOException {
        int i;
        if (c.a(this.f10332a)) {
            this.f10333b = this.f10332a.length();
        } else {
            synchronized (this.f10334c) {
                int i2 = 0;
                do {
                    if (this.f10333b == -2147483648L) {
                        try {
                            com.bytedance.sdk.openadsdk.video.d.a.b("VideoCacheImpl", "totalLength: wait");
                            i = i2 + 15;
                            this.f10334c.wait(5L);
                            i2 = i;
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                            throw new IOException("total length InterruptException");
                        }
                    }
                } while (i <= 20000);
                return -1L;
            }
        }
        com.bytedance.sdk.openadsdk.video.d.a.b("VideoCacheImpl", "totalLength= ", Long.valueOf(this.f10333b));
        return this.f10333b;
    }

    public void c() {
        e.a(new g("executeNetRequest") { // from class: com.bytedance.sdk.openadsdk.video.a.a.b.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:60:0x0258  */
            /* JADX WARN: Type inference failed for: r0v122, types: [long] */
            /* JADX WARN: Type inference failed for: r16v1, types: [long] */
            /* JADX WARN: Type inference failed for: r16v3 */
            /* JADX WARN: Type inference failed for: r16v4 */
            /* JADX WARN: Type inference failed for: r16v5 */
            /* JADX WARN: Type inference failed for: r18v0 */
            /* JADX WARN: Type inference failed for: r18v1, types: [long] */
            /* JADX WARN: Type inference failed for: r18v2 */
            /* JADX WARN: Type inference failed for: r18v4 */
            /* JADX WARN: Type inference failed for: r18v6 */
            /* JADX WARN: Unknown variable types count: 4 */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 1116
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.video.a.a.b.AnonymousClass1.run():void");
            }
        });
    }
}
