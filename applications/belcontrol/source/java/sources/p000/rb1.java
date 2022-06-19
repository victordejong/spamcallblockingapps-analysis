package p000;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListView;
import com.flexaspect.android.everycallcontrol.ui.fragments.support.SupportFragment;
import com.kedlin.cca.core.service.BackgroundWorker;
import com.kedlin.cca.p007ui.HelpOverlayViewContainer;
import p000.sb1;
/* renamed from: rb1 */
/* loaded from: classes3-dex2jar.jar:rb1.class */
public class rb1 extends yd implements sb1.AbstractC1652b, ua1 {

    /* renamed from: r */
    public static final String f8064r = qb1.class.getName() + ".EXTRA_HELP_OVERLAY_STATE";

    /* renamed from: o */
    public sb1 f8066o;

    /* renamed from: p */
    public Activity f8067p;

    /* renamed from: n */
    public String f8065n = null;

    /* renamed from: q */
    public Handler f8068q = new Handler();

    /* renamed from: rb1$a */
    /* loaded from: classes3-dex2jar.jar:rb1$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC1649a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ int f8069a;

        public ViewTreeObserver$OnGlobalLayoutListenerC1649a(int i) {
            rb1.this = r4;
            this.f8069a = i;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 16) {
                rb1.this.l().getViewTreeObserver().removeGlobalOnLayoutListener(this);
            } else {
                rb1.this.l().getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            rb1.this.m632t(this.f8069a);
        }
    }

    /* renamed from: A */
    public boolean m641A() {
        return true;
    }

    /* renamed from: B */
    public void m640B() {
    }

    /* renamed from: C */
    public void m639C() {
    }

    /* renamed from: D */
    public void m638D(sb1 sb1Var) {
    }

    /* renamed from: E */
    public void m637E(Class<?> cls, Bundle bundle) {
        rb1.super.setArguments(bundle);
    }

    @Override // p000.sb1.AbstractC1652b
    /* renamed from: a */
    public void mo584a(sb1.EnumC1653c enumC1653c) {
        this.f8067p.onBackPressed();
    }

    @Override // p000.sb1.AbstractC1652b
    /* renamed from: b */
    public void mo583b(Object obj, boolean z) {
    }

    @Override // p000.sb1.AbstractC1652b
    /* renamed from: c */
    public void mo582c(sb1.EnumC1654d enumC1654d, boolean z) {
    }

    @Override // p000.ua1
    /* renamed from: f */
    public boolean mo401f(ta1 ta1Var) {
        return false;
    }

    @Override // p000.sb1.AbstractC1652b
    /* renamed from: g */
    public void mo581g(sb1.EnumC1653c enumC1653c) {
    }

    @Override // p000.ua1
    /* renamed from: h */
    public boolean mo400h(ta1 ta1Var) {
        return false;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        rb1.super.onActivityResult(i, i2, intent);
        BackgroundWorker.m4374b(getActivity(), i, i2, intent);
    }

    public void onAttach(Activity activity) {
        rb1.super.onAttach(activity);
        this.f8067p = activity;
    }

    public void onPause() {
        rb1.super.onPause();
        onSaveInstanceState(new Bundle());
        oe1.m1053w(this.f8067p, getView());
    }

    public void onSaveInstanceState(Bundle bundle) {
        rb1.super.onSaveInstanceState(bundle);
        HelpOverlayViewContainer findViewById = (getView() == null || getView().getRootView() == null) ? null : getView().getRootView().findViewById(2131362550);
        if (findViewById == null || findViewById.getVisibility() != 0) {
            bundle.putInt(f8064r, -1);
        } else {
            bundle.putInt(f8064r, findViewById.getHelpCode());
        }
        Activity activity = this.f8067p;
        if (activity instanceof yb1) {
            ((yb1) activity).m87e(this.f8065n, bundle);
        }
    }

    public void onStart() {
        rb1.super.onStart();
        bc1.m5675c(this.f8067p);
    }

    public void onStop() {
        bc1.m5676b(false);
        rb1.super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle) {
        ViewTreeObserver viewTreeObserver;
        rb1.super.onViewCreated(view, bundle);
        sb1 sb1Var = new sb1(this);
        this.f8066o = sb1Var;
        sb1Var.m590l(this);
        m638D(this.f8066o);
        Bundle m628x = m628x(null);
        int i = m628x == null ? -1 : m628x.getInt(f8064r, -1);
        if (m628x == null || i == -1 || (viewTreeObserver = l().getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC1649a(i));
    }

    /* renamed from: q */
    public void m635q(View view) {
        if (view != null && (view.getParent() instanceof ListView)) {
            int top = view.getTop();
            Rect rect = new Rect();
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
            Rect rect2 = new Rect();
            l().getGlobalVisibleRect(rect2);
            if (globalVisibleRect) {
                int i = rect.bottom;
                int i2 = rect2.top;
                if (i < i2 || rect.top > i2) {
                    return;
                }
            }
            l().smoothScrollBy(top, 100);
        }
    }

    /* renamed from: r */
    public final void m634r() {
        HelpOverlayViewContainer m631u = m631u();
        if (m631u != null) {
            m633s(m631u);
        }
    }

    /* renamed from: s */
    public void m633s(HelpOverlayViewContainer helpOverlayViewContainer) {
        helpOverlayViewContainer.m4153Y();
        helpOverlayViewContainer.setCallingFragment(this);
        m639C();
    }

    /* renamed from: t */
    public final void m632t(int i) {
        if (i == 1) {
            SupportFragment.K(getView());
        } else if (i == 2) {
            SupportFragment.L(getView());
        } else {
            m634r();
        }
    }

    /* renamed from: u */
    public final HelpOverlayViewContainer m631u() {
        View rootView;
        View findViewById;
        View view = getView();
        if (view == null || (rootView = view.getRootView()) == null || (findViewById = rootView.findViewById(2131362550)) == null || !(findViewById instanceof HelpOverlayViewContainer)) {
            return null;
        }
        return (HelpOverlayViewContainer) findViewById;
    }

    /* renamed from: v */
    public sb1 m630v() {
        return this.f8066o;
    }

    /* renamed from: w */
    public Bundle m629w(Bundle bundle) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
        if (r5.isEmpty() != false) goto L12;
     */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle m628x(android.os.Bundle r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.String r0 = r0.f8065n
            if (r0 != 0) goto L2b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            r1 = r3
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = ".FRAGMENT_STATE"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r3
            r1 = r5
            java.lang.String r1 = r1.toString()
            r0.f8065n = r1
        L2b:
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L36
            r0 = r3
            android.os.Bundle r0 = r0.getArguments()
            r5 = r0
        L36:
            r0 = r5
            if (r0 == 0) goto L43
            r0 = r5
            r4 = r0
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L5f
        L43:
            r0 = r3
            android.app.Activity r0 = r0.f8067p
            r6 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            boolean r0 = r0 instanceof p000.yb1
            if (r0 == 0) goto L5f
            r0 = r6
            yb1 r0 = (p000.yb1) r0
            r1 = r3
            java.lang.String r1 = r1.f8065n
            android.os.Bundle r0 = r0.m88b(r1)
            r4 = r0
        L5f:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.rb1.m628x(android.os.Bundle):android.os.Bundle");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
        if (r5 > ((r0 + r0) - 1)) goto L9;
     */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m627y(int r5) {
        /*
            r4 = this;
            r0 = r4
            android.widget.ListView r0 = r0.l()
            int r0 = r0.getFirstVisiblePosition()
            r6 = r0
            r0 = r4
            android.widget.ListView r0 = r0.l()
            int r0 = r0.getChildCount()
            r7 = r0
            r0 = r4
            android.widget.ListView r0 = r0.l()
            int r0 = r0.getChildCount()
            if (r0 != 0) goto L1c
            r0 = 0
            return r0
        L1c:
            r0 = r5
            r1 = r6
            if (r0 < r1) goto L2d
            r0 = r5
            r8 = r0
            r0 = r5
            r1 = r7
            r2 = r6
            int r1 = r1 + r2
            r2 = 1
            int r1 = r1 - r2
            if (r0 <= r1) goto L30
        L2d:
            r0 = r6
            r8 = r0
        L30:
            r0 = r4
            android.widget.ListView r0 = r0.l()
            android.widget.ListAdapter r0 = r0.getAdapter()
            r1 = r8
            int r0 = p000.le1.m1300c(r0, r1)
            r5 = r0
            r0 = r4
            android.widget.ListView r0 = r0.l()
            r1 = r5
            r2 = r6
            int r1 = r1 - r2
            android.view.View r0 = r0.getChildAt(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.rb1.m627y(int):android.view.View");
    }

    /* renamed from: z */
    public final boolean m626z() {
        HelpOverlayViewContainer m631u = m631u();
        return m631u != null && m631u.getVisibility() == 0;
    }
}
