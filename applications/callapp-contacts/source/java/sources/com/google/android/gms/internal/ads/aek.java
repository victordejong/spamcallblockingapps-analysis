package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aek.class */
final class aek implements AbstractC12607hi<adt> {

    /* renamed from: a */
    private final /* synthetic */ aeh f40114a;

    public aek(aeh aehVar) {
        this.f40114a = aehVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(adt adtVar, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(str);
                synchronized (this.f40114a) {
                    i = this.f40114a.f40067H;
                    if (i != parseInt) {
                        this.f40114a.f40067H = parseInt;
                        this.f40114a.requestLayout();
                    }
                }
            } catch (Exception e) {
                zzd.zzd("Exception occurred while getting webview content height", e);
            }
        }
    }
}
