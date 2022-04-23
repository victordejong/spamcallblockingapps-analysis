package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventExtras.class */
public final class CustomEventExtras implements NetworkExtras {
    public final HashMap<String, Object> zzdkf = new HashMap<>();

    public final Object getExtra(String str) {
        return this.zzdkf.get(str);
    }

    public final void setExtra(String str, Object obj) {
        this.zzdkf.put(str, obj);
    }
}
