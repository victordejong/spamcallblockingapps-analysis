package com.google.android.gms.internal.ads;

import android.os.Environment;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.aa */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aa.class */
final class CallableC12165aa implements Callable<Boolean> {
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Boolean call() throws Exception {
        return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
    }
}
