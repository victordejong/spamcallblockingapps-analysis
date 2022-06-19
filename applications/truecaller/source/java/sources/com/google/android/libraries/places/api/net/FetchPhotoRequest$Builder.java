package com.google.android.libraries.places.api.net;

import com.google.android.gms.tasks.CancellationToken;
import com.google.android.libraries.places.api.model.PhotoMetadata;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/net/FetchPhotoRequest$Builder.class */
public abstract class FetchPhotoRequest$Builder {
    public FetchPhotoRequest build() {
        PhotoMetadata zza = zza();
        if (getMaxWidth() == null && getMaxHeight() == null && zza != null) {
            int width = zza.getWidth();
            if (width > 0) {
                setMaxWidth(Integer.valueOf(width));
            }
            int height = zza.getHeight();
            if (height > 0) {
                setMaxHeight(Integer.valueOf(height));
            }
        }
        return zzb();
    }

    public abstract CancellationToken getCancellationToken();

    public abstract Integer getMaxHeight();

    public abstract Integer getMaxWidth();

    public abstract FetchPhotoRequest$Builder setCancellationToken(CancellationToken cancellationToken);

    public abstract FetchPhotoRequest$Builder setMaxHeight(Integer num);

    public abstract FetchPhotoRequest$Builder setMaxWidth(Integer num);

    public abstract PhotoMetadata zza();

    public abstract FetchPhotoRequest$Builder zza(PhotoMetadata photoMetadata);

    public abstract FetchPhotoRequest zzb();
}
