package p1727n3.p1758e.p1776d;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import androidx.camera.view.PreviewView;
import com.tenor.android.core.constant.StringConstant;
import java.util.Objects;
import p1727n3.p1758e.p1767b.C25910f1;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1776d.p1777b0.p1778a.p1779a.C26113a;
import p1727n3.p1758e.p1776d.p1777b0.p1778a.p1779a.C26114b;
/* renamed from: n3.e.d.e */
/* loaded from: classes-dex2jar.jar:n3/e/d/e.class */
public final /* synthetic */ class C26120e implements C25910f1.AbstractC25918h {

    /* renamed from: a */
    public final /* synthetic */ PreviewView.C0102a f72844a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC25938b0 f72845b;

    /* renamed from: c */
    public final /* synthetic */ C25910f1 f72846c;

    public /* synthetic */ C26120e(PreviewView.C0102a c0102a, AbstractC25938b0 abstractC25938b0, C25910f1 c25910f1) {
        this.f72844a = c0102a;
        this.f72845b = abstractC25938b0;
        this.f72846c = c25910f1;
    }

    /* renamed from: a */
    public final void m2702a(C25910f1.AbstractC25917g abstractC25917g) {
        PreviewView.C0102a c0102a = this.f72844a;
        AbstractC25938b0 abstractC25938b0 = this.f72845b;
        C25910f1 c25910f1 = this.f72846c;
        Objects.requireNonNull(c0102a);
        C26103y0.m2724a("PreviewView", "Preview transformation info updated. " + abstractC25917g, null);
        boolean z = abstractC25938b0.m2878d().m2764c().intValue() == 0;
        C26136u c26136u = PreviewView.this.f510c;
        Size size = c25910f1.f72474a;
        Objects.requireNonNull(c26136u);
        C26103y0.m2724a("PreviewTransform", "Transformation info set: " + abstractC25917g + StringConstant.SPACE + size + StringConstant.SPACE + z, null);
        Rect mo2908a = abstractC25917g.mo2908a();
        Rect rect = mo2908a;
        if (((C26114b) C26113a.m2705a(C26114b.class)) != null) {
            RectF rectF = new RectF(mo2908a);
            Matrix matrix = new Matrix();
            matrix.setScale(0.75f, 1.0f, mo2908a.centerX(), mo2908a.centerY());
            matrix.mapRect(rectF);
            rect = new Rect();
            rectF.round(rect);
        }
        c26136u.f72877b = rect;
        c26136u.f72878c = abstractC25917g.mo2908a();
        c26136u.f72879d = abstractC25917g.mo2907b();
        c26136u.f72880e = abstractC25917g.mo2906c();
        c26136u.f72876a = size;
        c26136u.f72881f = z;
        PreviewView.this.m43056a();
    }
}
