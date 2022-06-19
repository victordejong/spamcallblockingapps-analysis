package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zt0.class */
public final class zt0 implements pt0 {

    /* renamed from: a */
    private final Context f33392a;

    /* renamed from: b */
    private final AbstractC5728q1 f33393b = C5667s.m18156h().m12230p();

    public zt0(Context context) {
        this.f33392a = context;
    }

    @Override // com.google.android.gms.internal.ads.pt0
    /* renamed from: a */
    public final void mo8187a(Map<String, String> map) {
        if (map.isEmpty()) {
            return;
        }
        String str = map.get("gad_idless");
        if (str != null) {
            boolean parseBoolean = Boolean.parseBoolean(str);
            map.remove("gad_idless");
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25759o0)).booleanValue()) {
                this.f33393b.mo17978K0(parseBoolean);
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25835x4)).booleanValue() && parseBoolean) {
                    this.f33392a.deleteDatabase("OfflineUpload.db");
                }
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25719j0)).booleanValue()) {
            return;
        }
        C5667s.m18163a().m13543j(bundle);
    }
}
