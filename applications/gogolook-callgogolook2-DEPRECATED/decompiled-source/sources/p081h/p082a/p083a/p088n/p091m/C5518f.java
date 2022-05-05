package p081h.p082a.p083a.p088n.p091m;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.C5364c;
import p081h.p082a.p083a.p088n.p090l.C5492n;
/* renamed from: h.a.a.n.m.f */
/* loaded from: classes-dex2jar.jar:h/a/a/n/m/f.class */
public class C5518f extends AbstractC5506a {

    /* renamed from: v */
    public final C5364c f13768v;

    public C5518f(C5344f fVar, C5512d dVar) {
        super(fVar, dVar);
        this.f13768v = new C5364c(fVar, this, new C5492n(dVar.m25311g(), dVar.m25306l()));
        this.f13768v.mo25332a(Collections.emptyList(), Collections.emptyList());
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a, p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25293a(RectF rectF, Matrix matrix) {
        super.mo25293a(rectF, matrix);
        this.f13768v.mo25293a(rectF, this.f13711l);
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a, p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.f13768v.mo25292a(str, str2, colorFilter);
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a
    /* renamed from: b */
    public void mo25284b(@NonNull Canvas canvas, Matrix matrix, int i) {
        this.f13768v.mo25337a(canvas, matrix, i);
    }
}
