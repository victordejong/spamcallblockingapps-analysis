package com.criteo.publisher.advancednative;

import com.criteo.publisher.b.c;
import java.lang.ref.Reference;
import java.net.URI;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/a.class */
final class a implements n {

    /* renamed from: a  reason: collision with root package name */
    final Reference<CriteoNativeAdListener> f17148a;

    /* renamed from: b  reason: collision with root package name */
    final f f17149b;

    /* renamed from: c  reason: collision with root package name */
    private final URI f17150c;

    /* renamed from: com.criteo.publisher.advancednative.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/a$a.class */
    final class C0338a implements c {
        C0338a() {
        }

        @Override // com.criteo.publisher.b.c
        public final void a() {
            a.this.f17149b.a(a.this.f17148a.get());
        }

        @Override // com.criteo.publisher.b.c
        public final void b() {
            a.this.f17149b.b(a.this.f17148a.get());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(URI uri, Reference<CriteoNativeAdListener> reference, f fVar) {
        this.f17150c = uri;
        this.f17148a = reference;
        this.f17149b = fVar;
    }

    @Override // com.criteo.publisher.advancednative.n
    public final void a() {
        this.f17149b.a(this.f17150c, new C0338a());
    }
}
