package com.bumptech.glide.load.b.a;

import android.graphics.Bitmap;
import com.bumptech.glide.i.h;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/a.class */
final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    private final b f3486a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final e<C0097a, Bitmap> f3487b = new e<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.b.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/a$a.class */
    public static final class C0097a implements h {

        /* renamed from: a  reason: collision with root package name */
        int f3488a;

        /* renamed from: b  reason: collision with root package name */
        int f3489b;
        Bitmap.Config c;
        private final b d;

        public C0097a(b bVar) {
            this.d = bVar;
        }

        @Override // com.bumptech.glide.load.b.a.h
        public final void a() {
            this.d.a(this);
        }

        public final boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C0097a) {
                C0097a aVar = (C0097a) obj;
                z = false;
                if (this.f3488a == aVar.f3488a) {
                    z = false;
                    if (this.f3489b == aVar.f3489b) {
                        z = false;
                        if (this.c == aVar.c) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            int i = this.f3488a;
            return (this.c != null ? this.c.hashCode() : 0) + (((i * 31) + this.f3489b) * 31);
        }

        public final String toString() {
            return a.c(this.f3488a, this.f3489b, this.c);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/a$b.class */
    static final class b extends com.bumptech.glide.load.b.a.b<C0097a> {
        b() {
        }

        public final C0097a a(int i, int i2, Bitmap.Config config) {
            C0097a b2 = b();
            b2.f3488a = i;
            b2.f3489b = i2;
            b2.c = config;
            return b2;
        }

        @Override // com.bumptech.glide.load.b.a.b
        protected final /* synthetic */ C0097a a() {
            return new C0097a(this);
        }
    }

    static String c(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final Bitmap a() {
        return this.f3487b.a();
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final Bitmap a(int i, int i2, Bitmap.Config config) {
        return this.f3487b.a((e<C0097a, Bitmap>) this.f3486a.a(i, i2, config));
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final void a(Bitmap bitmap) {
        this.f3487b.a(this.f3486a.a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final String b(int i, int i2, Bitmap.Config config) {
        return c(i, i2, config);
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final String b(Bitmap bitmap) {
        return c(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final int c(Bitmap bitmap) {
        return h.a(bitmap);
    }

    public final String toString() {
        return "AttributeStrategy:\n  " + this.f3487b;
    }
}
