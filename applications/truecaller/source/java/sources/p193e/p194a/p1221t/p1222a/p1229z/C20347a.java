package p193e.p194a.p1221t.p1222a.p1229z;

import android.content.Context;
import android.graphics.Paint;
import android.text.Editable;
import android.text.TextPaint;
import android.util.AttributeSet;
import com.razorpay.AnalyticsConstants;
import e.m.d.y.n;
import kotlin.Metadata;
import p1727n3.p1734b.p1743f.C25507g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018��2\u00020\u0001J1\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Le/a/t/a/z/a;", "Ln3/b/f/g;", "", "text", "", AnalyticsConstants.START, "lengthBefore", "lengthAfter", "Ls1/s;", "onTextChanged", "(Ljava/lang/CharSequence;III)V", "truemoji_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.t.a.z.a */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/z/a.class */
public class C20347a extends C25507g {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20347a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842859);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20347a(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r7 = r0
        L9:
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L13
            r0 = 16842859(0x101006b, float:2.3693858E-38)
            r8 = r0
        L13:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1221t.p1222a.p1229z.C20347a.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        Editable text = getText();
        if (text != null) {
            Context context = getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            TextPaint paint = getPaint();
            l.d(paint, "paint");
            Paint.FontMetrics fontMetrics = paint.getFontMetrics();
            l.d(fontMetrics, "paint.fontMetrics");
            n.Y0(text, context, fontMetrics, 1.0f);
        }
    }
}
