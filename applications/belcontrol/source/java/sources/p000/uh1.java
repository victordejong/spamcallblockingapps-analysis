package p000;

import android.os.Handler;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
/* renamed from: uh1 */
/* loaded from: classes3-dex2jar.jar:uh1.class */
public class uh1 implements PositioningSource {

    /* renamed from: a */
    public final Handler f8320a = new Handler();

    /* renamed from: b */
    public final MoPubNativeAdPositioning.MoPubClientPositioning f8321b;

    /* renamed from: uh1$a */
    /* loaded from: classes3-dex2jar.jar:uh1$a.class */
    public class RunnableC1687a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ PositioningSource.PositioningListener f8322a;

        public RunnableC1687a(PositioningSource.PositioningListener positioningListener) {
            uh1.this = r4;
            this.f8322a = positioningListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8322a.onLoad(uh1.this.f8321b);
        }
    }

    public uh1(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this.f8321b = MoPubNativeAdPositioning.m3317a(moPubClientPositioning);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public void loadPositions(String str, PositioningSource.PositioningListener positioningListener) {
        this.f8320a.post(new RunnableC1687a(positioningListener));
    }
}
