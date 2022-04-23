package p131c.p421j.p426d;

import android.os.Handler;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
/* renamed from: c.j.d.a */
/* loaded from: classes2-dex2jar.jar:c/j/d/a.class */
public class C6667a implements PositioningSource {

    /* renamed from: a */
    public final Handler f20578a = new Handler();

    /* renamed from: b */
    public final MoPubNativeAdPositioning.MoPubClientPositioning f20579b;

    /* renamed from: c.j.d.a$a */
    /* loaded from: classes2-dex2jar.jar:c/j/d/a$a.class */
    public class RunnableC6668a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ PositioningSource.PositioningListener f20580a;

        public RunnableC6668a(PositioningSource.PositioningListener positioningListener) {
            this.f20580a = positioningListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f20580a.onLoad(C6667a.this.f20579b);
        }
    }

    public C6667a(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this.f20579b = MoPubNativeAdPositioning.m3943a(moPubClientPositioning);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public void loadPositions(String str, PositioningSource.PositioningListener positioningListener) {
        this.f20578a.post(new RunnableC6668a(positioningListener));
    }
}
