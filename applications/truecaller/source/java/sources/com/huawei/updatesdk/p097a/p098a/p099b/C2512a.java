package com.huawei.updatesdk.p097a.p098a.p099b;

import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: com.huawei.updatesdk.a.a.b.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/b/a.class */
public final class C2512a {

    /* renamed from: b */
    private static final C2512a f8178b = new C2512a();

    /* renamed from: a */
    private final Queue<byte[]> f8179a = new ArrayDeque(0);

    private C2512a() {
    }

    /* renamed from: b */
    public static C2512a m36858b() {
        return f8178b;
    }

    /* renamed from: a */
    public void m36859a(byte[] bArr) {
        if (bArr.length == 65536) {
            synchronized (this.f8179a) {
                if (this.f8179a.size() < 32 && !this.f8179a.offer(bArr)) {
                    C2515a.m36849a("ByteArrayPool", "releaseBytes false");
                }
            }
        }
    }

    /* renamed from: a */
    public byte[] m36860a() {
        byte[] poll;
        synchronized (this.f8179a) {
            poll = this.f8179a.poll();
        }
        byte[] bArr = poll;
        if (poll == null) {
            bArr = new byte[65536];
        }
        return bArr;
    }
}
