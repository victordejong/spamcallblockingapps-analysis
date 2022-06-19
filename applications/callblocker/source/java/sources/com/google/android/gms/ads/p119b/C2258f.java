package com.google.android.gms.ads.p119b;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.internal.ads.AbstractC2858cg;
import com.google.android.gms.internal.ads.C3645yb;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.ads.b.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/b/f.class */
public final class C2258f {

    /* renamed from: a */
    public static WeakHashMap<View, C2258f> f6559a = new WeakHashMap<>();

    /* renamed from: b */
    private AbstractC2858cg f6560b;

    /* renamed from: c */
    private WeakReference<View> f6561c;

    /* renamed from: a */
    private final void m14882a(AbstractC2731a abstractC2731a) {
        View view = this.f6561c != null ? this.f6561c.get() : null;
        if (view == null) {
            C3645yb.m6745e("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!f6559a.containsKey(view)) {
            f6559a.put(view, this);
        }
        if (this.f6560b == null) {
            return;
        }
        try {
            this.f6560b.mo11261a(abstractC2731a);
        } catch (RemoteException e) {
            C3645yb.m6748c("Unable to call setNativeAd on delegate", e);
        }
    }

    /* renamed from: a */
    public final void m14884a(AbstractC2252c abstractC2252c) {
        m14882a((AbstractC2731a) abstractC2252c.mo10763a());
    }

    /* renamed from: a */
    public final void m14883a(AbstractC2267k abstractC2267k) {
        m14882a((AbstractC2731a) abstractC2267k.mo8143k());
    }
}
