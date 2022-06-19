package p295y4;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashSet;
import java.util.Set;
import p285x4.AbstractC4857a;
/* renamed from: y4.c */
/* loaded from: classes-dex2jar.jar:y4/c.class */
public final class C5007c {

    /* renamed from: a */
    public final Set<String> f15257a = new HashSet();

    /* renamed from: b */
    public final AbstractC4857a.AbstractC4859b f15258b;

    public C5007c(AppMeasurementSdk appMeasurementSdk, AbstractC4857a.AbstractC4859b abstractC4859b) {
        this.f15258b = abstractC4859b;
        appMeasurementSdk.registerOnMeasurementEventListener(new C5006b(this));
    }
}
