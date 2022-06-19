package com.bytedance.sdk.openadsdk.preload.geckox.p206a.p207a;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.a.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/a/a.class */
public class C5307a {

    /* renamed from: a */
    final int f18761a;

    /* renamed from: b */
    final AbstractC5311c f18762b;

    /* renamed from: c */
    private final AbstractC5310b f18763c;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a.class */
    public static final class C5309a {

        /* renamed from: a */
        private int f18764a;

        /* renamed from: b */
        private AbstractC5310b f18765b = AbstractC5310b.f18767a;

        /* renamed from: c */
        private AbstractC5311c f18766c;

        /* renamed from: a */
        public final C5309a m32602a(int i) {
            this.f18764a = i;
            return this;
        }

        /* renamed from: a */
        public final C5309a m32600a(AbstractC5310b abstractC5310b) {
            AbstractC5310b abstractC5310b2 = abstractC5310b;
            if (abstractC5310b == null) {
                abstractC5310b2 = AbstractC5310b.f18767a;
            }
            this.f18765b = abstractC5310b2;
            return this;
        }

        /* renamed from: a */
        public final C5307a m32603a() {
            return new C5307a(this);
        }
    }

    private C5307a(C5309a c5309a) {
        this.f18761a = c5309a.f18764a;
        this.f18763c = c5309a.f18765b;
        this.f18762b = c5309a.f18766c;
    }

    /* renamed from: a */
    public AbstractC5310b m32606a() {
        return this.f18763c;
    }

    /* renamed from: b */
    public int m32605b() {
        return this.f18761a;
    }

    /* renamed from: c */
    public AbstractC5311c m32604c() {
        return this.f18762b;
    }
}
