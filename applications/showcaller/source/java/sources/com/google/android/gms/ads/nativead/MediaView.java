package com.google.android.gms.ads.nativead;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AbstractC5757k;
import com.google.android.gms.internal.ads.AbstractC6977sy;
import com.google.android.gms.internal.ads.AbstractC7051uy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/MediaView.class */
public class MediaView extends FrameLayout {

    /* renamed from: d */
    private AbstractC5757k f18668d;

    /* renamed from: e */
    private boolean f18669e;

    /* renamed from: f */
    private AbstractC6977sy f18670f;

    /* renamed from: g */
    private ImageView.ScaleType f18671g;

    /* renamed from: h */
    private boolean f18672h;

    /* renamed from: i */
    private AbstractC7051uy f18673i;

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
    public final void m17856a(AbstractC6977sy abstractC6977sy) {
        synchronized (this) {
            this.f18670f = abstractC6977sy;
            if (this.f18669e) {
                abstractC6977sy.mo10889a(this.f18668d);
            }
        }
    }

    /* renamed from: b */
    public final void m17855b(AbstractC7051uy abstractC7051uy) {
        synchronized (this) {
            this.f18673i = abstractC7051uy;
            if (this.f18672h) {
                abstractC7051uy.mo10151a(this.f18671g);
            }
        }
    }

    public void setImageScaleType(@RecentlyNonNull ImageView.ScaleType scaleType) {
        this.f18672h = true;
        this.f18671g = scaleType;
        AbstractC7051uy abstractC7051uy = this.f18673i;
        if (abstractC7051uy != null) {
            abstractC7051uy.mo10151a(scaleType);
        }
    }

    public void setMediaContent(@RecentlyNonNull AbstractC5757k abstractC5757k) {
        this.f18669e = true;
        this.f18668d = abstractC5757k;
        AbstractC6977sy abstractC6977sy = this.f18670f;
        if (abstractC6977sy != null) {
            abstractC6977sy.mo10889a(abstractC5757k);
        }
    }
}
