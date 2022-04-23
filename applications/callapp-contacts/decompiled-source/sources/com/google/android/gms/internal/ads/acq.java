package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acq.class */
public final class acq implements hi<abb> {
    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(abb abbVar, Map map) {
        abb abbVar2 = abbVar;
        aem b2 = abbVar2.b();
        aem aemVar = b2;
        if (b2 == null) {
            try {
                aemVar = new aem(abbVar2, Float.parseFloat((String) map.get(VastIconXmlManager.DURATION)), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                abbVar2.a(aemVar);
            } catch (NullPointerException | NumberFormatException e) {
                zzd.zzc("Unable to parse videoMeta message.", e);
                zzr.zzkz().a(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float parseFloat = Float.parseFloat((String) map.get(VastIconXmlManager.DURATION));
        boolean equals = "1".equals(map.get("muted"));
        float parseFloat2 = Float.parseFloat((String) map.get("currentTime"));
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        if (parseInt < 0 || 3 < parseInt) {
            parseInt = 0;
        }
        String str = (String) map.get("aspectRatio");
        float parseFloat3 = TextUtils.isEmpty(str) ? BitmapDescriptorFactory.HUE_RED : Float.parseFloat(str);
        if (zzd.isLoggable(3)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE);
            sb.append("Video Meta GMSG: currentTime : ");
            sb.append(parseFloat2);
            sb.append(" , duration : ");
            sb.append(parseFloat);
            sb.append(" , isMuted : ");
            sb.append(equals);
            sb.append(" , playbackState : ");
            sb.append(parseInt);
            sb.append(" , aspectRatio : ");
            sb.append(str);
            zzd.zzdz(sb.toString());
        }
        aemVar.a(parseFloat2, parseFloat, parseInt, equals, parseFloat3);
    }
}
