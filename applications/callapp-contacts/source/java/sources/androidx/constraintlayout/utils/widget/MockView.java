package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.C0687e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/MockView.class */
public class MockView extends View {

    /* renamed from: b */
    private Paint f2880b = new Paint();

    /* renamed from: c */
    private Paint f2881c = new Paint();

    /* renamed from: d */
    private Paint f2882d = new Paint();

    /* renamed from: e */
    private boolean f2883e = true;

    /* renamed from: f */
    private boolean f2884f = true;

    /* renamed from: a */
    protected String f2879a = null;

    /* renamed from: g */
    private Rect f2885g = new Rect();

    /* renamed from: h */
    private int f2886h = Color.argb(255, 0, 0, 0);

    /* renamed from: i */
    private int f2887i = Color.argb(255, 200, 200, 200);

    /* renamed from: j */
    private int f2888j = Color.argb(255, 50, 50, 50);

    /* renamed from: k */
    private int f2889k = 4;

    public MockView(Context context) {
        super(context);
        m44766a(context, null);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m44766a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m44766a(context, attributeSet);
    }

    /* renamed from: a */
    private void m44766a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0687e.C0689b.MockView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.MockView_mock_label) {
                    this.f2879a = obtainStyledAttributes.getString(index);
                } else if (index == C0687e.C0689b.MockView_mock_showDiagonals) {
                    this.f2883e = obtainStyledAttributes.getBoolean(index, this.f2883e);
                } else if (index == C0687e.C0689b.MockView_mock_diagonalsColor) {
                    this.f2886h = obtainStyledAttributes.getColor(index, this.f2886h);
                } else if (index == C0687e.C0689b.MockView_mock_labelBackgroundColor) {
                    this.f2888j = obtainStyledAttributes.getColor(index, this.f2888j);
                } else if (index == C0687e.C0689b.MockView_mock_labelColor) {
                    this.f2887i = obtainStyledAttributes.getColor(index, this.f2887i);
                } else if (index == C0687e.C0689b.MockView_mock_showLabel) {
                    this.f2884f = obtainStyledAttributes.getBoolean(index, this.f2884f);
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (this.f2879a == null) {
            try {
                this.f2879a = context.getResources().getResourceEntryName(getId());
            } catch (Exception e) {
            }
        }
        this.f2880b.setColor(this.f2886h);
        this.f2880b.setAntiAlias(true);
        this.f2881c.setColor(this.f2887i);
        this.f2881c.setAntiAlias(true);
        this.f2882d.setColor(this.f2888j);
        this.f2889k = Math.round(this.f2889k * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int i = width;
        int i2 = height;
        if (this.f2883e) {
            i = width - 1;
            i2 = height - 1;
            float f = i;
            float f2 = i2;
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f2, this.f2880b);
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, f2, f, BitmapDescriptorFactory.HUE_RED, this.f2880b);
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, BitmapDescriptorFactory.HUE_RED, this.f2880b);
            canvas.drawLine(f, BitmapDescriptorFactory.HUE_RED, f, f2, this.f2880b);
            canvas.drawLine(f, f2, BitmapDescriptorFactory.HUE_RED, f2, this.f2880b);
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, f2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f2880b);
        }
        String str = this.f2879a;
        if (str == null || !this.f2884f) {
            return;
        }
        this.f2881c.getTextBounds(str, 0, str.length(), this.f2885g);
        float width2 = (i - this.f2885g.width()) / 2.0f;
        float height2 = ((i2 - this.f2885g.height()) / 2.0f) + this.f2885g.height();
        this.f2885g.offset((int) width2, (int) height2);
        Rect rect = this.f2885g;
        rect.set(rect.left - this.f2889k, this.f2885g.top - this.f2889k, this.f2885g.right + this.f2889k, this.f2885g.bottom + this.f2889k);
        canvas.drawRect(this.f2885g, this.f2882d);
        canvas.drawText(this.f2879a, width2, height2, this.f2881c);
    }
}
