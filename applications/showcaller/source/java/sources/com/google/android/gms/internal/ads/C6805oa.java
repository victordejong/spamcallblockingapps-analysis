package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.google.android.gms.internal.ads.oa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oa.class */
public final class C6805oa implements AbstractC7210z8 {
    @Override // com.google.android.gms.internal.ads.AbstractC7210z8
    /* renamed from: a */
    public final AbstractC6693l9 mo8486a(Looper looper, Handler.Callback callback) {
        return new C6916ra(new Handler(looper, callback));
    }
}
