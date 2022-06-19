package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import androidx.browser.customtabs.AbstractServiceConnectionC0460e;
import androidx.browser.customtabs.C0450c;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsx.class */
public final class dsx extends AbstractServiceConnectionC0460e {

    /* renamed from: a */
    private WeakReference<dsw> f47526a;

    public dsx(dsw dswVar) {
        this.f47526a = new WeakReference<>(dswVar);
    }

    @Override // androidx.browser.customtabs.AbstractServiceConnectionC0460e
    /* renamed from: a */
    public final void mo15754a(C0450c c0450c) {
        dsw dswVar = this.f47526a.get();
        if (dswVar != null) {
            dswVar.mo15755a(c0450c);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        dsw dswVar = this.f47526a.get();
        if (dswVar != null) {
            dswVar.mo15756a();
        }
    }
}
