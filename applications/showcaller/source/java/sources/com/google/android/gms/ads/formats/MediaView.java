package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AbstractC5757k;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/MediaView.class */
public class MediaView extends FrameLayout {

    /* renamed from: d */
    private AbstractC5757k f18248d;

    /* renamed from: e */
    private ImageView.ScaleType f18249e;

    public MediaView(@RecentlyNonNull Context context) {
        super(context);
    }

    public MediaView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setImageScaleType(@RecentlyNonNull ImageView.ScaleType scaleType) {
        this.f18249e = scaleType;
    }

    public void setMediaContent(@RecentlyNonNull AbstractC5757k abstractC5757k) {
        this.f18248d = abstractC5757k;
    }
}
