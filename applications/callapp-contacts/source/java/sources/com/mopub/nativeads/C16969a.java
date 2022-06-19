package com.mopub.nativeads;

import android.os.Handler;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.mopub.nativeads.a */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/a.class */
public final class C16969a implements PositioningSource {

    /* renamed from: a */
    final MoPubNativeAdPositioning.MoPubClientPositioning f60135a;

    /* renamed from: b */
    private final Handler f60136b = new Handler();

    public C16969a(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this.f60135a = MoPubNativeAdPositioning.m6172a(moPubClientPositioning);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public final void loadPositions(String str, final PositioningSource.PositioningListener positioningListener) {
        this.f60136b.post(new Runnable() { // from class: com.mopub.nativeads.a.1
            @Override // java.lang.Runnable
            public final void run() {
                positioningListener.onLoad(C16969a.this.f60135a);
            }
        });
    }
}
