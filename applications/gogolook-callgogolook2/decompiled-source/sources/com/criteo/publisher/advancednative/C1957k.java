package com.criteo.publisher.advancednative;

import androidx.annotation.NonNull;
import com.criteo.publisher.model.p021z.AbstractC2075n;
import java.lang.ref.WeakReference;
/* renamed from: com.criteo.publisher.advancednative.k */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/k.class */
public class C1957k {
    @NonNull

    /* renamed from: a */
    public final C1961o f2097a;
    @NonNull

    /* renamed from: b */
    public final C1953i f2098b;
    @NonNull

    /* renamed from: c */
    public final C1945e f2099c;
    @NonNull

    /* renamed from: d */
    public final C1947f f2100d;
    @NonNull

    /* renamed from: e */
    public final C1941b f2101e;
    @NonNull

    /* renamed from: f */
    public final RendererHelper f2102f;

    public C1957k(@NonNull C1961o oVar, @NonNull C1953i iVar, @NonNull C1945e eVar, @NonNull C1947f fVar, @NonNull C1941b bVar, @NonNull RendererHelper rendererHelper) {
        this.f2097a = oVar;
        this.f2098b = iVar;
        this.f2099c = eVar;
        this.f2100d = fVar;
        this.f2101e = bVar;
        this.f2102f = rendererHelper;
    }

    @NonNull
    /* renamed from: a */
    public CriteoNativeAd m35970a(@NonNull AbstractC2075n nVar, @NonNull WeakReference<CriteoNativeAdListener> weakReference, @NonNull CriteoNativeRenderer criteoNativeRenderer) {
        C1956j jVar = new C1956j(nVar.m35751f(), weakReference, this.f2098b);
        C1942c cVar = new C1942c(nVar.m35744m().mo35724b(), weakReference, this.f2100d);
        C1939a aVar = new C1939a(nVar.m35746k(), weakReference, this.f2100d);
        this.f2102f.preloadMedia(nVar.m35744m().m35721e());
        this.f2102f.preloadMedia(nVar.m35752e());
        this.f2102f.preloadMedia(nVar.m35745l());
        return new CriteoNativeAd(nVar, this.f2097a, jVar, this.f2099c, cVar, aVar, this.f2101e, criteoNativeRenderer, this.f2102f);
    }
}
