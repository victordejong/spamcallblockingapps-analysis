package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.BinderC12129d;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.rw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rw.class */
public final class C12892rw {

    /* renamed from: a */
    public final View f49769a;

    /* renamed from: b */
    public final AbstractC13048xo f49770b;

    /* renamed from: c */
    private final Map<String, WeakReference<View>> f49771c;

    public C12892rw(C12893rx c12893rx) {
        View view = c12893rx.f49772a;
        this.f49769a = view;
        Map<String, WeakReference<View>> map = c12893rx.f49773b;
        this.f49771c = map;
        AbstractC13048xo m14206a = C12890ru.m14206a(c12893rx.f49772a.getContext());
        this.f49770b = m14206a;
        if (m14206a == null || map == null || map.isEmpty()) {
            return;
        }
        try {
            m14206a.mo13996a(new zzatj(BinderC12129d.m18979a(view).asBinder(), BinderC12129d.m18979a(map).asBinder()));
        } catch (RemoteException e) {
            C13088za.zzex("Failed to call remote method.");
        }
    }
}
