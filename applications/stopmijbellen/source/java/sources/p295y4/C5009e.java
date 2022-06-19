package p295y4;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import p285x4.AbstractC4857a;
/* renamed from: y4.e */
/* loaded from: classes-dex2jar.jar:y4/e.class */
public final class C5009e {

    /* renamed from: a */
    public final AbstractC4857a.AbstractC4859b f15260a;

    public C5009e(AppMeasurementSdk appMeasurementSdk, AbstractC4857a.AbstractC4859b abstractC4859b) {
        this.f15260a = abstractC4859b;
        appMeasurementSdk.registerOnMeasurementEventListener(new C5008d(this));
    }
}
