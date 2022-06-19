package com.google.android.gms.internal.ads;

import android.os.Environment;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.sv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sv.class */
final class CallableC6974sv implements Callable<Boolean> {
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() {
        return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
    }
}
