package p000;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import ey;
/* renamed from: ey$h$a */
/* loaded from: classes-dex2jar.jar:ey$h$a.class */
public class ey$h$a extends Animation {

    /* renamed from: a */
    public final /* synthetic */ int f6476a;

    /* renamed from: b */
    public final /* synthetic */ int f6477b;

    /* renamed from: c */
    public final /* synthetic */ View f6478c;

    public ey$h$a(ey.h hVar, int i, int i2, View view) {
        this.f6476a = i;
        this.f6477b = i2;
        this.f6478c = view;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        int i = this.f6476a;
        int i2 = this.f6477b;
        ey.h(this.f6478c, i2 + ((int) ((i - i2) * f)));
    }
}
