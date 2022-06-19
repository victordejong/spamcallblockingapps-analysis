package com.google.android.gms.internal.ads;

import android.os.DeadObjectException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.AbstractC12025d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egs.class */
public final class egs implements AbstractC12025d.AbstractC12026a {

    /* renamed from: a */
    private final /* synthetic */ egn f49012a;

    public egs(egn egnVar) {
        this.f49012a = egnVar;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11764a() {
        synchronized (this.f49012a.f48997b) {
            try {
                if (this.f49012a.f48998c != null) {
                    egn egnVar = this.f49012a;
                    egnVar.f48999d = egnVar.f48998c.m15059a();
                }
            } catch (DeadObjectException e) {
                zzd.zzc("Unable to obtain a cache service instance.", e);
                egn.m15063a(this.f49012a);
            }
            this.f49012a.f48997b.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11763a(int i) {
        synchronized (this.f49012a.f48997b) {
            this.f49012a.f48999d = null;
            this.f49012a.f48997b.notifyAll();
        }
    }
}
