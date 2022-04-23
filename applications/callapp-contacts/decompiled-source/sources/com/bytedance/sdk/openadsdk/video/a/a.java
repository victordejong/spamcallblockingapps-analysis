package com.bytedance.sdk.openadsdk.video.a;

import android.content.Context;
import android.media.MediaDataSource;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.video.a.a.b;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/a/a.class */
public class a extends MediaDataSource {

    /* renamed from: a  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.video.a.a.a f10328a = null;

    /* renamed from: b  reason: collision with root package name */
    private long f10329b = -2147483648L;

    /* renamed from: c  reason: collision with root package name */
    private Context f10330c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.video.b.a f10331d;

    public a(Context context, com.bytedance.sdk.openadsdk.video.b.a aVar) {
        this.f10330c = context;
        this.f10331d = aVar;
    }

    private void a() {
        if (this.f10328a == null) {
            this.f10328a = new b(this.f10330c, this.f10331d);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        q.a("SdkMediaDataSource", "close: ", this.f10331d.a());
        com.bytedance.sdk.openadsdk.video.a.a.a aVar = this.f10328a;
        if (aVar != null) {
            aVar.a();
        }
        com.bytedance.sdk.openadsdk.video.a.b.a.f10337a.remove(this.f10331d.b());
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        a();
        if (this.f10329b == -2147483648L) {
            if (this.f10330c == null || TextUtils.isEmpty(this.f10331d.a())) {
                return -1L;
            }
            this.f10329b = this.f10328a.b();
            q.c("SdkMediaDataSource", "getSize: " + this.f10329b);
        }
        return this.f10329b;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
        a();
        int a2 = this.f10328a.a(j, bArr, i, i2);
        q.c("SdkMediaDataSource", "readAt: position = " + j + "  buffer.length =" + bArr.length + "  offset = " + i + " size =" + a2 + "  current = " + Thread.currentThread());
        return a2;
    }
}
