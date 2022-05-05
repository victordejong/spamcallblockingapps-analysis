package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.C0178R;
import com.facebook.stetho.server.http.HttpStatus;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/MockView.class */
public class MockView extends View {

    /* renamed from: f */
    private Paint f2467f = new Paint();

    /* renamed from: g */
    private Paint f2468g = new Paint();

    /* renamed from: h */
    private Paint f2469h = new Paint();

    /* renamed from: i */
    private boolean f2470i = true;

    /* renamed from: j */
    private boolean f2471j = true;

    /* renamed from: k */
    protected String f2472k = null;

    /* renamed from: l */
    private Rect f2473l = new Rect();

    /* renamed from: m */
    private int f2474m = Color.argb(255, 0, 0, 0);

    /* renamed from: n */
    private int f2475n = Color.argb(255, (int) HttpStatus.HTTP_OK, (int) HttpStatus.HTTP_OK, (int) HttpStatus.HTTP_OK);

    /* renamed from: o */
    private int f2476o = Color.argb(255, 50, 50, 50);

    /* renamed from: p */
    private int f2477p = 4;

    public MockView(Context context) {
        super(context);
        m20079a(context, null);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m20079a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m20079a(context, attributeSet);
    }

    /* renamed from: a */
    private void m20079a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.MockView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.MockView_mock_label) {
                    this.f2472k = obtainStyledAttributes.getString(index);
                } else if (index == C0178R.styleable.MockView_mock_showDiagonals) {
                    this.f2470i = obtainStyledAttributes.getBoolean(index, this.f2470i);
                } else if (index == C0178R.styleable.MockView_mock_diagonalsColor) {
                    this.f2474m = obtainStyledAttributes.getColor(index, this.f2474m);
                } else if (index == C0178R.styleable.MockView_mock_labelBackgroundColor) {
                    this.f2476o = obtainStyledAttributes.getColor(index, this.f2476o);
                } else if (index == C0178R.styleable.MockView_mock_labelColor) {
                    this.f2475n = obtainStyledAttributes.getColor(index, this.f2475n);
                } else if (index == C0178R.styleable.MockView_mock_showLabel) {
                    this.f2471j = obtainStyledAttributes.getBoolean(index, this.f2471j);
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (this.f2472k == null) {
            try {
                this.f2472k = context.getResources().getResourceEntryName(getId());
            } catch (Exception e) {
            }
        }
        this.f2467f.setColor(this.f2474m);
        this.f2467f.setAntiAlias(true);
        this.f2468g.setColor(this.f2475n);
        this.f2468g.setAntiAlias(true);
        this.f2469h.setColor(this.f2476o);
        this.f2477p = Math.round(this.f2477p * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int i = width;
        int i2 = height;
        if (this.f2470i) {
            i = width - 1;
            i2 = height - 1;
            float f = i;
            float f2 = i2;
            canvas.drawLine(0.0f, 0.0f, f, f2, this.f2467f);
            canvas.drawLine(0.0f, f2, f, 0.0f, this.f2467f);
            canvas.drawLine(0.0f, 0.0f, f, 0.0f, this.f2467f);
            canvas.drawLine(f, 0.0f, f, f2, this.f2467f);
            canvas.drawLine(f, f2, 0.0f, f2, this.f2467f);
            canvas.drawLine(0.0f, f2, 0.0f, 0.0f, this.f2467f);
        }
        String str = this.f2472k;
        if (str != null && this.f2471j) {
            this.f2468g.getTextBounds(str, 0, str.length(), this.f2473l);
            float width2 = (i - this.f2473l.width()) / 2.0f;
            float height2 = ((i2 - this.f2473l.height()) / 2.0f) + this.f2473l.height();
            this.f2473l.offset((int) width2, (int) height2);
            Rect rect = this.f2473l;
            int i3 = rect.left;
            int i4 = this.f2477p;
            rect.set(i3 - i4, rect.top - i4, rect.right + i4, rect.bottom + i4);
            canvas.drawRect(this.f2473l, this.f2469h);
            canvas.drawText(this.f2472k, width2, height2, this.f2468g);
        }
    }
}
