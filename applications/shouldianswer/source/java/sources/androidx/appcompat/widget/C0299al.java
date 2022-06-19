package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.C0051a;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.view.C0154a;
import androidx.appcompat.widget.C0277ae;
/* renamed from: androidx.appcompat.widget.al */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/al.class */
public class C0299al extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: j */
    private static final Interpolator f1222j = new DecelerateInterpolator();

    /* renamed from: a */
    Runnable f1223a;

    /* renamed from: b */
    C0277ae f1224b;

    /* renamed from: c */
    int f1225c;

    /* renamed from: d */
    int f1226d;

    /* renamed from: e */
    private View$OnClickListenerC0302b f1227e;

    /* renamed from: f */
    private Spinner f1228f;

    /* renamed from: g */
    private boolean f1229g;

    /* renamed from: h */
    private int f1230h;

    /* renamed from: i */
    private int f1231i;

    /* renamed from: androidx.appcompat.widget.al$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/al$a.class */
    public class C0301a extends BaseAdapter {
        C0301a() {
            C0299al.this = r4;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return C0299al.this.f1224b.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((C0303c) C0299al.this.f1224b.getChildAt(i)).m7193b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = C0299al.this.m7199a((AbstractC0078a.AbstractC0081c) getItem(i), true);
            } else {
                ((C0303c) view).m7194a((AbstractC0078a.AbstractC0081c) getItem(i));
            }
            return view;
        }
    }

    /* renamed from: androidx.appcompat.widget.al$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/al$b.class */
    public class View$OnClickListenerC0302b implements View.OnClickListener {
        View$OnClickListenerC0302b() {
            C0299al.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((C0303c) view).m7193b().m7944d();
            int childCount = C0299al.this.f1224b.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = C0299al.this.f1224b.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.al$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/al$c.class */
    public class C0303c extends LinearLayout {

        /* renamed from: b */
        private final int[] f1237b = {16842964};

        /* renamed from: c */
        private AbstractC0078a.AbstractC0081c f1238c;

        /* renamed from: d */
        private TextView f1239d;

        /* renamed from: e */
        private ImageView f1240e;

        /* renamed from: f */
        private View f1241f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0303c(Context context, AbstractC0078a.AbstractC0081c abstractC0081c, boolean z) {
            super(context, null, C0051a.C0052a.actionBarTabStyle);
            C0299al.this = r7;
            this.f1238c = abstractC0081c;
            C0311as m7156a = C0311as.m7156a(context, null, this.f1237b, C0051a.C0052a.actionBarTabStyle, 0);
            if (m7156a.m7144g(0)) {
                setBackgroundDrawable(m7156a.m7163a(0));
            }
            m7156a.m7164a();
            if (z) {
                setGravity(8388627);
            }
            m7195a();
        }

        /* renamed from: a */
        public void m7195a() {
            AbstractC0078a.AbstractC0081c abstractC0081c = this.f1238c;
            View m7945c = abstractC0081c.m7945c();
            CharSequence charSequence = null;
            if (m7945c != null) {
                ViewParent parent = m7945c.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m7945c);
                    }
                    addView(m7945c);
                }
                this.f1241f = m7945c;
                TextView textView = this.f1239d;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1240e;
                if (imageView == null) {
                    return;
                }
                imageView.setVisibility(8);
                this.f1240e.setImageDrawable(null);
                return;
            }
            View view = this.f1241f;
            if (view != null) {
                removeView(view);
                this.f1241f = null;
            }
            Drawable m7947a = abstractC0081c.m7947a();
            CharSequence m7946b = abstractC0081c.m7946b();
            if (m7947a != null) {
                if (this.f1240e == null) {
                    C0340m c0340m = new C0340m(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    c0340m.setLayoutParams(layoutParams);
                    addView(c0340m, 0);
                    this.f1240e = c0340m;
                }
                this.f1240e.setImageDrawable(m7947a);
                this.f1240e.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1240e;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1240e.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(m7946b);
            if (z) {
                if (this.f1239d == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, C0051a.C0052a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1239d = appCompatTextView;
                }
                this.f1239d.setText(m7946b);
                this.f1239d.setVisibility(0);
            } else {
                TextView textView2 = this.f1239d;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1239d.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f1240e;
            if (imageView3 != null) {
                imageView3.setContentDescription(abstractC0081c.m7943e());
            }
            if (!z) {
                charSequence = abstractC0081c.m7943e();
            }
            C0315au.m7132a(this, charSequence);
        }

        /* renamed from: a */
        public void m7194a(AbstractC0078a.AbstractC0081c abstractC0081c) {
            this.f1238c = abstractC0081c;
            m7195a();
        }

        /* renamed from: b */
        public AbstractC0078a.AbstractC0081c m7193b() {
            return this.f1238c;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (C0299al.this.f1225c <= 0 || getMeasuredWidth() <= C0299al.this.f1225c) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(C0299al.this.f1225c, 1073741824), i2);
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (!z2 || !z) {
                return;
            }
            sendAccessibilityEvent(4);
        }
    }

    /* renamed from: a */
    private boolean m7201a() {
        Spinner spinner = this.f1228f;
        return spinner != null && spinner.getParent() == this;
    }

    /* renamed from: b */
    private void m7198b() {
        if (m7201a()) {
            return;
        }
        if (this.f1228f == null) {
            this.f1228f = m7196d();
        }
        removeView(this.f1224b);
        addView(this.f1228f, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1228f.getAdapter() == null) {
            this.f1228f.setAdapter((SpinnerAdapter) new C0301a());
        }
        Runnable runnable = this.f1223a;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1223a = null;
        }
        this.f1228f.setSelection(this.f1231i);
    }

    /* renamed from: c */
    private boolean m7197c() {
        if (!m7201a()) {
            return false;
        }
        removeView(this.f1228f);
        addView(this.f1224b, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1228f.getSelectedItemPosition());
        return false;
    }

    /* renamed from: d */
    private Spinner m7196d() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, C0051a.C0052a.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new C0277ae.C0278a(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    /* renamed from: a */
    C0303c m7199a(AbstractC0078a.AbstractC0081c abstractC0081c, boolean z) {
        C0303c c0303c = new C0303c(getContext(), abstractC0081c, z);
        if (z) {
            c0303c.setBackgroundDrawable(null);
            c0303c.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1230h));
        } else {
            c0303c.setFocusable(true);
            if (this.f1227e == null) {
                this.f1227e = new View$OnClickListenerC0302b();
            }
            c0303c.setOnClickListener(this.f1227e);
        }
        return c0303c;
    }

    /* renamed from: a */
    public void m7200a(int i) {
        final View childAt = this.f1224b.getChildAt(i);
        Runnable runnable = this.f1223a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        this.f1223a = new Runnable() { // from class: androidx.appcompat.widget.al.1
            @Override // java.lang.Runnable
            public void run() {
                C0299al.this.smoothScrollTo(childAt.getLeft() - ((C0299al.this.getWidth() - childAt.getWidth()) / 2), 0);
                C0299al.this.f1223a = null;
            }
        };
        post(this.f1223a);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1223a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0154a m7662a = C0154a.m7662a(getContext());
        setContentHeight(m7662a.m7658e());
        this.f1226d = m7662a.m7656g();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1223a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C0303c) view).m7193b().m7944d();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = true;
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f1224b.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1225c = -1;
        } else {
            if (childCount > 2) {
                this.f1225c = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f1225c = View.MeasureSpec.getSize(i) / 2;
            }
            this.f1225c = Math.min(this.f1225c, this.f1226d);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1230h, 1073741824);
        if (z2 || !this.f1229g) {
            z = false;
        }
        if (z) {
            this.f1224b.measure(0, makeMeasureSpec);
            if (this.f1224b.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m7198b();
            } else {
                m7197c();
            }
        } else {
            m7197c();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z2 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1231i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f1229g = z;
    }

    public void setContentHeight(int i) {
        this.f1230h = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f1231i = i;
        int childCount = this.f1224b.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f1224b.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                m7200a(i);
            }
            i2++;
        }
        Spinner spinner = this.f1228f;
        if (spinner == null || i < 0) {
            return;
        }
        spinner.setSelection(i);
    }
}
