package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hz.class */
public final class hz implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final hy f28057a;

    private hz(hy hyVar) {
        this.f28057a = hyVar;
    }

    public static void a(adt adtVar, hy hyVar) {
        adtVar.a("/reward", new hz(hyVar));
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        zzavy zzavyVar;
        String str = map.get("action");
        if ("grant".equals(str)) {
            try {
                int parseInt = Integer.parseInt(map.get("amount"));
                String str2 = map.get("type");
                zzavyVar = null;
                if (!TextUtils.isEmpty(str2)) {
                    zzavyVar = new zzavy(str2, parseInt);
                }
            } catch (NumberFormatException e) {
                zzd.zzd("Unable to parse reward amount.", e);
                zzavyVar = null;
            }
            this.f28057a.a(zzavyVar);
        } else if ("video_start".equals(str)) {
            this.f28057a.a();
        } else if ("video_complete".equals(str)) {
            this.f28057a.b();
        }
    }
}
