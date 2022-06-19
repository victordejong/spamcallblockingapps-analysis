package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzh;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzw;
import com.google.android.gms.maps.model.Circle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzo.class */
final class zzo extends zzw {
    private final /* synthetic */ GoogleMap.OnCircleClickListener zzw;

    public zzo(GoogleMap googleMap, GoogleMap.OnCircleClickListener onCircleClickListener) {
        this.zzw = onCircleClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzv
    public final void zza(zzh zzhVar) {
        this.zzw.onCircleClick(new Circle(zzhVar));
    }
}
