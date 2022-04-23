package com.criteo.publisher.advancednative;

import com.criteo.publisher.v;
import java.net.URI;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    final com.criteo.publisher.e.c f17161a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.b.b f17162b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.m.b f17163c;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/f$a.class */
    final class a extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CriteoNativeAdListener f17164a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f17164a = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            this.f17164a.onAdClicked();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/f$b.class */
    final class b extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CriteoNativeAdListener f17165a;

        b(f fVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f17165a = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            this.f17165a.onAdLeftApplication();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/f$c.class */
    final class c extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CriteoNativeAdListener f17166a;

        c(f fVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f17166a = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            this.f17166a.onAdClosed();
        }
    }

    public f(com.criteo.publisher.b.b bVar, com.criteo.publisher.m.b bVar2, com.criteo.publisher.e.c cVar) {
        this.f17162b = bVar;
        this.f17163c = bVar2;
        this.f17161a = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(CriteoNativeAdListener criteoNativeAdListener) {
        if (criteoNativeAdListener != null) {
            this.f17161a.a(new b(this, criteoNativeAdListener));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(URI uri, com.criteo.publisher.b.c cVar) {
        this.f17162b.a(uri.toString(), this.f17163c.a(), cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(CriteoNativeAdListener criteoNativeAdListener) {
        if (criteoNativeAdListener != null) {
            this.f17161a.a(new c(this, criteoNativeAdListener));
        }
    }
}
