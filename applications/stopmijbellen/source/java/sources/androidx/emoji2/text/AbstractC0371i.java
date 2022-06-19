package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import p124i4.C3102d;
import p259v0.C4573a;
/* renamed from: androidx.emoji2.text.i */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/i.class */
public abstract class AbstractC0371i extends ReplacementSpan {

    /* renamed from: b */
    public final C0367g f1621b;

    /* renamed from: a */
    public final Paint.FontMetricsInt f1620a = new Paint.FontMetricsInt();

    /* renamed from: c */
    public short f1622c = (short) (-1);

    /* renamed from: d */
    public float f1623d = 1.0f;

    public AbstractC0371i(C0367g c0367g) {
        C3102d.m2628k(c0367g, "metadata cannot be null");
        this.f1621b = c0367g;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.f1620a);
        Paint.FontMetricsInt fontMetricsInt2 = this.f1620a;
        this.f1623d = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / this.f1621b.m8237c();
        this.f1621b.m8237c();
        C4573a m8235e = this.f1621b.m8235e();
        int m762a = m8235e.m762a(12);
        short s = (short) ((m762a != 0 ? m8235e.f14148b.getShort(m762a + m8235e.f14147a) : (short) 0) * this.f1623d);
        this.f1622c = s;
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.f1620a;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return s;
    }
}
