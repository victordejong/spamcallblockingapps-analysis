package androidx.transition;

import android.graphics.PointF;
import android.view.View;
/* JADX INFO: Access modifiers changed from: private */
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$k.class */
public class ChangeBounds$k {

    /* renamed from: a */
    private int f2635a;

    /* renamed from: b */
    private int f2636b;

    /* renamed from: c */
    private int f2637c;

    /* renamed from: d */
    private int f2638d;

    /* renamed from: e */
    private View f2639e;

    /* renamed from: f */
    private int f2640f;

    /* renamed from: g */
    private int f2641g;

    ChangeBounds$k(View view) {
        this.f2639e = view;
    }

    /* renamed from: b */
    private void m12136b() {
        C0497j0.m12017g(this.f2639e, this.f2635a, this.f2636b, this.f2637c, this.f2638d);
        this.f2640f = 0;
        this.f2641g = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m12137a(PointF pointF) {
        this.f2637c = Math.round(pointF.x);
        this.f2638d = Math.round(pointF.y);
        int i = this.f2641g + 1;
        this.f2641g = i;
        if (this.f2640f == i) {
            m12136b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m12135c(PointF pointF) {
        this.f2635a = Math.round(pointF.x);
        this.f2636b = Math.round(pointF.y);
        int i = this.f2640f + 1;
        this.f2640f = i;
        if (i == this.f2641g) {
            m12136b();
        }
    }
}
