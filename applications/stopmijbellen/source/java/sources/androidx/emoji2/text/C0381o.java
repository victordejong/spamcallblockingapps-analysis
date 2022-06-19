package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import java.util.Objects;
/* renamed from: androidx.emoji2.text.o */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/o.class */
public final class C0381o extends AbstractC0371i {
    public C0381o(C0367g c0367g) {
        super(c0367g);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        Objects.requireNonNull(C0354d.m8255a());
        C0367g c0367g = this.f1621b;
        Typeface typeface = c0367g.f1607b.f1640d;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        int i6 = c0367g.f1606a;
        canvas.drawText(c0367g.f1607b.f1638b, i6 * 2, 2, f, i4, paint);
        paint.setTypeface(typeface2);
    }
}
