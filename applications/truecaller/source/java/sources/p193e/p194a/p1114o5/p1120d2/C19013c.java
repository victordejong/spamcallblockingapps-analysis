package p193e.p194a.p1114o5.p1120d2;

import android.content.Intent;
import com.truecaller.placepicker.data.GeocodedPlace;
/* renamed from: e.a.o5.d2.c */
/* loaded from: classes15-dex2jar.jar:e/a/o5/d2/c.class */
public class C19013c implements AbstractC19012b {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [double] */
    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r5v0 */
    @Override // p193e.p194a.p1114o5.p1120d2.AbstractC19012b
    /* renamed from: a */
    public C19010a mo14259a(Intent intent) {
        GeocodedPlace geocodedPlace = (GeocodedPlace) intent.getParcelableExtra("selected_location");
        if (geocodedPlace != null) {
            String str = geocodedPlace.f14180a;
            Double d = geocodedPlace.f14183d;
            ?? r15 = false;
            ?? doubleValue = d != null ? d.doubleValue() : false;
            Double d2 = geocodedPlace.f14184e;
            if (d2 != null) {
                r15 = d2.doubleValue();
            }
            return new C19010a(str, null, doubleValue == true ? 1.0d : 0.0d, r15 == true ? 1.0d : 0.0d, geocodedPlace.f14182c, null);
        }
        return null;
    }
}
