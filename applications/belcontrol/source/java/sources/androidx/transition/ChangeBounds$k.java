package androidx.transition;

import android.graphics.PointF;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$k.class */
public class ChangeBounds$k {

    /* renamed from: a */
    public int f1493a;

    /* renamed from: b */
    public int f1494b;

    /* renamed from: c */
    public int f1495c;

    /* renamed from: d */
    public int f1496d;

    /* renamed from: e */
    public View f1497e;

    /* renamed from: f */
    public int f1498f;

    /* renamed from: g */
    public int f1499g;

    public ChangeBounds$k(View view) {
        this.f1497e = view;
    }

    /* renamed from: a */
    public void m6012a(PointF pointF) {
        this.f1495c = Math.round(pointF.x);
        this.f1496d = Math.round(pointF.y);
        int i = this.f1499g + 1;
        this.f1499g = i;
        if (this.f1498f == i) {
            m6011b();
        }
    }

    /* renamed from: b */
    public final void m6011b() {
        i30.g(this.f1497e, this.f1493a, this.f1494b, this.f1495c, this.f1496d);
        this.f1498f = 0;
        this.f1499g = 0;
    }

    /* renamed from: c */
    public void m6010c(PointF pointF) {
        this.f1493a = Math.round(pointF.x);
        this.f1494b = Math.round(pointF.y);
        int i = this.f1498f + 1;
        this.f1498f = i;
        if (i == this.f1499g) {
            m6011b();
        }
    }
}
