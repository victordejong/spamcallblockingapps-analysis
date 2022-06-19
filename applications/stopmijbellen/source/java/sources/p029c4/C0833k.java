package p029c4;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.List;
import p019b4.C0728a;
import p029c4.C0834l;
/* renamed from: c4.k */
/* loaded from: classes-dex2jar.jar:c4/k.class */
public class C0833k extends C0834l.AbstractC0840f {

    /* renamed from: b */
    public final /* synthetic */ List f3095b;

    /* renamed from: c */
    public final /* synthetic */ Matrix f3096c;

    public C0833k(C0834l c0834l, List list, Matrix matrix) {
        this.f3095b = list;
        this.f3096c = matrix;
    }

    @Override // p029c4.C0834l.AbstractC0840f
    /* renamed from: a */
    public void mo7283a(Matrix matrix, C0728a c0728a, int i, Canvas canvas) {
        for (C0834l.AbstractC0840f abstractC0840f : this.f3095b) {
            abstractC0840f.mo7283a(this.f3096c, c0728a, i, canvas);
        }
    }
}
