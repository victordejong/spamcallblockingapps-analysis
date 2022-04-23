package com.criteo.publisher.advancednative;

import androidx.annotation.NonNull;
import com.criteo.publisher.AbstractRunnableC2020m;
import com.criteo.publisher.p026s.ExecutorC2095a;
import com.criteo.publisher.p031x.C2166d;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.concurrent.Executor;
/* renamed from: com.criteo.publisher.advancednative.i */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/i.class */
public class C1953i {
    @NonNull

    /* renamed from: a */
    public final C2166d f2087a;
    @NonNull

    /* renamed from: b */
    public final Executor f2088b;
    @NonNull

    /* renamed from: c */
    public final ExecutorC2095a f2089c;

    /* renamed from: com.criteo.publisher.advancednative.i$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/i$a.class */
    public class RunnableC1954a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CriteoNativeAdListener f2090a;

        public RunnableC1954a(C1953i iVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f2090a = criteoNativeAdListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2090a.onAdImpression();
        }
    }

    /* renamed from: com.criteo.publisher.advancednative.i$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/i$b.class */
    public static class C1955b extends AbstractRunnableC2020m {
        @NonNull

        /* renamed from: c */
        public final URL f2091c;
        @NonNull

        /* renamed from: d */
        public final C2166d f2092d;

        public C1955b(@NonNull URL url, @NonNull C2166d dVar) {
            this.f2091c = url;
            this.f2092d = dVar;
        }

        public /* synthetic */ C1955b(URL url, C2166d dVar, RunnableC1954a aVar) {
            this(url, dVar);
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() throws IOException {
            InputStream a = this.f2092d.m35553a(this.f2091c);
            if (a != null) {
                a.close();
            }
        }
    }

    public C1953i(@NonNull C2166d dVar, @NonNull Executor executor, @NonNull ExecutorC2095a aVar) {
        this.f2087a = dVar;
        this.f2088b = executor;
        this.f2089c = aVar;
    }

    /* renamed from: a */
    public void m35972a(@NonNull CriteoNativeAdListener criteoNativeAdListener) {
        this.f2089c.m35699a(new RunnableC1954a(this, criteoNativeAdListener));
    }

    /* renamed from: a */
    public void m35971a(@NonNull Iterable<URL> iterable) {
        for (URL url : iterable) {
            this.f2088b.execute(new C1955b(url, this.f2087a, null));
        }
    }
}
