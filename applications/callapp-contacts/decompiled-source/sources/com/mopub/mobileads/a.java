package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.network.SingleImpression;
import com.mopub.network.TrackingRequest;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/a.class */
public final class a extends AdLoader {

    /* renamed from: c  reason: collision with root package name */
    private boolean f34377c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f34378d = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, AdFormat adFormat, String str2, Context context, AdLoader.Listener listener) {
        super(str, adFormat, str2, context, listener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final AdResponse a() {
        return this.f34703b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context) {
        Preconditions.checkNotNull(context);
        if (this.f34703b != null && !this.f34377c) {
            this.f34377c = true;
            TrackingRequest.makeTrackingHttpRequest(this.f34703b != null ? this.f34703b.getImpressionTrackingUrls() : Collections.emptyList(), context);
            new SingleImpression(this.f34703b.getAdUnitId(), this.f34703b.getImpressionData()).sendImpression();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Context context) {
        Preconditions.checkNotNull(context);
        if (this.f34703b != null && !this.f34378d) {
            this.f34378d = true;
            TrackingRequest.makeTrackingHttpRequest(this.f34703b != null ? this.f34703b.getClickTrackingUrls() : Collections.emptyList(), context);
        }
    }
}
