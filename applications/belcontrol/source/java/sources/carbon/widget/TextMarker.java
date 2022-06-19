package carbon.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:carbon/widget/TextMarker.class */
public class TextMarker extends View {

    /* renamed from: a */
    public TextPaint f2328a;

    /* renamed from: b */
    public Rect f2329b = new Rect();

    /* renamed from: c */
    public Rect f2330c = new Rect();

    /* renamed from: d */
    public CharSequence f2331d = "I";

    /* renamed from: f */
    public int f2332f;

    /* renamed from: g */
    public int f2333g;

    /* renamed from: h */
    public StaticLayout f2334h;

    public TextMarker(Context context) {
        super(context);
    }

    public TextMarker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5352a(attributeSet, 0);
    }

    public TextMarker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5352a(attributeSet, i);
    }

    /* renamed from: a */
    public final void m5352a(AttributeSet attributeSet, int i) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, p80.TextMarker, i, 0);
            for (int i2 = 0; i2 < obtainStyledAttributes.getIndexCount(); i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == p80.TextMarker_carbon_text) {
                    setText(obtainStyledAttributes.getText(index).toString());
                } else if (index == p80.TextMarker_carbon_textView) {
                    this.f2332f = obtainStyledAttributes.getResourceId(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.f2333g + getPaddingTop();
    }

    public Paint getPaint() {
        return this.f2328a;
    }

    public CharSequence getText() {
        return this.f2331d;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f2332f != 0) {
            TextView textView = (TextView) ((ViewGroup) getParent()).findViewById(this.f2332f);
            if (this.f2331d == null) {
                this.f2331d = textView.getText();
            }
            this.f2328a = textView.getPaint();
            if (this.f2334h == null) {
                this.f2334h = new StaticLayout(this.f2331d, this.f2328a, getMeasuredWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            String charSequence = this.f2331d.subSequence(0, this.f2334h.getLineEnd(0)).toString();
            this.f2328a.getTextBounds(charSequence, 0, charSequence.length(), this.f2329b);
            this.f2333g = Math.abs(this.f2329b.top);
            this.f2329b.top = (-this.f2334h.getLineAscent(0)) + this.f2329b.top;
            CharSequence charSequence2 = this.f2331d;
            StaticLayout staticLayout = this.f2334h;
            int lineStart = staticLayout.getLineStart(staticLayout.getLineCount() - 1);
            StaticLayout staticLayout2 = this.f2334h;
            String charSequence3 = charSequence2.subSequence(lineStart, staticLayout2.getLineEnd(staticLayout2.getLineCount() - 1)).toString();
            this.f2328a.getTextBounds(charSequence3, 0, charSequence3.length(), this.f2330c);
            Rect rect = this.f2329b;
            int height = this.f2334h.getHeight();
            StaticLayout staticLayout3 = this.f2334h;
            rect.bottom = (height - staticLayout3.getLineDescent(staticLayout3.getLineCount() - 1)) + this.f2330c.bottom;
            setMeasuredDimension(getMeasuredWidth(), this.f2329b.height() + getPaddingTop() + getPaddingBottom());
        }
    }

    public void setPaint(TextPaint textPaint) {
        this.f2328a = textPaint;
    }

    public void setText(String str) {
        this.f2331d = str;
    }
}
