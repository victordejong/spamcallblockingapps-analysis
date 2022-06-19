package com.rey.material.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.viewpager.widget.AbstractC0533a;
import androidx.viewpager.widget.ViewPager;
import com.callerid.block.R$styleable;
import com.rey.material.app.b;
import com.rey.material.app.b$b;
import com.rey.material.app.b$c;
import p092e.p107g.p108a.p109a.View$OnTouchListenerC3116f;
import p092e.p107g.p108a.p110b.C3122b;
import p092e.p107g.p108a.p110b.C3124d;
@TargetApi(16)
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabPageIndicator.class */
public class TabPageIndicator extends HorizontalScrollView implements ViewPager.AbstractC0529i, View.OnClickListener, b$c {

    /* renamed from: b */
    protected int f11909b;

    /* renamed from: d */
    private C2845c f11911d;

    /* renamed from: e */
    private ViewPager f11912e;

    /* renamed from: f */
    private int f11913f;

    /* renamed from: k */
    private int f11918k;

    /* renamed from: l */
    private int f11919l;

    /* renamed from: n */
    private Paint f11921n;

    /* renamed from: o */
    private int f11922o;

    /* renamed from: r */
    private Runnable f11925r;

    /* renamed from: s */
    private ViewPager.AbstractC0529i f11926s;

    /* renamed from: c */
    protected int f11910c = Integer.MIN_VALUE;

    /* renamed from: g */
    private int f11914g = -1;

    /* renamed from: h */
    private int f11915h = 0;

    /* renamed from: i */
    private int f11916i = 0;

    /* renamed from: j */
    private boolean f11917j = true;

    /* renamed from: m */
    private int f11920m = -1;

    /* renamed from: p */
    private boolean f11923p = false;

    /* renamed from: q */
    private boolean f11924q = false;

    /* renamed from: t */
    private DataSetObserver f11927t = new C2843a();

    /* renamed from: com.rey.material.widget.TabPageIndicator$a */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabPageIndicator$a.class */
    class C2843a extends DataSetObserver {
        C2843a() {
            TabPageIndicator.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabPageIndicator.this.m1345z();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabPageIndicator.this.m1361A();
        }
    }

    /* renamed from: com.rey.material.widget.TabPageIndicator$b */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabPageIndicator$b.class */
    public class RunnableC2844b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ int f11929b;

        RunnableC2844b(int i) {
            TabPageIndicator.this = r4;
            this.f11929b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckedTextView m1347x = TabPageIndicator.this.m1347x(this.f11929b);
            if (!TabPageIndicator.this.f11923p) {
                TabPageIndicator.this.m1360B(m1347x.getLeft(), m1347x.getMeasuredWidth());
            }
            TabPageIndicator.this.smoothScrollTo((m1347x.getLeft() - ((TabPageIndicator.this.getWidth() - m1347x.getWidth()) / 2)) + TabPageIndicator.this.getPaddingLeft(), 0);
            TabPageIndicator.this.f11925r = null;
        }
    }

    /* renamed from: com.rey.material.widget.TabPageIndicator$c */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabPageIndicator$c.class */
    public class C2845c extends FrameLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2845c(Context context) {
            super(context);
            TabPageIndicator.this = r4;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (TabPageIndicator.this.f11924q) {
                int childCount = getChildCount();
                for (int i7 = 0; i7 < childCount; i7++) {
                    View childAt = getChildAt(i7);
                    childAt.layout(i5 - childAt.getMeasuredWidth(), 0, i5, i6);
                    i5 -= childAt.getMeasuredWidth();
                }
                return;
            }
            int childCount2 = getChildCount();
            int i8 = 0;
            for (int i9 = 0; i9 < childCount2; i9++) {
                View childAt2 = getChildAt(i9);
                childAt2.layout(i8, 0, childAt2.getMeasuredWidth() + i8, i6);
                i8 += childAt2.getMeasuredWidth();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int i4;
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (TabPageIndicator.this.f11913f == 0) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                int i5 = 0;
                i3 = 0;
                for (int i6 = 0; i6 < getChildCount(); i6++) {
                    View childAt = getChildAt(i6);
                    childAt.measure(makeMeasureSpec, i2);
                    i5 += childAt.getMeasuredWidth();
                    i3 = Math.max(i3, childAt.getMeasuredHeight());
                }
                setMeasuredDimension(i5, i3);
            } else {
                if (mode == 1073741824) {
                    int childCount = size / getChildCount();
                    int childCount2 = getChildCount();
                    int i7 = 0;
                    int i8 = 0;
                    while (true) {
                        i4 = i7;
                        if (i8 >= childCount2) {
                            break;
                        }
                        View childAt2 = getChildAt(i8);
                        int i9 = childCount2 - 1;
                        childAt2.measure(i8 != i9 ? View.MeasureSpec.makeMeasureSpec(childCount, 1073741824) : View.MeasureSpec.makeMeasureSpec(size - (i9 * childCount), 1073741824), i2);
                        i7 = Math.max(i7, childAt2.getMeasuredHeight());
                        i8++;
                    }
                } else {
                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                    int i10 = 0;
                    int i11 = 0;
                    for (int i12 = 0; i12 < getChildCount(); i12++) {
                        View childAt3 = getChildAt(i12);
                        childAt3.measure(makeMeasureSpec2, i2);
                        i11 += childAt3.getMeasuredWidth();
                        i10 = Math.max(i10, childAt3.getMeasuredHeight());
                    }
                    i4 = i10;
                    if (mode != 0) {
                        if (i11 >= size) {
                            int childCount3 = size / getChildCount();
                            int childCount4 = getChildCount();
                            int i13 = 0;
                            while (true) {
                                i4 = i10;
                                if (i13 >= childCount4) {
                                    break;
                                }
                                int i14 = childCount4 - 1;
                                getChildAt(i13).measure(i13 != i14 ? View.MeasureSpec.makeMeasureSpec(childCount3, 1073741824) : View.MeasureSpec.makeMeasureSpec(size - (i14 * childCount3), 1073741824), i2);
                                i13++;
                            }
                        } else {
                            i4 = i10;
                        }
                    }
                }
                setMeasuredDimension(size, i4);
                i3 = i4;
            }
            int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
            for (int i15 = 0; i15 < getChildCount(); i15++) {
                View childAt4 = getChildAt(i15);
                if (childAt4.getMeasuredHeight() != i3) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec(childAt4.getMeasuredWidth(), 1073741824), makeMeasureSpec3);
                }
            }
        }
    }

    public TabPageIndicator(Context context) {
        super(context);
        m1346y(context, null, 0, 0);
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m1346y(context, attributeSet, 0, 0);
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m1346y(context, attributeSet, i, 0);
    }

    /* renamed from: A */
    public void m1361A() {
        AbstractC0533a adapter = this.f11912e.getAdapter();
        int mo66e = adapter.mo66e();
        for (int i = 0; i < mo66e; i++) {
            CheckedTextView m1347x = m1347x(i);
            CharSequence m11870g = adapter.m11870g(i);
            CharSequence charSequence = m11870g;
            if (m11870g == null) {
                charSequence = "NULL";
            }
            m1347x.setText(charSequence);
        }
        requestLayout();
    }

    /* renamed from: B */
    public void m1360B(int i, int i2) {
        this.f11918k = i;
        this.f11919l = i2;
        invalidate();
    }

    /* renamed from: t */
    private void m1351t() {
        int i = 0;
        while (i < 3) {
            String str = i == 0 ? "TAB ONE" : i == 1 ? "TAB TWO" : i == 2 ? "TAB THREE" : null;
            CheckedTextView checkedTextView = new CheckedTextView(getContext());
            checkedTextView.setCheckMarkDrawable((Drawable) null);
            checkedTextView.setText(str);
            checkedTextView.setGravity(17);
            if (Build.VERSION.SDK_INT >= 17) {
                checkedTextView.setTextAlignment(4);
            }
            checkedTextView.setTextAppearance(getContext(), this.f11916i);
            checkedTextView.setSingleLine(true);
            checkedTextView.setEllipsize(TextUtils.TruncateAt.END);
            checkedTextView.setTag(Integer.valueOf(i));
            checkedTextView.setChecked(i == 0);
            int i2 = this.f11913f;
            if (i2 == 0) {
                int i3 = this.f11914g;
                checkedTextView.setPadding(i3, 0, i3, 0);
                this.f11911d.addView(checkedTextView, new ViewGroup.LayoutParams(-2, -1));
            } else if (i2 == 1) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
                layoutParams.weight = 1.0f;
                this.f11911d.addView(checkedTextView, layoutParams);
            }
            i++;
        }
    }

    /* renamed from: u */
    private void m1350u(int i) {
        if (m1347x(i) == null) {
            return;
        }
        Runnable runnable = this.f11925r;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        RunnableC2844b runnableC2844b = new RunnableC2844b(i);
        this.f11925r = runnableC2844b;
        post(runnableC2844b);
    }

    /* renamed from: x */
    public CheckedTextView m1347x(int i) {
        return (CheckedTextView) this.f11911d.getChildAt(i);
    }

    /* renamed from: y */
    private void m1346y(Context context, AttributeSet attributeSet, int i, int i2) {
        setHorizontalScrollBarEnabled(false);
        Paint paint = new Paint(1);
        this.f11921n = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f11921n.setColor(C3122b.m85a(context, -1));
        this.f11911d = new C2845c(context);
        m1348w(context, attributeSet, i, i2);
        if (isInEditMode()) {
            m1351t();
        }
        this.f11909b = b.f(context, attributeSet, i, i2);
    }

    /* renamed from: z */
    public void m1345z() {
        this.f11911d.removeAllViews();
        AbstractC0533a adapter = this.f11912e.getAdapter();
        int mo66e = adapter.mo66e();
        if (this.f11922o > mo66e) {
            this.f11922o = mo66e - 1;
        }
        for (int i = 0; i < mo66e; i++) {
            CharSequence m11870g = adapter.m11870g(i);
            CharSequence charSequence = m11870g;
            if (m11870g == null) {
                charSequence = "NULL";
            }
            CheckedTextView checkedTextView = new CheckedTextView(getContext());
            checkedTextView.setCheckMarkDrawable((Drawable) null);
            checkedTextView.setText(charSequence);
            checkedTextView.setGravity(17);
            if (Build.VERSION.SDK_INT >= 17) {
                checkedTextView.setTextAlignment(4);
            }
            checkedTextView.setTextAppearance(getContext(), this.f11916i);
            if (this.f11917j) {
                checkedTextView.setSingleLine(true);
            } else {
                checkedTextView.setSingleLine(false);
                checkedTextView.setMaxLines(2);
            }
            checkedTextView.setEllipsize(TextUtils.TruncateAt.END);
            checkedTextView.setOnClickListener(this);
            checkedTextView.setTag(Integer.valueOf(i));
            View$OnTouchListenerC3116f m112g = new View$OnTouchListenerC3116f.C3118b(getContext(), this.f11915h).m112g();
            if (this.f11915h > 0) {
                C3124d.m69h(checkedTextView, m112g);
            }
            int i2 = this.f11914g;
            checkedTextView.setPadding(i2, 0, i2, 0);
            this.f11911d.addView(checkedTextView, new ViewGroup.LayoutParams(-2, -1));
        }
        setCurrentItem(this.f11922o);
        requestLayout();
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0529i
    /* renamed from: a */
    public void mo54a(int i, float f, int i2) {
        ViewPager.AbstractC0529i abstractC0529i = this.f11926s;
        if (abstractC0529i != null) {
            abstractC0529i.mo54a(i, f, i2);
        }
        CheckedTextView m1347x = m1347x(i);
        CheckedTextView m1347x2 = m1347x(i + 1);
        if (m1347x == null || m1347x2 == null) {
            return;
        }
        int measuredWidth = m1347x.getMeasuredWidth();
        int measuredWidth2 = m1347x2.getMeasuredWidth();
        float f2 = (measuredWidth + measuredWidth2) / 2.0f;
        float f3 = measuredWidth;
        int i3 = (int) (((measuredWidth2 - measuredWidth) * f) + f3 + 0.5f);
        m1360B((int) ((((m1347x.getLeft() + (f3 / 2.0f)) + (f2 * f)) - (i3 / 2.0f)) + 0.5f), i3);
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0529i
    /* renamed from: b */
    public void mo53b(int i) {
        if (i == 0) {
            this.f11923p = false;
            CheckedTextView m1347x = m1347x(this.f11922o);
            if (m1347x != null) {
                m1360B(m1347x.getLeft(), m1347x.getMeasuredWidth());
            }
        } else {
            this.f11923p = true;
        }
        ViewPager.AbstractC0529i abstractC0529i = this.f11926s;
        if (abstractC0529i != null) {
            abstractC0529i.mo53b(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0529i
    /* renamed from: c */
    public void mo52c(int i) {
        setCurrentItem(i);
        ViewPager.AbstractC0529i abstractC0529i = this.f11926s;
        if (abstractC0529i != null) {
            abstractC0529i.mo52c(i);
        }
    }

    @Override // com.rey.material.app.b$c
    /* renamed from: d */
    public void mo1341d(b$b b_b) {
        int b = b.c().b(this.f11909b);
        if (this.f11910c != b) {
            this.f11910c = b;
            m1349v(b);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int paddingLeft = this.f11918k + getPaddingLeft();
        canvas.drawRect(paddingLeft, getHeight() - this.f11920m, paddingLeft + this.f11919l, getHeight(), this.f11921n);
        if (isInEditMode()) {
            canvas.drawRect(getPaddingLeft(), getHeight() - this.f11920m, getPaddingLeft() + this.f11911d.getChildAt(0).getWidth(), getHeight(), this.f11921n);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f11925r;
        if (runnable != null) {
            post(runnable);
        }
        if (this.f11909b == 0 || isInEditMode()) {
            return;
        }
        b.c().j(this);
        mo1341d(null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ViewPager.AbstractC0529i abstractC0529i;
        int intValue = ((Integer) view.getTag()).intValue();
        if (intValue == this.f11922o && (abstractC0529i = this.f11926s) != null) {
            abstractC0529i.mo52c(intValue);
        }
        this.f11912e.setCurrentItem(intValue, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f11925r;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        if (this.f11909b != 0) {
            b.c().m(this);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i5 = i;
        if (i != 0) {
            i5 = View.MeasureSpec.makeMeasureSpec((size - getPaddingLeft()) - getPaddingRight(), mode);
        }
        if (mode2 != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec((size2 - getPaddingTop()) - getPaddingBottom(), mode2);
        }
        this.f11911d.measure(i5, i2);
        if (mode == Integer.MIN_VALUE) {
            i3 = Math.min(this.f11911d.getMeasuredWidth() + getPaddingLeft() + getPaddingRight(), size);
        } else if (mode != 0) {
            i3 = size;
            if (mode != 1073741824) {
                i3 = 0;
            }
        } else {
            i3 = getPaddingRight() + this.f11911d.getMeasuredWidth() + getPaddingLeft();
        }
        if (mode2 == Integer.MIN_VALUE) {
            i4 = Math.min(this.f11911d.getMeasuredHeight() + getPaddingTop() + getPaddingBottom(), size2);
        } else if (mode2 != 0) {
            i4 = size2;
            if (mode2 != 1073741824) {
                i4 = 0;
            }
        } else {
            i4 = this.f11911d.getMeasuredHeight() + getPaddingTop() + getPaddingBottom();
        }
        if (this.f11911d.getMeasuredWidth() != (i3 - getPaddingLeft()) - getPaddingRight() || this.f11911d.getMeasuredHeight() != (i4 - getPaddingTop()) - getPaddingBottom()) {
            this.f11911d.measure(View.MeasureSpec.makeMeasureSpec((i3 - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((i4 - getPaddingTop()) - getPaddingBottom(), 1073741824));
        }
        setMeasuredDimension(i3, i4);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (this.f11924q != z) {
            this.f11924q = z;
            invalidate();
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        CheckedTextView m1347x = m1347x(this.f11922o);
        if (m1347x != null) {
            m1360B(m1347x.getLeft(), m1347x.getMeasuredWidth());
        }
    }

    public void setCurrentItem(int i) {
        CheckedTextView m1347x;
        int i2 = this.f11922o;
        if (i2 != i && (m1347x = m1347x(i2)) != null) {
            m1347x.setChecked(false);
        }
        this.f11922o = i;
        CheckedTextView m1347x2 = m1347x(i);
        if (m1347x2 != null) {
            m1347x2.setChecked(true);
        }
        m1350u(i);
    }

    public void setOnPageChangeListener(ViewPager.AbstractC0529i abstractC0529i) {
        this.f11926s = abstractC0529i;
    }

    public void setPageIcon(int[] iArr) {
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f11912e;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.m11916N(this);
            AbstractC0533a adapter = viewPager.getAdapter();
            if (adapter != null) {
                adapter.m11859t(this.f11927t);
            }
        }
        AbstractC0533a adapter2 = viewPager.getAdapter();
        if (adapter2 == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        adapter2.m11867l(this.f11927t);
        this.f11912e = viewPager;
        viewPager.m11905c(this);
        m1345z();
        mo52c(this.f11912e.getCurrentItem());
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }

    /* renamed from: v */
    public void m1349v(int i) {
        C3124d.m75b(this, i);
        m1348w(getContext(), null, 0, i);
    }

    /* renamed from: w */
    protected void m1348w(Context context, AttributeSet attributeSet, int i, int i2) {
        int i3;
        int i4;
        int i5;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TabPageIndicator, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int i6 = 0;
        int i7 = -1;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i3 = i9;
            if (i6 >= indexCount) {
                break;
            }
            int index = obtainStyledAttributes.getIndex(i6);
            if (index == 4) {
                this.f11914g = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i5 = i8;
                i4 = i3;
            } else if (index == 5) {
                i4 = obtainStyledAttributes.getResourceId(index, 0);
                i5 = i8;
            } else if (index == 1) {
                this.f11921n.setColor(obtainStyledAttributes.getColor(index, 0));
                i5 = i8;
                i4 = i3;
            } else if (index == 2) {
                this.f11920m = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i5 = i8;
                i4 = i3;
            } else if (index == 6) {
                this.f11917j = obtainStyledAttributes.getBoolean(index, true);
                i5 = i8;
                i4 = i3;
            } else if (index == 0) {
                i5 = obtainStyledAttributes.getResourceId(index, 0);
                i4 = i3;
            } else {
                i5 = i8;
                i4 = i3;
                if (index == 3) {
                    i7 = obtainStyledAttributes.getInteger(index, 0);
                    i4 = i3;
                    i5 = i8;
                }
            }
            i6++;
            i8 = i5;
            i9 = i4;
        }
        obtainStyledAttributes.recycle();
        if (this.f11914g < 0) {
            this.f11914g = C3122b.m81e(context, 12);
        }
        if (this.f11920m < 0) {
            this.f11920m = C3122b.m81e(context, 2);
        }
        if (i7 >= 0 && (this.f11913f != i7 || getChildCount() == 0)) {
            this.f11913f = i7;
            removeAllViews();
            int i10 = this.f11913f;
            if (i10 == 0) {
                addView(this.f11911d, new ViewGroup.LayoutParams(-2, -1));
                setFillViewport(false);
            } else if (i10 == 1) {
                addView(this.f11911d, new ViewGroup.LayoutParams(-1, -1));
                setFillViewport(true);
            }
        }
        if (i8 != 0 && this.f11916i != i8) {
            this.f11916i = i8;
            int childCount = this.f11911d.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                ((CheckedTextView) this.f11911d.getChildAt(i11)).setTextAppearance(context, this.f11916i);
            }
        }
        if (i3 != 0 && i3 != this.f11915h) {
            this.f11915h = i3;
            int childCount2 = this.f11911d.getChildCount();
            for (int i12 = 0; i12 < childCount2; i12++) {
                C3124d.m69h(this.f11911d.getChildAt(i12), new View$OnTouchListenerC3116f.C3118b(getContext(), this.f11915h).m112g());
            }
        }
        if (this.f11912e != null) {
            m1345z();
        }
        requestLayout();
    }
}
