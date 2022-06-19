package p193e.p1681q.p1701f.p1702a.p1705e.p1709e;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.ArrayList;
/* renamed from: e.q.f.a.e.e.b */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/e/e/b.class */
public class C25239b {

    /* renamed from: a */
    public C25238a f70594a;

    /* renamed from: b */
    public ArrayList<C25240c> f70595b;

    /* renamed from: c */
    public double f70596c = PlaceLikelihood.LIKELIHOOD_MIN_VALUE;

    /* renamed from: d */
    public int f70597d;

    public C25239b(C25238a c25238a) {
        this.f70594a = c25238a;
        this.f70595b = new ArrayList<>(c25238a.f70592b.size());
        for (int i = 0; i < c25238a.f70592b.size(); i++) {
            this.f70595b.add(new C25240c(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)));
        }
    }
}
