package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.cardview.widget.C0367g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.cardview.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/a.class */
public class C0359a extends C0362c {

    /* renamed from: androidx.cardview.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/a$a.class */
    class C0360a implements C0367g.AbstractC0368a {
        C0360a() {
            C0359a.this = r4;
        }

        @Override // androidx.cardview.widget.C0367g.AbstractC0368a
        /* renamed from: a */
        public void mo34587a(Canvas canvas, RectF rectF, float f, Paint paint) {
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    @Override // androidx.cardview.widget.C0362c, androidx.cardview.widget.AbstractC0365e
    /* renamed from: j */
    public void mo34622j() {
        C0367g.f1511b = new C0360a();
    }
}
