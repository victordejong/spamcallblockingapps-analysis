package p295y4;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashSet;
import p006a5.C0018b;
/* renamed from: y4.d */
/* loaded from: classes-dex2jar.jar:y4/d.class */
public final class C5008d implements AppMeasurementSdk.OnEventListener {

    /* renamed from: a */
    public final /* synthetic */ C5009e f15259a;

    public C5008d(C5009e c5009e) {
        this.f15259a = c5009e;
    }

    @Override // com.google.android.gms.measurement.api.AppMeasurementSdk.OnEventListener, com.google.android.gms.measurement.internal.zzgv
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        if (str == null || str.equals(AppMeasurement.CRASH_ORIGIN) || !(!((HashSet) C5005a.f15250a).contains(str2))) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str2);
        bundle2.putLong("timestampInMillis", j);
        bundle2.putBundle("params", bundle);
        ((C0018b) this.f15259a.f15260a).m8928a(3, bundle2);
    }
}
