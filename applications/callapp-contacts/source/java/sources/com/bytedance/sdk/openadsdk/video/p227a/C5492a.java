package com.bytedance.sdk.openadsdk.video.p227a;

import android.content.Context;
import android.media.MediaDataSource;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.video.p227a.p228a.AbstractC5493a;
import com.bytedance.sdk.openadsdk.video.p227a.p228a.C5494b;
import com.bytedance.sdk.openadsdk.video.p227a.p229b.C5496a;
import com.bytedance.sdk.openadsdk.video.p231b.C5500a;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.openadsdk.video.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/a/a.class */
public class C5492a extends MediaDataSource {

    /* renamed from: a */
    private AbstractC5493a f19042a = null;

    /* renamed from: b */
    private long f19043b = -2147483648L;

    /* renamed from: c */
    private Context f19044c;

    /* renamed from: d */
    private final C5500a f19045d;

    public C5492a(Context context, C5500a c5500a) {
        this.f19044c = context;
        this.f19045d = c5500a;
    }

    /* renamed from: a */
    private void m32018a() {
        if (this.f19042a == null) {
            this.f19042a = new C5494b(this.f19044c, this.f19045d);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        C5478q.m32116a("SdkMediaDataSource", "close: ", this.f19045d.m31991a());
        AbstractC5493a abstractC5493a = this.f19042a;
        if (abstractC5493a != null) {
            abstractC5493a.mo32017a();
        }
        C5496a.f19055a.remove(this.f19045d.m31988b());
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        m32018a();
        if (this.f19043b == -2147483648L) {
            if (this.f19044c == null || TextUtils.isEmpty(this.f19045d.m31991a())) {
                return -1L;
            }
            this.f19043b = this.f19042a.mo32012b();
            C5478q.m32109c("SdkMediaDataSource", "getSize: " + this.f19043b);
        }
        return this.f19043b;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
        m32018a();
        int mo32016a = this.f19042a.mo32016a(j, bArr, i, i2);
        C5478q.m32109c("SdkMediaDataSource", "readAt: position = " + j + "  buffer.length =" + bArr.length + "  offset = " + i + " size =" + mo32016a + "  current = " + Thread.currentThread());
        return mo32016a;
    }
}
