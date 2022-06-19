package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventExtras.class */
public final class CustomEventExtras implements NetworkExtras {
    private final HashMap<String, Object> zzevx = new HashMap<>();

    public final Object getExtra(String str) {
        return this.zzevx.get(str);
    }

    public final void setExtra(String str, Object obj) {
        this.zzevx.put(str, obj);
    }
}
