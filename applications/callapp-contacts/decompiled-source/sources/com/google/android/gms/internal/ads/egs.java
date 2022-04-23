package com.google.android.gms.internal.ads;

import android.os.DeadObjectException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egs.class */
public final class egs implements d.a {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ egn f27822a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public egs(egn egnVar) {
        this.f27822a = egnVar;
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a() {
        synchronized (this.f27822a.f27812b) {
            try {
                if (this.f27822a.f27813c != null) {
                    egn egnVar = this.f27822a;
                    egnVar.f27814d = egnVar.f27813c.a();
                }
            } catch (DeadObjectException e) {
                zzd.zzc("Unable to obtain a cache service instance.", e);
                egn.a(this.f27822a);
            }
            this.f27822a.f27812b.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
        synchronized (this.f27822a.f27812b) {
            this.f27822a.f27814d = null;
            this.f27822a.f27812b.notifyAll();
        }
    }
}
