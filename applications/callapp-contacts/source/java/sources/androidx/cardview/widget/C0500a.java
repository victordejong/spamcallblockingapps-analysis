package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.cardview.widget.C0508g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.cardview.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/a.class */
public final class C0500a extends C0503c {
    @Override // androidx.cardview.widget.C0503c, androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public final void mo45399a() {
        C0508g.f1890a = new C0508g.AbstractC0509a() { // from class: androidx.cardview.widget.a.1
            @Override // androidx.cardview.widget.C0508g.AbstractC0509a
            /* renamed from: a */
            public final void mo45372a(Canvas canvas, RectF rectF, float f, Paint paint) {
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        };
    }
}
