package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.AbstractC6113d;
/* renamed from: com.google.android.gms.internal.ads.wl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wl.class */
public final class C7112wl implements AbstractC6113d.AbstractC6114a {

    /* renamed from: a */
    final /* synthetic */ C7186yl f31603a;

    public C7112wl(C7186yl c7186yl) {
        this.f31603a = c7186yl;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: J0 */
    public final void mo6337J0(Bundle bundle) {
        Object obj;
        Object obj2;
        C6297am c6297am;
        C6297am c6297am2;
        obj = this.f31603a.f32536b;
        synchronized (obj) {
            try {
                c6297am = this.f31603a.f32537c;
                if (c6297am != null) {
                    C7186yl c7186yl = this.f31603a;
                    c6297am2 = c7186yl.f32537c;
                    c7186yl.f32539e = c6297am2.m16556j0();
                }
            } catch (DeadObjectException e) {
                ei0.m15466d("Unable to obtain a cache service instance.", e);
                C7186yl.m8781j(this.f31603a);
            }
            obj2 = this.f31603a.f32536b;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: c0 */
    public final void mo6333c0(int i) {
        Object obj;
        Object obj2;
        obj = this.f31603a.f32536b;
        synchronized (obj) {
            this.f31603a.f32539e = null;
            obj2 = this.f31603a.f32536b;
            obj2.notifyAll();
        }
    }
}
