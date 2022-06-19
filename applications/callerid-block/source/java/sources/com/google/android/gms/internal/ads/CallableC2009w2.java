package com.google.android.gms.internal.ads;

import android.os.Environment;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.w2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/w2.class */
final class CallableC2009w2 implements Callable<Boolean> {
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() {
        return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
    }
}
