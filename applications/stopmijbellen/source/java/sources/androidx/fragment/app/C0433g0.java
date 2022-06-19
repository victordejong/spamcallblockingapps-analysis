package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.AbstractC0484w0;
import androidx.lifecycle.AbstractC0514d0;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.C0512c0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.fragment.app.g0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/g0.class */
public class C0433g0 {

    /* renamed from: a */
    public final C0497z f1806a;

    /* renamed from: b */
    public final C0436h0 f1807b;

    /* renamed from: c */
    public final Fragment f1808c;

    /* renamed from: d */
    public boolean f1809d = false;

    /* renamed from: e */
    public int f1810e = -1;

    /* renamed from: androidx.fragment.app.g0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/g0$a.class */
    public class View$OnAttachStateChangeListenerC0434a implements View.OnAttachStateChangeListener {

        /* renamed from: a */
        public final /* synthetic */ View f1811a;

        public View$OnAttachStateChangeListenerC0434a(C0433g0 c0433g0, View view) {
            this.f1811a = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f1811a.removeOnAttachStateChangeListener(this);
            View view2 = this.f1811a;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3597h.m2051c(view2);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public C0433g0(C0497z c0497z, C0436h0 c0436h0, Fragment fragment) {
        this.f1806a = c0497z;
        this.f1807b = c0436h0;
        this.f1808c = fragment;
    }

    public C0433g0(C0497z c0497z, C0436h0 c0436h0, Fragment fragment, C0430f0 c0430f0) {
        this.f1806a = c0497z;
        this.f1807b = c0436h0;
        this.f1808c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = c0430f0.f1802m;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }

    public C0433g0(C0497z c0497z, C0436h0 c0436h0, ClassLoader classLoader, C0483w c0483w, C0430f0 c0430f0) {
        this.f1806a = c0497z;
        this.f1807b = c0436h0;
        Fragment mo8054a = c0483w.mo8054a(classLoader, c0430f0.f1790a);
        this.f1808c = mo8054a;
        Bundle bundle = c0430f0.f1799j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        mo8054a.setArguments(c0430f0.f1799j);
        mo8054a.mWho = c0430f0.f1791b;
        mo8054a.mFromLayout = c0430f0.f1792c;
        mo8054a.mRestored = true;
        mo8054a.mFragmentId = c0430f0.f1793d;
        mo8054a.mContainerId = c0430f0.f1794e;
        mo8054a.mTag = c0430f0.f1795f;
        mo8054a.mRetainInstance = c0430f0.f1796g;
        mo8054a.mRemoving = c0430f0.f1797h;
        mo8054a.mDetached = c0430f0.f1798i;
        mo8054a.mHidden = c0430f0.f1800k;
        mo8054a.mMaxState = AbstractC0516f.EnumC0519c.values()[c0430f0.f1801l];
        Bundle bundle2 = c0430f0.f1802m;
        if (bundle2 != null) {
            mo8054a.mSavedFragmentState = bundle2;
        } else {
            mo8054a.mSavedFragmentState = new Bundle();
        }
        if (AbstractC0397a0.m8192N(2)) {
            Objects.toString(mo8054a);
        }
    }

    /* renamed from: a */
    public void m8127a() {
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        Fragment fragment = this.f1808c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        C0497z c0497z = this.f1806a;
        Fragment fragment2 = this.f1808c;
        c0497z.m8030a(fragment2, fragment2.mSavedFragmentState, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0071, code lost:
        r0 = r9 + 1;
        r9 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0087, code lost:
        if (r0 >= ((java.util.ArrayList) r0.f1816a).size()) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x008a, code lost:
        r0 = (androidx.fragment.app.Fragment) ((java.util.ArrayList) r0.f1816a).get(r0);
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a3, code lost:
        if (r0.mContainer != r0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a6, code lost:
        r0 = r0.mView;
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00b0, code lost:
        if (r0 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b3, code lost:
        r9 = r0.indexOfChild(r0);
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m8126b() {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0433g0.m8126b():void");
    }

    /* renamed from: c */
    public void m8125c() {
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        Fragment fragment = this.f1808c;
        Fragment fragment2 = fragment.mTarget;
        C0433g0 c0433g0 = null;
        if (fragment2 != null) {
            c0433g0 = this.f1807b.m8103h(fragment2.mWho);
            if (c0433g0 == null) {
                StringBuilder m8752j = C0082b.m8752j("Fragment ");
                m8752j.append(this.f1808c);
                m8752j.append(" declared target fragment ");
                m8752j.append(this.f1808c.mTarget);
                m8752j.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(m8752j.toString());
            }
            Fragment fragment3 = this.f1808c;
            fragment3.mTargetWho = fragment3.mTarget.mWho;
            fragment3.mTarget = null;
        } else {
            String str = fragment.mTargetWho;
            if (str != null) {
                c0433g0 = this.f1807b.m8103h(str);
                if (c0433g0 == null) {
                    StringBuilder m8752j2 = C0082b.m8752j("Fragment ");
                    m8752j2.append(this.f1808c);
                    m8752j2.append(" declared target fragment ");
                    throw new IllegalStateException(C0082b.m8754h(m8752j2, this.f1808c.mTargetWho, " that does not belong to this FragmentManager!"));
                }
            }
        }
        if (c0433g0 != null) {
            c0433g0.m8117k();
        }
        Fragment fragment4 = this.f1808c;
        AbstractC0397a0 abstractC0397a0 = fragment4.mFragmentManager;
        fragment4.mHost = abstractC0397a0.f1714q;
        fragment4.mParentFragment = abstractC0397a0.f1716s;
        this.f1806a.m8024g(fragment4, false);
        this.f1808c.performAttach();
        this.f1806a.m8029b(this.f1808c, false);
    }

    /* renamed from: d */
    public int m8124d() {
        int i;
        int i2;
        AbstractC0484w0.C0488d c0488d;
        Fragment fragment = this.f1808c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int i3 = this.f1810e;
        int ordinal = fragment.mMaxState.ordinal();
        if (ordinal == 1) {
            i = Math.min(i3, 0);
        } else if (ordinal == 2) {
            i = Math.min(i3, 1);
        } else if (ordinal != 3) {
            i = i3;
            if (ordinal != 4) {
                i = Math.min(i3, -1);
            }
        } else {
            i = Math.min(i3, 5);
        }
        Fragment fragment2 = this.f1808c;
        int i4 = i;
        if (fragment2.mFromLayout) {
            if (fragment2.mInLayout) {
                int max = Math.max(this.f1810e, 2);
                View view = this.f1808c.mView;
                i4 = max;
                if (view != null) {
                    i4 = max;
                    if (view.getParent() == null) {
                        i4 = Math.min(max, 2);
                    }
                }
            } else {
                i4 = this.f1810e < 4 ? Math.min(i, fragment2.mState) : Math.min(i, 1);
            }
        }
        int i5 = i4;
        if (!this.f1808c.mAdded) {
            i5 = Math.min(i4, 1);
        }
        Fragment fragment3 = this.f1808c;
        ViewGroup viewGroup = fragment3.mContainer;
        AbstractC0484w0.C0488d.EnumC0490b enumC0490b = null;
        if (viewGroup != null) {
            AbstractC0484w0 m8046f = AbstractC0484w0.m8046f(viewGroup, fragment3.getParentFragmentManager());
            Objects.requireNonNull(m8046f);
            AbstractC0484w0.C0488d m8048d = m8046f.m8048d(this.f1808c);
            enumC0490b = m8048d != null ? m8048d.f1965b : null;
            Fragment fragment4 = this.f1808c;
            Iterator<AbstractC0484w0.C0488d> it2 = m8046f.f1956c.iterator();
            while (true) {
                c0488d = null;
                if (!it2.hasNext()) {
                    break;
                }
                c0488d = it2.next();
                if (c0488d.f1966c.equals(fragment4) && !c0488d.f1969f) {
                    break;
                }
            }
            if (c0488d != null && (enumC0490b == null || enumC0490b == AbstractC0484w0.C0488d.EnumC0490b.NONE)) {
                enumC0490b = c0488d.f1965b;
            }
        }
        if (enumC0490b == AbstractC0484w0.C0488d.EnumC0490b.ADDING) {
            i2 = Math.min(i5, 6);
        } else if (enumC0490b == AbstractC0484w0.C0488d.EnumC0490b.REMOVING) {
            i2 = Math.max(i5, 3);
        } else {
            Fragment fragment5 = this.f1808c;
            i2 = i5;
            if (fragment5.mRemoving) {
                i2 = fragment5.isInBackStack() ? Math.min(i5, 1) : Math.min(i5, -1);
            }
        }
        Fragment fragment6 = this.f1808c;
        int i6 = i2;
        if (fragment6.mDeferStart) {
            i6 = i2;
            if (fragment6.mState < 5) {
                i6 = Math.min(i2, 4);
            }
        }
        if (AbstractC0397a0.m8192N(2)) {
            Objects.toString(this.f1808c);
        }
        return i6;
    }

    /* renamed from: e */
    public void m8123e() {
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        Fragment fragment = this.f1808c;
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.f1808c.mState = 1;
            return;
        }
        this.f1806a.m8023h(fragment, fragment.mSavedFragmentState, false);
        Fragment fragment2 = this.f1808c;
        fragment2.performCreate(fragment2.mSavedFragmentState);
        C0497z c0497z = this.f1806a;
        Fragment fragment3 = this.f1808c;
        c0497z.m8028c(fragment3, fragment3.mSavedFragmentState, false);
    }

    /* renamed from: f */
    public void m8122f() {
        String str;
        if (this.f1808c.mFromLayout) {
            return;
        }
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        Fragment fragment = this.f1808c;
        LayoutInflater performGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        Fragment fragment2 = this.f1808c;
        ViewGroup viewGroup = fragment2.mContainer;
        if (viewGroup == null) {
            int i = fragment2.mContainerId;
            viewGroup = null;
            if (i != 0) {
                if (i == -1) {
                    StringBuilder m8752j = C0082b.m8752j("Cannot create fragment ");
                    m8752j.append(this.f1808c);
                    m8752j.append(" for a container view with no id");
                    throw new IllegalArgumentException(m8752j.toString());
                }
                ViewGroup viewGroup2 = (ViewGroup) fragment2.mFragmentManager.f1715r.mo8061c(i);
                viewGroup = viewGroup2;
                if (viewGroup2 == null) {
                    Fragment fragment3 = this.f1808c;
                    if (!fragment3.mRestored) {
                        try {
                            str = fragment3.getResources().getResourceName(this.f1808c.mContainerId);
                        } catch (Resources.NotFoundException e) {
                            str = "unknown";
                        }
                        StringBuilder m8752j2 = C0082b.m8752j("No view found for id 0x");
                        m8752j2.append(Integer.toHexString(this.f1808c.mContainerId));
                        m8752j2.append(" (");
                        m8752j2.append(str);
                        m8752j2.append(") for fragment ");
                        m8752j2.append(this.f1808c);
                        throw new IllegalArgumentException(m8752j2.toString());
                    }
                    viewGroup = viewGroup2;
                }
            }
        }
        Fragment fragment4 = this.f1808c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(performGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.f1808c.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f1808c;
            fragment5.mView.setTag(2131296632, fragment5);
            if (viewGroup != null) {
                m8126b();
            }
            Fragment fragment6 = this.f1808c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            View view2 = this.f1808c.mView;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3596g.m2059b(view2)) {
                C3589v.C3597h.m2051c(this.f1808c.mView);
            } else {
                View view3 = this.f1808c.mView;
                view3.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC0434a(this, view3));
            }
            this.f1808c.performViewCreated();
            C0497z c0497z = this.f1806a;
            Fragment fragment7 = this.f1808c;
            c0497z.m8018m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.f1808c.mView.getVisibility();
            this.f1808c.setPostOnViewCreatedAlpha(this.f1808c.mView.getAlpha());
            Fragment fragment8 = this.f1808c;
            if (fragment8.mContainer != null && visibility == 0) {
                View findFocus = fragment8.mView.findFocus();
                if (findFocus != null) {
                    this.f1808c.setFocusedView(findFocus);
                    if (AbstractC0397a0.m8192N(2)) {
                        findFocus.toString();
                        Objects.toString(this.f1808c);
                    }
                }
                this.f1808c.mView.setAlpha(0.0f);
            }
        }
        this.f1808c.mState = 2;
    }

    /* renamed from: g */
    public void m8121g() {
        Fragment m8107d;
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        Fragment fragment = this.f1808c;
        boolean z = true;
        boolean z2 = fragment.mRemoving && !fragment.isInBackStack();
        if (!(z2 || ((C0424d0) this.f1807b.f1818c).m8128e(this.f1808c))) {
            String str = this.f1808c.mTargetWho;
            if (str != null && (m8107d = this.f1807b.m8107d(str)) != null && m8107d.mRetainInstance) {
                this.f1808c.mTarget = m8107d;
            }
            this.f1808c.mState = 0;
            return;
        }
        AbstractC0492x<?> abstractC0492x = this.f1808c.mHost;
        if (abstractC0492x instanceof AbstractC0514d0) {
            z = ((C0424d0) this.f1807b.f1818c).f1783g;
        } else {
            Context context = abstractC0492x.f1982b;
            if (context instanceof Activity) {
                z = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (z2 || z) {
            C0424d0 c0424d0 = (C0424d0) this.f1807b.f1818c;
            Fragment fragment2 = this.f1808c;
            Objects.requireNonNull(c0424d0);
            if (AbstractC0397a0.m8192N(3)) {
                Objects.toString(fragment2);
            }
            C0424d0 c0424d02 = c0424d0.f1780d.get(fragment2.mWho);
            if (c0424d02 != null) {
                c0424d02.mo7431a();
                c0424d0.f1780d.remove(fragment2.mWho);
            }
            C0512c0 c0512c0 = c0424d0.f1781e.get(fragment2.mWho);
            if (c0512c0 != null) {
                c0512c0.m8002a();
                c0424d0.f1781e.remove(fragment2.mWho);
            }
        }
        this.f1808c.performDestroy();
        this.f1806a.m8027d(this.f1808c, false);
        Iterator it2 = ((ArrayList) this.f1807b.m8105f()).iterator();
        while (it2.hasNext()) {
            C0433g0 c0433g0 = (C0433g0) it2.next();
            if (c0433g0 != null) {
                Fragment fragment3 = c0433g0.f1808c;
                if (this.f1808c.mWho.equals(fragment3.mTargetWho)) {
                    fragment3.mTarget = this.f1808c;
                    fragment3.mTargetWho = null;
                }
            }
        }
        Fragment fragment4 = this.f1808c;
        String str2 = fragment4.mTargetWho;
        if (str2 != null) {
            fragment4.mTarget = this.f1807b.m8107d(str2);
        }
        this.f1807b.m8100k(this);
    }

    /* renamed from: h */
    public void m8120h() {
        View view;
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        Fragment fragment = this.f1808c;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f1808c.performDestroyView();
        this.f1806a.m8017n(this.f1808c, false);
        Fragment fragment2 = this.f1808c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.mo7432h(null);
        this.f1808c.mInLayout = false;
    }

    /* renamed from: i */
    public void m8119i() {
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        this.f1808c.performDetach();
        this.f1806a.m8026e(this.f1808c, false);
        Fragment fragment = this.f1808c;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        boolean z = false;
        if (fragment.mRemoving) {
            z = false;
            if (!fragment.isInBackStack()) {
                z = true;
            }
        }
        if (z || ((C0424d0) this.f1807b.f1818c).m8128e(this.f1808c)) {
            if (AbstractC0397a0.m8192N(3)) {
                Objects.toString(this.f1808c);
            }
            this.f1808c.initState();
        }
    }

    /* renamed from: j */
    public void m8118j() {
        Fragment fragment = this.f1808c;
        if (!fragment.mFromLayout || !fragment.mInLayout || fragment.mPerformedCreateView) {
            return;
        }
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        Fragment fragment2 = this.f1808c;
        fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.f1808c.mSavedFragmentState);
        View view = this.f1808c.mView;
        if (view == null) {
            return;
        }
        view.setSaveFromParentEnabled(false);
        Fragment fragment3 = this.f1808c;
        fragment3.mView.setTag(2131296632, fragment3);
        Fragment fragment4 = this.f1808c;
        if (fragment4.mHidden) {
            fragment4.mView.setVisibility(8);
        }
        this.f1808c.performViewCreated();
        C0497z c0497z = this.f1806a;
        Fragment fragment5 = this.f1808c;
        c0497z.m8018m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
        this.f1808c.mState = 2;
    }

    /* renamed from: k */
    public void m8117k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        AbstractC0484w0.C0488d.EnumC0490b enumC0490b = AbstractC0484w0.C0488d.EnumC0490b.NONE;
        if (this.f1809d) {
            if (!AbstractC0397a0.m8192N(2)) {
                return;
            }
            Objects.toString(this.f1808c);
            return;
        }
        try {
            this.f1809d = true;
            while (true) {
                int m8124d = m8124d();
                Fragment fragment = this.f1808c;
                int i = fragment.mState;
                if (m8124d == i) {
                    if (fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            AbstractC0484w0 m8046f = AbstractC0484w0.m8046f(viewGroup, fragment.getParentFragmentManager());
                            if (this.f1808c.mHidden) {
                                Objects.requireNonNull(m8046f);
                                if (AbstractC0397a0.m8192N(2)) {
                                    Objects.toString(this.f1808c);
                                }
                                m8046f.m8051a(AbstractC0484w0.C0488d.EnumC0491c.GONE, enumC0490b, this);
                            } else {
                                Objects.requireNonNull(m8046f);
                                if (AbstractC0397a0.m8192N(2)) {
                                    Objects.toString(this.f1808c);
                                }
                                m8046f.m8051a(AbstractC0484w0.C0488d.EnumC0491c.VISIBLE, enumC0490b, this);
                            }
                        }
                        Fragment fragment2 = this.f1808c;
                        AbstractC0397a0 abstractC0397a0 = fragment2.mFragmentManager;
                        if (abstractC0397a0 != null && fragment2.mAdded && abstractC0397a0.m8191O(fragment2)) {
                            abstractC0397a0.f1687A = true;
                        }
                        Fragment fragment3 = this.f1808c;
                        fragment3.mHiddenChanged = false;
                        fragment3.onHiddenChanged(fragment3.mHidden);
                    }
                    return;
                } else if (m8124d > i) {
                    switch (i + 1) {
                        case 0:
                            m8125c();
                            continue;
                        case 1:
                            m8123e();
                            continue;
                        case 2:
                            m8118j();
                            m8122f();
                            continue;
                        case 3:
                            m8127a();
                            continue;
                        case 4:
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                AbstractC0484w0 m8046f2 = AbstractC0484w0.m8046f(viewGroup2, fragment.getParentFragmentManager());
                                AbstractC0484w0.C0488d.EnumC0491c m8037b = AbstractC0484w0.C0488d.EnumC0491c.m8037b(this.f1808c.mView.getVisibility());
                                Objects.requireNonNull(m8046f2);
                                if (AbstractC0397a0.m8192N(2)) {
                                    Objects.toString(this.f1808c);
                                }
                                m8046f2.m8051a(m8037b, AbstractC0484w0.C0488d.EnumC0490b.ADDING, this);
                            }
                            this.f1808c.mState = 4;
                            continue;
                        case 5:
                            m8112p();
                            continue;
                        case 6:
                            fragment.mState = 6;
                            continue;
                        case 7:
                            m8114n();
                            continue;
                    }
                } else {
                    switch (i - 1) {
                        case -1:
                            m8119i();
                            continue;
                        case 0:
                            m8121g();
                            continue;
                        case 1:
                            m8120h();
                            this.f1808c.mState = 1;
                            continue;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            continue;
                        case 3:
                            if (AbstractC0397a0.m8192N(3)) {
                                Objects.toString(this.f1808c);
                            }
                            Fragment fragment4 = this.f1808c;
                            if (fragment4.mView != null && fragment4.mSavedViewState == null) {
                                m8113o();
                            }
                            Fragment fragment5 = this.f1808c;
                            if (fragment5.mView != null && (viewGroup3 = fragment5.mContainer) != null) {
                                AbstractC0484w0 m8046f3 = AbstractC0484w0.m8046f(viewGroup3, fragment5.getParentFragmentManager());
                                Objects.requireNonNull(m8046f3);
                                if (AbstractC0397a0.m8192N(2)) {
                                    Objects.toString(this.f1808c);
                                }
                                m8046f3.m8051a(AbstractC0484w0.C0488d.EnumC0491c.REMOVED, AbstractC0484w0.C0488d.EnumC0490b.REMOVING, this);
                            }
                            this.f1808c.mState = 3;
                            continue;
                        case 4:
                            m8111q();
                            continue;
                        case 5:
                            fragment.mState = 5;
                            continue;
                        case 6:
                            m8116l();
                            continue;
                    }
                }
            }
        } finally {
            this.f1809d = false;
        }
    }

    /* renamed from: l */
    public void m8116l() {
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        this.f1808c.performPause();
        this.f1806a.m8025f(this.f1808c, false);
    }

    /* renamed from: m */
    public void m8115m(ClassLoader classLoader) {
        Bundle bundle = this.f1808c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f1808c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f1808c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f1808c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        Fragment fragment4 = this.f1808c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f1808c;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.f1808c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f1808c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    /* renamed from: n */
    public void m8114n() {
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        View focusedView = this.f1808c.getFocusedView();
        if (focusedView != null) {
            boolean z = true;
            if (focusedView != this.f1808c.mView) {
                ViewParent parent = focusedView.getParent();
                while (true) {
                    ViewParent viewParent = parent;
                    if (viewParent == null) {
                        z = false;
                        break;
                    } else if (viewParent == this.f1808c.mView) {
                        break;
                    } else {
                        parent = viewParent.getParent();
                    }
                }
            }
            if (z) {
                focusedView.requestFocus();
                if (AbstractC0397a0.m8192N(2)) {
                    focusedView.toString();
                    Objects.toString(this.f1808c);
                    Objects.toString(this.f1808c.mView.findFocus());
                }
            }
        }
        this.f1808c.setFocusedView(null);
        this.f1808c.performResume();
        this.f1806a.m8022i(this.f1808c, false);
        Fragment fragment = this.f1808c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    /* renamed from: o */
    public void m8113o() {
        if (this.f1808c.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f1808c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f1808c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f1808c.mViewLifecycleOwner.f1950c.m7510b(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f1808c.mSavedViewRegistryState = bundle;
    }

    /* renamed from: p */
    public void m8112p() {
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        this.f1808c.performStart();
        this.f1806a.m8020k(this.f1808c, false);
    }

    /* renamed from: q */
    public void m8111q() {
        if (AbstractC0397a0.m8192N(3)) {
            Objects.toString(this.f1808c);
        }
        this.f1808c.performStop();
        this.f1806a.m8019l(this.f1808c, false);
    }
}
