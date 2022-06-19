package com.bytedance.sdk.openadsdk.video.p227a.p228a;

import android.content.Context;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.video.p231b.C5500a;
import com.bytedance.sdk.openadsdk.video.p233d.C5503a;
import com.bytedance.sdk.openadsdk.video.p233d.C5505c;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
/* renamed from: com.bytedance.sdk.openadsdk.video.a.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/a/a/b.class */
public class C5494b implements AbstractC5493a {

    /* renamed from: a */
    public File f19046a;

    /* renamed from: b */
    private volatile long f19047b = -2147483648L;

    /* renamed from: c */
    private final Object f19048c = new Object();

    /* renamed from: d */
    private long f19049d = 0;

    /* renamed from: e */
    private volatile boolean f19050e = false;

    /* renamed from: f */
    private volatile boolean f19051f = false;

    /* renamed from: g */
    private RandomAccessFile f19052g;

    /* renamed from: h */
    private final C5500a f19053h;

    public C5494b(Context context, C5500a c5500a) {
        this.f19052g = null;
        this.f19053h = c5500a;
        try {
            File m31962a = C5505c.m31962a(context, c5500a.m31988b());
            this.f19046a = m31962a;
            boolean m31961a = C5505c.m31961a(m31962a);
            this.f19052g = new RandomAccessFile(this.f19046a, m31961a ? "r" : "rw");
            if (m31961a) {
                return;
            }
            m32009c();
        } catch (Throwable th) {
            C5503a.m31968b("VideoCacheImpl", "Error using file ", c5500a.m31991a(), " as disc cache");
        }
    }

    /* renamed from: d */
    public void m32007d() throws IOException {
        synchronized (this.f19048c) {
            if (C5505c.m31961a(this.f19046a)) {
                C5503a.m31968b("VideoCacheImpl", "complete: isCompleted ", this.f19053h.m31991a(), this.f19053h.m31988b());
                return;
            }
            File file = new File(this.f19046a.getParentFile(), this.f19046a.getName().substring(0, this.f19046a.getName().length() - 9));
            if (!this.f19046a.renameTo(file)) {
                throw new IOException("Error renaming file " + this.f19046a + " to " + file + " for completion!");
            }
            this.f19046a = file;
            RandomAccessFile randomAccessFile = this.f19052g;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            this.f19052g = new RandomAccessFile(this.f19046a, "rw");
            C5503a.m31968b("VideoCacheImpl", "complete: rename ", this.f19053h.m31988b(), this.f19053h.m31991a());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00af, code lost:
        if (r15 <= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b4, code lost:
        return r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ba, code lost:
        if (r14 <= 20000) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00bd, code lost:
        return -1;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:? -> B:35:0x00cf). Please submit an issue!!! */
    @Override // com.bytedance.sdk.openadsdk.video.p227a.p228a.AbstractC5493a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo32016a(long r9, byte[] r11, int r12, int r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.video.p227a.p228a.C5494b.mo32016a(long, byte[], int, int):int");
    }

    @Override // com.bytedance.sdk.openadsdk.video.p227a.p228a.AbstractC5493a
    /* renamed from: a */
    public void mo32017a() {
        try {
            if (!this.f19050e) {
                this.f19052g.close();
            }
        } finally {
            this.f19050e = true;
        }
        this.f19050e = true;
    }

    @Override // com.bytedance.sdk.openadsdk.video.p227a.p228a.AbstractC5493a
    /* renamed from: b */
    public long mo32012b() throws IOException {
        int i;
        if (!C5505c.m31961a(this.f19046a)) {
            synchronized (this.f19048c) {
                int i2 = 0;
                do {
                    if (this.f19047b == -2147483648L) {
                        try {
                            C5503a.m31968b("VideoCacheImpl", "totalLength: wait");
                            i = i2 + 15;
                            this.f19048c.wait(5L);
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
        this.f19047b = this.f19046a.length();
        C5503a.m31968b("VideoCacheImpl", "totalLength= ", Long.valueOf(this.f19047b));
        return this.f19047b;
    }

    /* renamed from: c */
    public void m32009c() {
        C5052e.m33162a(new AbstractRunnableC5055g("executeNetRequest") { // from class: com.bytedance.sdk.openadsdk.video.a.a.b.1
            /* JADX WARN: Finally extract failed */
            /* JADX WARN: Removed duplicated region for block: B:60:0x0258  */
            /* JADX WARN: Type inference failed for: r0v122, types: [long] */
            /* JADX WARN: Type inference failed for: r0v144, types: [long] */
            /* JADX WARN: Type inference failed for: r0v80, types: [long] */
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
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.video.p227a.p228a.C5494b.C54951.run():void");
            }
        });
    }
}
