package com.criteo.publisher;

import android.webkit.WebViewClient;
import com.criteo.publisher.e.c;
import com.criteo.publisher.model.s;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    final Criteo f17387a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<CriteoBannerView> f17388b;

    /* renamed from: c  reason: collision with root package name */
    private final CriteoBannerAdListener f17389c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.m.b f17390d;
    private final c e;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k$a.class */
    final class a implements d {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        @Override // com.criteo.publisher.d
        public final void a() {
            k.this.a(o.INVALID);
        }

        @Override // com.criteo.publisher.d
        public final void a(s sVar) {
            k.this.a(o.VALID);
            k.this.a(sVar.d());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k$b.class */
    public final class b implements com.criteo.publisher.b.c {
        b() {
        }

        @Override // com.criteo.publisher.b.c
        public final void a() {
            k.this.a(o.CLICK);
        }

        @Override // com.criteo.publisher.b.c
        public final void b() {
        }
    }

    public k(CriteoBannerView criteoBannerView, Criteo criteo, com.criteo.publisher.m.b bVar, c cVar) {
        this.f17388b = new WeakReference<>(criteoBannerView);
        this.f17389c = criteoBannerView.getCriteoBannerAdListener();
        this.f17387a = criteo;
        this.f17390d = bVar;
        this.e = cVar;
    }

    private WebViewClient a() {
        return new com.criteo.publisher.b.a(new b(), this.f17390d.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(o oVar) {
        this.e.a(new com.criteo.publisher.l.a(this.f17389c, this.f17388b, oVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        this.e.a(new com.criteo.publisher.l.b(this.f17388b, a(), this.f17387a.getConfig(), str));
    }
}
