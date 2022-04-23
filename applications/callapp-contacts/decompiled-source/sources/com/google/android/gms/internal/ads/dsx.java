package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import androidx.browser.customtabs.c;
import androidx.browser.customtabs.e;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsx.class */
public final class dsx extends e {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<dsw> f27170a;

    public dsx(dsw dswVar) {
        this.f27170a = new WeakReference<>(dswVar);
    }

    @Override // androidx.browser.customtabs.e
    public final void a(c cVar) {
        dsw dswVar = this.f27170a.get();
        if (dswVar != null) {
            dswVar.a(cVar);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        dsw dswVar = this.f27170a.get();
        if (dswVar != null) {
            dswVar.a();
        }
    }
}
