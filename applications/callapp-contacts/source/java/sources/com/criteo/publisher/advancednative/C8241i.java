package com.criteo.publisher.advancednative;

import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.p245e.ExecutorC8277c;
import com.criteo.publisher.p251j0.C8364g;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.concurrent.Executor;
/* renamed from: com.criteo.publisher.advancednative.i */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/i.class */
public final class C8241i {

    /* renamed from: a */
    final C8364g f29779a;

    /* renamed from: b */
    final Executor f29780b;

    /* renamed from: c */
    final ExecutorC8277c f29781c;

    /* renamed from: com.criteo.publisher.advancednative.i$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/i$a.class */
    final class C8242a extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ CriteoNativeAdListener f29782a;

        public C8242a(C8241i c8241i, CriteoNativeAdListener criteoNativeAdListener) {
            this.f29782a = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            this.f29782a.onAdImpression();
        }
    }

    /* renamed from: com.criteo.publisher.advancednative.i$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/i$b.class */
    static final class C8243b extends AbstractRunnableC8529v {

        /* renamed from: a */
        private final URL f29783a;

        /* renamed from: b */
        private final C8364g f29784b;

        private C8243b(URL url, C8364g c8364g) {
            this.f29783a = url;
            this.f29784b = c8364g;
        }

        public /* synthetic */ C8243b(URL url, C8364g c8364g, C8242a c8242a) {
            this(url, c8364g);
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() throws IOException {
            InputStream m25782a = this.f29784b.m25782a(this.f29783a, (String) null);
            if (m25782a != null) {
                m25782a.close();
            }
        }
    }

    public C8241i(C8364g c8364g, Executor executor, ExecutorC8277c executorC8277c) {
        this.f29779a = c8364g;
        this.f29780b = executor;
        this.f29781c = executorC8277c;
    }
}
