package p081h.p203i.p392f.p393a.p398d;

import com.google.android.gms.maps.model.LatLng;
import p081h.p203i.p392f.p393a.p397c.C10212b;
/* renamed from: h.i.f.a.d.b */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/d/b.class */
public class C10214b {

    /* renamed from: a */
    public final double f23040a;

    public C10214b(double d) {
        this.f23040a = d;
    }

    /* renamed from: a */
    public LatLng m13107a(C10212b bVar) {
        double d = bVar.f23038a;
        double d2 = this.f23040a;
        return new LatLng(90.0d - Math.toDegrees(Math.atan(Math.exp(((-(0.5d - (bVar.f23039b / d2))) * 2.0d) * 3.141592653589793d)) * 2.0d), ((d / d2) - 0.5d) * 360.0d);
    }

    /* renamed from: a */
    public C10213a m13108a(LatLng latLng) {
        double d = latLng.f7059b / 360.0d;
        double sin = Math.sin(Math.toRadians(latLng.f7058a));
        double log = (Math.log((sin + 1.0d) / (1.0d - sin)) * 0.5d) / (-6.283185307179586d);
        double d2 = this.f23040a;
        return new C10213a((d + 0.5d) * d2, (log + 0.5d) * d2);
    }
}
