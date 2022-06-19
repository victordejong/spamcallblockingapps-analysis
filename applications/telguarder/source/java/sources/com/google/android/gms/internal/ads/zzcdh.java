package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzd;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdh.class */
public final class zzcdh {
    private final zzccl zzgdh;
    private final zzcgk zzgge;
    private final zzchq zzggk;
    private final zzbkm zzggl;

    public zzcdh(zzchq zzchqVar, zzcgk zzcgkVar, zzbkm zzbkmVar, zzccl zzcclVar) {
        this.zzggk = zzchqVar;
        this.zzgge = zzcgkVar;
        this.zzggl = zzbkmVar;
        this.zzgdh = zzcclVar;
    }

    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        zzd.zzew("Hiding native ads overlay.");
        zzbebVar.getView().setVisibility(8);
        this.zzggl.zzbf(false);
    }

    public final /* synthetic */ void zza(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.zzgge.zza("sendMessageToNativeJs", hashMap);
    }

    public final View zzapf() throws zzben {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zza.getView().setVisibility(8);
        zza.zza("/sendMessageToSdk", new zzaif(this) { // from class: com.google.android.gms.internal.ads.zzcdk
            private final zzcdh zzggm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzggm = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaif
            public final void zza(Object obj, Map map) {
                this.zzggm.zzd((zzbeb) obj, map);
            }
        });
        zza.zza("/adMuted", new zzaif(this) { // from class: com.google.android.gms.internal.ads.zzcdj
            private final zzcdh zzggm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzggm = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaif
            public final void zza(Object obj, Map map) {
                this.zzggm.zzc((zzbeb) obj, map);
            }
        });
        this.zzgge.zza(new WeakReference(zza), "/loadHtml", new zzaif(this) { // from class: com.google.android.gms.internal.ads.zzcdm
            private final zzcdh zzggm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzggm = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaif
            public final void zza(Object obj, final Map map) {
                final zzcdh zzcdhVar = this.zzggm;
                zzbeb zzbebVar = (zzbeb) obj;
                zzbebVar.zzacx().zza(new zzbfq(zzcdhVar, map) { // from class: com.google.android.gms.internal.ads.zzcdn
                    private final Map zzehx;
                    private final zzcdh zzggm;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzggm = zzcdhVar;
                        this.zzehx = map;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbfq
                    public final void zzal(boolean z) {
                        this.zzggm.zza(this.zzehx, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzbebVar.loadData(str, "text/html", POBCommonConstants.URL_ENCODING);
                } else {
                    zzbebVar.loadDataWithBaseURL(str2, str, "text/html", POBCommonConstants.URL_ENCODING, null);
                }
            }
        });
        this.zzgge.zza(new WeakReference(zza), "/showOverlay", new zzaif(this) { // from class: com.google.android.gms.internal.ads.zzcdl
            private final zzcdh zzggm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzggm = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaif
            public final void zza(Object obj, Map map) {
                this.zzggm.zzb((zzbeb) obj, map);
            }
        });
        this.zzgge.zza(new WeakReference(zza), "/hideOverlay", new zzaif(this) { // from class: com.google.android.gms.internal.ads.zzcdo
            private final zzcdh zzggm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzggm = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaif
            public final void zza(Object obj, Map map) {
                this.zzggm.zza((zzbeb) obj, map);
            }
        });
        return zza.getView();
    }

    public final /* synthetic */ void zzb(zzbeb zzbebVar, Map map) {
        zzd.zzew("Showing native ads overlay.");
        zzbebVar.getView().setVisibility(0);
        this.zzggl.zzbf(true);
    }

    public final /* synthetic */ void zzc(zzbeb zzbebVar, Map map) {
        this.zzgdh.zzank();
    }

    public final /* synthetic */ void zzd(zzbeb zzbebVar, Map map) {
        this.zzgge.zza("sendMessageToNativeJs", map);
    }
}
