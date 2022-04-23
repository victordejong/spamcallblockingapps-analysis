package com.criteo.publisher.advancednative;

import com.criteo.publisher.e.c;
import com.criteo.publisher.j0.g;
import com.criteo.publisher.v;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    final g f17175a;

    /* renamed from: b  reason: collision with root package name */
    final Executor f17176b;

    /* renamed from: c  reason: collision with root package name */
    final c f17177c;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/i$a.class */
    final class a extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CriteoNativeAdListener f17178a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(i iVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f17178a = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            this.f17178a.onAdImpression();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/i$b.class */
    static final class b extends v {

        /* renamed from: a  reason: collision with root package name */
        private final URL f17179a;

        /* renamed from: b  reason: collision with root package name */
        private final g f17180b;

        private b(URL url, g gVar) {
            this.f17179a = url;
            this.f17180b = gVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ b(URL url, g gVar, a aVar) {
            this(url, gVar);
        }

        @Override // com.criteo.publisher.v
        public final void a() throws IOException {
            InputStream a2 = this.f17180b.a(this.f17179a, (String) null);
            if (a2 != null) {
                a2.close();
            }
        }
    }

    public i(g gVar, Executor executor, c cVar) {
        this.f17175a = gVar;
        this.f17176b = executor;
        this.f17177c = cVar;
    }
}
