package p000;

import android.content.Context;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.network.SingleImpression;
import com.mopub.network.TrackingRequest;
import java.util.Collections;
import java.util.List;
/* renamed from: bh1 */
/* loaded from: classes3-dex2jar.jar:bh1.class */
public class bh1 extends AdLoader {

    /* renamed from: m */
    public boolean f1946m = false;

    /* renamed from: n */
    public boolean f1947n = false;

    public bh1(String str, AdFormat adFormat, String str2, Context context, AdLoader.Listener listener) {
        super(str, adFormat, str2, context, listener);
    }

    /* renamed from: j */
    public List<String> m5634j() {
        AdResponse adResponse = this.f5309g;
        return adResponse != null ? adResponse.getClickTrackingUrls() : Collections.emptyList();
    }

    /* renamed from: k */
    public List<String> m5633k() {
        AdResponse adResponse = this.f5309g;
        return adResponse != null ? adResponse.getImpressionTrackingUrls() : Collections.emptyList();
    }

    /* renamed from: l */
    public AdResponse m5632l() {
        return this.f5309g;
    }

    /* renamed from: m */
    public void m5631m(Context context) {
        Preconditions.checkNotNull(context);
        if (this.f5309g == null || this.f1947n) {
            return;
        }
        this.f1947n = true;
        TrackingRequest.makeTrackingHttpRequest(m5634j(), context);
    }

    /* renamed from: n */
    public void m5630n(Context context) {
        Preconditions.checkNotNull(context);
        if (this.f5309g == null || this.f1946m) {
            return;
        }
        this.f1946m = true;
        TrackingRequest.makeTrackingHttpRequest(m5633k(), context);
        new SingleImpression(this.f5309g.getAdUnitId(), this.f5309g.getImpressionData()).sendImpression();
    }
}
