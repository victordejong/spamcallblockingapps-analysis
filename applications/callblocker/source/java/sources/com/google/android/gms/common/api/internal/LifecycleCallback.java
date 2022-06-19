package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleCallback.class */
public class LifecycleCallback {

    /* renamed from: a */
    protected final AbstractC2554i f7079a;

    public LifecycleCallback(AbstractC2554i abstractC2554i) {
        this.f7079a = abstractC2554i;
    }

    /* renamed from: a */
    public static AbstractC2554i m14403a(Activity activity) {
        return m14402a(new C2553h(activity));
    }

    /* renamed from: a */
    protected static AbstractC2554i m14402a(C2553h c2553h) {
        AbstractC2554i m14338a;
        if (c2553h.m14246a()) {
            m14338a = C2542bk.m14335a(c2553h.m14243d());
        } else if (!c2553h.m14245b()) {
            throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
        } else {
            m14338a = FragmentC2539bh.m14338a(c2553h.m14244c());
        }
        return m14338a;
    }

    @Keep
    private static AbstractC2554i getChimeraLifecycleFragmentImpl(C2553h c2553h) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    /* renamed from: a */
    public Activity m14404a() {
        return this.f7079a.mo14242a();
    }

    /* renamed from: a */
    public void mo14355a(int i, int i2, Intent intent) {
    }

    /* renamed from: a */
    public void mo14354a(Bundle bundle) {
    }

    /* renamed from: a */
    public void m14401a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* renamed from: b */
    public void mo14225b() {
    }

    /* renamed from: b */
    public void mo14352b(Bundle bundle) {
    }

    /* renamed from: c */
    public void mo14224c() {
    }

    /* renamed from: d */
    public void mo3906d() {
    }

    /* renamed from: e */
    public void m14400e() {
    }
}
