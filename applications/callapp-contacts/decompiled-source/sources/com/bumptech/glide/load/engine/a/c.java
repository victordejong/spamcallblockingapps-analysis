package com.bumptech.glide.load.engine.a;

import android.graphics.Bitmap;
import com.bumptech.glide.g.k;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/c.class */
final class c implements l {

    /* renamed from: a  reason: collision with root package name */
    private final b f7442a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final h<a, Bitmap> f7443b = new h<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/c$a.class */
    public static final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        private final b f7444a;

        /* renamed from: b  reason: collision with root package name */
        private int f7445b;

        /* renamed from: c  reason: collision with root package name */
        private int f7446c;

        /* renamed from: d  reason: collision with root package name */
        private Bitmap.Config f7447d;

        public a(b bVar) {
            this.f7444a = bVar;
        }

        @Override // com.bumptech.glide.load.engine.a.m
        public final void a() {
            this.f7444a.a(this);
        }

        public final void a(int i, int i2, Bitmap.Config config) {
            this.f7445b = i;
            this.f7446c = i2;
            this.f7447d = config;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f7445b == aVar.f7445b && this.f7446c == aVar.f7446c && this.f7447d == aVar.f7447d;
        }

        public final int hashCode() {
            int i = this.f7445b;
            int i2 = this.f7446c;
            Bitmap.Config config = this.f7447d;
            return (((i * 31) + i2) * 31) + (config != null ? config.hashCode() : 0);
        }

        public final String toString() {
            return c.c(this.f7445b, this.f7446c, this.f7447d);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/c$b.class */
    static final class b extends d<a> {
        b() {
        }

        final a a(int i, int i2, Bitmap.Config config) {
            a b2 = b();
            b2.a(i, i2, config);
            return b2;
        }

        @Override // com.bumptech.glide.load.engine.a.d
        protected final /* synthetic */ a a() {
            return new a(this);
        }
    }

    static String c(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final Bitmap a() {
        return this.f7443b.a();
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final Bitmap a(int i, int i2, Bitmap.Config config) {
        return this.f7443b.a((h<a, Bitmap>) this.f7442a.a(i, i2, config));
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final void a(Bitmap bitmap) {
        this.f7443b.a(this.f7442a.a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final String b(int i, int i2, Bitmap.Config config) {
        return c(i, i2, config);
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final String b(Bitmap bitmap) {
        return c(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final int c(Bitmap bitmap) {
        return k.a(bitmap);
    }

    public final String toString() {
        return "AttributeStrategy:\n  " + this.f7443b;
    }
}
