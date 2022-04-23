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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m8623a(AbstractC1936s5 s5Var) {
        synchronized (this) {
            this.f5677d = s5Var;
            if (this.f5676c) {
                s5Var.m5811a(this.f5675b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m8622b(AbstractC1971u5 u5Var) {
        synchronized (this) {
            this.f5680g = u5Var;
            if (this.f5679f) {
                u5Var.m5405a(this.f5678e);
            }
        }
    }

    public void setImageScaleType(@RecentlyNonNull ImageView.ScaleType scaleType) {
        this.f5679f = true;
        this.f5678e = scaleType;
        AbstractC1971u5 u5Var = this.f5680g;
        if (u5Var != null) {
            u5Var.m5405a(scaleType);
        }
    }

    public void setMediaContent(@RecentlyNonNull AbstractC1458k kVar) {
        this.f5676c = true;
        this.f5675b = kVar;
        AbstractC1936s5 s5Var = this.f5677d;
        if (s5Var != null) {
            s5Var.m5811a(kVar);
        }
    }
}
