package p081h.p203i.p325c.p331k.p332a.p333c;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import com.mopub.common.Constants;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
/* renamed from: h.i.c.k.a.c.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/k/a/c/e.class */
public final class C9462e implements AppMeasurement.AbstractC3585c {

    /* renamed from: a */
    public final /* synthetic */ C9461d f21605a;

    public C9462e(C9461d dVar) {
        this.f21605a = dVar;
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC3585c
    /* renamed from: a */
    public final void mo15103a(String str, String str2, Bundle bundle, long j) {
        AbstractC9452a.AbstractC9454b bVar;
        if (this.f21605a.f21601a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(Constants.VIDEO_TRACKING_EVENTS_KEY, C9460c.m15106c(str2));
            bVar = this.f21605a.f21602b;
            bVar.mo15029a(2, bundle2);
        }
    }
}
