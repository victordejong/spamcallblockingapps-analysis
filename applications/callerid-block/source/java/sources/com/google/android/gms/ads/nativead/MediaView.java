package com.google.android.gms.ads.nativead;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AbstractC1458k;
import com.google.android.gms.internal.ads.AbstractC1936s5;
import com.google.android.gms.internal.ads.AbstractC1971u5;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/MediaView.class */
public class MediaView extends FrameLayout {

    /* renamed from: b */
    private AbstractC1458k f5675b;

    /* renamed from: c */
    private boolean f5676c;

    /* renamed from: d */
    private AbstractC1936s5 f5677d;

    /* renamed from: e */
    private ImageView.ScaleType f5678e;

    /* renamed from: f */
    private boolean f5679f;

    /* renamed from: g */
    private AbstractC1971u5 f5680g;

    public MediaView(@RecentlyNonNull Context context) {
        super(context);
    }

    public MediaView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public final void m8623a(AbstractC1936s5 abstractC1936s5) {
        synchronized (this) {
            this.f5677d = abstractC1936s5;
            if (this.f5676c) {
                abstractC1936s5.m5811a(this.f5675b);
            }
        }
    }

    /* renamed from: b */
    public final void m8622b(AbstractC1971u5 abstractC1971u5) {
        synchronized (this) {
            this.f5680g = abstractC1971u5;
            if (this.f5679f) {
                abstractC1971u5.m5405a(this.f5678e);
            }
        }
    }

    public void setImageScaleType(@RecentlyNonNull ImageView.ScaleType scaleType) {
        this.f5679f = true;
        this.f5678e = scaleType;
        AbstractC1971u5 abstractC1971u5 = this.f5680g;
        if (abstractC1971u5 != null) {
            abstractC1971u5.m5405a(scaleType);
        }
    }

    public void setMediaContent(@RecentlyNonNull AbstractC1458k abstractC1458k) {
        this.f5676c = true;
        this.f5675b = abstractC1458k;
        AbstractC1936s5 abstractC1936s5 = this.f5677d;
        if (abstractC1936s5 != null) {
            abstractC1936s5.m5811a(abstractC1458k);
        }
    }
}
