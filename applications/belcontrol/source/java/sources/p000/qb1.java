package p000;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.fragment.app.Fragment;
import com.flexaspect.android.everycallcontrol.ui.fragments.purchase.mypurchase.MySubscriptions;
import com.flexaspect.android.everycallcontrol.ui.fragments.support.SupportFragment;
import com.kedlin.cca.core.service.BackgroundWorker;
import com.kedlin.cca.p007ui.HelpOverlayViewContainer;
import p000.r71;
import p000.sb1;
/* renamed from: qb1 */
/* loaded from: classes3-dex2jar.jar:qb1.class */
public class qb1 extends Fragment implements sb1.AbstractC1652b, ua1 {

    /* renamed from: f */
    public static final String f7809f = qb1.class.getName() + ".EXTRA_HELP_OVERLAY_STATE";

    /* renamed from: b */
    public sb1 f7811b;

    /* renamed from: c */
    public Activity f7812c;

    /* renamed from: a */
    public String f7810a = null;

    /* renamed from: d */
    public Handler f7813d = new Handler();

    /* renamed from: qb1$a */
    /* loaded from: classes3-dex2jar.jar:qb1$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC1626a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f7814a;

        /* renamed from: b */
        public final /* synthetic */ int f7815b;

        public ViewTreeObserver$OnGlobalLayoutListenerC1626a(View view, int i) {
            qb1.this = r4;
            this.f7814a = view;
            this.f7815b = i;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 16) {
                this.f7814a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            } else {
                this.f7814a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            qb1.this.m839m(this.f7815b);
        }
    }

    @Override // p000.sb1.AbstractC1652b
    /* renamed from: a */
    public void mo584a(sb1.EnumC1653c enumC1653c) {
        this.f7812c.onBackPressed();
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

    /* renamed from: k */
    public final void m841k() {
        HelpOverlayViewContainer m838n = m838n();
        if (m838n != null) {
            m840l(m838n);
        }
    }

    /* renamed from: l */
    public void m840l(HelpOverlayViewContainer helpOverlayViewContainer) {
        helpOverlayViewContainer.m4153Y();
        helpOverlayViewContainer.setCallingFragment(this);
        m831u();
    }

    /* renamed from: m */
    public final void m839m(int i) {
        if (i == 1) {
            SupportFragment.K(getView());
        } else if (i == 2) {
            SupportFragment.L(getView());
        } else {
            m841k();
        }
    }

    /* renamed from: n */
    public final HelpOverlayViewContainer m838n() {
        View rootView;
        View findViewById;
        View view = getView();
        if (view == null || (rootView = view.getRootView()) == null || (findViewById = rootView.findViewById(2131362550)) == null || !(findViewById instanceof HelpOverlayViewContainer)) {
            return null;
        }
        return (HelpOverlayViewContainer) findViewById;
    }

    /* renamed from: o */
    public sb1 m837o() {
        return this.f7811b;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        qb1.super.onActivityResult(i, i2, intent);
        BackgroundWorker.m4374b(getActivity(), i, i2, intent);
    }

    public void onAttach(Activity activity) {
        qb1.super.onAttach(activity);
        this.f7812c = activity;
    }

    public void onPause() {
        onSaveInstanceState(new Bundle());
        oe1.m1053w(this.f7812c, getView());
        qb1.super.onPause();
    }

    public void onSaveInstanceState(Bundle bundle) {
        qb1.super.onSaveInstanceState(bundle);
        HelpOverlayViewContainer findViewById = (getView() == null || getView().getRootView() == null) ? null : getView().getRootView().findViewById(2131362550);
        if (findViewById == null || findViewById.getVisibility() != 0) {
            bundle.putInt(f7809f, -1);
        } else {
            bundle.putInt(f7809f, findViewById.getHelpCode());
        }
        Activity activity = this.f7812c;
        if (activity instanceof yb1) {
            ((yb1) activity).m87e(this.f7810a, bundle);
        }
    }

    public void onStart() {
        qb1.super.onStart();
        View findViewById = this.f7812c.findViewById(2131363419);
        if (findViewById != null) {
            findViewById.setVisibility((r71.EnumC1638a.f7932Y.m695a() || ((!fa1.m1846d() || fa1.m1824z() || fa1.m1830t()) && (fa1.m1846d() || fa1.m1830t())) || (this instanceof MySubscriptions)) ? 8 : 0);
        }
        bc1.m5675c(this.f7812c);
    }

    public void onStop() {
        bc1.m5676b(false);
        qb1.super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle) {
        ViewTreeObserver viewTreeObserver;
        qb1.super.onViewCreated(view, bundle);
        if (m834r()) {
            sb1 sb1Var = new sb1(this);
            this.f7811b = sb1Var;
            sb1Var.m590l(this);
            m830v(this.f7811b);
        }
        Bundle m835q = m835q(null);
        int i = m835q == null ? -1 : m835q.getInt(f7809f, -1);
        if (m835q == null || i == -1 || (viewTreeObserver = view.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC1626a(view, i));
    }

    /* renamed from: p */
    public Bundle m836p(Bundle bundle) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
        if (r5.isEmpty() != false) goto L12;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle m835q(android.os.Bundle r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.String r0 = r0.f7810a
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
            r0.f7810a = r1
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
            android.app.Activity r0 = r0.f7812c
            r6 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            boolean r0 = r0 instanceof p000.yb1
            if (r0 == 0) goto L5f
            r0 = r6
            yb1 r0 = (p000.yb1) r0
            r1 = r3
            java.lang.String r1 = r1.f7810a
            android.os.Bundle r0 = r0.m88b(r1)
            r4 = r0
        L5f:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.qb1.m835q(android.os.Bundle):android.os.Bundle");
    }

    /* renamed from: r */
    public boolean m834r() {
        return true;
    }

    /* renamed from: s */
    public boolean m833s() {
        return true;
    }

    /* renamed from: t */
    public void m832t() {
    }

    /* renamed from: u */
    public void m831u() {
    }

    /* renamed from: v */
    public void m830v(sb1 sb1Var) {
    }

    /* renamed from: w */
    public void m829w(Class<?> cls, Bundle bundle) {
        qb1.super.setArguments(bundle);
    }
}
