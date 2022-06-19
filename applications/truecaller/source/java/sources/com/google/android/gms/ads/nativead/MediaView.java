package com.google.android.gms.ads.nativead;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.internal.ads.zzbls;
import com.google.android.gms.internal.ads.zzblu;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nativead/MediaView.class */
public class MediaView extends FrameLayout {
    private MediaContent zza;
    private boolean zzb;
    private zzbls zzc;
    private ImageView.ScaleType zzd;
    private boolean zze;
    private zzblu zzf;

    public MediaView(@RecentlyNonNull Context context) {
        super(context);
    }

    public MediaView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MediaView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void setImageScaleType(@RecentlyNonNull ImageView.ScaleType scaleType) {
        this.zze = true;
        this.zzd = scaleType;
        zzblu zzbluVar = this.zzf;
        if (zzbluVar != null) {
            zzbluVar.zza(scaleType);
        }
    }

    public void setMediaContent(@RecentlyNonNull MediaContent mediaContent) {
        this.zzb = true;
        this.zza = mediaContent;
        zzbls zzblsVar = this.zzc;
        if (zzblsVar != null) {
            zzblsVar.zza(mediaContent);
        }
    }

    public final void zza(zzbls zzblsVar) {
        synchronized (this) {
            this.zzc = zzblsVar;
            if (this.zzb) {
                zzblsVar.zza(this.zza);
            }
        }
    }

    public final void zzb(zzblu zzbluVar) {
        synchronized (this) {
            this.zzf = zzbluVar;
            if (this.zze) {
                zzbluVar.zza(this.zzd);
            }
        }
    }
}
