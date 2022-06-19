package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import androidx.browser.customtabs.AbstractServiceConnectionC0353d;
import androidx.browser.customtabs.C0344b;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rj3.class */
public final class rj3 extends AbstractServiceConnectionC0353d {

    /* renamed from: a */
    private final WeakReference<C6643jx> f29000a;

    public rj3(C6643jx c6643jx, byte[] bArr) {
        this.f29000a = new WeakReference<>(c6643jx);
    }

    @Override // androidx.browser.customtabs.AbstractServiceConnectionC0353d
    /* renamed from: a */
    public final void mo11438a(ComponentName componentName, C0344b c0344b) {
        C6643jx c6643jx = this.f29000a.get();
        if (c6643jx != null) {
            c6643jx.m14018f(c0344b);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C6643jx c6643jx = this.f29000a.get();
        if (c6643jx != null) {
            c6643jx.m14017g();
        }
    }
}
