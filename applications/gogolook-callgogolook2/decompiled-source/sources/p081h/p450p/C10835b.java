package p081h.p450p;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
/* renamed from: h.p.b */
/* loaded from: classes2-dex2jar.jar:h/p/b.class */
public class C10835b extends LinearLayout {

    /* renamed from: f */
    public static final int[] f24790f = {16843049, 16843561, 16843562};

    /* renamed from: a */
    public Drawable f24791a;

    /* renamed from: b */
    public int f24792b;

    /* renamed from: c */
    public int f24793c;

    /* renamed from: d */
    public int f24794d;

    /* renamed from: e */
    public int f24795e;

    public C10835b(Context context, int i) {
        super(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, f24790f, i, 0);
        setDividerDrawable(obtainStyledAttributes.getDrawable(0));
        this.f24795e = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f24794d = obtainStyledAttributes.getInteger(1, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public final void m10444a(Canvas canvas) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (!(childAt == null || childAt.getVisibility() == 8 || !m10445a(i))) {
                m10441b(canvas, childAt.getLeft() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).leftMargin);
            }
        }
        if (m10445a(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            m10441b(canvas, childAt2 == null ? (getWidth() - getPaddingRight()) - this.f24792b : childAt2.getRight());
        }
    }

    /* renamed from: a */
    public final void m10443a(Canvas canvas, int i) {
        this.f24791a.setBounds(getPaddingLeft() + this.f24795e, i, (getWidth() - getPaddingRight()) - this.f24795e, this.f24793c + i);
        this.f24791a.draw(canvas);
    }

    /* renamed from: a */
    public final boolean m10445a(int i) {
        boolean z = false;
        if (i != 0) {
            if (i == getChildCount()) {
                z = false;
            } else {
                z = false;
                if ((this.f24794d & 2) != 0) {
                    while (true) {
                        i--;
                        z = false;
                        if (i < 0) {
                            break;
                        } else if (getChildAt(i).getVisibility() != 8) {
                            z = true;
                            break;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final void m10442b(Canvas canvas) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (!(childAt == null || childAt.getVisibility() == 8 || !m10445a(i))) {
                m10443a(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
            }
        }
        if (m10445a(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            m10443a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f24793c : childAt2.getBottom());
        }
    }

    /* renamed from: b */
    public final void m10441b(Canvas canvas, int i) {
        this.f24791a.setBounds(i, getPaddingTop() + this.f24795e, this.f24792b + i, (getHeight() - getPaddingBottom()) - this.f24795e);
        this.f24791a.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        int indexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (m10445a(indexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.f24793c;
            } else {
                layoutParams.leftMargin = this.f24792b;
            }
        }
        int childCount = getChildCount();
        if (indexOfChild == childCount - 1 && m10445a(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.f24793c;
            } else {
                layoutParams.rightMargin = this.f24792b;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f24791a != null) {
            if (getOrientation() == 1) {
                m10442b(canvas);
            } else {
                m10444a(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.LinearLayout
    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.f24791a) {
            this.f24791a = drawable;
            boolean z = false;
            if (drawable != null) {
                this.f24792b = drawable.getIntrinsicWidth();
                this.f24793c = drawable.getIntrinsicHeight();
            } else {
                this.f24792b = 0;
                this.f24793c = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }
}
