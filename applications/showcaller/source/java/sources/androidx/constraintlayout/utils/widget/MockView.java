package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.C0523e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/MockView.class */
public class MockView extends View {

    /* renamed from: d */
    private Paint f2433d = new Paint();

    /* renamed from: e */
    private Paint f2434e = new Paint();

    /* renamed from: f */
    private Paint f2435f = new Paint();

    /* renamed from: g */
    private boolean f2436g = true;

    /* renamed from: h */
    private boolean f2437h = true;

    /* renamed from: i */
    protected String f2438i = null;

    /* renamed from: j */
    private Rect f2439j = new Rect();

    /* renamed from: k */
    private int f2440k = Color.argb(255, 0, 0, 0);

    /* renamed from: l */
    private int f2441l = Color.argb(255, 200, 200, 200);

    /* renamed from: m */
    private int f2442m = Color.argb(255, 50, 50, 50);

    /* renamed from: n */
    private int f2443n = 4;

    public MockView(Context context) {
        super(context);
        m33722a(context, null);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33722a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m33722a(context, attributeSet);
    }

    /* renamed from: a */
    private void m33722a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.MockView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.MockView_mock_label) {
                    this.f2438i = obtainStyledAttributes.getString(index);
                } else if (index == C0523e.MockView_mock_showDiagonals) {
                    this.f2436g = obtainStyledAttributes.getBoolean(index, this.f2436g);
                } else if (index == C0523e.MockView_mock_diagonalsColor) {
                    this.f2440k = obtainStyledAttributes.getColor(index, this.f2440k);
                } else if (index == C0523e.MockView_mock_labelBackgroundColor) {
                    this.f2442m = obtainStyledAttributes.getColor(index, this.f2442m);
                } else if (index == C0523e.MockView_mock_labelColor) {
                    this.f2441l = obtainStyledAttributes.getColor(index, this.f2441l);
                } else if (index == C0523e.MockView_mock_showLabel) {
                    this.f2437h = obtainStyledAttributes.getBoolean(index, this.f2437h);
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (this.f2438i == null) {
            try {
                this.f2438i = context.getResources().getResourceEntryName(getId());
            } catch (Exception e) {
            }
        }
        this.f2433d.setColor(this.f2440k);
        this.f2433d.setAntiAlias(true);
        this.f2434e.setColor(this.f2441l);
        this.f2434e.setAntiAlias(true);
        this.f2435f.setColor(this.f2442m);
        this.f2443n = Math.round(this.f2443n * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int i = width;
        int i2 = height;
        if (this.f2436g) {
            i = width - 1;
            i2 = height - 1;
            float f = i;
            float f2 = i2;
            canvas.drawLine(0.0f, 0.0f, f, f2, this.f2433d);
            canvas.drawLine(0.0f, f2, f, 0.0f, this.f2433d);
            canvas.drawLine(0.0f, 0.0f, f, 0.0f, this.f2433d);
            canvas.drawLine(f, 0.0f, f, f2, this.f2433d);
            canvas.drawLine(f, f2, 0.0f, f2, this.f2433d);
            canvas.drawLine(0.0f, f2, 0.0f, 0.0f, this.f2433d);
        }
        String str = this.f2438i;
        if (str == null || !this.f2437h) {
            return;
        }
        this.f2434e.getTextBounds(str, 0, str.length(), this.f2439j);
        float width2 = (i - this.f2439j.width()) / 2.0f;
        float height2 = ((i2 - this.f2439j.height()) / 2.0f) + this.f2439j.height();
        this.f2439j.offset((int) width2, (int) height2);
        Rect rect = this.f2439j;
        int i3 = rect.left;
        int i4 = this.f2443n;
        rect.set(i3 - i4, rect.top - i4, rect.right + i4, rect.bottom + i4);
        canvas.drawRect(this.f2439j, this.f2435f);
        canvas.drawText(this.f2438i, width2, height2, this.f2434e);
    }
}
