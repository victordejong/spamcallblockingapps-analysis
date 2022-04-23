package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6874h;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6870g;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6948y2;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.FragmentC6944x2;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleCallback.class */
public class LifecycleCallback {

    /* renamed from: a */
    public final AbstractC6874h f6535a;

    public LifecycleCallback(AbstractC6874h hVar) {
        this.f6535a = hVar;
    }

    /* renamed from: a */
    public static AbstractC6874h m31971a(Activity activity) {
        return m31970a(new C6870g(activity));
    }

    /* renamed from: a */
    public static AbstractC6874h m31970a(C6870g gVar) {
        if (gVar.m21679c()) {
            return C6948y2.m21477a(gVar.m21680b());
        }
        if (gVar.m21678d()) {
            return FragmentC6944x2.m21489a(gVar.m21681a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @Keep
    public static AbstractC6874h getChimeraLifecycleFragmentImpl(C6870g gVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    /* renamed from: a */
    public Activity m31972a() {
        return this.f6535a.mo21472d();
    }

    @MainThread
    /* renamed from: a */
    public void mo21674a(int i, int i2, Intent intent) {
    }

    @MainThread
    /* renamed from: a */
    public void mo21673a(Bundle bundle) {
    }

    @MainThread
    /* renamed from: a */
    public void mo21684a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @MainThread
    /* renamed from: b */
    public void m31969b() {
    }

    @MainThread
    /* renamed from: b */
    public void mo21671b(Bundle bundle) {
    }

    @MainThread
    /* renamed from: c */
    public void mo21526c() {
    }

    @MainThread
    /* renamed from: d */
    public void mo21525d() {
    }

    @MainThread
    /* renamed from: e */
    public void mo16034e() {
    }
}
