package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import gogolook.callgogolook2.R$drawable;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: gogolook.callgogolook2.messaging.ui.ViewPagerTabs */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ViewPagerTabs.class */
public class ViewPagerTabs extends HorizontalScrollView implements ViewPager.OnPageChangeListener {

    /* renamed from: i */
    public static final int[] f11554i = {16842901, 16842903, 16842904, 16843660};

    /* renamed from: a */
    public ViewPager f11555a;

    /* renamed from: b */
    public ViewPagerTabStrip f11556b;

    /* renamed from: c */
    public final int f11557c;

    /* renamed from: d */
    public final ColorStateList f11558d;

    /* renamed from: e */
    public final int f11559e;

    /* renamed from: f */
    public final boolean f11560f;

    /* renamed from: g */
    public int f11561g;

    /* renamed from: h */
    public int f11562h;

    /* renamed from: gogolook.callgogolook2.messaging.ui.ViewPagerTabs$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ViewPagerTabs$a.class */
    public class C4706a extends ViewOutlineProvider {
        public C4706a(ViewPagerTabs viewPagerTabs) {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRect(0, 0, view.getWidth(), view.getHeight());
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.ViewPagerTabs$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ViewPagerTabs$b.class */
    public class View$OnClickListenerC4707b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f11563a;

        public View$OnClickListenerC4707b(int i) {
            this.f11563a = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewPagerTabs viewPagerTabs = ViewPagerTabs.this;
            viewPagerTabs.f11555a.setCurrentItem(viewPagerTabs.m27300a(this.f11563a));
        }
    }

    public ViewPagerTabs(Context context) {
        this(context, null);
    }

    public ViewPagerTabs(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewPagerTabs(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11561g = -1;
        setFillViewport(true);
        this.f11562h = (int) (getResources().getDisplayMetrics().density * 10.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f11554i);
        this.f11559e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f11557c = obtainStyledAttributes.getInt(1, 0);
        this.f11558d = obtainStyledAttributes.getColorStateList(2);
        this.f11560f = obtainStyledAttributes.getBoolean(3, false);
        this.f11556b = new ViewPagerTabStrip(context);
        addView(this.f11556b, new FrameLayout.LayoutParams(-2, -1));
        obtainStyledAttributes.recycle();
        if (C14017g4.m2805s()) {
            setOutlineProvider(new C4706a(this));
        }
    }

    /* renamed from: a */
    public final int m27300a(int i) {
        return AbstractC11516a.m9413n().mo9412a().getResources().getConfiguration().getLayoutDirection() == 1 ? (this.f11556b.getChildCount() - 1) - i : i;
    }

    /* renamed from: a */
    public final void m27299a(PagerAdapter pagerAdapter) {
        this.f11556b.removeAllViews();
        int count = pagerAdapter.getCount();
        for (int i = 0; i < count; i++) {
            m27296a(pagerAdapter.getPageTitle(i), i);
        }
    }

    /* renamed from: a */
    public void m27298a(ViewPager viewPager) {
        this.f11555a = viewPager;
        m27299a(this.f11555a.getAdapter());
    }

    /* renamed from: a */
    public final void m27296a(CharSequence charSequence, int i) {
        TextView textView = new TextView(getContext());
        textView.setText(charSequence);
        textView.setBackgroundResource(R$drawable.contact_picker_tab_background_selector);
        textView.setGravity(17);
        textView.setOnClickListener(new View$OnClickListenerC4707b(i));
        if (this.f11557c > 0) {
            textView.setTypeface(textView.getTypeface(), this.f11557c);
        }
        int i2 = this.f11559e;
        if (i2 > 0) {
            textView.setTextSize(0, i2);
        }
        ColorStateList colorStateList = this.f11558d;
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
        textView.setAllCaps(this.f11560f);
        int i3 = this.f11562h;
        textView.setPadding(i3, 0, i3, 0);
        this.f11556b.addView(textView, new LinearLayout.LayoutParams(-2, -1, 1.0f));
        if (i == 0) {
            this.f11561g = 0;
            textView.setSelected(true);
            textView.setTypeface(Typeface.create("sans-serif-medium", 0));
            return;
        }
        textView.setTypeface(Typeface.create("sans-serif-regular", 0));
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        int a = m27300a(i);
        int childCount = this.f11556b.getChildCount();
        if (childCount != 0 && a >= 0 && a < childCount) {
            this.f11556b.m27301a(a, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        int a = m27300a(i);
        int childCount = this.f11556b.getChildCount();
        if (childCount != 0 && a >= 0 && a < childCount) {
            int i2 = this.f11561g;
            if (i2 >= 0 && i2 < childCount) {
                this.f11556b.getChildAt(i2).setSelected(false);
                ((TextView) this.f11556b.getChildAt(this.f11561g)).setTypeface(Typeface.create("sans-serif-regular", 0));
            }
            View childAt = this.f11556b.getChildAt(a);
            ((TextView) childAt).setTypeface(Typeface.create("sans-serif-medium", 0));
            childAt.setSelected(true);
            smoothScrollTo(childAt.getLeft() - ((getWidth() - childAt.getWidth()) / 2), 0);
            this.f11561g = a;
        }
    }
}
