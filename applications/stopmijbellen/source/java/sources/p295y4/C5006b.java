package p295y4;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzgr;
import java.util.Set;
import p006a5.C0018b;
/* renamed from: y4.b */
/* loaded from: classes-dex2jar.jar:y4/b.class */
public final class C5006b implements AppMeasurementSdk.OnEventListener {

    /* renamed from: a */
    public final /* synthetic */ C5007c f15256a;

    public C5006b(C5007c c5007c) {
        this.f15256a = c5007c;
    }

    @Override // com.google.android.gms.measurement.api.AppMeasurementSdk.OnEventListener, com.google.android.gms.measurement.internal.zzgv
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        if (!this.f15256a.f15257a.contains(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        Set<String> set = C5005a.f15250a;
        String zza = zzgr.zza(str2);
        if (zza != null) {
            str2 = zza;
        }
        bundle2.putString("events", str2);
        ((C0018b) this.f15256a.f15258b).m8928a(2, bundle2);
    }
}
