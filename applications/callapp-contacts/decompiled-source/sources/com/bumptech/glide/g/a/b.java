package com.bumptech.glide.g.a;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/b.class */
public abstract class b {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/b$a.class */
    public static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private volatile boolean f7343a;

        public a() {
            super();
        }

        @Override // com.bumptech.glide.g.a.b
        public final void a() {
            if (this.f7343a) {
                throw new IllegalStateException("Already released");
            }
        }

        @Override // com.bumptech.glide.g.a.b
        public final void a(boolean z) {
            this.f7343a = z;
        }
    }

    private b() {
    }

    public abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(boolean z);
}
