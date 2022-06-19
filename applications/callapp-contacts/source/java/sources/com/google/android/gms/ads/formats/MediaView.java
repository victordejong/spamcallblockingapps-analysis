package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.internal.ads.AbstractC12344dh;
import com.google.android.gms.internal.ads.AbstractC12355di;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/MediaView.class */
public class MediaView extends FrameLayout {
    private MediaContent zzbnv;
    private boolean zzbnw;
    private AbstractC12344dh zzbnx;
    private ImageView.ScaleType zzbny;
    private boolean zzbnz;
    private AbstractC12355di zzboa;

    public MediaView(Context context) {
        super(context);
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.zzbnz = true;
        this.zzbny = scaleType;
        AbstractC12355di abstractC12355di = this.zzboa;
        if (abstractC12355di != null) {
            abstractC12355di.setImageScaleType(scaleType);
        }
    }

    public void setMediaContent(MediaContent mediaContent) {
        this.zzbnw = true;
        this.zzbnv = mediaContent;
        AbstractC12344dh abstractC12344dh = this.zzbnx;
        if (abstractC12344dh != null) {
            abstractC12344dh.setMediaContent(mediaContent);
        }
    }

    public final void zza(AbstractC12344dh abstractC12344dh) {
        synchronized (this) {
            this.zzbnx = abstractC12344dh;
            if (this.zzbnw) {
                abstractC12344dh.setMediaContent(this.zzbnv);
            }
        }
    }

    public final void zza(AbstractC12355di abstractC12355di) {
        synchronized (this) {
            this.zzboa = abstractC12355di;
            if (this.zzbnz) {
                abstractC12355di.setImageScaleType(this.zzbny);
            }
        }
    }
}
