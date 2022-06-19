package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmu.class */
public final class zzcmu implements zzbrt<zzclh> {
    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzclh zzclhVar, Map map) {
        zzclh zzclhVar2 = zzclhVar;
        zzcpl zzs = zzclhVar2.zzs();
        zzcpl zzcplVar = zzs;
        if (zzs == null) {
            try {
                zzcplVar = new zzcpl(zzclhVar2, Float.parseFloat((String) map.get("duration")), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                zzclhVar2.zzE(zzcplVar);
            } catch (NullPointerException | NumberFormatException e) {
                zzciz.zzh("Unable to parse videoMeta message.", e);
                zzt.zzo().zzs(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float parseFloat = Float.parseFloat((String) map.get("duration"));
        boolean equals = "1".equals(map.get("muted"));
        float parseFloat2 = Float.parseFloat((String) map.get("currentTime"));
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        int i = 0;
        if (parseInt >= 0) {
            i = parseInt > 3 ? 0 : parseInt;
        }
        String str = (String) map.get("aspectRatio");
        float parseFloat3 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
        if (zzciz.zzm(3)) {
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
            zzciz.zze(sb.toString());
        }
        zzcplVar.zzc(parseFloat2, parseFloat, i, equals, parseFloat3);
    }
}
