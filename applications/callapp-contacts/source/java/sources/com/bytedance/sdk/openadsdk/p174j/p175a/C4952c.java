package com.bytedance.sdk.openadsdk.p174j.p175a;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.core.C4203e;
import com.bytedance.sdk.adnet.core.C4211i;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.err.C4243e;
import com.bytedance.sdk.openadsdk.utils.C5478q;
/* renamed from: com.bytedance.sdk.openadsdk.j.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/c.class */
public class C4952c extends Request<byte[]> {

    /* renamed from: i */
    private static final Object f18007i = new Object();

    /* renamed from: c */
    private final Object f18008c = new Object();

    /* renamed from: d */
    private AbstractC4955a f18009d;

    /* renamed from: e */
    private final Bitmap.Config f18010e;

    /* renamed from: f */
    private final int f18011f;

    /* renamed from: g */
    private final int f18012g;

    /* renamed from: h */
    private final ImageView.ScaleType f18013h;

    /* renamed from: com.bytedance.sdk.openadsdk.j.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/c$a.class */
    public interface AbstractC4955a extends C4218m.AbstractC4219a<byte[]> {
        /* renamed from: a */
        void mo33456a(String str, byte[] bArr);
    }

    public C4952c(String str, AbstractC4955a abstractC4955a, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config) {
        super(0, str, abstractC4955a);
        setRetryPolicy(new C4203e(1000, 2, 2.0f));
        this.f18009d = abstractC4955a;
        this.f18010e = config;
        this.f18011f = i;
        this.f18012g = i2;
        this.f18013h = scaleType;
        setShouldCache(false);
    }

    /* renamed from: a */
    static int m33460a(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (true) {
            float f2 = f;
            float f3 = 2.0f * f2;
            if (f3 <= Math.min(i / i3, i2 / i4)) {
                f = f3;
            } else {
                return (int) f2;
            }
        }
    }

    /* renamed from: a */
    private static int m33459a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        } else if (i == 0) {
            return (int) (i3 * (i2 / i4));
        } else if (i2 == 0) {
            return i;
        } else {
            double d = i4 / i3;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d2 = i2;
                if (i * d < d2) {
                    i = (int) (d2 / d);
                }
                return i;
            }
            double d3 = i2;
            if (i * d > d3) {
                i = (int) (d3 / d);
            }
            return i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0124, code lost:
        if (r0.getHeight() > r0) goto L28;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.bytedance.sdk.adnet.core.C4218m<byte[]> m33457b(com.bytedance.sdk.adnet.core.C4211i r7) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.p174j.p175a.C4952c.m33457b(com.bytedance.sdk.adnet.core.i):com.bytedance.sdk.adnet.core.m");
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public C4218m<byte[]> mo33324a(C4211i c4211i) {
        C4218m<byte[]> m33457b;
        synchronized (f18007i) {
            try {
                m33457b = m33457b(c4211i);
            } catch (OutOfMemoryError e) {
                C5478q.m32108c("GifRequest", "Caught OOM for byte image", e);
                return C4218m.m36113a(new C4243e(e, 612));
            }
        }
        return m33457b;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public void mo33323a(C4218m<byte[]> c4218m) {
        AbstractC4955a abstractC4955a;
        synchronized (this.f18008c) {
            abstractC4955a = this.f18009d;
        }
        if (abstractC4955a != null) {
            abstractC4955a.mo33422a(c4218m);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f18008c) {
            this.f18009d = null;
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public Request.EnumC4195b getPriority() {
        return Request.EnumC4195b.LOW;
    }
}
