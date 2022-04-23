package com.bytedance.sdk.adnet.b;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.b.d;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.core.i;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.core.o;
import com.bytedance.sdk.adnet.d.a;
import com.bytedance.sdk.adnet.d.c;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/e.class */
public class e extends Request<Bitmap> {
    private static final Object f = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Object f8241c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final d.AbstractC0157d f8242d;
    private m.a<Bitmap> e;

    public e(String str, m.a<Bitmap> aVar, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config) {
        super(0, str, aVar);
        setRetryPolicy(new com.bytedance.sdk.adnet.core.e(1000, 2, 2.0f));
        this.e = aVar;
        this.f8242d = new a(i, i2, scaleType, config);
        setShouldCache(false);
    }

    private m<Bitmap> b(i iVar) {
        Bitmap a2 = a(iVar.f8323b);
        return a2 == null ? m.a(new com.bytedance.sdk.adnet.err.e(iVar)) : m.a(a2, c.a(iVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bitmap a(byte[] bArr) {
        return this.f8242d.a(bArr);
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public m<Bitmap> a(i iVar) {
        m<Bitmap> b2;
        synchronized (f) {
            try {
                b2 = b(iVar);
            } catch (OutOfMemoryError e) {
                o.c("Caught OOM for %d byte image, url=%s", Integer.valueOf(iVar.f8323b.length), getUrl());
                return m.a(new com.bytedance.sdk.adnet.err.e(e, 612));
            }
        }
        return b2;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void a(m<Bitmap> mVar) {
        m.a<Bitmap> aVar;
        synchronized (this.f8241c) {
            aVar = this.e;
        }
        if (aVar != null) {
            aVar.a(mVar);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f8241c) {
            this.e = null;
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public Request.b getPriority() {
        return Request.b.LOW;
    }
}
