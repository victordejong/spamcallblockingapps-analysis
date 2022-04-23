package com.rey.material.widget;

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
import com.callerid.block.customview.LFrameLayout;
import com.callerid.block.util.C1210r0;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/LTabIndicator.class */
public class LTabIndicator extends HorizontalScrollView {

    /* renamed from: A */
    private int f11776A;

    /* renamed from: B */
    private float f11777B;

    /* renamed from: C */
    private float f11778C;

    /* renamed from: D */
    private int f11779D;

    /* renamed from: E */
    private int f11780E;

    /* renamed from: F */
    private boolean f11781F;

    /* renamed from: b */
    public ViewPager.AbstractC0529i f11782b;

    /* renamed from: c */
    private AbstractC2831b f11783c;

    /* renamed from: d */
    private LinearLayout f11784d;

    /* renamed from: e */
    private ViewPager f11785e;

    /* renamed from: f */
    private int f11786f;

    /* renamed from: g */
    private int f11787g;

    /* renamed from: h */
    private float f11788h;

    /* renamed from: i */
    private Paint f11789i;

    /* renamed from: j */
    private Paint f11790j;

    /* renamed from: k */
    private Paint f11791k;

    /* renamed from: l */
    private int f11792l;

    /* renamed from: m */
    private int f11793m;

    /* renamed from: n */
    public int f11794n;

    /* renamed from: o */
    public int f11795o;

    /* renamed from: p */
    public int f11796p;

    /* renamed from: q */
    public int f11797q;

    /* renamed from: r */
    private boolean f11798r;

    /* renamed from: s */
    private boolean f11799s;

    /* renamed from: t */
    private boolean f11800t;

    /* renamed from: u */
    private boolean f11801u;

    /* renamed from: v */
    public int f11802v;

    /* renamed from: w */
    public int f11803w;

    /* renamed from: x */
    public int f11804x;

    /* renamed from: y */
    public int f11805y;

    /* renamed from: z */
    public int f11806z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.rey.material.widget.LTabIndicator$a */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/LTabIndicator$a.class */
    public class View$OnClickListenerC2830a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ int f11807b;

        View$OnClickListenerC2830a(int i) {
            this.f11807b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!(LTabIndicator.this.f11785e.getCurrentItem() == this.f11807b || LTabIndicator.this.f11783c == null)) {
                LTabIndicator.this.f11783c.m1418a(this.f11807b);
            }
            LTabIndicator.this.f11785e.setCurrentItem(this.f11807b, LTabIndicator.this.f11801u);
        }
    }

    /* renamed from: com.rey.material.widget.LTabIndicator$b */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/LTabIndicator$b.class */
    public interface AbstractC2831b {
        /* renamed from: a */
        void m1418a(int i);
    }

    /* renamed from: com.rey.material.widget.LTabIndicator$c */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/LTabIndicator$c.class */
    private class C2832c implements ViewPager.AbstractC0529i {
        private C2832c() {
        }

        /* synthetic */ C2832c(LTabIndicator lTabIndicator, View$OnClickListenerC2830a aVar) {
            this();
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0529i
        /* renamed from: a */
        public void mo54a(int i, float f, int i2) {
            LTabIndicator.this.f11787g = i;
            LTabIndicator.this.f11788h = f;
            LTabIndicator lTabIndicator = LTabIndicator.this;
            lTabIndicator.m1421l(i, (int) (lTabIndicator.f11784d.getChildAt(i).getWidth() * f));
            LTabIndicator.this.invalidate();
            ViewPager.AbstractC0529i iVar = LTabIndicator.this.f11782b;
            if (iVar != null) {
                iVar.mo54a(i, f, i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0529i
        /* renamed from: b */
        public void mo53b(int i) {
            if (i == 0) {
                LTabIndicator lTabIndicator = LTabIndicator.this;
                lTabIndicator.m1421l(lTabIndicator.f11785e.getCurrentItem(), 0);
            }
            ViewPager.AbstractC0529i iVar = LTabIndicator.this.f11782b;
            if (iVar != null) {
                iVar.mo53b(i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0529i
        /* renamed from: c */
        public void mo52c(int i) {
            LTabIndicator.this.m1420m(i);
            ViewPager.AbstractC0529i iVar = LTabIndicator.this.f11782b;
            if (iVar != null) {
                iVar.mo52c(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.rey.material.widget.LTabIndicator$d */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/LTabIndicator$d.class */
    public class C2833d extends LFrameLayout {

        /* renamed from: c */
        private TextView f11810c;

        /* renamed from: d */
        private Typeface f11811d;

        public C2833d(LTabIndicator lTabIndicator, Context context) {
            this(context, null);
        }

        public C2833d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f11811d = C1210r0.m9625a();
            m1416c();
            setDelayClick(false);
            setColor(LTabIndicator.this.f11797q);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: c */
        private void m1416c() {
            this.f11810c = new TextView(getContext());
            if (!LTabIndicator.this.f11781F) {
                this.f11810c.setTypeface(this.f11811d);
            }
            this.f11810c.setTextSize(LTabIndicator.this.f11806z / getResources().getConfiguration().fontScale);
            this.f11810c.setSingleLine(true);
            this.f11810c.setGravity(17);
            TextView textView = this.f11810c;
            LTabIndicator lTabIndicator = LTabIndicator.this;
            textView.setPadding(lTabIndicator.f11804x, 0, lTabIndicator.f11805y, 0);
            addView(this.f11810c, new FrameLayout.LayoutParams(-1, -1));
        }

        /* renamed from: b */
        public TextView m1417b() {
            return this.f11810c;
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
        this.f11787g = 0;
        this.f11788h = 0.0f;
        this.f11789i = new Paint();
        this.f11790j = new Paint();
        this.f11792l = -1;
        this.f11793m = 16777215;
        this.f11794n = 436207616;
        this.f11795o = -1;
        this.f11796p = 1728053247;
        this.f11797q = 419430400;
        this.f11798r = true;
        this.f11799s = false;
        this.f11800t = false;
        this.f11801u = true;
        this.f11802v = 12;
        this.f11803w = 24;
        this.f11804x = 0;
        this.f11805y = 0;
        this.f11806z = 14;
        this.f11776A = 52;
        this.f11777B = 3.0f;
        this.f11778C = 1.0f;
        this.f11779D = 1;
        this.f11780E = 0;
        setFillViewport(true);
        setWillNotDraw(false);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        LinearLayout linearLayout = new LinearLayout(context);
        this.f11784d = linearLayout;
        linearLayout.setOrientation(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.height = (int) TypedValue.applyDimension(1, 50.0f, displayMetrics);
        this.f11784d.setLayoutParams(layoutParams);
        addView(this.f11784d);
        this.f11776A = (int) TypedValue.applyDimension(1, this.f11776A, displayMetrics);
        this.f11802v = (int) TypedValue.applyDimension(1, this.f11802v, displayMetrics);
        this.f11803w = (int) TypedValue.applyDimension(1, this.f11803w, displayMetrics);
        this.f11779D = (int) TypedValue.applyDimension(1, this.f11779D, displayMetrics);
        this.f11777B = TypedValue.applyDimension(1, this.f11777B, displayMetrics);
        this.f11778C = TypedValue.applyDimension(1, this.f11778C, displayMetrics);
        this.f11789i.setAntiAlias(true);
        this.f11789i.setStyle(Paint.Style.FILL);
        this.f11789i.setColor(this.f11792l);
        this.f11790j.setAntiAlias(true);
        this.f11790j.setStyle(Paint.Style.FILL);
        this.f11790j.setColor(this.f11793m);
        Paint paint = new Paint();
        this.f11791k = paint;
        paint.setAntiAlias(true);
        this.f11791k.setStrokeWidth(this.f11779D);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.rey.material.widget.LTabIndicator$d, android.widget.FrameLayout, android.view.View] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m1423j(int r7, java.lang.String r8) {
        /*
            r6 = this;
            com.rey.material.widget.LTabIndicator$d r0 = new com.rey.material.widget.LTabIndicator$d
            r1 = r0
            r2 = r6
            r3 = r6
            android.content.Context r3 = r3.getContext()
            r1.<init>(r2, r3)
            r9 = r0
            r0 = r9
            android.widget.TextView r0 = r0.m1417b()
            r1 = r8
            r0.setText(r1)
            r0 = r9
            r1 = 1
            r0.setFocusable(r1)
            r0 = r9
            com.rey.material.widget.LTabIndicator$a r1 = new com.rey.material.widget.LTabIndicator$a
            r2 = r1
            r3 = r6
            r4 = r7
            r2.<init>(r4)
            r0.setOnClickListener(r1)
            r0 = r6
            boolean r0 = r0.f11798r
            if (r0 != 0) goto L_0x003e
            r0 = r6
            int r0 = r0.f11803w
            r10 = r0
            r0 = r9
            r1 = r10
            r2 = 0
            r3 = r10
            r4 = 0
            r0.setPadding(r1, r2, r3, r4)
        L_0x003e:
            r0 = r6
            android.widget.LinearLayout r0 = r0.f11784d
            r11 = r0
            r0 = r6
            boolean r0 = r0.f11798r
            if (r0 == 0) goto L_0x0059
            android.widget.LinearLayout$LayoutParams r0 = new android.widget.LinearLayout$LayoutParams
            r1 = r0
            r2 = 0
            r3 = -1
            r4 = 1065353216(0x3f800000, float:1.0)
            r1.<init>(r2, r3, r4)
            r8 = r0
            goto L_0x0064
        L_0x0059:
            android.widget.LinearLayout$LayoutParams r0 = new android.widget.LinearLayout$LayoutParams
            r1 = r0
            r2 = -2
            r3 = -1
            r1.<init>(r2, r3)
            r8 = r0
        L_0x0064:
            r0 = r11
            r1 = r9
            r2 = r7
            r3 = r8
            r0.addView(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rey.material.widget.LTabIndicator.m1423j(int, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (r6 > 0) goto L_0x0020;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1421l(int r5, int r6) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f11786f
            if (r0 != 0) goto L_0x0008
            return
        L_0x0008:
            r0 = r4
            android.widget.LinearLayout r0 = r0.f11784d
            r1 = r5
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getLeft()
            r1 = r6
            int r0 = r0 + r1
            r7 = r0
            r0 = r5
            if (r0 > 0) goto L_0x0020
            r0 = r7
            r5 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x0027
        L_0x0020:
            r0 = r7
            r1 = r4
            int r1 = r1.f11776A
            int r0 = r0 - r1
            r5 = r0
        L_0x0027:
            r0 = r5
            r1 = r4
            int r1 = r1.f11780E
            if (r0 == r1) goto L_0x003a
            r0 = r4
            r1 = r5
            r0.f11780E = r1
            r0 = r4
            r1 = r5
            r2 = 0
            r0.scrollTo(r1, r2)
        L_0x003a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rey.material.widget.LTabIndicator.m1421l(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m1420m(int i) {
        int childCount = this.f11784d.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f11784d.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            ((C2833d) childAt).m1417b().setTextColor(z ? this.f11795o : this.f11796p);
            i2++;
        }
    }

    /* renamed from: n */
    private void m1419n() {
        for (int i = 0; i < this.f11786f; i++) {
            this.f11784d.getChildAt(i).setBackgroundColor(0);
        }
        m1420m(this.f11785e.getCurrentItem());
    }

    public boolean getViewPagerScrollWithAnimation() {
        return this.f11801u;
    }

    /* renamed from: k */
    public void m1422k() {
        this.f11784d.removeAllViews();
        this.f11786f = this.f11785e.getAdapter().mo66e();
        for (int i = 0; i < this.f11786f; i++) {
            m1423j(i, this.f11785e.getAdapter().m11870g(i).toString());
        }
        m1419n();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        if (!(isInEditMode() || this.f11786f == 0)) {
            int height = getHeight();
            if (this.f11800t) {
                canvas.drawRect(0.0f, 0.0f, this.f11784d.getWidth(), this.f11778C, this.f11790j);
            } else {
                float f3 = height;
                canvas.drawRect(0.0f, f3 - this.f11778C, this.f11784d.getWidth(), f3, this.f11790j);
            }
            View childAt = this.f11784d.getChildAt(this.f11787g);
            float left = childAt.getLeft();
            float right = childAt.getRight();
            float f4 = right;
            float f5 = left;
            if (this.f11788h > 0.0f) {
                int i = this.f11787g;
                f4 = right;
                f5 = left;
                if (i < this.f11786f - 1) {
                    View childAt2 = this.f11784d.getChildAt(i + 1);
                    float left2 = childAt2.getLeft();
                    float right2 = childAt2.getRight();
                    float f6 = this.f11788h;
                    f5 = (left2 * f6) + ((1.0f - f6) * left);
                    f4 = (right2 * f6) + ((1.0f - f6) * right);
                }
            }
            if (this.f11800t) {
                f = 0.0f;
                f2 = this.f11777B;
            } else {
                f2 = height;
                f = f2 - this.f11777B;
            }
            canvas.drawRect(f5, f, f4, f2, this.f11789i);
            if (this.f11799s) {
                this.f11791k.setColor(this.f11794n);
                for (int i2 = 0; i2 < this.f11786f - 1; i2++) {
                    View childAt3 = this.f11784d.getChildAt(i2);
                    canvas.drawLine(childAt3.getRight(), this.f11802v, childAt3.getRight(), height - this.f11802v, this.f11791k);
                }
            }
        }
    }

    public void setCurrentItem(int i) {
        this.f11785e.setCurrentItem(i, this.f11801u);
    }

    public void setEnableDivider(boolean z) {
        this.f11799s = z;
    }

    public void setEnableExpand(boolean z) {
        this.f11798r = z;
    }

    public void setIndicatorColor(int i) {
        this.f11789i.setColor(i);
    }

    public void setIndicatorOnTop(boolean z) {
        this.f11800t = z;
    }

    public void setOnPageChangeListener(ViewPager.AbstractC0529i iVar) {
        this.f11782b = iVar;
    }

    public void setOnTabReselectedListener(AbstractC2831b bVar) {
        this.f11783c = bVar;
    }

    public void setTabText(int i, String str) {
        if (i < 0 || i > this.f11784d.getChildCount() - 1) {
            throw new RuntimeException("tabs does not have this position.");
        }
        View childAt = this.f11784d.getChildAt(i);
        if (childAt instanceof TextView) {
            ((TextView) childAt).setText(str);
        }
    }

    public void setUnderlineColor(int i) {
        this.f11790j.setColor(i);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f11785e = viewPager;
        if (viewPager.getAdapter() != null) {
            viewPager.setOnPageChangeListener(new C2832c(this, null));
            m1422k();
            return;
        }
        throw new IllegalStateException("ViewPager does not have adapter instance.");
    }

    public void setViewPagerScrollWithAnimation(boolean z) {
        this.f11801u = z;
    }
}
