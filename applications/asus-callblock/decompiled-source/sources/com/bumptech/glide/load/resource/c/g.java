package com.bumptech.glide.load.resource.c;

import com.bumptech.glide.load.a.c;
import com.bumptech.glide.load.c.j;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/g.class */
final class g implements j<com.bumptech.glide.b.a, com.bumptech.glide.b.a> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/g$a.class */
    private static final class a implements c<com.bumptech.glide.b.a> {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.b.a f3643a;

        public a(com.bumptech.glide.b.a aVar) {
            this.f3643a = aVar;
        }

        @Override // com.bumptech.glide.load.a.c
        public final /* bridge */ /* synthetic */ com.bumptech.glide.b.a a(int i) {
            return this.f3643a;
        }

        @Override // com.bumptech.glide.load.a.c
        public final void a() {
        }

        @Override // com.bumptech.glide.load.a.c
        public final String b() {
            return String.valueOf(this.f3643a.c);
        }

        @Override // com.bumptech.glide.load.a.c
        public final void c() {
        }
    }

    @Override // com.bumptech.glide.load.c.j
    public final /* synthetic */ c<com.bumptech.glide.b.a> a(com.bumptech.glide.b.a aVar, int i, int i2) {
        return new a(aVar);
    }
}
