package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aje.class */
public final class aje implements aiy {

    /* renamed from: a  reason: collision with root package name */
    private final cot f23414a;

    public aje(cot cotVar) {
        this.f23414a = cotVar;
    }

    @Override // com.google.android.gms.internal.ads.aiy
    public final void a(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (!TextUtils.isEmpty(str)) {
            try {
                cot cotVar = this.f23414a;
                if (Boolean.parseBoolean(str)) {
                    cotVar.a(cow.f26187a, cow.f26188b);
                } else {
                    cotVar.a(cow.f26188b, cow.f26187a);
                }
            } catch (Exception e) {
                throw new IllegalStateException("Invalid render_in_browser state");
            }
        }
    }
}
