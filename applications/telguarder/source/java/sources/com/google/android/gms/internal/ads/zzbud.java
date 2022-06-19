package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.reward.AdMetadataListener;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbud.class */
public final class zzbud extends AdMetadataListener implements AppEventListener, zzq, zzbrm, zzbsa, zzbse, zzbtg, zzbtt, zzvc {
    private final zzbve zzfzv = new zzbve(this);
    @Nullable
    private zzcxy zzfzw;
    @Nullable
    private zzcys zzfzx;
    @Nullable
    private zzdil zzfzy;
    @Nullable
    private zzdlh zzfzz;

    private static <T> void zza(T t, zzbvh<T> zzbvhVar) {
        if (t != null) {
            zzbvhVar.zzp(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        zza(this.zzfzw, zzbug.zzfzu);
        zza(this.zzfzx, zzbuj.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        zza(this.zzfzw, zzbuo.zzfzu);
        zza(this.zzfzz, zzbuw.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        zza(this.zzfzw, zzbun.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
        zza(this.zzfzw, zzbuz.zzfzu);
        zza(this.zzfzz, zzbuy.zzfzu);
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        zza(this.zzfzz, zzbup.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        zza(this.zzfzw, zzbuc.zzfzu);
        zza(this.zzfzz, zzbuf.zzfzu);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        zza(this.zzfzw, new zzbvh(str, str2) { // from class: com.google.android.gms.internal.ads.zzbui
            private final String zzdjf;
            private final String zzdlh;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdlh = str;
                this.zzdjf = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzbvh
            public final void zzp(Object obj) {
                ((zzcxy) obj).onAppEvent(this.zzdlh, this.zzdjf);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
        zza(this.zzfzy, zzbuu.zzfzu);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
        zza(this.zzfzy, zzbux.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
        zza(this.zzfzw, zzbue.zzfzu);
        zza(this.zzfzz, zzbuh.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
        zza(this.zzfzw, zzbvb.zzfzu);
        zza(this.zzfzz, zzbva.zzfzu);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        zza(this.zzfzy, zzbuv.zzfzu);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
        zza(this.zzfzy, new zzbvh(zznVar) { // from class: com.google.android.gms.internal.ads.zzbus
            private final zzn zzfzn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzn = zznVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbvh
            public final void zzp(Object obj) {
                ((zzdil) obj).zza(this.zzfzn);
            }
        });
    }

    public final zzbve zzakt() {
        return this.zzfzv;
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzalq() {
        zza(this.zzfzy, zzbum.zzfzu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzb(zzauk zzaukVar, String str, String str2) {
        zza(this.zzfzw, new zzbvh(zzaukVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzbvd
            private final String zzdjf;
            private final String zzdlo;
            private final zzauk zzfzl;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzl = zzaukVar;
                this.zzdjf = str;
                this.zzdlo = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzbvh
            public final void zzp(Object obj) {
                zzcxy zzcxyVar = (zzcxy) obj;
            }
        });
        zza(this.zzfzz, new zzbvh(zzaukVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzbvc
            private final String zzdjf;
            private final String zzdlo;
            private final zzauk zzfzl;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzl = zzaukVar;
                this.zzdjf = str;
                this.zzdlo = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzbvh
            public final void zzp(Object obj) {
                ((zzdlh) obj).zzb(this.zzfzl, this.zzdjf, this.zzdlo);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbtt
    public final void zzb(zzvu zzvuVar) {
        zza(this.zzfzw, new zzbvh(zzvuVar) { // from class: com.google.android.gms.internal.ads.zzbul
            private final zzvu zzgaa;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgaa = zzvuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbvh
            public final void zzp(Object obj) {
                ((zzcxy) obj).zzb(this.zzgaa);
            }
        });
        zza(this.zzfzz, new zzbvh(zzvuVar) { // from class: com.google.android.gms.internal.ads.zzbuk
            private final zzvu zzgaa;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgaa = zzvuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbvh
            public final void zzp(Object obj) {
                ((zzdlh) obj).zzb(this.zzgaa);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbsa
    public final void zzk(zzvg zzvgVar) {
        zza(this.zzfzz, new zzbvh(zzvgVar) { // from class: com.google.android.gms.internal.ads.zzbur
            private final zzvg zzfzh;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzh = zzvgVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbvh
            public final void zzp(Object obj) {
                ((zzdlh) obj).zzk(this.zzfzh);
            }
        });
        zza(this.zzfzw, new zzbvh(zzvgVar) { // from class: com.google.android.gms.internal.ads.zzbuq
            private final zzvg zzfzh;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzh = zzvgVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbvh
            public final void zzp(Object obj) {
                ((zzcxy) obj).zzk(this.zzfzh);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        zza(this.zzfzy, zzbut.zzfzu);
    }
}
