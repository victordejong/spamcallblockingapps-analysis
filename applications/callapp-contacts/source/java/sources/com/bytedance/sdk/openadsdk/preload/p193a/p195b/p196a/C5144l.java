package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5260j;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5261k;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5268r;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5269s;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5118a;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5227l;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/l.class */
public final class C5144l<T> extends AbstractC5274v<T> {

    /* renamed from: a */
    final C5250f f18435a;

    /* renamed from: b */
    private final AbstractC5269s<T> f18436b;

    /* renamed from: c */
    private final AbstractC5261k<T> f18437c;

    /* renamed from: d */
    private final C5236a<T> f18438d;

    /* renamed from: e */
    private final AbstractC5276w f18439e;

    /* renamed from: f */
    private final C5144l<T>.C5146a f18440f = new C5146a();

    /* renamed from: g */
    private AbstractC5274v<T> f18441g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.l$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/l$a.class */
    public final class C5146a implements AbstractC5260j, AbstractC5268r {
        private C5146a() {
            C5144l.this = r4;
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.l$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/l$b.class */
    public static final class C5147b implements AbstractC5276w {

        /* renamed from: a */
        private final C5236a<?> f18443a;

        /* renamed from: b */
        private final boolean f18444b;

        /* renamed from: c */
        private final Class<?> f18445c;

        /* renamed from: d */
        private final AbstractC5269s<?> f18446d;

        /* renamed from: e */
        private final AbstractC5261k<?> f18447e;

        C5147b(Object obj, C5236a<?> c5236a, boolean z, Class<?> cls) {
            AbstractC5261k<?> abstractC5261k = null;
            AbstractC5269s<?> abstractC5269s = obj instanceof AbstractC5269s ? (AbstractC5269s) obj : null;
            this.f18446d = abstractC5269s;
            abstractC5261k = obj instanceof AbstractC5261k ? (AbstractC5261k) obj : abstractC5261k;
            this.f18447e = abstractC5261k;
            C5118a.m32986a((abstractC5269s == null && abstractC5261k == null) ? false : true);
            this.f18443a = c5236a;
            this.f18444b = z;
            this.f18445c = cls;
        }

        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
        /* renamed from: a */
        public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
            C5236a<?> c5236a2 = this.f18443a;
            if (c5236a2 != null ? c5236a2.equals(c5236a) || (this.f18444b && this.f18443a.m32805b() == c5236a.m32808a()) : this.f18445c.isAssignableFrom(c5236a.m32808a())) {
                return new C5144l(this.f18446d, this.f18447e, c5250f, c5236a, this);
            }
            return null;
        }
    }

    public C5144l(AbstractC5269s<T> abstractC5269s, AbstractC5261k<T> abstractC5261k, C5250f c5250f, C5236a<T> c5236a, AbstractC5276w abstractC5276w) {
        this.f18436b = abstractC5269s;
        this.f18437c = abstractC5261k;
        this.f18435a = c5250f;
        this.f18438d = c5236a;
        this.f18439e = abstractC5276w;
    }

    /* renamed from: a */
    public static AbstractC5276w m32950a(C5236a<?> c5236a, Object obj) {
        return new C5147b(obj, c5236a, c5236a.m32805b() == c5236a.m32808a(), null);
    }

    /* renamed from: b */
    private AbstractC5274v<T> m32949b() {
        AbstractC5274v<T> abstractC5274v = this.f18441g;
        if (abstractC5274v != null) {
            return abstractC5274v;
        }
        AbstractC5274v<T> m32728a = this.f18435a.m32728a(this.f18439e, this.f18438d);
        this.f18441g = m32728a;
        return m32728a;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
    /* renamed from: a */
    public final void mo32518a(C5247c c5247c, T t) throws IOException {
        AbstractC5269s<T> abstractC5269s = this.f18436b;
        if (abstractC5269s == null) {
            m32949b().mo32518a(c5247c, t);
        } else if (t == null) {
            c5247c.mo32745f();
        } else {
            C5227l.m32813a(abstractC5269s.m32678a(t, this.f18438d.m32805b(), this.f18440f), c5247c);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
    /* renamed from: b */
    public final T mo32517b(C5244a c5244a) throws IOException {
        if (this.f18437c == null) {
            return m32949b().mo32517b(c5244a);
        }
        AbstractC5262l m32814a = C5227l.m32814a(c5244a);
        if (!m32814a.m32694j()) {
            return this.f18437c.m32698a(m32814a, this.f18438d.m32805b(), this.f18440f);
        }
        return null;
    }
}
