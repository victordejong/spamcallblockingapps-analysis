package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import org.bouncycastle.asn1.x509.DisplayText;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/MockView.class */
public class MockView extends View {

    /* renamed from: a */
    public Paint f670a = new Paint();

    /* renamed from: b */
    public Paint f671b = new Paint();

    /* renamed from: c */
    public Paint f672c = new Paint();

    /* renamed from: d */
    public boolean f673d = true;

    /* renamed from: f */
    public boolean f674f = true;

    /* renamed from: g */
    public String f675g = null;

    /* renamed from: h */
    public Rect f676h = new Rect();

    /* renamed from: j */
    public int f677j = Color.argb(255, 0, 0, 0);

    /* renamed from: k */
    public int f678k = Color.argb(255, (int) DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE, (int) DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE, (int) DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE);

    /* renamed from: l */
    public int f679l = Color.argb(255, 50, 50, 50);

    /* renamed from: m */
    public int f680m = 4;

    public MockView(Context context) {
        super(context);
        m6864a(context, null);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6864a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6864a(context, attributeSet);
    }

    /* renamed from: a */
    public final void m6864a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1278d7.MockView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C1278d7.MockView_mock_label) {
                    this.f675g = obtainStyledAttributes.getString(index);
                } else if (index == C1278d7.MockView_mock_showDiagonals) {
                    this.f673d = obtainStyledAttributes.getBoolean(index, this.f673d);
                } else if (index == C1278d7.MockView_mock_diagonalsColor) {
                    this.f677j = obtainStyledAttributes.getColor(index, this.f677j);
                } else if (index == C1278d7.MockView_mock_labelBackgroundColor) {
                    this.f679l = obtainStyledAttributes.getColor(index, this.f679l);
                } else if (index == C1278d7.MockView_mock_labelColor) {
                    this.f678k = obtainStyledAttributes.getColor(index, this.f678k);
                } else if (index == C1278d7.MockView_mock_showLabel) {
                    this.f674f = obtainStyledAttributes.getBoolean(index, this.f674f);
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (this.f675g == null) {
            try {
                this.f675g = context.getResources().getResourceEntryName(getId());
            } catch (Exception e) {
            }
        }
        this.f670a.setColor(this.f677j);
        this.f670a.setAntiAlias(true);
        this.f671b.setColor(this.f678k);
        this.f671b.setAntiAlias(true);
        this.f672c.setColor(this.f679l);
        this.f680m = Math.round(this.f680m * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int i = width;
        int i2 = height;
        if (this.f673d) {
            i = width - 1;
            i2 = height - 1;
            float f = i;
            float f2 = i2;
            canvas.drawLine(0.0f, 0.0f, f, f2, this.f670a);
            canvas.drawLine(0.0f, f2, f, 0.0f, this.f670a);
            canvas.drawLine(0.0f, 0.0f, f, 0.0f, this.f670a);
            canvas.drawLine(f, 0.0f, f, f2, this.f670a);
            canvas.drawLine(f, f2, 0.0f, f2, this.f670a);
            canvas.drawLine(0.0f, f2, 0.0f, 0.0f, this.f670a);
        }
        String str = this.f675g;
        if (str == null || !this.f674f) {
            return;
        }
        this.f671b.getTextBounds(str, 0, str.length(), this.f676h);
        float width2 = (i - this.f676h.width()) / 2.0f;
        float height2 = ((i2 - this.f676h.height()) / 2.0f) + this.f676h.height();
        this.f676h.offset((int) width2, (int) height2);
        Rect rect = this.f676h;
        int i3 = rect.left;
        int i4 = this.f680m;
        rect.set(i3 - i4, rect.top - i4, rect.right + i4, rect.bottom + i4);
        canvas.drawRect(this.f676h, this.f672c);
        canvas.drawText(this.f675g, width2, height2, this.f671b);
    }
}
