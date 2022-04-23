package com.google.android.gms.ads.nativead;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.internal.ads.dh;
import com.google.android.gms.internal.ads.di;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/MediaView.class */
public class MediaView extends FrameLayout {
    private MediaContent zzbnv;
    private boolean zzbnw;
    private dh zzbnx;
    private ImageView.ScaleType zzbny;
    private boolean zzbnz;
    private di zzboa;

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
        di diVar = this.zzboa;
        if (diVar != null) {
            diVar.setImageScaleType(scaleType);
        }
    }

    public void setMediaContent(MediaContent mediaContent) {
        this.zzbnw = true;
        this.zzbnv = mediaContent;
        dh dhVar = this.zzbnx;
        if (dhVar != null) {
            dhVar.setMediaContent(mediaContent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(dh dhVar) {
        synchronized (this) {
            this.zzbnx = dhVar;
            if (this.zzbnw) {
                dhVar.setMediaContent(this.zzbnv);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(di diVar) {
        synchronized (this) {
            this.zzboa = diVar;
            if (this.zzbnz) {
                diVar.setImageScaleType(this.zzbny);
            }
        }
    }
}
