package com.criteo.publisher.advancednative;

import com.criteo.publisher.p242b.AbstractC8257c;
import java.lang.ref.Reference;
import java.net.URI;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.criteo.publisher.advancednative.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/a.class */
public final class C8225a implements AbstractC8248n {

    /* renamed from: a */
    final Reference<CriteoNativeAdListener> f29752a;

    /* renamed from: b */
    final C8233f f29753b;

    /* renamed from: c */
    private final URI f29754c;

    /* renamed from: com.criteo.publisher.advancednative.a$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/a$a.class */
    final class C8226a implements AbstractC8257c {
        C8226a() {
            C8225a.this = r4;
        }

        @Override // com.criteo.publisher.p242b.AbstractC8257c
        /* renamed from: a */
        public final void mo25762a() {
            C8225a.this.f29753b.m25980a(C8225a.this.f29752a.get());
        }

        @Override // com.criteo.publisher.p242b.AbstractC8257c
        /* renamed from: b */
        public final void mo25759b() {
            C8225a.this.f29753b.m25978b(C8225a.this.f29752a.get());
        }
    }

    public C8225a(URI uri, Reference<CriteoNativeAdListener> reference, C8233f c8233f) {
        this.f29754c = uri;
        this.f29752a = reference;
        this.f29753b = c8233f;
    }

    @Override // com.criteo.publisher.advancednative.AbstractC8248n
    /* renamed from: a */
    public final void mo25967a() {
        this.f29753b.m25979a(this.f29754c, new C8226a());
    }
}
