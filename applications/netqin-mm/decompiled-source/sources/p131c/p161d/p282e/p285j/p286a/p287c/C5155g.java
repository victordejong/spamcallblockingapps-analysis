package p131c.p161d.p282e.p285j.p286a.p287c;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
/* renamed from: c.d.e.j.a.c.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/j/a/c/g.class */
public final class C5155g implements AppMeasurementSdk.OnEventListener {

    /* renamed from: a */
    public final /* synthetic */ C5153e f17794a;

    public C5155g(C5153e eVar) {
        this.f17794a = eVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgz
    /* renamed from: a */
    public final void mo9006a(String str, String str2, Bundle bundle, long j) {
        AbstractC5143a.AbstractC5145b bVar;
        if (str != null && !str.equals("crash") && C5152d.m24406b(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("name", str2);
            bundle2.putLong("timestampInMillis", j);
            bundle2.putBundle("params", bundle);
            bVar = this.f17794a.f17790a;
            bVar.mo23292a(3, bundle2);
        }
    }
}
