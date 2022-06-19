package com.google.android.gms.ads.nativead;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/AdChoicesView.class */
public class AdChoicesView extends RelativeLayout {
    public AdChoicesView(@RecentlyNonNull Context context) {
        super(context);
    }

    public AdChoicesView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AdChoicesView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(21)
    public AdChoicesView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
