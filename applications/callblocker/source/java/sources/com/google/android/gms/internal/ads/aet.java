package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aet.class */
final class aet implements AbstractC3131fa<act> {

    /* renamed from: a */
    private final /* synthetic */ aer f8078a;

    public aet(aer aerVar) {
        this.f8078a = aerVar;
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
                synchronized (this.f8078a) {
                    i = this.f8078a.f8024B;
                    if (i != parseInt) {
                        this.f8078a.f8024B = parseInt;
                        this.f8078a.requestLayout();
                    }
                }
            } catch (Exception e) {
                C3556uu.m6746d("Exception occurred while getting webview content height", e);
            }
        }
    }
}
