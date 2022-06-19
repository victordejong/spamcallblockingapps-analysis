package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzug;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvu.class */
public final class zzbvu extends zzbwf<zzbwc> implements zzbwc {
    public zzbvu(Set<zzbya<zzbwc>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zzalx() {
        zza(zzbwa.zzfzg);
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zzbg(boolean z) {
        zza(new zzbwh(z) { // from class: com.google.android.gms.internal.ads.zzbvy
            private final boolean zzetx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzetx = z;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbwc) obj).zzbg(this.zzetx);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zzbh(boolean z) {
        zza(new zzbwh(z) { // from class: com.google.android.gms.internal.ads.zzbwb
            private final boolean zzetx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzetx = z;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbwc) obj).zzbh(this.zzetx);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zzc(zzug.zzb zzbVar) {
        zza(new zzbwh(zzbVar) { // from class: com.google.android.gms.internal.ads.zzbvx
            private final zzug.zzb zzgad;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgad = zzbVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbwc) obj).zzc(this.zzgad);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zzd(zzug.zzb zzbVar) {
        zza(new zzbwh(zzbVar) { // from class: com.google.android.gms.internal.ads.zzbvw
            private final zzug.zzb zzgad;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgad = zzbVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbwc) obj).zzd(this.zzgad);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zze(zzug.zzb zzbVar) {
        zza(new zzbwh(zzbVar) { // from class: com.google.android.gms.internal.ads.zzbvz
            private final zzug.zzb zzgad;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgad = zzbVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbwc) obj).zze(this.zzgad);
            }
        });
    }
}
