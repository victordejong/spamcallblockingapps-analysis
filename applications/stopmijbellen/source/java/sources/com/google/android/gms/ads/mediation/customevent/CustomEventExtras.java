package com.google.android.gms.ads.mediation.customevent;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.util.HashMap;
import p154l2.AbstractC3487e;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventExtras.class */
public final class CustomEventExtras implements AbstractC3487e {
    private final HashMap<String, Object> zza = new HashMap<>();

    @RecentlyNullable
    public Object getExtra(@RecentlyNonNull String str) {
        return this.zza.get(str);
    }

    public void setExtra(@RecentlyNonNull String str, @RecentlyNonNull Object obj) {
        this.zza.put(str, obj);
    }
}
