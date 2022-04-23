package p012b.p016b.p026q;

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
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import p012b.p016b.C0574a;
import p012b.p016b.p024p.C0621a;
/* renamed from: b.b.q.y */
/* loaded from: classes-dex2jar.jar:b/b/q/y.class */
public class C0737y extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public Runnable f3561a;

    /* renamed from: b */
    public View$OnClickListenerC0740c f3562b;

    /* renamed from: c */
    public LinearLayoutCompat f3563c;

    /* renamed from: d */
    public Spinner f3564d;

    /* renamed from: e */
    public boolean f3565e;

    /* renamed from: f */
    public int f3566f;

    /* renamed from: g */
    public int f3567g;

    /* renamed from: h */
    public int f3568h;

    /* renamed from: i */
    public int f3569i;

    /* renamed from: b.b.q.y$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/y$a.class */
    public class RunnableC0738a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f3570a;

        public RunnableC0738a(View view) {
            this.f3570a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0737y.this.smoothScrollTo(this.f3570a.getLeft() - ((C0737y.this.getWidth() - this.f3570a.getWidth()) / 2), 0);
            C0737y.this.f3561a = null;
        }
    }

    /* renamed from: b.b.q.y$b */
    /* loaded from: classes-dex2jar.jar:b/b/q/y$b.class */
    public class C0739b extends BaseAdapter {
        public C0739b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return C0737y.this.f3563c.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((C0741d) C0737y.this.f3563c.getChildAt(i)).m36169a();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = C0737y.this.m36173a((ActionBar.AbstractC0070b) getItem(i), true);
            } else {
                ((C0741d) view).m36168a((ActionBar.AbstractC0070b) getItem(i));
            }
            return view;
        }
    }

    /* renamed from: b.b.q.y$c */
    /* loaded from: classes-dex2jar.jar:b/b/q/y$c.class */
    public class View$OnClickListenerC0740c implements View.OnClickListener {
        public View$OnClickListenerC0740c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((C0741d) view).m36169a().m39212e();
            int childCount = C0737y.this.f3563c.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = C0737y.this.f3563c.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* renamed from: b.b.q.y$d */
    /* loaded from: classes-dex2jar.jar:b/b/q/y$d.class */
    public class C0741d extends LinearLayout {

        /* renamed from: a */
        public final int[] f3574a;

        /* renamed from: b */
        public ActionBar.AbstractC0070b f3575b;

        /* renamed from: c */
        public TextView f3576c;

        /* renamed from: d */
        public ImageView f3577d;

        /* renamed from: e */
        public View f3578e;

        public C0741d(Context context, ActionBar.AbstractC0070b bVar, boolean z) {
            super(context, null, C0574a.actionBarTabStyle);
            int[] iArr = {16842964};
            this.f3574a = iArr;
            this.f3575b = bVar;
            C0691f0 a = C0691f0.m36414a(context, null, iArr, C0574a.actionBarTabStyle, 0);
            if (a.m36402g(0)) {
                setBackgroundDrawable(a.m36412b(0));
            }
            a.m36413b();
            if (z) {
                setGravity(8388627);
            }
            m36167b();
        }

        /* renamed from: a */
        public ActionBar.AbstractC0070b m36169a() {
            return this.f3575b;
        }

        /* renamed from: a */
        public void m36168a(ActionBar.AbstractC0070b bVar) {
            this.f3575b = bVar;
            m36167b();
        }

        /* renamed from: b */
        public void m36167b() {
            ActionBar.AbstractC0070b bVar = this.f3575b;
            View b = bVar.m39215b();
            CharSequence charSequence = null;
            if (b != null) {
                ViewParent parent = b.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(b);
                    }
                    addView(b);
                }
                this.f3578e = b;
                TextView textView = this.f3576c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f3577d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f3577d.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f3578e;
            if (view != null) {
                removeView(view);
                this.f3578e = null;
            }
            Drawable c = bVar.m39214c();
            CharSequence d = bVar.m39213d();
            if (c != null) {
                if (this.f3577d == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f3577d = appCompatImageView;
                }
                this.f3577d.setImageDrawable(c);
                this.f3577d.setVisibility(0);
            } else {
                ImageView imageView2 = this.f3577d;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f3577d.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(d);
            if (z) {
                if (this.f3576c == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, C0574a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f3576c = appCompatTextView;
                }
                this.f3576c.setText(d);
                this.f3576c.setVisibility(0);
            } else {
                TextView textView2 = this.f3576c;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f3576c.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f3577d;
            if (imageView3 != null) {
                imageView3.setContentDescription(bVar.m39216a());
            }
            if (!z) {
                charSequence = bVar.m39216a();
            }
            C0697h0.m36376a(this, charSequence);
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
            if (C0737y.this.f3566f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = C0737y.this.f3566f;
                if (measuredWidth > i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    static {
        new DecelerateInterpolator();
    }

    /* renamed from: a */
    public final Spinner m36175a() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, C0574a.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    /* renamed from: a */
    public C0741d m36173a(ActionBar.AbstractC0070b bVar, boolean z) {
        C0741d dVar = new C0741d(getContext(), bVar, z);
        if (z) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f3568h));
        } else {
            dVar.setFocusable(true);
            if (this.f3562b == null) {
                this.f3562b = new View$OnClickListenerC0740c();
            }
            dVar.setOnClickListener(this.f3562b);
        }
        return dVar;
    }

    /* renamed from: a */
    public void m36174a(int i) {
        View childAt = this.f3563c.getChildAt(i);
        Runnable runnable = this.f3561a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        RunnableC0738a aVar = new RunnableC0738a(childAt);
        this.f3561a = aVar;
        post(aVar);
    }

    /* renamed from: b */
    public final boolean m36172b() {
        Spinner spinner = this.f3564d;
        return spinner != null && spinner.getParent() == this;
    }

    /* renamed from: c */
    public final void m36171c() {
        if (!m36172b()) {
            if (this.f3564d == null) {
                this.f3564d = m36175a();
            }
            removeView(this.f3563c);
            addView(this.f3564d, new ViewGroup.LayoutParams(-2, -1));
            if (this.f3564d.getAdapter() == null) {
                this.f3564d.setAdapter((SpinnerAdapter) new C0739b());
            }
            Runnable runnable = this.f3561a;
            if (runnable != null) {
                removeCallbacks(runnable);
                this.f3561a = null;
            }
            this.f3564d.setSelection(this.f3569i);
        }
    }

    /* renamed from: d */
    public final boolean m36170d() {
        if (!m36172b()) {
            return false;
        }
        removeView(this.f3564d);
        addView(this.f3563c, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f3564d.getSelectedItemPosition());
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f3561a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0621a a = C0621a.m36710a(getContext());
        setContentHeight(a.m36706e());
        this.f3567g = a.m36707d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f3561a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C0741d) view).m36169a().m39212e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = true;
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f3563c.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f3566f = -1;
        } else {
            if (childCount > 2) {
                this.f3566f = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f3566f = View.MeasureSpec.getSize(i) / 2;
            }
            this.f3566f = Math.min(this.f3566f, this.f3567g);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f3568h, 1073741824);
        if (z2 || !this.f3565e) {
            z = false;
        }
        if (z) {
            this.f3563c.measure(0, makeMeasureSpec);
            if (this.f3563c.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m36171c();
            } else {
                m36170d();
            }
        } else {
            m36170d();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (z2 && measuredWidth != measuredWidth2) {
            setTabSelected(this.f3569i);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f3565e = z;
    }

    public void setContentHeight(int i) {
        this.f3568h = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f3569i = i;
        int childCount = this.f3563c.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f3563c.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                m36174a(i);
            }
            i2++;
        }
        Spinner spinner = this.f3564d;
        if (spinner != null && i >= 0) {
            spinner.setSelection(i);
        }
    }
}
