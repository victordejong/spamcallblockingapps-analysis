package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.FileDescriptor;
import java.io.PrintWriter;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleCallback.class */
public class LifecycleCallback {
    @KeepForSdk

    /* renamed from: f */
    protected final LifecycleFragment f7108f;

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public LifecycleCallback(LifecycleFragment lifecycleFragment) {
        this.f7108f = lifecycleFragment;
    }

    @KeepForSdk
    /* renamed from: c */
    public static LifecycleFragment m14880c(Activity activity) {
        return m14879d(new LifecycleActivity(activity));
    }

    @KeepForSdk
    /* renamed from: d */
    protected static LifecycleFragment m14879d(LifecycleActivity lifecycleActivity) {
        if (lifecycleActivity.m14883c()) {
            return zzc.m14645H0(lifecycleActivity.m14884b());
        }
        if (lifecycleActivity.m14882d()) {
            return zza.m14648b(lifecycleActivity.m14885a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @Keep
    private static LifecycleFragment getChimeraLifecycleFragmentImpl(LifecycleActivity lifecycleActivity) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    @KeepForSdk
    @MainThread
    /* renamed from: a */
    public void mo14733a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @KeepForSdk
    /* renamed from: b */
    public Activity m14881b() {
        return this.f7108f.mo14642L();
    }

    @KeepForSdk
    @MainThread
    /* renamed from: e */
    public void mo14727e(int i, int i2, Intent intent) {
    }

    @KeepForSdk
    @MainThread
    /* renamed from: f */
    public void mo14726f(Bundle bundle) {
    }

    @KeepForSdk
    @MainThread
    /* renamed from: g */
    public void mo14779g() {
    }

    @KeepForSdk
    @MainThread
    /* renamed from: h */
    public void mo14861h() {
    }

    @KeepForSdk
    @MainThread
    /* renamed from: i */
    public void mo14725i(Bundle bundle) {
    }

    @KeepForSdk
    @MainThread
    /* renamed from: j */
    public void mo14724j() {
    }

    @KeepForSdk
    @MainThread
    /* renamed from: k */
    public void mo10770k() {
    }
}
