package com.bytedance.sdk.openadsdk.j.a;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.core.e;
import com.bytedance.sdk.adnet.core.i;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.openadsdk.utils.q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/c.class */
public class c extends Request<byte[]> {
    private static final Object i = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Object f9645c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private a f9646d;
    private final Bitmap.Config e;
    private final int f;
    private final int g;
    private final ImageView.ScaleType h;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/c$a.class */
    public interface a extends m.a<byte[]> {
        void a(String str, byte[] bArr);
    }

    public c(String str, a aVar, int i2, int i3, ImageView.ScaleType scaleType, Bitmap.Config config) {
        super(0, str, aVar);
        setRetryPolicy(new e(1000, 2, 2.0f));
        this.f9646d = aVar;
        this.e = config;
        this.f = i2;
        this.g = i3;
        this.h = scaleType;
        setShouldCache(false);
    }

    static int a(int i2, int i3, int i4, int i5) {
        float f = 1.0f;
        while (true) {
            float f2 = 2.0f * f;
            if (f2 > Math.min(i2 / i4, i3 / i5)) {
                return (int) f;
            }
            f = f2;
        }
    }

    private static int a(int i2, int i3, int i4, int i5, ImageView.ScaleType scaleType) {
        if (i2 == 0 && i3 == 0) {
            return i4;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i2 == 0 ? i4 : i2;
        }
        if (i2 == 0) {
            return (int) (i4 * (i3 / i5));
        } else if (i3 == 0) {
            return i2;
        } else {
            double d2 = i5 / i4;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d3 = i3;
                if (i2 * d2 < d3) {
                    i2 = (int) (d3 / d2);
                }
                return i2;
            }
            double d4 = i3;
            if (i2 * d2 > d4) {
                i2 = (int) (d4 / d2);
            }
            return i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0124, code lost:
        if (r0.getHeight() > r0) goto L_0x0127;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.bytedance.sdk.adnet.core.m<byte[]> b(com.bytedance.sdk.adnet.core.i r7) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.j.a.c.b(com.bytedance.sdk.adnet.core.i):com.bytedance.sdk.adnet.core.m");
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public m<byte[]> a(i iVar) {
        m<byte[]> b2;
        synchronized (i) {
            try {
                b2 = b(iVar);
            } catch (OutOfMemoryError e) {
                q.c("GifRequest", "Caught OOM for byte image", e);
                return m.a(new com.bytedance.sdk.adnet.err.e(e, 612));
            }
        }
        return b2;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void a(m<byte[]> mVar) {
        a aVar;
        synchronized (this.f9645c) {
            aVar = this.f9646d;
        }
        if (aVar != null) {
            aVar.a(mVar);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f9645c) {
            this.f9646d = null;
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public Request.b getPriority() {
        return Request.b.LOW;
    }
}
