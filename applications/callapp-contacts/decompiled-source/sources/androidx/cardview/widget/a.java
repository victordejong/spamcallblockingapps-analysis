package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.cardview.widget.g;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/a.class */
final class a extends c {
    @Override // androidx.cardview.widget.c, androidx.cardview.widget.e
    public final void a() {
        g.f1305a = new g.a() { // from class: androidx.cardview.widget.a.1
            @Override // androidx.cardview.widget.g.a
            public final void a(Canvas canvas, RectF rectF, float f, Paint paint) {
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        };
    }
}
