package com.criteo.publisher.advancednative;

import com.criteo.publisher.advancednative.f;
import java.lang.ref.Reference;
import java.net.URI;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/c.class */
final class c implements n {

    /* renamed from: a  reason: collision with root package name */
    final Reference<CriteoNativeAdListener> f17155a;

    /* renamed from: b  reason: collision with root package name */
    final f f17156b;

    /* renamed from: c  reason: collision with root package name */
    private final URI f17157c;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/c$a.class */
    final class a implements com.criteo.publisher.b.c {
        a() {
        }

        @Override // com.criteo.publisher.b.c
        public final void a() {
            c.this.f17156b.a(c.this.f17155a.get());
        }

        @Override // com.criteo.publisher.b.c
        public final void b() {
            c.this.f17156b.b(c.this.f17155a.get());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(URI uri, Reference<CriteoNativeAdListener> reference, f fVar) {
        this.f17157c = uri;
        this.f17155a = reference;
        this.f17156b = fVar;
    }

    @Override // com.criteo.publisher.advancednative.n
    public final void a() {
        f fVar = this.f17156b;
        CriteoNativeAdListener criteoNativeAdListener = this.f17155a.get();
        if (criteoNativeAdListener != null) {
            fVar.f17161a.a(new f.a(fVar, criteoNativeAdListener));
        }
        this.f17156b.a(this.f17157c, new a());
    }
}
