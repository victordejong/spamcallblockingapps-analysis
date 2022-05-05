package gogolook.callgogolook2.main.dialer;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialpadTextView.class */
public class DialpadTextView extends TextView {

    /* renamed from: a */
    public Rect f11148a = new Rect();

    /* renamed from: b */
    public String f11149b;

    public DialpadTextView(Context context) {
        super(context);
    }

    public DialpadTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        String str = this.f11149b;
        Rect rect = this.f11148a;
        canvas.drawText(str, -rect.left, -rect.top, paint);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f11149b = getText().toString();
        TextPaint paint = getPaint();
        String str = this.f11149b;
        paint.getTextBounds(str, 0, str.length(), this.f11148a);
        setMeasuredDimension(TextView.resolveSize(this.f11148a.width(), i), TextView.resolveSize(this.f11148a.height(), i2));
    }
}
