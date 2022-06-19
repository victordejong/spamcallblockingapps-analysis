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
import androidx.appcompat.C0083a;
import androidx.appcompat.app.AbstractC0110a;
import androidx.appcompat.view.C0171a;
import androidx.appcompat.widget.LinearLayoutCompat;
/* renamed from: androidx.appcompat.widget.ai */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai.class */
public class C0305ai extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: j */
    private static final Interpolator f1279j = new DecelerateInterpolator();

    /* renamed from: a */
    Runnable f1280a;

    /* renamed from: b */
    LinearLayoutCompat f1281b;

    /* renamed from: c */
    int f1282c;

    /* renamed from: d */
    int f1283d;

    /* renamed from: e */
    private View$OnClickListenerC0308b f1284e;

    /* renamed from: f */
    private Spinner f1285f;

    /* renamed from: g */
    private boolean f1286g;

    /* renamed from: h */
    private int f1287h;

    /* renamed from: i */
    private int f1288i;

    /* renamed from: androidx.appcompat.widget.ai$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$a.class */
    public class C0307a extends BaseAdapter {
        C0307a() {
            C0305ai.this = r4;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return C0305ai.this.f1281b.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((C0309c) C0305ai.this.f1281b.getChildAt(i)).m21470b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = C0305ai.this.m21476a((AbstractC0110a.AbstractC0113c) getItem(i), true);
            } else {
                ((C0309c) view).m21471a((AbstractC0110a.AbstractC0113c) getItem(i));
            }
            return view;
        }
    }

    /* renamed from: androidx.appcompat.widget.ai$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$b.class */
    public class View$OnClickListenerC0308b implements View.OnClickListener {
        View$OnClickListenerC0308b() {
            C0305ai.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((C0309c) view).m21470b().m22236d();
            int childCount = C0305ai.this.f1281b.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = C0305ai.this.f1281b.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ai$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$c.class */
    public class C0309c extends LinearLayout {

        /* renamed from: b */
        private final int[] f1294b = {16842964};

        /* renamed from: c */
        private AbstractC0110a.AbstractC0113c f1295c;

        /* renamed from: d */
        private TextView f1296d;

        /* renamed from: e */
        private ImageView f1297e;

        /* renamed from: f */
        private View f1298f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0309c(Context context, AbstractC0110a.AbstractC0113c abstractC0113c, boolean z) {
            super(context, null, C0083a.C0084a.actionBarTabStyle);
            C0305ai.this = r7;
            this.f1295c = abstractC0113c;
            C0317ap m21433a = C0317ap.m21433a(context, null, this.f1294b, C0083a.C0084a.actionBarTabStyle, 0);
            if (m21433a.m21421g(0)) {
                setBackgroundDrawable(m21433a.m21440a(0));
            }
            m21433a.m21441a();
            if (z) {
                setGravity(8388627);
            }
            m21472a();
        }

        /* renamed from: a */
        public void m21472a() {
            AbstractC0110a.AbstractC0113c abstractC0113c = this.f1295c;
            View m22237c = abstractC0113c.m22237c();
            if (m22237c != null) {
                ViewParent parent = m22237c.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m22237c);
                    }
                    addView(m22237c);
                }
                this.f1298f = m22237c;
                if (this.f1296d != null) {
                    this.f1296d.setVisibility(8);
                }
                if (this.f1297e == null) {
                    return;
                }
                this.f1297e.setVisibility(8);
                this.f1297e.setImageDrawable(null);
                return;
            }
            if (this.f1298f != null) {
                removeView(this.f1298f);
                this.f1298f = null;
            }
            Drawable m22239a = abstractC0113c.m22239a();
            CharSequence m22238b = abstractC0113c.m22238b();
            if (m22239a != null) {
                if (this.f1297e == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1297e = appCompatImageView;
                }
                this.f1297e.setImageDrawable(m22239a);
                this.f1297e.setVisibility(0);
            } else if (this.f1297e != null) {
                this.f1297e.setVisibility(8);
                this.f1297e.setImageDrawable(null);
            }
            boolean z = !TextUtils.isEmpty(m22238b);
            if (z) {
                if (this.f1296d == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, C0083a.C0084a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1296d = appCompatTextView;
                }
                this.f1296d.setText(m22238b);
                this.f1296d.setVisibility(0);
            } else if (this.f1296d != null) {
                this.f1296d.setVisibility(8);
                this.f1296d.setText((CharSequence) null);
            }
            if (this.f1297e != null) {
                this.f1297e.setContentDescription(abstractC0113c.m22235e());
            }
            C0321ar.m21406a(this, z ? null : abstractC0113c.m22235e());
        }

        /* renamed from: a */
        public void m21471a(AbstractC0110a.AbstractC0113c abstractC0113c) {
            this.f1295c = abstractC0113c;
            m21472a();
        }

        /* renamed from: b */
        public AbstractC0110a.AbstractC0113c m21470b() {
            return this.f1295c;
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
            if (C0305ai.this.f1282c <= 0 || getMeasuredWidth() <= C0305ai.this.f1282c) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(C0305ai.this.f1282c, 1073741824), i2);
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
    private boolean m21478a() {
        return this.f1285f != null && this.f1285f.getParent() == this;
    }

    /* renamed from: b */
    private void m21475b() {
        if (m21478a()) {
            return;
        }
        if (this.f1285f == null) {
            this.f1285f = m21473d();
        }
        removeView(this.f1281b);
        addView(this.f1285f, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1285f.getAdapter() == null) {
            this.f1285f.setAdapter((SpinnerAdapter) new C0307a());
        }
        if (this.f1280a != null) {
            removeCallbacks(this.f1280a);
            this.f1280a = null;
        }
        this.f1285f.setSelection(this.f1288i);
    }

    /* renamed from: c */
    private boolean m21474c() {
        if (!m21478a()) {
            return false;
        }
        removeView(this.f1285f);
        addView(this.f1281b, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1285f.getSelectedItemPosition());
        return false;
    }

    /* renamed from: d */
    private Spinner m21473d() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, C0083a.C0084a.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.C0250a(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    /* renamed from: a */
    C0309c m21476a(AbstractC0110a.AbstractC0113c abstractC0113c, boolean z) {
        C0309c c0309c = new C0309c(getContext(), abstractC0113c, z);
        if (z) {
            c0309c.setBackgroundDrawable(null);
            c0309c.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1287h));
        } else {
            c0309c.setFocusable(true);
            if (this.f1284e == null) {
                this.f1284e = new View$OnClickListenerC0308b();
            }
            c0309c.setOnClickListener(this.f1284e);
        }
        return c0309c;
    }

    /* renamed from: a */
    public void m21477a(int i) {
        final View childAt = this.f1281b.getChildAt(i);
        if (this.f1280a != null) {
            removeCallbacks(this.f1280a);
        }
        this.f1280a = new Runnable() { // from class: androidx.appcompat.widget.ai.1
            @Override // java.lang.Runnable
            public void run() {
                C0305ai.this.smoothScrollTo(childAt.getLeft() - ((C0305ai.this.getWidth() - childAt.getWidth()) / 2), 0);
                C0305ai.this.f1280a = null;
            }
        };
        post(this.f1280a);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1280a != null) {
            post(this.f1280a);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0171a m21993a = C0171a.m21993a(getContext());
        setContentHeight(m21993a.m21989e());
        this.f1283d = m21993a.m21987g();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1280a != null) {
            removeCallbacks(this.f1280a);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C0309c) view).m21470b().m22236d();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z = true;
        int mode = View.MeasureSpec.getMode(i);
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f1281b.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1282c = -1;
        } else {
            if (childCount > 2) {
                this.f1282c = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f1282c = View.MeasureSpec.getSize(i) / 2;
            }
            this.f1282c = Math.min(this.f1282c, this.f1283d);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1287h, 1073741824);
        if (z2 || !this.f1286g) {
            z = false;
        }
        if (z) {
            this.f1281b.measure(0, makeMeasureSpec);
            if (this.f1281b.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m21475b();
            } else {
                m21474c();
            }
        } else {
            m21474c();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z2 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1288i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f1286g = z;
    }

    public void setContentHeight(int i) {
        this.f1287h = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f1288i = i;
        int childCount = this.f1281b.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f1281b.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                m21477a(i);
            }
            i2++;
        }
        if (this.f1285f == null || i < 0) {
            return;
        }
        this.f1285f.setSelection(i);
    }
}
