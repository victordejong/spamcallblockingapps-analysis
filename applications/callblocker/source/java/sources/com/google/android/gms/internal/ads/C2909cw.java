package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.C2387p;
import com.google.android.gms.ads.p119b.AbstractC2263i;
import com.google.android.gms.ads.p119b.C2251b;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.internal.ads.cw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cw.class */
public final class C2909cw implements AbstractC2263i {

    /* renamed from: a */
    private static WeakHashMap<IBinder, C2909cw> f13741a = new WeakHashMap<>();

    /* renamed from: b */
    private final AbstractC2893cr f13742b;

    /* renamed from: c */
    private final C2251b f13743c;

    /* renamed from: d */
    private final C2387p f13744d = new C2387p();

    private C2909cw(AbstractC2893cr abstractC2893cr) {
        Context context;
        this.f13742b = abstractC2893cr;
        try {
            context = (Context) BinderC2734b.m13795a(abstractC2893cr.mo10707f());
        } catch (RemoteException | NullPointerException e) {
            C3645yb.m6748c("", e);
            context = null;
        }
        C2251b c2251b = null;
        if (context != null) {
            c2251b = new C2251b(context);
            try {
                if (!this.f13742b.mo10716a(BinderC2734b.m13794a(c2251b))) {
                    c2251b = null;
                }
            } catch (RemoteException e2) {
                C3645yb.m6748c("", e2);
                c2251b = null;
            }
        }
        this.f13743c = c2251b;
    }

    /* renamed from: a */
    public static C2909cw m10579a(AbstractC2893cr abstractC2893cr) {
        C2909cw c2909cw;
        synchronized (f13741a) {
            C2909cw c2909cw2 = f13741a.get(abstractC2893cr.asBinder());
            if (c2909cw2 != null) {
                c2909cw = c2909cw2;
            } else {
                C2909cw c2909cw3 = new C2909cw(abstractC2893cr);
                f13741a.put(abstractC2893cr.asBinder(), c2909cw3);
                c2909cw = c2909cw3;
            }
        }
        return c2909cw;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2263i
    /* renamed from: a */
    public final String mo10580a() {
        String str;
        try {
            str = this.f13742b.mo10714b();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    /* renamed from: b */
    public final AbstractC2893cr m10578b() {
        return this.f13742b;
    }
}
