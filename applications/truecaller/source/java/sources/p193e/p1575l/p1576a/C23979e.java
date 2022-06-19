package p193e.p1575l.p1576a;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* renamed from: e.l.a.e */
/* loaded from: classes2-dex2jar.jar:e/l/a/e.class */
public class C23979e extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ C23965d f66453a;

    public C23979e(C23965d c23965d) {
        this.f66453a = c23965d;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        C23965d c23965d = this.f66453a;
        int[] iArr = c23965d.f66387V;
        if (iArr == null) {
            return;
        }
        float f = iArr[0];
        float f2 = c23965d.f66385T;
        outline.setOval((int) (f - f2), (int) (iArr[1] - f2), (int) (iArr[0] + f2), (int) (iArr[1] + f2));
        outline.setAlpha(this.f66453a.f66388W / 255.0f);
        outline.offset(0, this.f66453a.f66407m);
    }
}
