package com.criteo.publisher.advancednative;

import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.p242b.AbstractC8257c;
import com.criteo.publisher.p242b.C8255b;
import com.criteo.publisher.p245e.ExecutorC8277c;
import com.criteo.publisher.p255m.C8421b;
import java.net.URI;
/* renamed from: com.criteo.publisher.advancednative.f */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/f.class */
public final class C8233f {

    /* renamed from: a */
    final ExecutorC8277c f29765a;

    /* renamed from: b */
    private final C8255b f29766b;

    /* renamed from: c */
    private final C8421b f29767c;

    /* renamed from: com.criteo.publisher.advancednative.f$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/f$a.class */
    final class C8234a extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ CriteoNativeAdListener f29768a;

        public C8234a(C8233f c8233f, CriteoNativeAdListener criteoNativeAdListener) {
            this.f29768a = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            this.f29768a.onAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.advancednative.f$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/f$b.class */
    public final class C8235b extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ CriteoNativeAdListener f29769a;

        C8235b(C8233f c8233f, CriteoNativeAdListener criteoNativeAdListener) {
            this.f29769a = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            this.f29769a.onAdLeftApplication();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.advancednative.f$c */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/f$c.class */
    public final class C8236c extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ CriteoNativeAdListener f29770a;

        C8236c(C8233f c8233f, CriteoNativeAdListener criteoNativeAdListener) {
            this.f29770a = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            this.f29770a.onAdClosed();
        }
    }

    public C8233f(C8255b c8255b, C8421b c8421b, ExecutorC8277c executorC8277c) {
        this.f29766b = c8255b;
        this.f29767c = c8421b;
        this.f29765a = executorC8277c;
    }

    /* renamed from: a */
    public final void m25980a(CriteoNativeAdListener criteoNativeAdListener) {
        if (criteoNativeAdListener == null) {
            return;
        }
        this.f29765a.m25926a(new C8235b(this, criteoNativeAdListener));
    }

    /* renamed from: a */
    public final void m25979a(URI uri, AbstractC8257c abstractC8257c) {
        this.f29766b.m25960a(uri.toString(), this.f29767c.m25710a(), abstractC8257c);
    }

    /* renamed from: b */
    public final void m25978b(CriteoNativeAdListener criteoNativeAdListener) {
        if (criteoNativeAdListener == null) {
            return;
        }
        this.f29765a.m25926a(new C8236c(this, criteoNativeAdListener));
    }
}
