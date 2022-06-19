package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.C5845s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ak1.class */
public final class ak1 extends C5845s.AbstractC5846a {

    /* renamed from: a */
    private final re1 f19983a;

    public ak1(re1 re1Var) {
        this.f19983a = re1Var;
    }

    /* renamed from: f */
    private static AbstractC6751mu m16577f(re1 re1Var) {
        AbstractC6640ju m11511e0 = re1Var.m11511e0();
        if (m11511e0 == null) {
            return null;
        }
        try {
            return m11511e0.mo11344n();
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.C5845s.AbstractC5846a
    /* renamed from: a */
    public final void mo16580a() {
        AbstractC6751mu m16577f = m16577f(this.f19983a);
        if (m16577f == null) {
            return;
        }
        try {
            m16577f.mo11795f();
        } catch (RemoteException e) {
            ei0.m15463g("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.C5845s.AbstractC5846a
    /* renamed from: c */
    public final void mo16579c() {
        AbstractC6751mu m16577f = m16577f(this.f19983a);
        if (m16577f == null) {
            return;
        }
        try {
            m16577f.zzg();
        } catch (RemoteException e) {
            ei0.m15463g("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.C5845s.AbstractC5846a
    /* renamed from: e */
    public final void mo16578e() {
        AbstractC6751mu m16577f = m16577f(this.f19983a);
        if (m16577f == null) {
            return;
        }
        try {
            m16577f.mo11797a();
        } catch (RemoteException e) {
            ei0.m15463g("Unable to call onVideoEnd()", e);
        }
    }
}
