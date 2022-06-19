package p1727n3.p1859r.p1860a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.C0158R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentState;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1859r.p1860a.AbstractC26960u0;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26993b1;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.r.a.c0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/c0.class */
public class C26916c0 {

    /* renamed from: a */
    public final C26971w f75293a;

    /* renamed from: b */
    public final C26922e0 f75294b;

    /* renamed from: c */
    public final Fragment f75295c;

    /* renamed from: d */
    public boolean f75296d = false;

    /* renamed from: e */
    public int f75297e = -1;

    /* renamed from: n3.r.a.c0$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/c0$a.class */
    public class View$OnAttachStateChangeListenerC26917a implements View.OnAttachStateChangeListener {

        /* renamed from: a */
        public final /* synthetic */ View f75298a;

        public View$OnAttachStateChangeListenerC26917a(C26916c0 c26916c0, View view) {
            this.f75298a = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f75298a.removeOnAttachStateChangeListener(this);
            View view2 = this.f75298a;
            AtomicInteger atomicInteger = C26614s.f74505a;
            view2.requestApplyInsets();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public C26916c0(C26971w c26971w, C26922e0 c26922e0, Fragment fragment) {
        this.f75293a = c26971w;
        this.f75294b = c26922e0;
        this.f75295c = fragment;
    }

    public C26916c0(C26971w c26971w, C26922e0 c26922e0, Fragment fragment, FragmentState fragmentState) {
        this.f75293a = c26971w;
        this.f75294b = c26922e0;
        this.f75295c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = fragmentState.f904m;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }

    public C26916c0(C26971w c26971w, C26922e0 c26922e0, ClassLoader classLoader, C26957t c26957t, FragmentState fragmentState) {
        this.f75293a = c26971w;
        this.f75294b = c26922e0;
        Fragment instantiate = c26957t.instantiate(classLoader, fragmentState.f892a);
        this.f75295c = instantiate;
        Bundle bundle = fragmentState.f901j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        instantiate.setArguments(fragmentState.f901j);
        instantiate.mWho = fragmentState.f893b;
        instantiate.mFromLayout = fragmentState.f894c;
        instantiate.mRestored = true;
        instantiate.mFragmentId = fragmentState.f895d;
        instantiate.mContainerId = fragmentState.f896e;
        instantiate.mTag = fragmentState.f897f;
        instantiate.mRetainInstance = fragmentState.f898g;
        instantiate.mRemoving = fragmentState.f899h;
        instantiate.mDetached = fragmentState.f900i;
        instantiate.mHidden = fragmentState.f902k;
        instantiate.mMaxState = AbstractC27028u.EnumC27030b.values()[fragmentState.f903l];
        Bundle bundle2 = fragmentState.f904m;
        if (bundle2 != null) {
            instantiate.mSavedFragmentState = bundle2;
        } else {
            instantiate.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.m42933T(2)) {
            String str = "Instantiated fragment " + instantiate;
        }
    }

    /* renamed from: a */
    public void m1167a() {
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("moveto ACTIVITY_CREATED: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        Fragment fragment = this.f75295c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        C26971w c26971w = this.f75293a;
        Fragment fragment2 = this.f75295c;
        c26971w.m1045a(fragment2, fragment2.mSavedFragmentState, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006b, code lost:
        r0 = r9 + 1;
        r9 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x007e, code lost:
        if (r0 >= r0.f75311a.size()) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0081, code lost:
        r0 = r0.f75311a.get(r0);
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0097, code lost:
        if (r0.mContainer != r0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x009a, code lost:
        r0 = r0.mView;
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a4, code lost:
        if (r0 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a7, code lost:
        r9 = r0.indexOfChild(r0);
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1166b() {
        /*
            r4 = this;
            r0 = r4
            n3.r.a.e0 r0 = r0.f75294b
            r5 = r0
            r0 = r4
            androidx.fragment.app.Fragment r0 = r0.f75295c
            r6 = r0
            r0 = r5
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r6
            android.view.ViewGroup r0 = r0.mContainer
            r7 = r0
            r0 = -1
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L22
            r0 = r8
            r9 = r0
            goto Lae
        L22:
            r0 = r5
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f75311a
            r1 = r6
            int r0 = r0.indexOf(r1)
            r10 = r0
            r0 = r10
            r1 = 1
            int r0 = r0 - r1
            r11 = r0
        L32:
            r0 = r10
            r9 = r0
            r0 = r11
            if (r0 < 0) goto L6b
            r0 = r5
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f75311a
            r1 = r11
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r6 = r0
            r0 = r6
            android.view.ViewGroup r0 = r0.mContainer
            r1 = r7
            if (r0 != r1) goto L65
            r0 = r6
            android.view.View r0 = r0.mView
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L65
            r0 = r7
            r1 = r6
            int r0 = r0.indexOfChild(r1)
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            goto Lae
        L65:
            int r11 = r11 + (-1)
            goto L32
        L6b:
            r0 = r9
            r1 = 1
            int r0 = r0 + r1
            r11 = r0
            r0 = r8
            r9 = r0
            r0 = r11
            r1 = r5
            java.util.ArrayList<androidx.fragment.app.Fragment> r1 = r1.f75311a
            int r1 = r1.size()
            if (r0 >= r1) goto Lae
            r0 = r5
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f75311a
            r1 = r11
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r6 = r0
            r0 = r11
            r9 = r0
            r0 = r6
            android.view.ViewGroup r0 = r0.mContainer
            r1 = r7
            if (r0 != r1) goto L6b
            r0 = r6
            android.view.View r0 = r0.mView
            r6 = r0
            r0 = r11
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L6b
            r0 = r7
            r1 = r6
            int r0 = r0.indexOfChild(r1)
            r9 = r0
        Lae:
            r0 = r4
            androidx.fragment.app.Fragment r0 = r0.f75295c
            r7 = r0
            r0 = r7
            android.view.ViewGroup r0 = r0.mContainer
            r1 = r7
            android.view.View r1 = r1.mView
            r2 = r9
            r0.addView(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1859r.p1860a.C26916c0.m1166b():void");
    }

    /* renamed from: c */
    public void m1165c() {
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("moveto ATTACHED: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        Fragment fragment = this.f75295c;
        Fragment fragment2 = fragment.mTarget;
        C26916c0 c26916c0 = null;
        if (fragment2 != null) {
            c26916c0 = this.f75294b.m1136h(fragment2.mWho);
            if (c26916c0 == null) {
                StringBuilder m8728C2 = C22128a.m8728C("Fragment ");
                m8728C2.append(this.f75295c);
                m8728C2.append(" declared target fragment ");
                m8728C2.append(this.f75295c.mTarget);
                m8728C2.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(m8728C2.toString());
            }
            Fragment fragment3 = this.f75295c;
            fragment3.mTargetWho = fragment3.mTarget.mWho;
            fragment3.mTarget = null;
        } else {
            String str = fragment.mTargetWho;
            if (str != null) {
                c26916c0 = this.f75294b.m1136h(str);
                if (c26916c0 == null) {
                    StringBuilder m8728C3 = C22128a.m8728C("Fragment ");
                    m8728C3.append(this.f75295c);
                    m8728C3.append(" declared target fragment ");
                    throw new IllegalStateException(C22128a.m8618h(m8728C3, this.f75295c.mTargetWho, " that does not belong to this FragmentManager!"));
                }
            }
        }
        if (c26916c0 != null) {
            c26916c0.m1157k();
        }
        Fragment fragment4 = this.f75295c;
        FragmentManager fragmentManager = fragment4.mFragmentManager;
        fragment4.mHost = fragmentManager.f854q;
        fragment4.mParentFragment = fragmentManager.f856s;
        this.f75293a.m1039g(fragment4, false);
        this.f75295c.performAttach();
        this.f75293a.m1044b(this.f75295c, false);
    }

    /* renamed from: d */
    public int m1164d() {
        int i;
        int i2;
        AbstractC26960u0.C26964d c26964d;
        Fragment fragment = this.f75295c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int i3 = this.f75297e;
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
        Fragment fragment2 = this.f75295c;
        int i4 = i;
        if (fragment2.mFromLayout) {
            if (fragment2.mInLayout) {
                int max = Math.max(this.f75297e, 2);
                View view = this.f75295c.mView;
                i4 = max;
                if (view != null) {
                    i4 = max;
                    if (view.getParent() == null) {
                        i4 = Math.min(max, 2);
                    }
                }
            } else {
                i4 = this.f75297e < 4 ? Math.min(i, fragment2.mState) : Math.min(i, 1);
            }
        }
        int i5 = i4;
        if (!this.f75295c.mAdded) {
            i5 = Math.min(i4, 1);
        }
        Fragment fragment3 = this.f75295c;
        ViewGroup viewGroup = fragment3.mContainer;
        AbstractC26960u0.C26964d.EnumC26966b enumC26966b = null;
        if (viewGroup != null) {
            AbstractC26960u0 m1057f = AbstractC26960u0.m1057f(viewGroup, fragment3.getParentFragmentManager());
            Objects.requireNonNull(m1057f);
            AbstractC26960u0.C26964d m1059d = m1057f.m1059d(this.f75295c);
            enumC26966b = m1059d != null ? m1059d.f75458b : null;
            Fragment fragment4 = this.f75295c;
            Iterator<AbstractC26960u0.C26964d> it = m1057f.f75449c.iterator();
            while (true) {
                c26964d = null;
                if (!it.hasNext()) {
                    break;
                }
                c26964d = it.next();
                if (c26964d.f75459c.equals(fragment4) && !c26964d.f75462f) {
                    break;
                }
            }
            if (c26964d != null && (enumC26966b == null || enumC26966b == AbstractC26960u0.C26964d.EnumC26966b.NONE)) {
                enumC26966b = c26964d.f75458b;
            }
        }
        if (enumC26966b == AbstractC26960u0.C26964d.EnumC26966b.ADDING) {
            i2 = Math.min(i5, 6);
        } else if (enumC26966b == AbstractC26960u0.C26964d.EnumC26966b.REMOVING) {
            i2 = Math.max(i5, 3);
        } else {
            Fragment fragment5 = this.f75295c;
            i2 = i5;
            if (fragment5.mRemoving) {
                i2 = fragment5.isInBackStack() ? Math.min(i5, 1) : Math.min(i5, -1);
            }
        }
        Fragment fragment6 = this.f75295c;
        int i6 = i2;
        if (fragment6.mDeferStart) {
            i6 = i2;
            if (fragment6.mState < 5) {
                i6 = Math.min(i2, 4);
            }
        }
        if (FragmentManager.m42933T(2)) {
            StringBuilder m8720E = C22128a.m8720E("computeExpectedState() of ", i6, " for ");
            m8720E.append(this.f75295c);
            m8720E.toString();
        }
        return i6;
    }

    /* renamed from: e */
    public void m1163e() {
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("moveto CREATED: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        Fragment fragment = this.f75295c;
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.f75295c.mState = 1;
            return;
        }
        this.f75293a.m1038h(fragment, fragment.mSavedFragmentState, false);
        Fragment fragment2 = this.f75295c;
        fragment2.performCreate(fragment2.mSavedFragmentState);
        C26971w c26971w = this.f75293a;
        Fragment fragment3 = this.f75295c;
        c26971w.m1043c(fragment3, fragment3.mSavedFragmentState, false);
    }

    /* renamed from: f */
    public void m1162f() {
        String str;
        if (this.f75295c.mFromLayout) {
            return;
        }
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("moveto CREATE_VIEW: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        Fragment fragment = this.f75295c;
        LayoutInflater performGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        ViewGroup viewGroup = null;
        Fragment fragment2 = this.f75295c;
        ViewGroup viewGroup2 = fragment2.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i = fragment2.mContainerId;
            if (i != 0) {
                if (i == -1) {
                    StringBuilder m8728C2 = C22128a.m8728C("Cannot create fragment ");
                    m8728C2.append(this.f75295c);
                    m8728C2.append(" for a container view with no id");
                    throw new IllegalArgumentException(m8728C2.toString());
                }
                ViewGroup viewGroup3 = (ViewGroup) fragment2.mFragmentManager.f855r.mo1072b(i);
                viewGroup = viewGroup3;
                if (viewGroup3 == null) {
                    Fragment fragment3 = this.f75295c;
                    if (!fragment3.mRestored) {
                        try {
                            str = fragment3.getResources().getResourceName(this.f75295c.mContainerId);
                        } catch (Resources.NotFoundException e) {
                            str = "unknown";
                        }
                        StringBuilder m8728C3 = C22128a.m8728C("No view found for id 0x");
                        m8728C3.append(Integer.toHexString(this.f75295c.mContainerId));
                        m8728C3.append(" (");
                        m8728C3.append(str);
                        m8728C3.append(") for fragment ");
                        m8728C3.append(this.f75295c);
                        throw new IllegalArgumentException(m8728C3.toString());
                    }
                    viewGroup = viewGroup3;
                }
            }
        }
        Fragment fragment4 = this.f75295c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(performGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.f75295c.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f75295c;
            fragment5.mView.setTag(C0158R.C0160id.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                m1166b();
            }
            Fragment fragment6 = this.f75295c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            View view2 = this.f75295c.mView;
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (view2.isAttachedToWindow()) {
                this.f75295c.mView.requestApplyInsets();
            } else {
                View view3 = this.f75295c.mView;
                view3.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC26917a(this, view3));
            }
            this.f75295c.performViewCreated();
            C26971w c26971w = this.f75293a;
            Fragment fragment7 = this.f75295c;
            c26971w.m1033m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.f75295c.mView.getVisibility();
            this.f75295c.setPostOnViewCreatedAlpha(this.f75295c.mView.getAlpha());
            Fragment fragment8 = this.f75295c;
            if (fragment8.mContainer != null && visibility == 0) {
                View findFocus = fragment8.mView.findFocus();
                if (findFocus != null) {
                    this.f75295c.setFocusedView(findFocus);
                    if (FragmentManager.m42933T(2)) {
                        String str2 = "requestFocus: Saved focused view " + findFocus + " for Fragment " + this.f75295c;
                    }
                }
                this.f75295c.mView.setAlpha(0.0f);
            }
        }
        this.f75295c.mState = 2;
    }

    /* renamed from: g */
    public void m1161g() {
        Fragment m1140d;
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("movefrom CREATED: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        Fragment fragment = this.f75295c;
        boolean z = true;
        boolean z2 = fragment.mRemoving && !fragment.isInBackStack();
        if (!(z2 || this.f75294b.f75313c.m1029e(this.f75295c))) {
            String str = this.f75295c.mTargetWho;
            if (str != null && (m1140d = this.f75294b.m1140d(str)) != null && m1140d.mRetainInstance) {
                this.f75295c.mTarget = m1140d;
            }
            this.f75295c.mState = 0;
            return;
        }
        AbstractC26959u abstractC26959u = this.f75295c.mHost;
        if (abstractC26959u instanceof AbstractC26996c1) {
            z = this.f75294b.f75313c.f75486e;
        } else {
            Context context = abstractC26959u.f75444b;
            if (context instanceof Activity) {
                z = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (z2 || z) {
            C26975y c26975y = this.f75294b.f75313c;
            Fragment fragment2 = this.f75295c;
            Objects.requireNonNull(c26975y);
            if (FragmentManager.m42933T(3)) {
                String str2 = "Clearing non-config state for " + fragment2;
            }
            C26975y c26975y2 = c26975y.f75483b.get(fragment2.mWho);
            if (c26975y2 != null) {
                c26975y2.onCleared();
                c26975y.f75483b.remove(fragment2.mWho);
            }
            C26993b1 c26993b1 = c26975y.f75484c.get(fragment2.mWho);
            if (c26993b1 != null) {
                c26993b1.m1022a();
                c26975y.f75484c.remove(fragment2.mWho);
            }
        }
        this.f75295c.performDestroy();
        this.f75293a.m1042d(this.f75295c, false);
        Iterator it = ((ArrayList) this.f75294b.m1138f()).iterator();
        while (it.hasNext()) {
            C26916c0 c26916c0 = (C26916c0) it.next();
            if (c26916c0 != null) {
                Fragment fragment3 = c26916c0.f75295c;
                if (this.f75295c.mWho.equals(fragment3.mTargetWho)) {
                    fragment3.mTarget = this.f75295c;
                    fragment3.mTargetWho = null;
                }
            }
        }
        Fragment fragment4 = this.f75295c;
        String str3 = fragment4.mTargetWho;
        if (str3 != null) {
            fragment4.mTarget = this.f75294b.m1140d(str3);
        }
        this.f75294b.m1133k(this);
    }

    /* renamed from: h */
    public void m1160h() {
        View view;
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("movefrom CREATE_VIEW: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        Fragment fragment = this.f75295c;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f75295c.performDestroyView();
        this.f75293a.m1032n(this.f75295c, false);
        Fragment fragment2 = this.f75295c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.mo1000l(null);
        this.f75295c.mInLayout = false;
    }

    /* renamed from: i */
    public void m1159i() {
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("movefrom ATTACHED: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        this.f75295c.performDetach();
        this.f75293a.m1041e(this.f75295c, false);
        Fragment fragment = this.f75295c;
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
        if (z || this.f75294b.f75313c.m1029e(this.f75295c)) {
            if (FragmentManager.m42933T(3)) {
                StringBuilder m8728C2 = C22128a.m8728C("initState called for fragment: ");
                m8728C2.append(this.f75295c);
                m8728C2.toString();
            }
            this.f75295c.initState();
        }
    }

    /* renamed from: j */
    public void m1158j() {
        Fragment fragment = this.f75295c;
        if (!fragment.mFromLayout || !fragment.mInLayout || fragment.mPerformedCreateView) {
            return;
        }
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("moveto CREATE_VIEW: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        Fragment fragment2 = this.f75295c;
        fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), (ViewGroup) null, this.f75295c.mSavedFragmentState);
        View view = this.f75295c.mView;
        if (view == null) {
            return;
        }
        view.setSaveFromParentEnabled(false);
        Fragment fragment3 = this.f75295c;
        fragment3.mView.setTag(C0158R.C0160id.fragment_container_view_tag, fragment3);
        Fragment fragment4 = this.f75295c;
        if (fragment4.mHidden) {
            fragment4.mView.setVisibility(8);
        }
        this.f75295c.performViewCreated();
        C26971w c26971w = this.f75293a;
        Fragment fragment5 = this.f75295c;
        c26971w.m1033m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
        this.f75295c.mState = 2;
    }

    /* renamed from: k */
    public void m1157k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        AbstractC26960u0.C26964d.EnumC26966b enumC26966b = AbstractC26960u0.C26964d.EnumC26966b.NONE;
        if (this.f75296d) {
            if (!FragmentManager.m42933T(2)) {
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Ignoring re-entrant call to moveToExpectedState() for ");
            m8728C.append(this.f75295c);
            m8728C.toString();
            return;
        }
        try {
            this.f75296d = true;
            while (true) {
                int m1164d = m1164d();
                Fragment fragment = this.f75295c;
                int i = fragment.mState;
                if (m1164d == i) {
                    if (fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            AbstractC26960u0 m1057f = AbstractC26960u0.m1057f(viewGroup, fragment.getParentFragmentManager());
                            if (this.f75295c.mHidden) {
                                Objects.requireNonNull(m1057f);
                                if (FragmentManager.m42933T(2)) {
                                    String str = "SpecialEffectsController: Enqueuing hide operation for fragment " + this.f75295c;
                                }
                                m1057f.m1062a(AbstractC26960u0.C26964d.EnumC26967c.GONE, enumC26966b, this);
                            } else {
                                Objects.requireNonNull(m1057f);
                                if (FragmentManager.m42933T(2)) {
                                    String str2 = "SpecialEffectsController: Enqueuing show operation for fragment " + this.f75295c;
                                }
                                m1057f.m1062a(AbstractC26960u0.C26964d.EnumC26967c.VISIBLE, enumC26966b, this);
                            }
                        }
                        Fragment fragment2 = this.f75295c;
                        FragmentManager fragmentManager = fragment2.mFragmentManager;
                        if (fragmentManager != null && fragment2.mAdded && fragmentManager.m42932U(fragment2)) {
                            fragmentManager.f827B = true;
                        }
                        Fragment fragment3 = this.f75295c;
                        fragment3.mHiddenChanged = false;
                        fragment3.onHiddenChanged(fragment3.mHidden);
                    }
                    return;
                } else if (m1164d > i) {
                    switch (i + 1) {
                        case 0:
                            m1165c();
                            continue;
                        case 1:
                            m1163e();
                            continue;
                        case 2:
                            m1158j();
                            m1162f();
                            continue;
                        case 3:
                            m1167a();
                            continue;
                        case 4:
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                AbstractC26960u0 m1057f2 = AbstractC26960u0.m1057f(viewGroup2, fragment.getParentFragmentManager());
                                AbstractC26960u0.C26964d.EnumC26967c m1047c = AbstractC26960u0.C26964d.EnumC26967c.m1047c(this.f75295c.mView.getVisibility());
                                Objects.requireNonNull(m1057f2);
                                if (FragmentManager.m42933T(2)) {
                                    String str3 = "SpecialEffectsController: Enqueuing add operation for fragment " + this.f75295c;
                                }
                                m1057f2.m1062a(m1047c, AbstractC26960u0.C26964d.EnumC26966b.ADDING, this);
                            }
                            this.f75295c.mState = 4;
                            continue;
                        case 5:
                            m1151q();
                            continue;
                        case 6:
                            fragment.mState = 6;
                            continue;
                        case 7:
                            m1154n();
                            continue;
                    }
                } else {
                    switch (i - 1) {
                        case -1:
                            m1159i();
                            continue;
                        case 0:
                            m1161g();
                            continue;
                        case 1:
                            m1160h();
                            this.f75295c.mState = 1;
                            continue;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            continue;
                        case 3:
                            if (FragmentManager.m42933T(3)) {
                                String str4 = "movefrom ACTIVITY_CREATED: " + this.f75295c;
                            }
                            Fragment fragment4 = this.f75295c;
                            if (fragment4.mView != null && fragment4.mSavedViewState == null) {
                                m1152p();
                            }
                            Fragment fragment5 = this.f75295c;
                            if (fragment5.mView != null && (viewGroup3 = fragment5.mContainer) != null) {
                                AbstractC26960u0 m1057f3 = AbstractC26960u0.m1057f(viewGroup3, fragment5.getParentFragmentManager());
                                Objects.requireNonNull(m1057f3);
                                if (FragmentManager.m42933T(2)) {
                                    String str5 = "SpecialEffectsController: Enqueuing remove operation for fragment " + this.f75295c;
                                }
                                m1057f3.m1062a(AbstractC26960u0.C26964d.EnumC26967c.REMOVED, AbstractC26960u0.C26964d.EnumC26966b.REMOVING, this);
                            }
                            this.f75295c.mState = 3;
                            continue;
                        case 4:
                            m1150r();
                            continue;
                        case 5:
                            fragment.mState = 5;
                            continue;
                        case 6:
                            m1156l();
                            continue;
                    }
                }
            }
        } finally {
            this.f75296d = false;
        }
    }

    /* renamed from: l */
    public void m1156l() {
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("movefrom RESUMED: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        this.f75295c.performPause();
        this.f75293a.m1040f(this.f75295c, false);
    }

    /* renamed from: m */
    public void m1155m(ClassLoader classLoader) {
        Bundle bundle = this.f75295c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f75295c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f75295c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f75295c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        Fragment fragment4 = this.f75295c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f75295c;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.f75295c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f75295c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    /* renamed from: n */
    public void m1154n() {
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("moveto RESUMED: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        View focusedView = this.f75295c.getFocusedView();
        if (focusedView != null) {
            boolean z = true;
            if (focusedView != this.f75295c.mView) {
                ViewParent parent = focusedView.getParent();
                while (true) {
                    ViewParent viewParent = parent;
                    if (viewParent == null) {
                        z = false;
                        break;
                    } else if (viewParent == this.f75295c.mView) {
                        break;
                    } else {
                        parent = viewParent.getParent();
                    }
                }
            }
            if (z) {
                boolean requestFocus = focusedView.requestFocus();
                if (FragmentManager.m42933T(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("requestFocus: Restoring focused view ");
                    sb.append(focusedView);
                    sb.append(StringConstant.SPACE);
                    sb.append(requestFocus ? "succeeded" : "failed");
                    sb.append(" on Fragment ");
                    sb.append(this.f75295c);
                    sb.append(" resulting in focused view ");
                    sb.append(this.f75295c.mView.findFocus());
                    sb.toString();
                }
            }
        }
        this.f75295c.setFocusedView((View) null);
        this.f75295c.performResume();
        this.f75293a.m1037i(this.f75295c, false);
        Fragment fragment = this.f75295c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    /* renamed from: o */
    public final Bundle m1153o() {
        Bundle bundle = new Bundle();
        this.f75295c.performSaveInstanceState(bundle);
        this.f75293a.m1036j(this.f75295c, bundle, false);
        Bundle bundle2 = bundle;
        if (bundle.isEmpty()) {
            bundle2 = null;
        }
        if (this.f75295c.mView != null) {
            m1152p();
        }
        Bundle bundle3 = bundle2;
        if (this.f75295c.mSavedViewState != null) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putSparseParcelableArray("android:view_state", this.f75295c.mSavedViewState);
        }
        Bundle bundle4 = bundle3;
        if (this.f75295c.mSavedViewRegistryState != null) {
            bundle4 = bundle3;
            if (bundle3 == null) {
                bundle4 = new Bundle();
            }
            bundle4.putBundle("android:view_registry_state", this.f75295c.mSavedViewRegistryState);
        }
        Bundle bundle5 = bundle4;
        if (!this.f75295c.mUserVisibleHint) {
            bundle5 = bundle4;
            if (bundle4 == null) {
                bundle5 = new Bundle();
            }
            bundle5.putBoolean("android:user_visible_hint", this.f75295c.mUserVisibleHint);
        }
        return bundle5;
    }

    /* renamed from: p */
    public void m1152p() {
        if (this.f75295c.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f75295c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f75295c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f75295c.mViewLifecycleOwner.c.m3042b(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f75295c.mSavedViewRegistryState = bundle;
    }

    /* renamed from: q */
    public void m1151q() {
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("moveto STARTED: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        this.f75295c.performStart();
        this.f75293a.m1035k(this.f75295c, false);
    }

    /* renamed from: r */
    public void m1150r() {
        if (FragmentManager.m42933T(3)) {
            StringBuilder m8728C = C22128a.m8728C("movefrom STARTED: ");
            m8728C.append(this.f75295c);
            m8728C.toString();
        }
        this.f75295c.performStop();
        this.f75293a.m1034l(this.f75295c, false);
    }
}
