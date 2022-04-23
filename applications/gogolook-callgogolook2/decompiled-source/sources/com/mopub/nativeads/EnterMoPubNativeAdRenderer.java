package com.mopub.nativeads;

import kotlin.Metadata;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, m815d2 = {"Lcom/mopub/nativeads/EnterMoPubNativeAdRenderer;", "Lcom/mopub/nativeads/NativeAdTemplate1Renderer;", "viewBinder", "Lcom/gogolook/adsdk/view/ViewBinder;", "adUnit", "", "(Lcom/gogolook/adsdk/view/ViewBinder;Ljava/lang/String;)V", "update", "", "nativeViewHolder", "Lcom/gogolook/adsdk/view/NativeViewHolder;", "staticNativeAd", "Lcom/mopub/nativeads/StaticNativeAd;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/EnterMoPubNativeAdRenderer.class */
public final class EnterMoPubNativeAdRenderer extends NativeAdTemplate1Renderer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterMoPubNativeAdRenderer(C6289b bVar, String str) {
        super(bVar, str);
        C15149k.m377b(bVar, "viewBinder");
        C15149k.m377b(str, "adUnit");
    }

    @Override // com.mopub.nativeads.NativeAdTemplate1Renderer, com.mopub.nativeads.BaseNativeAdRenderer
    public void update(C6287a aVar, StaticNativeAd staticNativeAd) {
        C15149k.m377b(aVar, "nativeViewHolder");
        C15149k.m377b(staticNativeAd, "staticNativeAd");
        super.update(aVar, staticNativeAd);
        setWhoscallLogoVisibility$whoscall_rcRelease(aVar, 8);
    }
}
