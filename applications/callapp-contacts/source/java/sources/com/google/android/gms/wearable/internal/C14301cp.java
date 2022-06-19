package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.wearable.PutDataRequest;
/* renamed from: com.google.android.gms.wearable.internal.cp */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cp.class */
public final class C14301cp {
    /* renamed from: a */
    public static IntentFilter m11399a(String str) {
        IntentFilter intentFilter = new IntentFilter(str);
        intentFilter.addDataScheme(PutDataRequest.WEAR_URI_SCHEME);
        intentFilter.addDataAuthority("*", null);
        return intentFilter;
    }
}
