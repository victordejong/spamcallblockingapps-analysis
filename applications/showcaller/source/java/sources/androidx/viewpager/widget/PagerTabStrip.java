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
import androidx.core.content.C0586a;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip.class */
public class PagerTabStrip extends PagerTitleStrip {

    /* renamed from: A */
    private final Rect f5014A;

    /* renamed from: B */
    private int f5015B;

    /* renamed from: C */
    private boolean f5016C;

    /* renamed from: D */
    private boolean f5017D;

    /* renamed from: E */
    private int f5018E;

    /* renamed from: F */
    private boolean f5019F;

    /* renamed from: G */
    private float f5020G;

    /* renamed from: H */
    private float f5021H;

    /* renamed from: I */
    private int f5022I;

    /* renamed from: t */
    private int f5023t;

    /* renamed from: u */
    private int f5024u;

    /* renamed from: v */
    private int f5025v;

    /* renamed from: w */
    private int f5026w;

    /* renamed from: x */
    private int f5027x;

    /* renamed from: y */
    private int f5028y;

    /* renamed from: z */
    private final Paint f5029z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager.widget.PagerTabStrip$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip$a.class */
    public class View$OnClickListenerC1180a implements View.OnClickListener {
        View$OnClickListenerC1180a() {
            PagerTabStrip.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.f5034f;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager.widget.PagerTabStrip$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip$b.class */
    public class View$OnClickListenerC1181b implements View.OnClickListener {
        View$OnClickListenerC1181b() {
            PagerTabStrip.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.f5034f;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public PagerTabStrip(Context context) {
        this(context, null);
    }

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f5029z = paint;
        this.f5014A = new Rect();
        this.f5015B = 255;
        this.f5016C = false;
        this.f5017D = false;
        int i = this.f5047s;
        this.f5023t = i;
        paint.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.f5024u = (int) ((3.0f * f) + 0.5f);
        this.f5025v = (int) ((6.0f * f) + 0.5f);
        this.f5026w = (int) (64.0f * f);
        this.f5028y = (int) ((16.0f * f) + 0.5f);
        this.f5018E = (int) ((1.0f * f) + 0.5f);
        this.f5027x = (int) ((f * 32.0f) + 0.5f);
        this.f5022I = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f5035g.setFocusable(true);
        this.f5035g.setOnClickListener(new View$OnClickListenerC1180a());
        this.f5037i.setFocusable(true);
        this.f5037i.setOnClickListener(new View$OnClickListenerC1181b());
        if (getBackground() == null) {
            this.f5016C = true;
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: c */
    public void mo30769c(int i, float f, boolean z) {
        Rect rect = this.f5014A;
        int height = getHeight();
        int left = this.f5036h.getLeft();
        int i2 = this.f5028y;
        int right = this.f5036h.getRight();
        int i3 = this.f5028y;
        int i4 = height - this.f5024u;
        rect.set(left - i2, i4, right + i3, height);
        super.mo30769c(i, f, z);
        this.f5015B = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f5036h.getLeft() - this.f5028y, i4, this.f5036h.getRight() + this.f5028y, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.f5016C;
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), this.f5027x);
    }

    public int getTabIndicatorColor() {
        return this.f5023t;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f5036h.getLeft();
        int i = this.f5028y;
        int right = this.f5036h.getRight();
        int i2 = this.f5028y;
        int i3 = this.f5024u;
        this.f5029z.setColor((this.f5015B << 24) | (this.f5023t & 16777215));
        float f = left - i;
        float f2 = height - i3;
        float f3 = right + i2;
        float f4 = height;
        canvas.drawRect(f, f2, f3, f4, this.f5029z);
        if (this.f5016C) {
            this.f5029z.setColor((-16777216) | (this.f5023t & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.f5018E, getWidth() - getPaddingRight(), f4, this.f5029z);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || !this.f5019F) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (action == 0) {
                this.f5020G = x;
                this.f5021H = y;
                this.f5019F = false;
                return true;
            } else if (action != 1) {
                if (action != 2) {
                    return true;
                }
                if (Math.abs(x - this.f5020G) <= this.f5022I && Math.abs(y - this.f5021H) <= this.f5022I) {
                    return true;
                }
                this.f5019F = true;
                return true;
            } else if (x < this.f5036h.getLeft() - this.f5028y) {
                ViewPager viewPager = this.f5034f;
                viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
                return true;
            } else if (x <= this.f5036h.getRight() + this.f5028y) {
                return true;
            } else {
                ViewPager viewPager2 = this.f5034f;
                viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        if (!this.f5017D) {
            this.f5016C = (i & (-16777216)) == 0;
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (!this.f5017D) {
            this.f5016C = drawable == null;
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (!this.f5017D) {
            this.f5016C = i == 0;
        }
    }

    public void setDrawFullUnderline(boolean z) {
        this.f5016C = z;
        this.f5017D = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.f5025v;
        int i6 = i4;
        if (i4 < i5) {
            i6 = i5;
        }
        super.setPadding(i, i2, i3, i6);
    }

    public void setTabIndicatorColor(int i) {
        this.f5023t = i;
        this.f5029z.setColor(i);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i) {
        setTabIndicatorColor(C0586a.m33350d(getContext(), i));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i) {
        int i2 = this.f5026w;
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        super.setTextSpacing(i3);
    }
}
