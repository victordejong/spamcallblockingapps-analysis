package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzzu;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzu.class */
public final class zzzu extends zzxv {

    /* renamed from: a */
    public zzait f29174a;

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: J1 */
    public final void mo10937J1() {
    }

    /* renamed from: Q1 */
    public final /* synthetic */ void m10936Q1() {
        zzait zzaitVar = this.f29174a;
        if (zzaitVar != null) {
            try {
                zzaitVar.mo10990f(Collections.emptyList());
            } catch (RemoteException e) {
                zzbbq.m15853c("Could not notify onComplete event.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: S1 */
    public final List<zzaiq> mo10935S1() throws RemoteException {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10934a(float f) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10933a(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10932a(zzaae zzaaeVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10931a(zzait zzaitVar) throws RemoteException {
        this.f29174a = zzaitVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10930a(zzanb zzanbVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: b */
    public final void mo10929b(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: b2 */
    public final boolean mo10928b2() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: g */
    public final void mo10927g(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final void initialize() throws RemoteException {
        zzbbq.m15856b("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        zzbbg.f24738b.post(new Runnable(this) { // from class: c.d.b.d.g.a.li0

            /* renamed from: a */
            public final zzzu f13980a;

            {
                this.f13980a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f13980a.m10936Q1();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: n1 */
    public final String mo10926n1() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: p */
    public final void mo10925p(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: q */
    public final void mo10924q(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: y0 */
    public final float mo10923y0() throws RemoteException {
        return 1.0f;
    }
}
