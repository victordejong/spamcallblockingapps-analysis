package com.google.android.gms.ads.p119b;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.AbstractC2342j;
import com.google.android.gms.internal.ads.AbstractC2834bk;
import com.google.android.gms.internal.ads.AbstractC2836bm;
/* renamed from: com.google.android.gms.ads.b.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/b/b.class */
public class C2251b extends FrameLayout {

    /* renamed from: a */
    private AbstractC2342j f6537a;

    /* renamed from: b */
    private boolean f6538b;

    /* renamed from: c */
    private AbstractC2834bk f6539c;

    /* renamed from: d */
    private ImageView.ScaleType f6540d;

    /* renamed from: e */
    private boolean f6541e;

    /* renamed from: f */
    private AbstractC2836bm f6542f;

    public C2251b(Context context) {
        super(context);
    }

    /* renamed from: a */
    public final void m14908a(AbstractC2834bk abstractC2834bk) {
        synchronized (this) {
            this.f6539c = abstractC2834bk;
            if (this.f6538b) {
                abstractC2834bk.mo11838a(this.f6537a);
            }
        }
    }

    /* renamed from: a */
    public final void m14907a(AbstractC2836bm abstractC2836bm) {
        synchronized (this) {
            this.f6542f = abstractC2836bm;
            if (this.f6541e) {
                abstractC2836bm.mo11801a(this.f6540d);
            }
        }
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.f6541e = true;
        this.f6540d = scaleType;
        if (this.f6542f != null) {
            this.f6542f.mo11801a(this.f6540d);
        }
    }

    public void setMediaContent(AbstractC2342j abstractC2342j) {
        this.f6538b = true;
        this.f6537a = abstractC2342j;
        if (this.f6539c != null) {
            this.f6539c.mo11838a(abstractC2342j);
        }
    }
}
