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
import androidx.core.content.C0790b;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip.class */
public class PagerTabStrip extends PagerTitleStrip {

    /* renamed from: g */
    private int f10961g;

    /* renamed from: h */
    private int f10962h;

    /* renamed from: i */
    private int f10963i;

    /* renamed from: j */
    private int f10964j;

    /* renamed from: k */
    private int f10965k;

    /* renamed from: l */
    private int f10966l;

    /* renamed from: m */
    private final Paint f10967m;

    /* renamed from: n */
    private final Rect f10968n;

    /* renamed from: o */
    private int f10969o;

    /* renamed from: p */
    private boolean f10970p;

    /* renamed from: q */
    private boolean f10971q;

    /* renamed from: r */
    private int f10972r;

    /* renamed from: s */
    private boolean f10973s;

    /* renamed from: t */
    private float f10974t;

    /* renamed from: u */
    private float f10975u;

    /* renamed from: v */
    private int f10976v;

    public PagerTabStrip(Context context) {
        this(context, null);
    }

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f10967m = paint;
        this.f10968n = new Rect();
        this.f10969o = 255;
        this.f10970p = false;
        this.f10971q = false;
        int i = this.f10986f;
        this.f10961g = i;
        paint.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.f10962h = (int) ((3.0f * f) + 0.5f);
        this.f10963i = (int) ((6.0f * f) + 0.5f);
        this.f10964j = (int) (64.0f * f);
        this.f10966l = (int) ((16.0f * f) + 0.5f);
        this.f10972r = (int) ((1.0f * f) + 0.5f);
        this.f10965k = (int) ((f * 32.0f) + 0.5f);
        this.f10976v = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(m39597b());
        setWillNotDraw(false);
        this.f10982b.setFocusable(true);
        this.f10982b.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PagerTabStrip.this.f10981a.setCurrentItem(PagerTabStrip.this.f10981a.getCurrentItem() - 1);
            }
        });
        this.f10984d.setFocusable(true);
        this.f10984d.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PagerTabStrip.this.f10981a.setCurrentItem(PagerTabStrip.this.f10981a.getCurrentItem() + 1);
            }
        });
        if (getBackground() == null) {
            this.f10970p = true;
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: a */
    public final int mo39602a() {
        return Math.max(super.mo39602a(), this.f10965k);
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: a */
    public final void mo39601a(int i, float f, boolean z) {
        Rect rect = this.f10968n;
        int height = getHeight();
        int left = this.f10983c.getLeft();
        int i2 = this.f10966l;
        int right = this.f10983c.getRight();
        int i3 = this.f10966l;
        int i4 = height - this.f10962h;
        rect.set(left - i2, i4, right + i3, height);
        super.mo39601a(i, f, z);
        this.f10969o = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f10983c.getLeft() - this.f10966l, i4, this.f10983c.getRight() + this.f10966l, height);
        invalidate(rect);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f10983c.getLeft();
        int i = this.f10966l;
        int right = this.f10983c.getRight();
        int i2 = this.f10966l;
        int i3 = this.f10962h;
        this.f10967m.setColor((this.f10969o << 24) | (this.f10961g & 16777215));
        float f = left - i;
        float f2 = height - i3;
        float f3 = right + i2;
        float f4 = height;
        canvas.drawRect(f, f2, f3, f4, this.f10967m);
        if (this.f10970p) {
            this.f10967m.setColor((-16777216) | (this.f10961g & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.f10972r, getWidth() - getPaddingRight(), f4, this.f10967m);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || !this.f10973s) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (action == 0) {
                this.f10974t = x;
                this.f10975u = y;
                this.f10973s = false;
                return true;
            } else if (action != 1) {
                if (action != 2) {
                    return true;
                }
                if (Math.abs(x - this.f10974t) <= this.f10976v && Math.abs(y - this.f10975u) <= this.f10976v) {
                    return true;
                }
                this.f10973s = true;
                return true;
            } else if (x < this.f10983c.getLeft() - this.f10966l) {
                this.f10981a.setCurrentItem(this.f10981a.getCurrentItem() - 1);
                return true;
            } else if (x <= this.f10983c.getRight() + this.f10966l) {
                return true;
            } else {
                this.f10981a.setCurrentItem(this.f10981a.getCurrentItem() + 1);
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        if (!this.f10971q) {
            this.f10970p = (i & (-16777216)) == 0;
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (!this.f10971q) {
            this.f10970p = drawable == null;
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (!this.f10971q) {
            this.f10970p = i == 0;
        }
    }

    public void setDrawFullUnderline(boolean z) {
        this.f10970p = z;
        this.f10971q = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.f10963i;
        int i6 = i4;
        if (i4 < i5) {
            i6 = i5;
        }
        super.setPadding(i, i2, i3, i6);
    }

    public void setTabIndicatorColor(int i) {
        this.f10961g = i;
        this.f10967m.setColor(i);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i) {
        setTabIndicatorColor(C0790b.m44492c(getContext(), i));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i) {
        int i2 = this.f10964j;
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        super.setTextSpacing(i3);
    }
}
