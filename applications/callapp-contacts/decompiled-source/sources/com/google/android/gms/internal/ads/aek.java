package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aek.class */
final class aek implements hi<adt> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ aeh f23195a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aek(aeh aehVar) {
        this.f23195a = aehVar;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(adt adtVar, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get("height");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    synchronized (this.f23195a) {
                        i = this.f23195a.H;
                        if (i != parseInt) {
                            this.f23195a.H = parseInt;
                            this.f23195a.requestLayout();
                        }
                    }
                } catch (Exception e) {
                    zzd.zzd("Exception occurred while getting webview content height", e);
                }
            }
        }
    }
}
