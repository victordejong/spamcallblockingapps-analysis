package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.FileDescriptor;
import java.io.PrintWriter;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleCallback.class */
public class LifecycleCallback {
    @KeepForSdk

    /* renamed from: a */
    public final LifecycleFragment f23157a;

    @KeepForSdk
    public LifecycleCallback(LifecycleFragment lifecycleFragment) {
        this.f23157a = lifecycleFragment;
    }

    @KeepForSdk
    /* renamed from: a */
    public static LifecycleFragment m17627a(LifecycleActivity lifecycleActivity) {
        if (lifecycleActivity.m17630c()) {
            return zzc.m17446a(lifecycleActivity.m17631b());
        }
        if (lifecycleActivity.m17629d()) {
            return zzb.m17450a(lifecycleActivity.m17632a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @Keep
    public static LifecycleFragment getChimeraLifecycleFragmentImpl(LifecycleActivity lifecycleActivity) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    @KeepForSdk
    /* renamed from: a */
    public Activity m17628a() {
        return this.f23157a.mo17439c();
    }

    @KeepForSdk
    /* renamed from: a */
    public void mo17474a(int i, int i2, Intent intent) {
    }

    @KeepForSdk
    /* renamed from: a */
    public void mo17473a(Bundle bundle) {
    }

    @KeepForSdk
    /* renamed from: a */
    public void mo17479a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @KeepForSdk
    /* renamed from: b */
    public void mo17510b() {
    }

    @KeepForSdk
    /* renamed from: b */
    public void mo17471b(Bundle bundle) {
    }

    @KeepForSdk
    /* renamed from: c */
    public void mo17456c() {
    }

    @KeepForSdk
    /* renamed from: d */
    public void mo17455d() {
    }

    @KeepForSdk
    /* renamed from: e */
    public void mo17454e() {
    }
}
