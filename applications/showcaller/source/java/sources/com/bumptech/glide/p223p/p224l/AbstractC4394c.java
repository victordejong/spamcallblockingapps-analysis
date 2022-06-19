package com.bumptech.glide.p223p.p224l;
/* renamed from: com.bumptech.glide.p.l.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/l/c.class */
public abstract class AbstractC4394c {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.p.l.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/l/c$b.class */
    public static class C4396b extends AbstractC4394c {

        /* renamed from: a */
        private volatile boolean f13399a;

        C4396b() {
            super();
        }

        @Override // com.bumptech.glide.p223p.p224l.AbstractC4394c
        /* renamed from: b */
        public void mo22677b(boolean z) {
            this.f13399a = z;
        }

        @Override // com.bumptech.glide.p223p.p224l.AbstractC4394c
        /* renamed from: c */
        public void mo22676c() {
            if (!this.f13399a) {
                return;
            }
            throw new IllegalStateException("Already released");
        }
    }

    private AbstractC4394c() {
    }

    /* renamed from: a */
    public static AbstractC4394c m22678a() {
        return new C4396b();
    }

    /* renamed from: b */
    public abstract void mo22677b(boolean z);

    /* renamed from: c */
    public abstract void mo22676c();
}
