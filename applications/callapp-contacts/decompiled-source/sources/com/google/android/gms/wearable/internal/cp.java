package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.wearable.PutDataRequest;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cp.class */
public final class cp {
    public static IntentFilter a(String str) {
        IntentFilter intentFilter = new IntentFilter(str);
        intentFilter.addDataScheme(PutDataRequest.WEAR_URI_SCHEME);
        intentFilter.addDataAuthority("*", null);
        return intentFilter;
    }
}
