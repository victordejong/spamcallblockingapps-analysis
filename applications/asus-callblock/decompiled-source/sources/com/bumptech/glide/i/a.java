package com.bumptech.glide.i;

import android.util.Log;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i/a.class */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final a f3459b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Queue<byte[]> f3460a = h.a(0);

    private a() {
    }

    public static a a() {
        return f3459b;
    }

    public final boolean a(byte[] bArr) {
        r6 = false;
        boolean z = false;
        if (bArr.length == 65536) {
            synchronized (this.f3460a) {
                if (this.f3460a.size() < 32) {
                    z = true;
                    this.f3460a.offer(bArr);
                }
            }
        }
        return z;
    }

    public final byte[] b() {
        byte[] poll;
        synchronized (this.f3460a) {
            poll = this.f3460a.poll();
        }
        byte[] bArr = poll;
        if (poll == null) {
            byte[] bArr2 = new byte[65536];
            bArr = bArr2;
            if (Log.isLoggable("ByteArrayPool", 3)) {
                Log.d("ByteArrayPool", "Created temp bytes");
                bArr = bArr2;
            }
        }
        return bArr;
    }
}
