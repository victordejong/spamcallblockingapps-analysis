package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.cardview.widget.C0415g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.cardview.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/a.class */
public class C0407a extends C0410c {
    @Override // androidx.cardview.widget.C0410c, androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public void mo21040a() {
        C0415g.f1657a = new C0415g.AbstractC0416a() { // from class: androidx.cardview.widget.a.1
            @Override // androidx.cardview.widget.C0415g.AbstractC0416a
            /* renamed from: a */
            public void mo20996a(Canvas canvas, RectF rectF, float f, Paint paint) {
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        };
    }
}
