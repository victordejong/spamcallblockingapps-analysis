package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdView.class */
public final class AdView extends BaseAdView {
    public AdView(@RecentlyNonNull Context context) {
        super(context, 0);
        C6155o.m17017k(context, "Context cannot be null");
    }

    public AdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public AdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
    }

    @RecentlyNonNull
    /* renamed from: e */
    public final C5845s m18315e() {
        return this.f18212d.m11273w();
    }
}
