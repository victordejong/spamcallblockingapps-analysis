package com.bumptech.glide.load.engine.p119a;

import android.graphics.Bitmap;
import com.bumptech.glide.p116g.C3644k;
/* renamed from: com.bumptech.glide.load.engine.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/c.class */
final class C3708c implements AbstractC3724l {

    /* renamed from: a */
    private final C3710b f13874a = new C3710b();

    /* renamed from: b */
    private final C3715h<C3709a, Bitmap> f13875b = new C3715h<>();

    /* renamed from: com.bumptech.glide.load.engine.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/c$a.class */
    public static final class C3709a implements AbstractC3725m {

        /* renamed from: a */
        private final C3710b f13876a;

        /* renamed from: b */
        private int f13877b;

        /* renamed from: c */
        private int f13878c;

        /* renamed from: d */
        private Bitmap.Config f13879d;

        public C3709a(C3710b c3710b) {
            this.f13876a = c3710b;
        }

        @Override // com.bumptech.glide.load.engine.p119a.AbstractC3725m
        /* renamed from: a */
        public final void mo37443a() {
            this.f13876a.m37492a(this);
        }

        /* renamed from: a */
        public final void m37494a(int i, int i2, Bitmap.Config config) {
            this.f13877b = i;
            this.f13878c = i2;
            this.f13879d = config;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof C3709a) {
                C3709a c3709a = (C3709a) obj;
                return this.f13877b == c3709a.f13877b && this.f13878c == c3709a.f13878c && this.f13879d == c3709a.f13879d;
            }
            return false;
        }

        public final int hashCode() {
            int i = this.f13877b;
            int i2 = this.f13878c;
            Bitmap.Config config = this.f13879d;
            return (((i * 31) + i2) * 31) + (config != null ? config.hashCode() : 0);
        }

        public final String toString() {
            return C3708c.m37495c(this.f13877b, this.f13878c, this.f13879d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/c$b.class */
    public static final class C3710b extends AbstractC3711d<C3709a> {
        C3710b() {
        }

        /* renamed from: a */
        final C3709a m37493a(int i, int i2, Bitmap.Config config) {
            C3709a b = m37491b();
            b.m37494a(i, i2, config);
            return b;
        }

        @Override // com.bumptech.glide.load.engine.p119a.AbstractC3711d
        /* renamed from: a */
        protected final /* synthetic */ C3709a mo37441a() {
            return new C3709a(this);
        }
    }

    /* renamed from: c */
    static String m37495c(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: a */
    public final Bitmap mo37452a() {
        return this.f13875b.m37490a();
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: a */
    public final Bitmap mo37451a(int i, int i2, Bitmap.Config config) {
        return this.f13875b.m37488a((C3715h<C3709a, Bitmap>) this.f13874a.m37493a(i, i2, config));
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: a */
    public final void mo37448a(Bitmap bitmap) {
        this.f13875b.m37487a(this.f13874a.m37493a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: b */
    public final String mo37446b(int i, int i2, Bitmap.Config config) {
        return m37495c(i, i2, config);
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: b */
    public final String mo37445b(Bitmap bitmap) {
        return m37495c(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: c */
    public final int mo37444c(Bitmap bitmap) {
        return C3644k.m37579a(bitmap);
    }

    public final String toString() {
        return "AttributeStrategy:\n  " + this.f13875b;
    }
}
