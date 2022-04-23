package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.d;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rw.class */
public final class rw {

    /* renamed from: a  reason: collision with root package name */
    public final View f28362a;

    /* renamed from: b  reason: collision with root package name */
    public final xo f28363b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, WeakReference<View>> f28364c;

    public rw(rx rxVar) {
        View view = rxVar.f28365a;
        this.f28362a = view;
        Map<String, WeakReference<View>> map = rxVar.f28366b;
        this.f28364c = map;
        xo a2 = ru.a(rxVar.f28365a.getContext());
        this.f28363b = a2;
        if (a2 != null && map != null && !map.isEmpty()) {
            try {
                a2.a(new zzatj(d.a(view).asBinder(), d.a(map).asBinder()));
            } catch (RemoteException e) {
                za.zzex("Failed to call remote method.");
            }
        }
    }
}
