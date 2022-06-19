package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ban.class */
public final class ban implements azh {

    /* renamed from: a */
    private final AbstractC3289kx f10788a;

    /* renamed from: b */
    private final AbstractC3296ld f10789b;

    /* renamed from: c */
    private final AbstractC3297le f10790c;

    /* renamed from: d */
    private final aqh f10791d;

    /* renamed from: e */
    private final apo f10792e;

    /* renamed from: f */
    private final Context f10793f;

    /* renamed from: g */
    private final cgr f10794g;

    /* renamed from: h */
    private final C3647yd f10795h;

    /* renamed from: i */
    private final chh f10796i;

    /* renamed from: j */
    private boolean f10797j = false;

    /* renamed from: k */
    private boolean f10798k = false;

    public ban(AbstractC3289kx abstractC3289kx, AbstractC3296ld abstractC3296ld, AbstractC3297le abstractC3297le, aqh aqhVar, apo apoVar, Context context, cgr cgrVar, C3647yd c3647yd, chh chhVar) {
        this.f10788a = abstractC3289kx;
        this.f10789b = abstractC3296ld;
        this.f10790c = abstractC3297le;
        this.f10791d = aqhVar;
        this.f10792e = apoVar;
        this.f10793f = context;
        this.f10794g = cgrVar;
        this.f10795h = c3647yd;
        this.f10796i = chhVar;
    }

    /* renamed from: a */
    private static HashMap<String, View> m12150a(Map<String, WeakReference<View>> map) {
        HashMap<String, View> hashMap = new HashMap<>();
        if (map != null) {
            synchronized (map) {
                for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                    View view = entry.getValue().get();
                    if (view != null) {
                        hashMap.put(entry.getKey(), view);
                    }
                }
            }
        }
        return hashMap;
    }

    /* renamed from: b */
    private final void m12147b(View view) {
        try {
            if (this.f10790c != null && !this.f10790c.mo7476q()) {
                this.f10790c.mo7494a(BinderC2734b.m13794a(view));
                this.f10792e.mo8200e();
            } else if (this.f10788a != null && !this.f10788a.mo7598k()) {
                this.f10788a.mo7611a(BinderC2734b.m13794a(view));
                this.f10792e.mo8200e();
            } else if (this.f10789b != null && !this.f10789b.mo7544i()) {
                this.f10789b.mo7555a(BinderC2734b.m13794a(view));
                this.f10792e.mo8200e();
            }
        } catch (RemoteException e) {
            C3556uu.m6746d("Failed to call handleClick", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12163a() {
        this.f10798k = true;
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12162a(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12161a(View view) {
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12160a(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12159a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f10798k || !this.f10794g.f12958D) {
            m12147b(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12158a(View view, Map<String, WeakReference<View>> map) {
        try {
            AbstractC2731a m13794a = BinderC2734b.m13794a(view);
            if (this.f10790c != null) {
                this.f10790c.mo7491b(m13794a);
            } else if (this.f10788a != null) {
                this.f10788a.mo7606c(m13794a);
            } else if (this.f10789b != null) {
                this.f10789b.mo7550c(m13794a);
            }
        } catch (RemoteException e) {
            C3556uu.m6746d("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12157a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.f10797j && this.f10794g.f13004z != null) {
                this.f10797j |= C2341q.m14734m().m6890b(this.f10793f, this.f10795h.f17636a, this.f10794g.f13004z.toString(), this.f10796i.f13042f);
            }
            if (this.f10790c != null && !this.f10790c.mo7477p()) {
                this.f10790c.mo7475r();
                this.f10791d.m12811a();
            } else if (this.f10788a != null && !this.f10788a.mo7599j()) {
                this.f10788a.mo7600i();
                this.f10791d.m12811a();
            } else if (this.f10789b == null || this.f10789b.mo7545h()) {
            } else {
                this.f10789b.mo7546g();
                this.f10791d.m12811a();
            }
        } catch (RemoteException e) {
            C3556uu.m6746d("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12156a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            AbstractC2731a m13794a = BinderC2734b.m13794a(view);
            HashMap<String, View> m12150a = m12150a(map);
            HashMap<String, View> m12150a2 = m12150a(map2);
            if (this.f10790c != null) {
                this.f10790c.mo7493a(m13794a, BinderC2734b.m13794a(m12150a), BinderC2734b.m13794a(m12150a2));
            } else if (this.f10788a != null) {
                this.f10788a.mo7610a(m13794a, BinderC2734b.m13794a(m12150a), BinderC2734b.m13794a(m12150a2));
                this.f10788a.mo7608b(m13794a);
            } else if (this.f10789b != null) {
                this.f10789b.mo7554a(m13794a, BinderC2734b.m13794a(m12150a), BinderC2734b.m13794a(m12150a2));
                this.f10789b.mo7552b(m13794a);
            }
        } catch (RemoteException e) {
            C3556uu.m6746d("Failed to call trackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12155a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f10798k) {
            C3556uu.m6745e("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.f10794g.f12958D) {
            C3556uu.m6745e("Custom click reporting for 3p ads failed. Ad unit id not whitelisted.");
        } else {
            m12147b(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12154a(AbstractC3014dt abstractC3014dt) {
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12153a(eah eahVar) {
        C3556uu.m6745e("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12152a(eal ealVar) {
        C3556uu.m6745e("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12151a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: b */
    public final void mo12148b(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: b */
    public final boolean mo12149b() {
        return this.f10794g.f12958D;
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: c */
    public final void mo12146c() {
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: c */
    public final boolean mo12145c(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: d */
    public final void mo12144d() {
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: e */
    public final void mo12143e() {
        C3556uu.m6745e("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: f */
    public final void mo12142f() {
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: g */
    public final void mo12141g() {
    }
}
