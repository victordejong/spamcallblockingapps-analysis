package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.network.SingleImpression;
import com.mopub.network.TrackingRequest;
import java.util.Collections;
/* renamed from: com.mopub.mobileads.a */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/a.class */
public final class C16849a extends AdLoader {

    /* renamed from: c */
    private boolean f59661c = false;

    /* renamed from: d */
    private boolean f59662d = false;

    public C16849a(String str, AdFormat adFormat, String str2, Context context, AdLoader.Listener listener) {
        super(str, adFormat, str2, context, listener);
    }

    /* renamed from: a */
    public final AdResponse m6352a() {
        return this.f60204b;
    }

    /* renamed from: a */
    public final void m6351a(Context context) {
        Preconditions.checkNotNull(context);
        if (this.f60204b == null || this.f59661c) {
            return;
        }
        this.f59661c = true;
        TrackingRequest.makeTrackingHttpRequest(this.f60204b != null ? this.f60204b.getImpressionTrackingUrls() : Collections.emptyList(), context);
        new SingleImpression(this.f60204b.getAdUnitId(), this.f60204b.getImpressionData()).sendImpression();
    }

    /* renamed from: b */
    public final void m6350b(Context context) {
        Preconditions.checkNotNull(context);
        if (this.f60204b == null || this.f59662d) {
            return;
        }
        this.f59662d = true;
        TrackingRequest.makeTrackingHttpRequest(this.f60204b != null ? this.f60204b.getClickTrackingUrls() : Collections.emptyList(), context);
    }
}
