package com.google.android.gms.ads.admanager;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.C5605f;
import com.google.android.gms.ads.C5845s;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.common.internal.C6155o;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/admanager/AdManagerAdView.class */
public final class AdManagerAdView extends BaseAdView {
    public AdManagerAdView(@RecentlyNonNull Context context) {
        super(context, 0);
        C6155o.m17017k(context, "Context cannot be null");
    }

    public AdManagerAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet, true);
        C6155o.m17017k(context, "Context cannot be null");
    }

    public AdManagerAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, true);
        C6155o.m17017k(context, "Context cannot be null");
    }

    @RecentlyNullable
    public C5605f[] getAdSizes() {
        return this.f18212d.m11289g();
    }

    @RecentlyNullable
    public AbstractC5595b getAppEventListener() {
        return this.f18212d.m11287i();
    }

    @RecentlyNonNull
    public C5845s getVideoController() {
        return this.f18212d.m11273w();
    }

    @RecentlyNullable
    public C5848t getVideoOptions() {
        return this.f18212d.m11270z();
    }

    public void setAdSizes(@RecentlyNonNull C5605f... c5605fArr) {
        if (c5605fArr == null || c5605fArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.f18212d.m11280p(c5605fArr);
    }

    public void setAppEventListener(AbstractC5595b abstractC5595b) {
        this.f18212d.m11278r(abstractC5595b);
    }

    public void setManualImpressionsEnabled(boolean z) {
        this.f18212d.m11277s(z);
    }

    public void setVideoOptions(@RecentlyNonNull C5848t c5848t) {
        this.f18212d.m11271y(c5848t);
    }
}
