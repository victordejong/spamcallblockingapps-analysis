package com.kedlin.cca.p007ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.kedlin.cca.ui.HelpOverlayViewContainer */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayViewContainer.class */
public class HelpOverlayViewContainer extends ViewPager {

    /* renamed from: l0 */
    public ArrayList<HelpOverlayView> f4037l0;

    /* renamed from: n0 */
    public Fragment f4039n0;

    /* renamed from: m0 */
    public int f4038m0 = 0;

    /* renamed from: o0 */
    public int f4040o0 = 0;

    /* renamed from: com.kedlin.cca.ui.HelpOverlayViewContainer$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayViewContainer$a.class */
    public class C0691a extends ViewPager.l {
        public C0691a() {
            HelpOverlayViewContainer.this = r4;
        }

        public void onPageScrollStateChanged(int i) {
            HelpOverlayViewContainer.super.onPageScrollStateChanged(i);
        }

        public void onPageSelected(int i) {
            Runnable runnable;
            Runnable runnable2;
            if (HelpOverlayViewContainer.this.f4037l0.size() <= i) {
                return;
            }
            HelpOverlayView helpOverlayView = (HelpOverlayView) HelpOverlayViewContainer.this.f4037l0.get(HelpOverlayViewContainer.this.f4038m0);
            if (helpOverlayView != null && (runnable2 = helpOverlayView.f3990b) != null) {
                runnable2.run();
            }
            HelpOverlayView helpOverlayView2 = (HelpOverlayView) HelpOverlayViewContainer.this.f4037l0.get(i);
            if (helpOverlayView2 != null && (runnable = helpOverlayView2.f3989a) != null) {
                runnable.run();
            }
            int i2 = HelpOverlayViewContainer.this.f4038m0;
            HelpOverlayViewContainer.this.f4038m0 = i;
            HelpOverlayViewContainer.this.setActivePageIndicator(i2);
        }
    }

    /* renamed from: com.kedlin.cca.ui.HelpOverlayViewContainer$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayViewContainer$b.class */
    public class C0692b extends g40 {
        public C0692b() {
            HelpOverlayViewContainer.this = r4;
        }

        public /* synthetic */ C0692b(HelpOverlayViewContainer helpOverlayViewContainer, C0691a c0691a) {
            this();
        }

        /* renamed from: b */
        public void m4150b(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        /* renamed from: e */
        public int m4149e() {
            return HelpOverlayViewContainer.this.f4037l0.size();
        }

        /* renamed from: j */
        public Object m4148j(ViewGroup viewGroup, int i) {
            View view = (View) HelpOverlayViewContainer.this.f4037l0.get(i);
            viewGroup.addView(view);
            return view;
        }

        /* renamed from: k */
        public boolean m4147k(View view, Object obj) {
            return view == obj;
        }
    }

    public HelpOverlayViewContainer(Context context) {
        super(context);
        m4152Z();
    }

    public HelpOverlayViewContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4152Z();
    }

    public void setActivePageIndicator(int i) {
        ViewGroup viewGroup;
        if ((getAdapter() != null && getAdapter().e() < 2) || (viewGroup = (ViewGroup) getRootView().findViewById(2131362551)) == null || i == this.f4038m0) {
            return;
        }
        viewGroup.getChildAt(i).setBackgroundColor(getResources().getColor(2131100339));
        viewGroup.getChildAt(this.f4038m0).setBackgroundColor(getResources().getColor(2131100176));
    }

    /* renamed from: W */
    public HelpOverlayView m4155W() {
        HelpOverlayView helpOverlayView = new HelpOverlayView(getContext(), this);
        this.f4037l0.size();
        this.f4037l0.add(helpOverlayView);
        return helpOverlayView;
    }

    /* renamed from: X */
    public final void m4154X() {
        ViewGroup viewGroup;
        Resources resources;
        int i;
        if ((getAdapter() == null || getAdapter().e() >= 2) && (viewGroup = (ViewGroup) getRootView().findViewById(2131362552)) != null) {
            ((LinearLayout) viewGroup).setGravity(17);
            DrawerLayout.LayoutParams layoutParams = new DrawerLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, oe1.m1093c(HighLevelEncoder.LATCH_TO_C40), 0, 0);
            viewGroup.setLayoutParams(layoutParams);
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(2131362551);
            int e = getAdapter().e();
            for (int i2 = 0; i2 < e; i2++) {
                View view = new View(getContext());
                int m1093c = oe1.m1093c(8);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(m1093c, m1093c);
                int i3 = m1093c / 2;
                layoutParams2.setMargins(i3, 0, i3, 0);
                view.setLayoutParams(layoutParams2);
                if (i2 == this.f4038m0) {
                    resources = getResources();
                    i = 2131100176;
                } else {
                    resources = getResources();
                    i = 2131100339;
                }
                view.setBackgroundColor(resources.getColor(i));
                viewGroup2.addView(view);
            }
            ((TextView) viewGroup.findViewById(2131363268)).setText(2131821483);
            viewGroup.setVisibility(0);
        }
    }

    /* renamed from: Y */
    public void m4153Y() {
        setAdapter(null);
        Iterator<HelpOverlayView> it = this.f4037l0.iterator();
        while (it.hasNext()) {
            it.next().m4188B();
        }
        this.f4037l0.clear();
        this.f4038m0 = 0;
        ((ViewGroup) getRootView().findViewById(2131362551)).removeAllViews();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.kedlin.cca.ui.HelpOverlayViewContainer$a, androidx.viewpager.widget.ViewPager$i] */
    /* renamed from: Z */
    public void m4152Z() {
        this.f4037l0 = new ArrayList<>();
        setOnPageChangeListener(new C0691a());
        setAdapter(new C0692b(this, null));
        setBackgroundColor(0);
    }

    /* renamed from: a0 */
    public void m4151a0(View view) {
        setVisibility(8);
        qb1 qb1Var = this.f4039n0;
        if (qb1Var != null) {
            if (qb1Var instanceof qb1) {
                qb1Var.m832t();
            }
            rb1 rb1Var = this.f4039n0;
            if (!(rb1Var instanceof rb1)) {
                return;
            }
            rb1Var.m640B();
        }
    }

    public int getHelpCode() {
        return this.f4040o0;
    }

    public void setCallingFragment(Fragment fragment) {
        this.f4039n0 = fragment;
    }

    public void setHelpCode(int i) {
        this.f4040o0 = i;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (getAdapter() == null) {
            setAdapter(new C0692b(this, null));
        }
        if (i == 0) {
            setCurrentItem(0);
            m4154X();
        } else {
            setHelpCode(0);
            ((ViewGroup) getRootView().findViewById(2131362552)).setVisibility(8);
        }
        View findViewById = getRootView().findViewById(2131363419);
        int paddingLeft = getPaddingLeft();
        int i2 = 0;
        if (findViewById != null) {
            i2 = 0;
            if (findViewById.getVisibility() == 0) {
                i2 = findViewById.getHeight();
            }
        }
        setPadding(paddingLeft, i2, getPaddingRight(), getPaddingBottom());
        super.setVisibility(i);
    }
}
