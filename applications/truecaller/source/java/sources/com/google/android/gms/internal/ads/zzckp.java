package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckp.class */
public final class zzckp implements zzbpr<zzcjb> {
    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcjb zzcjbVar, Map map) {
        zzcjb zzcjbVar2 = zzcjbVar;
        zzcnh zzh = zzcjbVar2.zzh();
        zzcnh zzcnhVar = zzh;
        if (zzh == null) {
            try {
                zzcnhVar = new zzcnh(zzcjbVar2, Float.parseFloat((String) map.get(VastIconXmlManager.DURATION)), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                zzcjbVar2.zzx(zzcnhVar);
            } catch (NullPointerException | NumberFormatException e) {
                zzcgt.zzg("Unable to parse videoMeta message.", e);
                zzt.zzg().zzk(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float parseFloat = Float.parseFloat((String) map.get(VastIconXmlManager.DURATION));
        boolean equals = "1".equals(map.get("muted"));
        float parseFloat2 = Float.parseFloat((String) map.get("currentTime"));
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        int i = 0;
        if (parseInt >= 0) {
            i = parseInt > 3 ? 0 : parseInt;
        }
        String str = (String) map.get("aspectRatio");
        float parseFloat3 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
        if (zzcgt.zzm(3)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 140);
            sb.append("Video Meta GMSG: currentTime : ");
            sb.append(parseFloat2);
            sb.append(" , duration : ");
            sb.append(parseFloat);
            sb.append(" , isMuted : ");
            sb.append(equals);
            sb.append(" , playbackState : ");
            sb.append(i);
            sb.append(" , aspectRatio : ");
            sb.append(str);
            zzcgt.zzd(sb.toString());
        }
        zzcnhVar.zzs(parseFloat2, parseFloat, i, equals, parseFloat3);
    }
}
