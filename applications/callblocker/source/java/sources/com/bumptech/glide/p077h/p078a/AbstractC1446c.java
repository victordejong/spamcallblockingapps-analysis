package com.bumptech.glide.p077h.p078a;
/* renamed from: com.bumptech.glide.h.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/a/c.class */
public abstract class AbstractC1446c {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.h.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/a/c$a.class */
    public static class C1448a extends AbstractC1446c {

        /* renamed from: a */
        private volatile boolean f4753a;

        C1448a() {
            super();
        }

        @Override // com.bumptech.glide.p077h.p078a.AbstractC1446c
        /* renamed from: a */
        public void mo17013a(boolean z) {
            this.f4753a = z;
        }

        @Override // com.bumptech.glide.p077h.p078a.AbstractC1446c
        /* renamed from: b */
        public void mo17012b() {
            if (this.f4753a) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    private AbstractC1446c() {
    }

    /* renamed from: a */
    public static AbstractC1446c m17014a() {
        return new C1448a();
    }

    /* renamed from: a */
    public abstract void mo17013a(boolean z);

    /* renamed from: b */
    public abstract void mo17012b();
}
