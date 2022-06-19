package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yl0.class */
public final class yl0 implements n20<kk0> {
    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(kk0 kk0Var, Map map) {
        kk0 kk0Var2 = kk0Var;
        ro0 mo7909f = kk0Var2.mo7909f();
        ro0 ro0Var = mo7909f;
        if (mo7909f == null) {
            try {
                ro0Var = new ro0(kk0Var2, Float.parseFloat((String) map.get("duration")), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                kk0Var2.mo7882w(ro0Var);
            } catch (NullPointerException | NumberFormatException e) {
                ei0.m15466d("Unable to parse videoMeta message.", e);
                C5667s.m18156h().m12235k(e, "VideoMetaGmsgHandler.onGmsg");
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
        if (ei0.m15460j(3)) {
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
            ei0.m15469a(sb.toString());
        }
        ro0Var.m11361H6(parseFloat2, parseFloat, i, equals, parseFloat3);
    }
}
