package com.bumptech.glide.e.b;

import android.graphics.drawable.Drawable;
import com.explorestack.iab.vast.VastError;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/b/a.class */
public final class a implements e<Drawable> {

    /* renamed from: a  reason: collision with root package name */
    private final int f7298a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f7299b;

    /* renamed from: c  reason: collision with root package name */
    private b f7300c;

    /* renamed from: com.bumptech.glide.e.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/b/a$a.class */
    public static final class C0141a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f7301a;

        /* renamed from: b  reason: collision with root package name */
        private final int f7302b;

        public C0141a() {
            this(VastError.ERROR_CODE_GENERAL_WRAPPER);
        }

        public C0141a(int i) {
            this.f7302b = i;
        }

        public final a a() {
            return new a(this.f7302b, this.f7301a);
        }
    }

    protected a(int i, boolean z) {
        this.f7298a = i;
        this.f7299b = z;
    }

    @Override // com.bumptech.glide.e.b.e
    public final d<Drawable> a(com.bumptech.glide.load.a aVar) {
        if (aVar == com.bumptech.glide.load.a.MEMORY_CACHE) {
            return c.b();
        }
        if (this.f7300c == null) {
            this.f7300c = new b(this.f7298a, this.f7299b);
        }
        return this.f7300c;
    }
}
