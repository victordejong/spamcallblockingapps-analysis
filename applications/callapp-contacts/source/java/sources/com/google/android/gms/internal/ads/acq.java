package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.mopub.mobileads.VastIconXmlManager;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acq.class */
public final class acq implements AbstractC12607hi<abb> {
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(abb abbVar, Map map) {
        abb abbVar2 = abbVar;
        aem mo13763b = abbVar2.mo13763b();
        aem aemVar = mo13763b;
        if (mo13763b == null) {
            try {
                aemVar = new aem(abbVar2, Float.parseFloat((String) map.get(VastIconXmlManager.DURATION)), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                abbVar2.mo13783a(aemVar);
            } catch (NullPointerException | NumberFormatException e) {
                zzd.zzc("Unable to parse videoMeta message.", e);
                zzr.zzkz().m13979a(e, "VideoMetaGmsgHandler.onGmsg");
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
        float parseFloat3 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
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
        aemVar.m18806a(parseFloat2, parseFloat, parseInt, equals, parseFloat3);
    }
}
