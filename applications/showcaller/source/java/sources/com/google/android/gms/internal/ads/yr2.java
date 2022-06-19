package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6113d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yr2.class */
public final class yr2 implements AbstractC6113d.AbstractC6114a, AbstractC6113d.AbstractC6115b {

    /* renamed from: a */
    private final ss2 f32628a;

    /* renamed from: b */
    private final os2 f32629b;

    /* renamed from: c */
    private final Object f32630c = new Object();

    /* renamed from: d */
    private boolean f32631d = false;

    /* renamed from: e */
    private boolean f32632e = false;

    public yr2(Context context, Looper looper, os2 os2Var) {
        this.f32629b = os2Var;
        this.f32628a = new ss2(context, looper, this, this, 12800000);
    }

    /* renamed from: b */
    private final void m8708b() {
        synchronized (this.f32630c) {
            if (this.f32628a.m17110b() || this.f32628a.m17103f()) {
                this.f32628a.m17112a();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6115b
    /* renamed from: D0 */
    public final void mo6338D0(ConnectionResult connectionResult) {
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: J0 */
    public final void mo6337J0(Bundle bundle) {
        synchronized (this.f32630c) {
            if (this.f32632e) {
                return;
            }
            this.f32632e = true;
            try {
                this.f32628a.m10916i0().m9867y4(new zzfjn(this.f32629b.mo10723K()));
            } catch (Exception e) {
            }
            m8708b();
        }
    }

    /* renamed from: a */
    public final void m8709a() {
        synchronized (this.f32630c) {
            if (!this.f32631d) {
                this.f32631d = true;
                this.f32628a.m17093q();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: c0 */
    public final void mo6333c0(int i) {
    }
}
