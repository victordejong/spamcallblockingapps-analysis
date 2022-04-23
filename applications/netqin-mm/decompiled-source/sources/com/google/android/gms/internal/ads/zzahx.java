package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventParameters;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahx.class */
public final class zzahx implements zzahq<Object> {

    /* renamed from: a */
    public final zzaia f24123a;

    public zzahx(zzaia zzaiaVar) {
        this.f24123a = zzaiaVar;
    }

    /* renamed from: a */
    public static void m16747a(zzbgj zzbgjVar, zzaia zzaiaVar) {
        zzbgjVar.mo15570b("/reward", new zzahx(zzaiaVar));
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final void mo14168a(Object obj, Map<String, String> map) {
        zzauv zzauvVar;
        String str = map.get("action");
        if ("grant".equals(str)) {
            try {
                int parseInt = Integer.parseInt(map.get(AppLovinEventParameters.REVENUE_AMOUNT));
                String str2 = map.get("type");
                zzauvVar = null;
                if (!TextUtils.isEmpty(str2)) {
                    zzauvVar = new zzauv(str2, parseInt);
                }
            } catch (NumberFormatException e) {
                zzbbq.m15853c("Unable to parse reward amount.", e);
                zzauvVar = null;
            }
            this.f24123a.mo14156a(zzauvVar);
        } else if ("video_start".equals(str)) {
            this.f24123a.mo14154p();
        } else if ("video_complete".equals(str)) {
            this.f24123a.mo14155o();
        }
    }
}
