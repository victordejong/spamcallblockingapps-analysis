package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleCallback.class */
public class LifecycleCallback {

    /* renamed from: a  reason: collision with root package name */
    protected final h f22627a;

    /* JADX INFO: Access modifiers changed from: protected */
    public LifecycleCallback(h hVar) {
        this.f22627a = hVar;
    }

    private static h getChimeraLifecycleFragmentImpl(g gVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    public final Activity a() {
        return this.f22627a.a();
    }

    public void a(int i, int i2, Intent intent) {
    }

    public void a(Bundle bundle) {
    }

    public void b() {
    }

    public void b(Bundle bundle) {
    }

    public void c() {
    }

    public void d() {
    }
}
