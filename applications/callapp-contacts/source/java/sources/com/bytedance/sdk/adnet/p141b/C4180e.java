package com.bytedance.sdk.adnet.p141b;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.core.C4203e;
import com.bytedance.sdk.adnet.core.C4211i;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.core.C4221o;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.err.C4243e;
import com.bytedance.sdk.adnet.p141b.C4166d;
import com.bytedance.sdk.adnet.p143d.C4225a;
import com.bytedance.sdk.adnet.p143d.C4227c;
/* renamed from: com.bytedance.sdk.adnet.b.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/e.class */
public class C4180e extends Request<Bitmap> {

    /* renamed from: f */
    private static final Object f15312f = new Object();

    /* renamed from: c */
    private final Object f15313c = new Object();

    /* renamed from: d */
    private final C4166d.AbstractC4178d f15314d;

    /* renamed from: e */
    private C4218m.AbstractC4219a<Bitmap> f15315e;

    public C4180e(String str, C4218m.AbstractC4219a<Bitmap> abstractC4219a, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config) {
        super(0, str, abstractC4219a);
        setRetryPolicy(new C4203e(1000, 2, 2.0f));
        this.f15315e = abstractC4219a;
        this.f15314d = new C4225a(i, i2, scaleType, config);
        setShouldCache(false);
    }

    /* renamed from: b */
    private C4218m<Bitmap> m36236b(C4211i c4211i) {
        Bitmap mo36237a = mo36237a(c4211i.f15450b);
        return mo36237a == null ? C4218m.m36113a(new C4243e(c4211i)) : C4218m.m36112a(mo36237a, C4227c.m36094a(c4211i));
    }

    /* renamed from: a */
    public Bitmap mo36237a(byte[] bArr) {
        return this.f15314d.mo36097a(bArr);
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public C4218m<Bitmap> mo33324a(C4211i c4211i) {
        C4218m<Bitmap> m36236b;
        synchronized (f15312f) {
            try {
                m36236b = m36236b(c4211i);
            } catch (OutOfMemoryError e) {
                C4221o.m36105c("Caught OOM for %d byte image, url=%s", Integer.valueOf(c4211i.f15450b.length), getUrl());
                return C4218m.m36113a(new C4243e(e, 612));
            }
        }
        return m36236b;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public void mo33323a(C4218m<Bitmap> c4218m) {
        C4218m.AbstractC4219a<Bitmap> abstractC4219a;
        synchronized (this.f15313c) {
            abstractC4219a = this.f15315e;
        }
        if (abstractC4219a != null) {
            abstractC4219a.mo33422a(c4218m);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f15313c) {
            this.f15315e = null;
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public Request.EnumC4195b getPriority() {
        return Request.EnumC4195b.LOW;
    }
}
