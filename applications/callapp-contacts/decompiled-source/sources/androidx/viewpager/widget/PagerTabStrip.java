package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.content.b;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip.class */
public class PagerTabStrip extends PagerTitleStrip {
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private final Paint m;
    private final Rect n;
    private int o;
    private boolean p;
    private boolean q;
    private int r;
    private boolean s;
    private float t;
    private float u;
    private int v;

    public PagerTabStrip(Context context) {
        this(context, null);
    }

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.m = paint;
        this.n = new Rect();
        this.o = 255;
        this.p = false;
        this.q = false;
        int i = this.f;
        this.g = i;
        paint.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.h = (int) ((3.0f * f) + 0.5f);
        this.i = (int) ((6.0f * f) + 0.5f);
        this.j = (int) (64.0f * f);
        this.l = (int) ((16.0f * f) + 0.5f);
        this.r = (int) ((1.0f * f) + 0.5f);
        this.k = (int) ((f * 32.0f) + 0.5f);
        this.v = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(b());
        setWillNotDraw(false);
        this.f5871b.setFocusable(true);
        this.f5871b.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PagerTabStrip.this.f5870a.setCurrentItem(PagerTabStrip.this.f5870a.getCurrentItem() - 1);
            }
        });
        this.f5873d.setFocusable(true);
        this.f5873d.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PagerTabStrip.this.f5870a.setCurrentItem(PagerTabStrip.this.f5870a.getCurrentItem() + 1);
            }
        });
        if (getBackground() == null) {
            this.p = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    public final int a() {
        return Math.max(super.a(), this.k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    public final void a(int i, float f, boolean z) {
        Rect rect = this.n;
        int height = getHeight();
        int left = this.f5872c.getLeft();
        int i2 = this.l;
        int right = this.f5872c.getRight();
        int i3 = this.l;
        int i4 = height - this.h;
        rect.set(left - i2, i4, right + i3, height);
        super.a(i, f, z);
        this.o = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f5872c.getLeft() - this.l, i4, this.f5872c.getRight() + this.l, height);
        invalidate(rect);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f5872c.getLeft();
        int i = this.l;
        int right = this.f5872c.getRight();
        int i2 = this.l;
        int i3 = this.h;
        this.m.setColor((this.o << 24) | (this.g & 16777215));
        float f = left - i;
        float f2 = height - i3;
        float f3 = right + i2;
        float f4 = height;
        canvas.drawRect(f, f2, f3, f4, this.m);
        if (this.p) {
            this.m.setColor((-16777216) | (this.g & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.r, getWidth() - getPaddingRight(), f4, this.m);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.s) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.t = x;
            this.u = y;
            this.s = false;
            return true;
        } else if (action != 1) {
            if (action != 2) {
                return true;
            }
            if (Math.abs(x - this.t) <= this.v && Math.abs(y - this.u) <= this.v) {
                return true;
            }
            this.s = true;
            return true;
        } else if (x < this.f5872c.getLeft() - this.l) {
            this.f5870a.setCurrentItem(this.f5870a.getCurrentItem() - 1);
            return true;
        } else if (x <= this.f5872c.getRight() + this.l) {
            return true;
        } else {
            this.f5870a.setCurrentItem(this.f5870a.getCurrentItem() + 1);
            return true;
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        if (!this.q) {
            this.p = (i & (-16777216)) == 0;
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (!this.q) {
            this.p = drawable == null;
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (!this.q) {
            this.p = i == 0;
        }
    }

    public void setDrawFullUnderline(boolean z) {
        this.p = z;
        this.q = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.i;
        int i6 = i4;
        if (i4 < i5) {
            i6 = i5;
        }
        super.setPadding(i, i2, i3, i6);
    }

    public void setTabIndicatorColor(int i) {
        this.g = i;
        this.m.setColor(i);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i) {
        setTabIndicatorColor(b.c(getContext(), i));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i) {
        int i2 = this.j;
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        super.setTextSpacing(i3);
    }
}
