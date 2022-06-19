package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aje.class */
public final class aje implements aiy {

    /* renamed from: a */
    private final cot f42200a;

    public aje(cot cotVar) {
        this.f42200a = cotVar;
    }

    @Override // com.google.android.gms.internal.ads.aiy
    /* renamed from: a */
    public final void mo18642a(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (!TextUtils.isEmpty(str)) {
            try {
                cot cotVar = this.f42200a;
                if (Boolean.parseBoolean(str)) {
                    cotVar.m17370a(cow.f46280a, cow.f46281b);
                } else {
                    cotVar.m17370a(cow.f46281b, cow.f46280a);
                }
            } catch (Exception e) {
                throw new IllegalStateException("Invalid render_in_browser state");
            }
        }
    }
}
