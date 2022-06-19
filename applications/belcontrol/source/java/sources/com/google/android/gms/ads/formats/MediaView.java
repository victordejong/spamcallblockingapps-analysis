package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.internal.ads.zzaec;
import com.google.android.gms.internal.ads.zzaee;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/MediaView.class */
public class MediaView extends FrameLayout {
    private MediaContent zzbnl;
    private boolean zzbnm;
    private zzaec zzbnn;
    private ImageView.ScaleType zzbno;
    private boolean zzbnp;
    private zzaee zzbnq;

    public MediaView(Context context) {
        super(context);
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(21)
    public MediaView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.zzbnp = true;
        this.zzbno = scaleType;
        zzaee zzaeeVar = this.zzbnq;
        if (zzaeeVar != null) {
            zzaeeVar.setImageScaleType(scaleType);
        }
    }

    public void setMediaContent(MediaContent mediaContent) {
        this.zzbnm = true;
        this.zzbnl = mediaContent;
        zzaec zzaecVar = this.zzbnn;
        if (zzaecVar != null) {
            zzaecVar.setMediaContent(mediaContent);
        }
    }

    public final void zza(zzaec zzaecVar) {
        synchronized (this) {
            this.zzbnn = zzaecVar;
            if (this.zzbnm) {
                zzaecVar.setMediaContent(this.zzbnl);
            }
        }
    }

    public final void zza(zzaee zzaeeVar) {
        synchronized (this) {
            this.zzbnq = zzaeeVar;
            if (this.zzbnp) {
                zzaeeVar.setImageScaleType(this.zzbno);
            }
        }
    }
}
