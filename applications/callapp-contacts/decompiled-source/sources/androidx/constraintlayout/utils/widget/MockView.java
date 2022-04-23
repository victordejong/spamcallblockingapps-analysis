package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/MockView.class */
public class MockView extends View {

    /* renamed from: b  reason: collision with root package name */
    private Paint f1573b = new Paint();

    /* renamed from: c  reason: collision with root package name */
    private Paint f1574c = new Paint();

    /* renamed from: d  reason: collision with root package name */
    private Paint f1575d = new Paint();
    private boolean e = true;
    private boolean f = true;

    /* renamed from: a  reason: collision with root package name */
    protected String f1572a = null;
    private Rect g = new Rect();
    private int h = Color.argb(255, 0, 0, 0);
    private int i = Color.argb(255, 200, 200, 200);
    private int j = Color.argb(255, 50, 50, 50);
    private int k = 4;

    public MockView(Context context) {
        super(context);
        a(context, null);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.b.MockView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.MockView_mock_label) {
                    this.f1572a = obtainStyledAttributes.getString(index);
                } else if (index == e.b.MockView_mock_showDiagonals) {
                    this.e = obtainStyledAttributes.getBoolean(index, this.e);
                } else if (index == e.b.MockView_mock_diagonalsColor) {
                    this.h = obtainStyledAttributes.getColor(index, this.h);
                } else if (index == e.b.MockView_mock_labelBackgroundColor) {
                    this.j = obtainStyledAttributes.getColor(index, this.j);
                } else if (index == e.b.MockView_mock_labelColor) {
                    this.i = obtainStyledAttributes.getColor(index, this.i);
                } else if (index == e.b.MockView_mock_showLabel) {
                    this.f = obtainStyledAttributes.getBoolean(index, this.f);
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (this.f1572a == null) {
            try {
                this.f1572a = context.getResources().getResourceEntryName(getId());
            } catch (Exception e) {
            }
        }
        this.f1573b.setColor(this.h);
        this.f1573b.setAntiAlias(true);
        this.f1574c.setColor(this.i);
        this.f1574c.setAntiAlias(true);
        this.f1575d.setColor(this.j);
        this.k = Math.round(this.k * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int i = width;
        int i2 = height;
        if (this.e) {
            i = width - 1;
            i2 = height - 1;
            float f = i;
            float f2 = i2;
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f2, this.f1573b);
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, f2, f, BitmapDescriptorFactory.HUE_RED, this.f1573b);
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, BitmapDescriptorFactory.HUE_RED, this.f1573b);
            canvas.drawLine(f, BitmapDescriptorFactory.HUE_RED, f, f2, this.f1573b);
            canvas.drawLine(f, f2, BitmapDescriptorFactory.HUE_RED, f2, this.f1573b);
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, f2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f1573b);
        }
        String str = this.f1572a;
        if (str != null && this.f) {
            this.f1574c.getTextBounds(str, 0, str.length(), this.g);
            float width2 = (i - this.g.width()) / 2.0f;
            float height2 = ((i2 - this.g.height()) / 2.0f) + this.g.height();
            this.g.offset((int) width2, (int) height2);
            Rect rect = this.g;
            rect.set(rect.left - this.k, this.g.top - this.k, this.g.right + this.k, this.g.bottom + this.k);
            canvas.drawRect(this.g, this.f1575d);
            canvas.drawText(this.f1572a, width2, height2, this.f1574c);
        }
    }
}
