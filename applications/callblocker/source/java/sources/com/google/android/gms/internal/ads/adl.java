package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adl.class */
final class adl implements AbstractC3131fa<act> {

    /* renamed from: a */
    private final /* synthetic */ adj f7949a;

    public adl(adj adjVar) {
        this.f7949a = adjVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(act actVar, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(str);
                synchronized (this.f7949a) {
                    i = this.f7949a.f7906G;
                    if (i != parseInt) {
                        this.f7949a.f7906G = parseInt;
                        this.f7949a.requestLayout();
                    }
                }
            } catch (Exception e) {
                C3556uu.m6746d("Exception occurred while getting webview content height", e);
            }
        }
    }
}
