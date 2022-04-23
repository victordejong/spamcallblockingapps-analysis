package com.mopub.nativeads;

import android.os.Handler;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/a.class */
final class a implements PositioningSource {

    /* renamed from: a  reason: collision with root package name */
    final MoPubNativeAdPositioning.MoPubClientPositioning f34662a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f34663b = new Handler();

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this.f34662a = MoPubNativeAdPositioning.a(moPubClientPositioning);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public final void loadPositions(String str, final PositioningSource.PositioningListener positioningListener) {
        this.f34663b.post(new Runnable() { // from class: com.mopub.nativeads.a.1
            @Override // java.lang.Runnable
            public final void run() {
                positioningListener.onLoad(a.this.f34662a);
            }
        });
    }
}
