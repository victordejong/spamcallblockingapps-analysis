package com.criteo.publisher.advancednative;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.p022o.C2084b;
import com.criteo.publisher.p023p.AbstractC2089c;
import com.criteo.publisher.p023p.C2087b;
import com.criteo.publisher.p026s.ExecutorC2095a;
import java.net.URI;
/* renamed from: com.criteo.publisher.advancednative.f */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/f.class */
public class C1947f {
    @NonNull

    /* renamed from: a */
    public final C2087b f2079a;
    @NonNull

    /* renamed from: b */
    public final C2084b f2080b;
    @NonNull

    /* renamed from: c */
    public final ExecutorC2095a f2081c;

    /* renamed from: com.criteo.publisher.advancednative.f$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/f$a.class */
    public class RunnableC1948a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CriteoNativeAdListener f2082a;

        public RunnableC1948a(C1947f fVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f2082a = criteoNativeAdListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2082a.onAdClicked();
        }
    }

    /* renamed from: com.criteo.publisher.advancednative.f$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/f$b.class */
    public class RunnableC1949b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CriteoNativeAdListener f2083a;

        public RunnableC1949b(C1947f fVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f2083a = criteoNativeAdListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2083a.onAdLeftApplication();
        }
    }

    /* renamed from: com.criteo.publisher.advancednative.f$c */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/f$c.class */
    public class RunnableC1950c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CriteoNativeAdListener f2084a;

        public RunnableC1950c(C1947f fVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f2084a = criteoNativeAdListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2084a.onAdClosed();
        }
    }

    public C1947f(@NonNull C2087b bVar, @NonNull C2084b bVar2, @NonNull ExecutorC2095a aVar) {
        this.f2079a = bVar;
        this.f2080b = bVar2;
        this.f2081c = aVar;
    }

    /* renamed from: a */
    public void m35978a(@Nullable CriteoNativeAdListener criteoNativeAdListener) {
        if (criteoNativeAdListener != null) {
            this.f2081c.m35699a(new RunnableC1948a(this, criteoNativeAdListener));
        }
    }

    /* renamed from: a */
    public void m35977a(@NonNull URI uri, @NonNull AbstractC2089c cVar) {
        this.f2079a.m35711a(uri.toString(), this.f2080b.m35715a(), cVar);
    }

    /* renamed from: b */
    public void m35976b(@Nullable CriteoNativeAdListener criteoNativeAdListener) {
        if (criteoNativeAdListener != null) {
            this.f2081c.m35699a(new RunnableC1950c(this, criteoNativeAdListener));
        }
    }

    /* renamed from: c */
    public void m35975c(@Nullable CriteoNativeAdListener criteoNativeAdListener) {
        if (criteoNativeAdListener != null) {
            this.f2081c.m35699a(new RunnableC1949b(this, criteoNativeAdListener));
        }
    }
}
