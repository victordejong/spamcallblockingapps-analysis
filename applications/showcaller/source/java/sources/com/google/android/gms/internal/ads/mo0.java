package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mo0.class */
final class mo0 implements n20<wn0> {

    /* renamed from: a */
    final /* synthetic */ oo0 f26688a;

    public mo0(oo0 oo0Var) {
        this.f26688a = oo0Var;
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(str);
                synchronized (this.f26688a) {
                    i = this.f26688a.f27616J;
                    if (i != parseInt) {
                        this.f26688a.f27616J = parseInt;
                        this.f26688a.requestLayout();
                    }
                }
            } catch (Exception e) {
                ei0.m15463g("Exception occurred while getting webview content height", e);
            }
        }
    }
}
