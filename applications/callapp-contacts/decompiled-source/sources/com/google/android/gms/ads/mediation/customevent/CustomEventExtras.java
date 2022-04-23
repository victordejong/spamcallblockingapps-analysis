package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.e;
import java.util.HashMap;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventExtras.class */
public final class CustomEventExtras implements e {
    private final HashMap<String, Object> zzeyd = new HashMap<>();

    public final Object getExtra(String str) {
        return this.zzeyd.get(str);
    }

    public final void setExtra(String str, Object obj) {
        this.zzeyd.put(str, obj);
    }
}
