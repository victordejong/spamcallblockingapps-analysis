package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.C0229e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/MockView.class */
public class MockView extends View {

    /* renamed from: b */
    private Paint f1280b = new Paint();

    /* renamed from: c */
    private Paint f1281c = new Paint();

    /* renamed from: d */
    private Paint f1282d = new Paint();

    /* renamed from: e */
    private boolean f1283e = true;

    /* renamed from: f */
    private boolean f1284f = true;

    /* renamed from: g */
    protected String f1285g = null;

    /* renamed from: h */
    private Rect f1286h = new Rect();

    /* renamed from: i */
    private int f1287i = Color.argb(255, 0, 0, 0);

    /* renamed from: j */
    private int f1288j = Color.argb(255, 200, 200, 200);

    /* renamed from: k */
    private int f1289k = Color.argb(255, 50, 50, 50);

    /* renamed from: l */
    private int f1290l = 4;

    public MockView(Context context) {
        super(context);
        m13873a(context, null);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m13873a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m13873a(context, attributeSet);
    }

    /* renamed from: a */
    private void m13873a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0229e.MockView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0229e.MockView_mock_label) {
                    this.f1285g = obtainStyledAttributes.getString(index);
                } else if (index == C0229e.MockView_mock_showDiagonals) {
                    this.f1283e = obtainStyledAttributes.getBoolean(index, this.f1283e);
                } else if (index == C0229e.MockView_mock_diagonalsColor) {
                    this.f1287i = obtainStyledAttributes.getColor(index, this.f1287i);
                } else if (index == C0229e.MockView_mock_labelBackgroundColor) {
                    this.f1289k = obtainStyledAttributes.getColor(index, this.f1289k);
                } else if (index == C0229e.MockView_mock_labelColor) {
                    this.f1288j = obtainStyledAttributes.getColor(index, this.f1288j);
                } else if (index == C0229e.MockView_mock_showLabel) {
                    this.f1284f = obtainStyledAttributes.getBoolean(index, this.f1284f);
                }
            }
        }
        if (this.f1285g == null) {
            try {
                this.f1285g = context.getResources().getResourceEntryName(getId());
            } catch (Exception e) {
            }
        }
        this.f1280b.setColor(this.f1287i);
        this.f1280b.setAntiAlias(true);
        this.f1281c.setColor(this.f1288j);
        this.f1281c.setAntiAlias(true);
        this.f1282d.setColor(this.f1289k);
        this.f1290l = Math.round(this.f1290l * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int i = width;
        int i2 = height;
        if (this.f1283e) {
            i = width - 1;
            i2 = height - 1;
            float f = i;
            float f2 = i2;
            canvas.drawLine(0.0f, 0.0f, f, f2, this.f1280b);
            canvas.drawLine(0.0f, f2, f, 0.0f, this.f1280b);
            canvas.drawLine(0.0f, 0.0f, f, 0.0f, this.f1280b);
            canvas.drawLine(f, 0.0f, f, f2, this.f1280b);
            canvas.drawLine(f, f2, 0.0f, f2, this.f1280b);
            canvas.drawLine(0.0f, f2, 0.0f, 0.0f, this.f1280b);
        }
        String str = this.f1285g;
        if (str == null || !this.f1284f) {
            return;
        }
        this.f1281c.getTextBounds(str, 0, str.length(), this.f1286h);
        float width2 = (i - this.f1286h.width()) / 2.0f;
        float height2 = ((i2 - this.f1286h.height()) / 2.0f) + this.f1286h.height();
        this.f1286h.offset((int) width2, (int) height2);
        Rect rect = this.f1286h;
        int i3 = rect.left;
        int i4 = this.f1290l;
        rect.set(i3 - i4, rect.top - i4, rect.right + i4, rect.bottom + i4);
        canvas.drawRect(this.f1286h, this.f1282d);
        canvas.drawText(this.f1285g, width2, height2, this.f1281c);
    }
}
