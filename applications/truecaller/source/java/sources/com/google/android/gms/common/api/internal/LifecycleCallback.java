package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleCallback.class */
public class LifecycleCallback {
    @KeepForSdk

    /* renamed from: a */
    public final LifecycleFragment f5762a;

    @KeepForSdk
    public LifecycleCallback(LifecycleFragment lifecycleFragment) {
        this.f5762a = lifecycleFragment;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0047, code lost:
        if (r0.isRemoving() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b0, code lost:
        if (r0 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ca, code lost:
        if (r0.isRemoving() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002d, code lost:
        if (r0 == null) goto L40;
     */
    @com.google.android.gms.common.annotation.KeepForSdk
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.LifecycleFragment m39024c(com.google.android.gms.common.api.internal.LifecycleActivity r6) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.LifecycleCallback.m39024c(com.google.android.gms.common.api.internal.LifecycleActivity):com.google.android.gms.common.api.internal.LifecycleFragment");
    }

    @Keep
    private static LifecycleFragment getChimeraLifecycleFragmentImpl(LifecycleActivity lifecycleActivity) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    @KeepForSdk
    /* renamed from: a */
    public void mo38937a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @KeepForSdk
    /* renamed from: b */
    public Activity m39025b() {
        Activity mo38923Dh = this.f5762a.mo38923Dh();
        Objects.requireNonNull(mo38923Dh, "null reference");
        return mo38923Dh;
    }

    @KeepForSdk
    /* renamed from: d */
    public void mo38935d(int i, int i2, Intent intent) {
    }

    @KeepForSdk
    /* renamed from: e */
    public void mo38934e(Bundle bundle) {
    }

    @KeepForSdk
    /* renamed from: f */
    public void mo38950f() {
    }

    @KeepForSdk
    /* renamed from: g */
    public void mo39012g() {
    }

    @KeepForSdk
    /* renamed from: h */
    public void mo38933h(Bundle bundle) {
    }

    @KeepForSdk
    /* renamed from: i */
    public void mo38932i() {
    }

    @KeepForSdk
    /* renamed from: j */
    public void mo38931j() {
    }
}
