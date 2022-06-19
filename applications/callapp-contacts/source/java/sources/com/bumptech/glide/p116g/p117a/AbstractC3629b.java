package com.bumptech.glide.p116g.p117a;
/* renamed from: com.bumptech.glide.g.a.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/b.class */
public abstract class AbstractC3629b {

    /* renamed from: com.bumptech.glide.g.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/b$a.class */
    public static final class C3631a extends AbstractC3629b {

        /* renamed from: a */
        private volatile boolean f13739a;

        public C3631a() {
            super();
        }

        @Override // com.bumptech.glide.p116g.p117a.AbstractC3629b
        /* renamed from: a */
        public final void mo37604a() {
            if (!this.f13739a) {
                return;
            }
            throw new IllegalStateException("Already released");
        }

        @Override // com.bumptech.glide.p116g.p117a.AbstractC3629b
        /* renamed from: a */
        public final void mo37603a(boolean z) {
            this.f13739a = z;
        }
    }

    private AbstractC3629b() {
    }

    /* renamed from: a */
    public abstract void mo37604a();

    /* renamed from: a */
    public abstract void mo37603a(boolean z);
}
