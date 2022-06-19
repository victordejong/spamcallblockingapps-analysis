package com.criteo.publisher.advancednative;

import com.criteo.publisher.advancednative.C8233f;
import com.criteo.publisher.p242b.AbstractC8257c;
import java.lang.ref.Reference;
import java.net.URI;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.criteo.publisher.advancednative.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/c.class */
public final class C8228c implements AbstractC8248n {

    /* renamed from: a */
    final Reference<CriteoNativeAdListener> f29759a;

    /* renamed from: b */
    final C8233f f29760b;

    /* renamed from: c */
    private final URI f29761c;

    /* renamed from: com.criteo.publisher.advancednative.c$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/c$a.class */
    final class C8229a implements AbstractC8257c {
        C8229a() {
            C8228c.this = r4;
        }

        @Override // com.criteo.publisher.p242b.AbstractC8257c
        /* renamed from: a */
        public final void mo25762a() {
            C8228c.this.f29760b.m25980a(C8228c.this.f29759a.get());
        }

        @Override // com.criteo.publisher.p242b.AbstractC8257c
        /* renamed from: b */
        public final void mo25759b() {
            C8228c.this.f29760b.m25978b(C8228c.this.f29759a.get());
        }
    }

    public C8228c(URI uri, Reference<CriteoNativeAdListener> reference, C8233f c8233f) {
        this.f29761c = uri;
        this.f29759a = reference;
        this.f29760b = c8233f;
    }

    @Override // com.criteo.publisher.advancednative.AbstractC8248n
    /* renamed from: a */
    public final void mo25967a() {
        C8233f c8233f = this.f29760b;
        CriteoNativeAdListener criteoNativeAdListener = this.f29759a.get();
        if (criteoNativeAdListener != null) {
            c8233f.f29765a.m25926a(new C8233f.C8234a(c8233f, criteoNativeAdListener));
        }
        this.f29760b.m25979a(this.f29761c, new C8229a());
    }
}
