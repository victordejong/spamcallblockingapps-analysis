package com.allinone.callerid.mvc.view.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.allinone.callerid.customview.LFrameLayout;
import com.allinone.callerid.util.C3739f1;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/LTabIndicator.class */
public class LTabIndicator extends HorizontalScrollView {

    /* renamed from: A */
    public int f11389A;

    /* renamed from: B */
    public int f11390B;

    /* renamed from: C */
    private int f11391C;

    /* renamed from: D */
    private float f11392D;

    /* renamed from: E */
    private float f11393E;

    /* renamed from: F */
    private int f11394F;

    /* renamed from: G */
    private int f11395G;

    /* renamed from: H */
    private boolean f11396H;

    /* renamed from: d */
    public ViewPager.AbstractC1193i f11397d;

    /* renamed from: e */
    private AbstractC3564b f11398e;

    /* renamed from: f */
    private LinearLayout f11399f;

    /* renamed from: g */
    private ViewPager f11400g;

    /* renamed from: h */
    private int f11401h;

    /* renamed from: i */
    private int f11402i;

    /* renamed from: j */
    private float f11403j;

    /* renamed from: k */
    private Paint f11404k;

    /* renamed from: l */
    private Paint f11405l;

    /* renamed from: m */
    private Paint f11406m;

    /* renamed from: n */
    private int f11407n;

    /* renamed from: o */
    private int f11408o;

    /* renamed from: p */
    public int f11409p;

    /* renamed from: q */
    public int f11410q;

    /* renamed from: r */
    public int f11411r;

    /* renamed from: s */
    public int f11412s;

    /* renamed from: t */
    private boolean f11413t;

    /* renamed from: u */
    private boolean f11414u;

    /* renamed from: v */
    private boolean f11415v;

    /* renamed from: w */
    private boolean f11416w;

    /* renamed from: x */
    public int f11417x;

    /* renamed from: y */
    public int f11418y;

    /* renamed from: z */
    public int f11419z;

    /* renamed from: com.allinone.callerid.mvc.view.recorder.LTabIndicator$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/LTabIndicator$a.class */
    public class View$OnClickListenerC3563a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f11420d;

        View$OnClickListenerC3563a(int i) {
            LTabIndicator.this = r4;
            this.f11420d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (LTabIndicator.this.f11400g.getCurrentItem() != this.f11420d && LTabIndicator.this.f11398e != null) {
                LTabIndicator.this.f11398e.m24986a(this.f11420d);
            }
            LTabIndicator.this.f11400g.setCurrentItem(this.f11420d, LTabIndicator.this.f11416w);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.view.recorder.LTabIndicator$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/LTabIndicator$b.class */
    public interface AbstractC3564b {
        /* renamed from: a */
        void m24986a(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.mvc.view.recorder.LTabIndicator$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/LTabIndicator$c.class */
    public class C3565c implements ViewPager.AbstractC1193i {
        private C3565c() {
            LTabIndicator.this = r4;
        }

        /* synthetic */ C3565c(LTabIndicator lTabIndicator, View$OnClickListenerC3563a view$OnClickListenerC3563a) {
            this();
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: a */
        public void mo4098a(int i, float f, int i2) {
            LTabIndicator.this.f11402i = i;
            LTabIndicator.this.f11403j = f;
            LTabIndicator lTabIndicator = LTabIndicator.this;
            lTabIndicator.m24989l(i, (int) (lTabIndicator.f11399f.getChildAt(i).getWidth() * f));
            LTabIndicator.this.invalidate();
            ViewPager.AbstractC1193i abstractC1193i = LTabIndicator.this.f11397d;
            if (abstractC1193i != null) {
                abstractC1193i.mo4098a(i, f, i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: c */
        public void mo4096c(int i) {
            if (i == 0) {
                LTabIndicator lTabIndicator = LTabIndicator.this;
                lTabIndicator.m24989l(lTabIndicator.f11400g.getCurrentItem(), 0);
            }
            ViewPager.AbstractC1193i abstractC1193i = LTabIndicator.this.f11397d;
            if (abstractC1193i != null) {
                abstractC1193i.mo4096c(i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: d */
        public void mo4095d(int i) {
            LTabIndicator.this.m24988m(i);
            ViewPager.AbstractC1193i abstractC1193i = LTabIndicator.this.f11397d;
            if (abstractC1193i != null) {
                abstractC1193i.mo4095d(i);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.view.recorder.LTabIndicator$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/LTabIndicator$d.class */
    public class C3566d extends LFrameLayout {

        /* renamed from: e */
        private TextView f11423e;

        /* renamed from: f */
        private Typeface f11424f;

        public C3566d(LTabIndicator lTabIndicator, Context context) {
            this(context, null);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3566d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            LTabIndicator.this = r5;
            this.f11424f = C3739f1.m24360a();
            m24984c();
            setDelayClick(false);
            setColor(r5.f11412s);
        }

        /* renamed from: c */
        private void m24984c() {
            this.f11423e = new TextView(getContext());
            if (!LTabIndicator.this.f11396H) {
                this.f11423e.setTypeface(this.f11424f);
            }
            this.f11423e.setTextSize(LTabIndicator.this.f11390B / getResources().getConfiguration().fontScale);
            this.f11423e.setSingleLine(true);
            this.f11423e.setGravity(17);
            TextView textView = this.f11423e;
            LTabIndicator lTabIndicator = LTabIndicator.this;
            textView.setPadding(lTabIndicator.f11419z, 0, lTabIndicator.f11389A, 0);
            addView(this.f11423e, new FrameLayout.LayoutParams(-1, -1));
        }

        /* renamed from: b */
        public TextView m24985b() {
            return this.f11423e;
        }
    }

    public LTabIndicator(Context context) {
        this(context, null);
    }

    public LTabIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LTabIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11402i = 0;
        this.f11403j = 0.0f;
        this.f11404k = new Paint();
        this.f11405l = new Paint();
        this.f11407n = -1;
        this.f11408o = 16777215;
        this.f11409p = 436207616;
        this.f11410q = -1;
        this.f11411r = 1728053247;
        this.f11412s = 419430400;
        this.f11413t = true;
        this.f11414u = false;
        this.f11415v = false;
        this.f11416w = true;
        this.f11417x = 12;
        this.f11418y = 24;
        this.f11419z = 0;
        this.f11389A = 0;
        this.f11390B = 14;
        this.f11391C = 52;
        this.f11392D = 3.0f;
        this.f11393E = 1.0f;
        this.f11394F = 1;
        this.f11395G = 0;
        setFillViewport(true);
        setWillNotDraw(false);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        LinearLayout linearLayout = new LinearLayout(context);
        this.f11399f = linearLayout;
        linearLayout.setOrientation(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.height = (int) TypedValue.applyDimension(1, 50.0f, displayMetrics);
        this.f11399f.setLayoutParams(layoutParams);
        addView(this.f11399f);
        this.f11391C = (int) TypedValue.applyDimension(1, this.f11391C, displayMetrics);
        this.f11417x = (int) TypedValue.applyDimension(1, this.f11417x, displayMetrics);
        this.f11418y = (int) TypedValue.applyDimension(1, this.f11418y, displayMetrics);
        this.f11394F = (int) TypedValue.applyDimension(1, this.f11394F, displayMetrics);
        this.f11392D = TypedValue.applyDimension(1, this.f11392D, displayMetrics);
        this.f11393E = TypedValue.applyDimension(1, this.f11393E, displayMetrics);
        this.f11404k.setAntiAlias(true);
        this.f11404k.setStyle(Paint.Style.FILL);
        this.f11404k.setColor(this.f11407n);
        this.f11405l.setAntiAlias(true);
        this.f11405l.setStyle(Paint.Style.FILL);
        this.f11405l.setColor(this.f11408o);
        Paint paint = new Paint();
        this.f11406m = paint;
        paint.setAntiAlias(true);
        this.f11406m.setStrokeWidth(this.f11394F);
    }

    /* renamed from: j */
    private void m24991j(int i, String str) {
        C3566d c3566d = new C3566d(this, getContext());
        c3566d.m24985b().setText(str);
        c3566d.setFocusable(true);
        c3566d.setOnClickListener(new View$OnClickListenerC3563a(i));
        if (!this.f11413t) {
            int i2 = this.f11418y;
            c3566d.setPadding(i2, 0, i2, 0);
        }
        this.f11399f.addView(c3566d, i, this.f11413t ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (r6 > 0) goto L9;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m24989l(int r5, int r6) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f11401h
            if (r0 != 0) goto L8
            return
        L8:
            r0 = r4
            android.widget.LinearLayout r0 = r0.f11399f
            r1 = r5
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getLeft()
            r1 = r6
            int r0 = r0 + r1
            r7 = r0
            r0 = r5
            if (r0 > 0) goto L20
            r0 = r7
            r5 = r0
            r0 = r6
            if (r0 <= 0) goto L27
        L20:
            r0 = r7
            r1 = r4
            int r1 = r1.f11391C
            int r0 = r0 - r1
            r5 = r0
        L27:
            r0 = r5
            r1 = r4
            int r1 = r1.f11395G
            if (r0 == r1) goto L3a
            r0 = r4
            r1 = r5
            r0.f11395G = r1
            r0 = r4
            r1 = r5
            r2 = 0
            r0.scrollTo(r1, r2)
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.mvc.view.recorder.LTabIndicator.m24989l(int, int):void");
    }

    /* renamed from: m */
    public void m24988m(int i) {
        int childCount = this.f11399f.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f11399f.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                ((C3566d) childAt).m24985b().setTextColor(this.f11410q);
            } else {
                ((C3566d) childAt).m24985b().setTextColor(this.f11411r);
            }
            i2++;
        }
    }

    /* renamed from: n */
    private void m24987n() {
        for (int i = 0; i < this.f11401h; i++) {
            this.f11399f.getChildAt(i).setBackgroundColor(0);
        }
        m24988m(this.f11400g.getCurrentItem());
    }

    public boolean getViewPagerScrollWithAnimation() {
        return this.f11416w;
    }

    /* renamed from: k */
    public void m24990k() {
        this.f11399f.removeAllViews();
        this.f11401h = this.f11400g.getAdapter().mo25082e();
        for (int i = 0; i < this.f11401h; i++) {
            m24991j(i, this.f11400g.getAdapter().mo25081g(i).toString());
        }
        m24987n();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.f11401h == 0) {
            return;
        }
        int height = getHeight();
        if (this.f11415v) {
            canvas.drawRect(0.0f, 0.0f, this.f11399f.getWidth(), this.f11393E, this.f11405l);
        } else {
            float f = height;
            canvas.drawRect(0.0f, f - this.f11393E, this.f11399f.getWidth(), f, this.f11405l);
        }
        View childAt = this.f11399f.getChildAt(this.f11402i);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        float f2 = right;
        float f3 = left;
        if (this.f11403j > 0.0f) {
            int i = this.f11402i;
            f2 = right;
            f3 = left;
            if (i < this.f11401h - 1) {
                View childAt2 = this.f11399f.getChildAt(i + 1);
                float left2 = childAt2.getLeft();
                float right2 = childAt2.getRight();
                float f4 = this.f11403j;
                f3 = (left2 * f4) + ((1.0f - f4) * left);
                f2 = (right2 * f4) + ((1.0f - f4) * right);
            }
        }
        if (this.f11415v) {
            canvas.drawRect(f3, 0.0f, f2, this.f11392D, this.f11404k);
        } else {
            float f5 = height;
            canvas.drawRect(f3, f5 - this.f11392D, f2, f5, this.f11404k);
        }
        if (!this.f11414u) {
            return;
        }
        this.f11406m.setColor(this.f11409p);
        for (int i2 = 0; i2 < this.f11401h - 1; i2++) {
            View childAt3 = this.f11399f.getChildAt(i2);
            canvas.drawLine(childAt3.getRight(), this.f11417x, childAt3.getRight(), height - this.f11417x, this.f11406m);
        }
    }

    public void setCurrentItem(int i) {
        this.f11400g.setCurrentItem(i, this.f11416w);
    }

    public void setEnableDivider(boolean z) {
        this.f11414u = z;
    }

    public void setEnableExpand(boolean z) {
        this.f11413t = z;
    }

    public void setIndicatorColor(int i) {
        this.f11404k.setColor(i);
    }

    public void setIndicatorOnTop(boolean z) {
        this.f11415v = z;
    }

    public void setOnPageChangeListener(ViewPager.AbstractC1193i abstractC1193i) {
        this.f11397d = abstractC1193i;
    }

    public void setOnTabReselectedListener(AbstractC3564b abstractC3564b) {
        this.f11398e = abstractC3564b;
    }

    public void setTabText(int i, String str) {
        if (i < 0 || i > this.f11399f.getChildCount() - 1) {
            throw new RuntimeException("tabs does not have this position.");
        }
        View childAt = this.f11399f.getChildAt(i);
        if (!(childAt instanceof TextView)) {
            return;
        }
        ((TextView) childAt).setText(str);
    }

    public void setUnderlineColor(int i) {
        this.f11405l.setColor(i);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f11400g = viewPager;
        if (viewPager.getAdapter() != null) {
            viewPager.setOnPageChangeListener(new C3565c(this, null));
            m24990k();
            return;
        }
        throw new IllegalStateException("ViewPager does not have adapter instance.");
    }

    public void setViewPagerScrollWithAnimation(boolean z) {
        this.f11416w = z;
    }
}
