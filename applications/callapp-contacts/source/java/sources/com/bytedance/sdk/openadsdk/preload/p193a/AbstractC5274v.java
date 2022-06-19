package com.bytedance.sdk.openadsdk.preload.p193a;

import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5129f;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.v */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/v.class */
public abstract class AbstractC5274v<T> {
    /* renamed from: a */
    public final AbstractC5262l m32676a(T t) {
        try {
            C5129f c5129f = new C5129f();
            mo32518a(c5129f, t);
            return c5129f.m32969a();
        } catch (IOException e) {
            throw new C5263m(e);
        }
    }

    /* renamed from: a */
    public final AbstractC5274v<T> m32677a() {
        return new AbstractC5274v<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.v.1
            @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
            /* renamed from: a */
            public void mo32518a(C5247c c5247c, T t) throws IOException {
                if (t == null) {
                    c5247c.mo32745f();
                } else {
                    AbstractC5274v.this.mo32518a(c5247c, t);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
            /* renamed from: b */
            public T mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                return (T) AbstractC5274v.this.mo32517b(c5244a);
            }
        };
    }

    /* renamed from: a */
    public abstract void mo32518a(C5247c c5247c, T t) throws IOException;

    /* renamed from: b */
    public abstract T mo32517b(C5244a c5244a) throws IOException;
}
