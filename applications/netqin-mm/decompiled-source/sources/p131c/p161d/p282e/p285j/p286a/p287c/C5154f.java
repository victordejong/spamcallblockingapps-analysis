package p131c.p161d.p282e.p285j.p286a.p287c;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mopub.common.Constants;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
/* renamed from: c.d.e.j.a.c.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/j/a/c/f.class */
public final class C5154f implements AppMeasurementSdk.OnEventListener {

    /* renamed from: a */
    public final /* synthetic */ C5151c f17793a;

    public C5154f(C5151c cVar) {
        this.f17793a = cVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgz
    /* renamed from: a */
    public final void mo9006a(String str, String str2, Bundle bundle, long j) {
        AbstractC5143a.AbstractC5145b bVar;
        if (this.f17793a.f17780a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(Constants.VIDEO_TRACKING_EVENTS_KEY, C5152d.m24402e(str2));
            bVar = this.f17793a.f17781b;
            bVar.mo23292a(2, bundle2);
        }
    }
}
