package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleCallback.class */
public class LifecycleCallback {
    @RecentlyNonNull

    /* renamed from: d */
    protected final AbstractC6031h f19216d;

    public LifecycleCallback(@RecentlyNonNull AbstractC6031h abstractC6031h) {
        this.f19216d = abstractC6031h;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static AbstractC6031h m17439c(@RecentlyNonNull Activity activity) {
        return m17438d(new C6028g(activity));
    }

    @RecentlyNonNull
    /* renamed from: d */
    protected static AbstractC6031h m17438d(@RecentlyNonNull C6028g c6028g) {
        if (c6028g.m17336c()) {
            return C6051n1.m17302a2(c6028g.m17337b());
        }
        if (!c6028g.m17335d()) {
            throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
        }
        return zzb.m17247a(c6028g.m17338a());
    }

    @Keep
    private static AbstractC6031h getChimeraLifecycleFragmentImpl(C6028g c6028g) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    /* renamed from: a */
    public void m17441a(@RecentlyNonNull String str, @RecentlyNonNull FileDescriptor fileDescriptor, @RecentlyNonNull PrintWriter printWriter, @RecentlyNonNull String[] strArr) {
    }

    @RecentlyNonNull
    /* renamed from: b */
    public Activity m17440b() {
        return this.f19216d.mo17243e();
    }

    /* renamed from: e */
    public void mo17332e(int i, int i2, @RecentlyNonNull Intent intent) {
    }

    /* renamed from: f */
    public void mo17331f(Bundle bundle) {
    }

    /* renamed from: g */
    public void m17437g() {
    }

    /* renamed from: h */
    public void mo17268h() {
    }

    /* renamed from: i */
    public void mo17330i(@RecentlyNonNull Bundle bundle) {
    }

    /* renamed from: j */
    public void mo17267j() {
    }

    /* renamed from: k */
    public void mo17266k() {
    }
}
