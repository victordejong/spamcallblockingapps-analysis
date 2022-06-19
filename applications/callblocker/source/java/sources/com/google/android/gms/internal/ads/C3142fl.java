package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.fl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fl.class */
public final class C3142fl implements AbstractC3131fa<Object> {

    /* renamed from: a */
    private final AbstractC3141fk f16665a;

    private C3142fl(AbstractC3141fk abstractC3141fk) {
        this.f16665a = abstractC3141fk;
    }

    /* renamed from: a */
    public static void m7827a(act actVar, AbstractC3141fk abstractC3141fk) {
        actVar.mo13462a("/reward", new C3142fl(abstractC3141fk));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        C3472rr c3472rr;
        int parseInt;
        String str;
        String str2 = map.get("action");
        if (!"grant".equals(str2)) {
            if ("video_start".equals(str2)) {
                this.f16665a.mo7830a();
                return;
            } else if (!"video_complete".equals(str2)) {
                return;
            } else {
                this.f16665a.mo7828b();
                return;
            }
        }
        try {
            parseInt = Integer.parseInt(map.get("amount"));
            str = map.get("type");
        } catch (NumberFormatException e) {
            C3556uu.m6746d("Unable to parse reward amount.", e);
        }
        if (!TextUtils.isEmpty(str)) {
            c3472rr = new C3472rr(str, parseInt);
            this.f16665a.mo7829a(c3472rr);
        }
        c3472rr = null;
        this.f16665a.mo7829a(c3472rr);
    }
}
