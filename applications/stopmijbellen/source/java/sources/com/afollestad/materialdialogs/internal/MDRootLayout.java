package com.afollestad.materialdialogs.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
import p078e2.EnumC2526d;
import p078e2.EnumC2534h;
import p104g6.C2906b;
import p111h2.C3003b;
/* loaded from: classes-dex2jar.jar:com/afollestad/materialdialogs/internal/MDRootLayout.class */
public class MDRootLayout extends ViewGroup {

    /* renamed from: u */
    public static final /* synthetic */ int f3167u = 0;

    /* renamed from: b */
    public int f3169b;

    /* renamed from: c */
    public View f3170c;

    /* renamed from: d */
    public View f3171d;

    /* renamed from: j */
    public boolean f3177j;

    /* renamed from: k */
    public boolean f3178k;

    /* renamed from: l */
    public int f3179l;

    /* renamed from: m */
    public int f3180m;

    /* renamed from: n */
    public int f3181n;

    /* renamed from: p */
    public int f3183p;

    /* renamed from: r */
    public ViewTreeObserver.OnScrollChangedListener f3185r;

    /* renamed from: s */
    public ViewTreeObserver.OnScrollChangedListener f3186s;

    /* renamed from: t */
    public int f3187t;

    /* renamed from: a */
    public final MDButton[] f3168a = new MDButton[3];

    /* renamed from: e */
    public boolean f3172e = false;

    /* renamed from: f */
    public boolean f3173f = false;

    /* renamed from: g */
    public EnumC2534h f3174g = EnumC2534h.ADAPTIVE;

    /* renamed from: h */
    public boolean f3175h = false;

    /* renamed from: i */
    public boolean f3176i = true;

    /* renamed from: o */
    public EnumC2526d f3182o = EnumC2526d.START;

    /* renamed from: q */
    public Paint f3184q = new Paint();

    /* renamed from: com.afollestad.materialdialogs.internal.MDRootLayout$a */
    /* loaded from: classes-dex2jar.jar:com/afollestad/materialdialogs/internal/MDRootLayout$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC0865a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        public final /* synthetic */ View f3188a;

        /* renamed from: b */
        public final /* synthetic */ boolean f3189b;

        /* renamed from: c */
        public final /* synthetic */ boolean f3190c;

        public ViewTreeObserver$OnPreDrawListenerC0865a(View view, boolean z, boolean z2) {
            MDRootLayout.this = r4;
            this.f3188a = view;
            this.f3189b = z;
            this.f3190c = z2;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (this.f3188a.getMeasuredHeight() != 0) {
                WebView webView = (WebView) this.f3188a;
                int i = MDRootLayout.f3167u;
                if (!(((float) webView.getMeasuredHeight()) < webView.getScale() * ((float) webView.getContentHeight()))) {
                    if (this.f3189b) {
                        MDRootLayout.this.f3172e = false;
                    }
                    if (this.f3190c) {
                        MDRootLayout.this.f3173f = false;
                    }
                } else {
                    MDRootLayout.this.m7238b((ViewGroup) this.f3188a, this.f3189b, this.f3190c);
                }
                this.f3188a.getViewTreeObserver().removeOnPreDrawListener(this);
                return true;
            }
            return true;
        }
    }

    /* renamed from: com.afollestad.materialdialogs.internal.MDRootLayout$b */
    /* loaded from: classes-dex2jar.jar:com/afollestad/materialdialogs/internal/MDRootLayout$b.class */
    public class C0866b extends RecyclerView.AbstractC0581q {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f3192a;

        /* renamed from: b */
        public final /* synthetic */ boolean f3193b;

        /* renamed from: c */
        public final /* synthetic */ boolean f3194c;

        public C0866b(ViewGroup viewGroup, boolean z, boolean z2) {
            MDRootLayout.this = r4;
            this.f3192a = viewGroup;
            this.f3193b = z;
            this.f3194c = z2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0581q
        /* renamed from: b */
        public void mo4617b(RecyclerView recyclerView, int i, int i2) {
            boolean z;
            MDButton[] mDButtonArr = MDRootLayout.this.f3168a;
            int length = mDButtonArr.length;
            int i3 = 0;
            while (true) {
                z = false;
                if (i3 < length) {
                    MDButton mDButton = mDButtonArr[i3];
                    if (mDButton != null && mDButton.getVisibility() != 8) {
                        z = true;
                        break;
                    }
                    i3++;
                } else {
                    break;
                }
            }
            MDRootLayout.m7239a(MDRootLayout.this, this.f3192a, this.f3193b, this.f3194c, z);
            MDRootLayout.this.invalidate();
        }
    }

    /* renamed from: com.afollestad.materialdialogs.internal.MDRootLayout$c */
    /* loaded from: classes-dex2jar.jar:com/afollestad/materialdialogs/internal/MDRootLayout$c.class */
    public class ViewTreeObserver$OnScrollChangedListenerC0867c implements ViewTreeObserver.OnScrollChangedListener {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f3196a;

        /* renamed from: b */
        public final /* synthetic */ boolean f3197b;

        /* renamed from: c */
        public final /* synthetic */ boolean f3198c;

        public ViewTreeObserver$OnScrollChangedListenerC0867c(ViewGroup viewGroup, boolean z, boolean z2) {
            MDRootLayout.this = r4;
            this.f3196a = viewGroup;
            this.f3197b = z;
            this.f3198c = z2;
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            boolean z;
            boolean z2;
            MDButton[] mDButtonArr = MDRootLayout.this.f3168a;
            int length = mDButtonArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                MDButton mDButton = mDButtonArr[i];
                if (mDButton != null && mDButton.getVisibility() != 8) {
                    z = true;
                    break;
                }
                i++;
            }
            ViewGroup viewGroup = this.f3196a;
            if (viewGroup instanceof WebView) {
                MDRootLayout mDRootLayout = MDRootLayout.this;
                WebView webView = (WebView) viewGroup;
                boolean z3 = this.f3197b;
                boolean z4 = this.f3198c;
                Objects.requireNonNull(mDRootLayout);
                if (z3) {
                    View view = mDRootLayout.f3170c;
                    if (view != null && view.getVisibility() != 8) {
                        if (webView.getPaddingTop() + webView.getScrollY() > 0) {
                            z2 = true;
                            mDRootLayout.f3172e = z2;
                        }
                    }
                    z2 = false;
                    mDRootLayout.f3172e = z2;
                }
                if (z4) {
                    boolean z5 = false;
                    if (z) {
                        z5 = false;
                        if ((webView.getMeasuredHeight() + webView.getScrollY()) - webView.getPaddingBottom() < webView.getScale() * webView.getContentHeight()) {
                            z5 = true;
                        }
                    }
                    mDRootLayout.f3173f = z5;
                }
            } else {
                MDRootLayout.m7239a(MDRootLayout.this, viewGroup, this.f3197b, this.f3198c, z);
            }
            MDRootLayout.this.invalidate();
        }
    }

    public MDRootLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Resources resources = context.getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2906b.f9796c, 0, 0);
        this.f3177j = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
        this.f3179l = resources.getDimensionPixelSize(2131165607);
        this.f3180m = resources.getDimensionPixelSize(2131165578);
        this.f3183p = resources.getDimensionPixelSize(2131165583);
        this.f3181n = resources.getDimensionPixelSize(2131165579);
        this.f3187t = resources.getDimensionPixelSize(2131165597);
        this.f3184q.setColor(C3003b.m2760h(context, 2130969330, 0));
        setWillNotDraw(false);
    }

    /* renamed from: a */
    public static void m7239a(MDRootLayout mDRootLayout, ViewGroup viewGroup, boolean z, boolean z2, boolean z3) {
        boolean z4;
        boolean z5;
        Objects.requireNonNull(mDRootLayout);
        if (z && viewGroup.getChildCount() > 0) {
            View view = mDRootLayout.f3170c;
            if (view != null && view.getVisibility() != 8) {
                if (viewGroup.getPaddingTop() + viewGroup.getScrollY() > viewGroup.getChildAt(0).getTop()) {
                    z5 = true;
                    mDRootLayout.f3172e = z5;
                }
            }
            z5 = false;
            mDRootLayout.f3172e = z5;
        }
        if (!z2 || viewGroup.getChildCount() <= 0) {
            return;
        }
        if (z3) {
            if ((viewGroup.getHeight() + viewGroup.getScrollY()) - viewGroup.getPaddingBottom() < viewGroup.getChildAt(viewGroup.getChildCount() - 1).getBottom()) {
                z4 = true;
                mDRootLayout.f3173f = z4;
            }
        }
        z4 = false;
        mDRootLayout.f3173f = z4;
    }

    /* renamed from: c */
    public static boolean m7237c(View view) {
        boolean z = (view == null || view.getVisibility() == 8) ? false : true;
        boolean z2 = z;
        if (z) {
            z2 = z;
            if (view instanceof MDButton) {
                z2 = ((MDButton) view).getText().toString().trim().length() > 0;
            }
        }
        return z2;
    }

    /* renamed from: b */
    public final void m7238b(ViewGroup viewGroup, boolean z, boolean z2) {
        if ((z2 || this.f3185r != null) && (!z2 || this.f3186s != null)) {
            return;
        }
        if (viewGroup instanceof RecyclerView) {
            C0866b c0866b = new C0866b(viewGroup, z, z2);
            RecyclerView recyclerView = (RecyclerView) viewGroup;
            recyclerView.m7878h(c0866b);
            c0866b.mo4617b(recyclerView, 0, 0);
            return;
        }
        ViewTreeObserver$OnScrollChangedListenerC0867c viewTreeObserver$OnScrollChangedListenerC0867c = new ViewTreeObserver$OnScrollChangedListenerC0867c(viewGroup, z, z2);
        if (!z2) {
            this.f3185r = viewTreeObserver$OnScrollChangedListenerC0867c;
            viewGroup.getViewTreeObserver().addOnScrollChangedListener(this.f3185r);
        } else {
            this.f3186s = viewTreeObserver$OnScrollChangedListenerC0867c;
            viewGroup.getViewTreeObserver().addOnScrollChangedListener(this.f3186s);
        }
        viewTreeObserver$OnScrollChangedListenerC0867c.onScrollChanged();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0042, code lost:
        if (((r0.getMeasuredHeight() - r0.getPaddingTop()) - r0.getPaddingBottom()) < r0.getChildAt(0).getMeasuredHeight()) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0111  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7236d(android.view.View r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.afollestad.materialdialogs.internal.MDRootLayout.m7236d(android.view.View, boolean, boolean):void");
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        View view = this.f3171d;
        if (view != null) {
            if (this.f3172e) {
                int top = view.getTop();
                canvas.drawRect(0.0f, top - this.f3187t, getMeasuredWidth(), top, this.f3184q);
            }
            if (!this.f3173f) {
                return;
            }
            int bottom = this.f3171d.getBottom();
            canvas.drawRect(0.0f, bottom, getMeasuredWidth(), bottom + this.f3187t, this.f3184q);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getId() == 2131296799) {
                this.f3170c = childAt;
            } else if (childAt.getId() == 2131296769) {
                this.f3168a[0] = (MDButton) childAt;
            } else if (childAt.getId() == 2131296768) {
                this.f3168a[1] = (MDButton) childAt;
            } else if (childAt.getId() == 2131296770) {
                this.f3168a[2] = (MDButton) childAt;
            } else {
                this.f3171d = childAt;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        EnumC2526d enumC2526d = EnumC2526d.START;
        EnumC2526d enumC2526d2 = EnumC2526d.END;
        if (m7237c(this.f3170c)) {
            i5 = this.f3170c.getMeasuredHeight() + i2;
            this.f3170c.layout(i, i2, i3, i5);
        } else {
            i5 = i2;
            if (!this.f3178k) {
                i5 = i2;
                if (this.f3176i) {
                    i5 = i2 + this.f3179l;
                }
            }
        }
        if (m7237c(this.f3171d)) {
            View view = this.f3171d;
            view.layout(i, i5, i3, view.getMeasuredHeight() + i5);
        }
        int i18 = 0;
        if (this.f3175h) {
            int i19 = i4 - this.f3180m;
            MDButton[] mDButtonArr = this.f3168a;
            int length = mDButtonArr.length;
            while (i18 < length) {
                MDButton mDButton = mDButtonArr[i18];
                int i20 = i19;
                if (m7237c(mDButton)) {
                    mDButton.layout(i, i19 - mDButton.getMeasuredHeight(), i3, i19);
                    i20 = i19 - mDButton.getMeasuredHeight();
                }
                i18++;
                i19 = i20;
            }
        } else {
            int i21 = i4;
            if (this.f3176i) {
                i21 = i4 - this.f3180m;
            }
            int i22 = i21 - this.f3181n;
            int i23 = this.f3183p;
            if (m7237c(this.f3168a[2])) {
                if (this.f3182o == enumC2526d2) {
                    i17 = i + i23;
                    i16 = this.f3168a[2].getMeasuredWidth() + i17;
                    i6 = -1;
                } else {
                    i16 = i3 - i23;
                    i17 = i16 - this.f3168a[2].getMeasuredWidth();
                    i6 = i17;
                }
                this.f3168a[2].layout(i17, i22, i16, i21);
                i7 = i23 + this.f3168a[2].getMeasuredWidth();
            } else {
                i6 = -1;
                i7 = i23;
            }
            if (m7237c(this.f3168a[1])) {
                EnumC2526d enumC2526d3 = this.f3182o;
                if (enumC2526d3 == enumC2526d2) {
                    i14 = i7 + i;
                    i15 = this.f3168a[1].getMeasuredWidth() + i14;
                } else if (enumC2526d3 == enumC2526d) {
                    i15 = i3 - i7;
                    i14 = i15 - this.f3168a[1].getMeasuredWidth();
                } else {
                    i14 = this.f3183p + i;
                    i13 = this.f3168a[1].getMeasuredWidth() + i14;
                    i8 = i13;
                    this.f3168a[1].layout(i14, i22, i13, i21);
                }
                i13 = i15;
                i8 = -1;
                this.f3168a[1].layout(i14, i22, i13, i21);
            } else {
                i8 = -1;
            }
            if (m7237c(this.f3168a[0])) {
                EnumC2526d enumC2526d4 = this.f3182o;
                if (enumC2526d4 == enumC2526d2) {
                    i9 = i3 - this.f3183p;
                    i10 = i9 - this.f3168a[0].getMeasuredWidth();
                } else if (enumC2526d4 == enumC2526d) {
                    i10 = this.f3183p + i;
                    i9 = this.f3168a[0].getMeasuredWidth() + i10;
                } else {
                    if (i8 != -1 || i6 == -1) {
                        if (i6 != -1 || i8 == -1) {
                            i11 = i6;
                            if (i6 == -1) {
                                i8 = ((i3 - i) / 2) - (this.f3168a[0].getMeasuredWidth() / 2);
                                i12 = this.f3168a[0].getMeasuredWidth();
                            }
                        } else {
                            i12 = this.f3168a[0].getMeasuredWidth();
                        }
                        i11 = i12 + i8;
                    } else {
                        i8 = i6 - this.f3168a[0].getMeasuredWidth();
                        i11 = i6;
                    }
                    i10 = i8;
                    i9 = i11;
                }
                this.f3168a[0].layout(i10, i22, i9, i21);
            }
        }
        m7236d(this.f3171d, true, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x026a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.afollestad.materialdialogs.internal.MDRootLayout.onMeasure(int, int):void");
    }

    public void setButtonGravity(EnumC2526d enumC2526d) {
        this.f3182o = enumC2526d;
        if (getResources().getConfiguration().getLayoutDirection() == 1) {
            int ordinal = this.f3182o.ordinal();
            if (ordinal == 0) {
                this.f3182o = EnumC2526d.END;
            } else if (ordinal != 2) {
            } else {
                this.f3182o = EnumC2526d.START;
            }
        }
    }

    public void setButtonStackedGravity(EnumC2526d enumC2526d) {
        MDButton[] mDButtonArr;
        for (MDButton mDButton : this.f3168a) {
            if (mDButton != null) {
                mDButton.setStackedGravity(enumC2526d);
            }
        }
    }

    public void setDividerColor(int i) {
        this.f3184q.setColor(i);
        invalidate();
    }

    public void setMaxHeight(int i) {
        this.f3169b = i;
    }

    public void setStackingBehavior(EnumC2534h enumC2534h) {
        this.f3174g = enumC2534h;
        invalidate();
    }
}
