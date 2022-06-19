package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.C0926v;
import androidx.fragment.C1028a;
import androidx.fragment.app.AbstractC1147z;
import androidx.lifecycle.AbstractC1239ad;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1263p;
import androidx.lifecycle.C1238ac;
import androidx.lifecycle.C1267t;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.fragment.app.p */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/p.class */
public final class C1116p {

    /* renamed from: a */
    final Fragment f4383a;

    /* renamed from: c */
    private final C1108j f4385c;

    /* renamed from: d */
    private final C1120r f4386d;

    /* renamed from: e */
    private boolean f4387e = false;

    /* renamed from: b */
    int f4384b = -1;

    /* renamed from: androidx.fragment.app.p$2 */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/p$2.class */
    public static final /* synthetic */ class C11182 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4390a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC1253j.EnumC1256b.values().length];
            f4390a = iArr;
            try {
                iArr[AbstractC1253j.EnumC1256b.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4390a[AbstractC1253j.EnumC1256b.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4390a[AbstractC1253j.EnumC1256b.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4390a[AbstractC1253j.EnumC1256b.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C1116p(C1108j c1108j, C1120r c1120r, Fragment fragment) {
        this.f4385c = c1108j;
        this.f4386d = c1120r;
        this.f4383a = fragment;
    }

    public C1116p(C1108j c1108j, C1120r c1120r, Fragment fragment, FragmentState fragmentState) {
        this.f4385c = c1108j;
        this.f4386d = c1120r;
        this.f4383a = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        fragment.mTargetWho = fragment.mTarget != null ? fragment.mTarget.mWho : null;
        fragment.mTarget = null;
        if (fragmentState.mSavedFragmentState != null) {
            fragment.mSavedFragmentState = fragmentState.mSavedFragmentState;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }

    public C1116p(C1108j c1108j, C1120r c1120r, ClassLoader classLoader, C1104g c1104g, FragmentState fragmentState) {
        this.f4385c = c1108j;
        this.f4386d = c1120r;
        Fragment mo43616c = c1104g.mo43616c(classLoader, fragmentState.mClassName);
        this.f4383a = mo43616c;
        if (fragmentState.mArguments != null) {
            fragmentState.mArguments.setClassLoader(classLoader);
        }
        mo43616c.setArguments(fragmentState.mArguments);
        mo43616c.mWho = fragmentState.mWho;
        mo43616c.mFromLayout = fragmentState.mFromLayout;
        mo43616c.mRestored = true;
        mo43616c.mFragmentId = fragmentState.mFragmentId;
        mo43616c.mContainerId = fragmentState.mContainerId;
        mo43616c.mTag = fragmentState.mTag;
        mo43616c.mRetainInstance = fragmentState.mRetainInstance;
        mo43616c.mRemoving = fragmentState.mRemoving;
        mo43616c.mDetached = fragmentState.mDetached;
        mo43616c.mHidden = fragmentState.mHidden;
        mo43616c.mMaxState = AbstractC1253j.EnumC1256b.values()[fragmentState.mMaxLifecycleState];
        if (fragmentState.mSavedFragmentState != null) {
            mo43616c.mSavedFragmentState = fragmentState.mSavedFragmentState;
        } else {
            mo43616c.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.m43764a(2)) {
            new StringBuilder("Instantiated fragment ").append(mo43616c);
        }
    }

    /* renamed from: a */
    private boolean m43582a(View view) {
        if (view == this.f4383a.mView) {
            return true;
        }
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent == null) {
                return false;
            }
            if (viewParent == this.f4383a.mView) {
                return true;
            }
            parent = viewParent.getParent();
        }
    }

    /* renamed from: a */
    public final int m43583a() {
        int i;
        if (this.f4383a.mFragmentManager == null) {
            return this.f4383a.mState;
        }
        int i2 = this.f4384b;
        int i3 = C11182.f4390a[this.f4383a.mMaxState.ordinal()];
        int i4 = i2;
        if (i3 != 1) {
            i4 = i3 != 2 ? i3 != 3 ? i3 != 4 ? Math.min(i2, -1) : Math.min(i2, 0) : Math.min(i2, 1) : Math.min(i2, 5);
        }
        int i5 = i4;
        if (this.f4383a.mFromLayout) {
            if (this.f4383a.mInLayout) {
                int max = Math.max(this.f4384b, 2);
                i5 = max;
                if (this.f4383a.mView != null) {
                    i5 = max;
                    if (this.f4383a.mView.getParent() == null) {
                        i5 = Math.min(max, 2);
                    }
                }
            } else {
                i5 = this.f4384b < 4 ? Math.min(i4, this.f4383a.mState) : Math.min(i4, 1);
            }
        }
        int i6 = i5;
        if (!this.f4383a.mAdded) {
            i6 = Math.min(i5, 1);
        }
        AbstractC1147z.C1152b.EnumC1154a enumC1154a = null;
        if (FragmentManager.f4192a) {
            enumC1154a = null;
            if (this.f4383a.mContainer != null) {
                enumC1154a = AbstractC1147z.m43484a(this.f4383a.mContainer, this.f4383a.getParentFragmentManager()).m43481a(this);
            }
        }
        if (enumC1154a == AbstractC1147z.C1152b.EnumC1154a.ADDING) {
            i = Math.min(i6, 6);
        } else if (enumC1154a == AbstractC1147z.C1152b.EnumC1154a.REMOVING) {
            i = Math.max(i6, 3);
        } else {
            i = i6;
            if (this.f4383a.mRemoving) {
                i = this.f4383a.isInBackStack() ? Math.min(i6, 1) : Math.min(i6, -1);
            }
        }
        int i7 = i;
        if (this.f4383a.mDeferStart) {
            i7 = i;
            if (this.f4383a.mState < 5) {
                i7 = Math.min(i, 4);
            }
        }
        if (FragmentManager.m43764a(2)) {
            StringBuilder sb = new StringBuilder("computeExpectedState() of ");
            sb.append(i7);
            sb.append(" for ");
            sb.append(this.f4383a);
        }
        return i7;
    }

    /* renamed from: a */
    public final void m43581a(ClassLoader classLoader) {
        if (this.f4383a.mSavedFragmentState == null) {
            return;
        }
        this.f4383a.mSavedFragmentState.setClassLoader(classLoader);
        Fragment fragment = this.f4383a;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f4383a;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f4383a;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        if (this.f4383a.mTargetWho != null) {
            Fragment fragment4 = this.f4383a;
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        if (this.f4383a.mSavedUserVisibleHint != null) {
            Fragment fragment5 = this.f4383a;
            fragment5.mUserVisibleHint = fragment5.mSavedUserVisibleHint.booleanValue();
            this.f4383a.mSavedUserVisibleHint = null;
        } else {
            Fragment fragment6 = this.f4383a;
            fragment6.mUserVisibleHint = fragment6.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        if (this.f4383a.mUserVisibleHint) {
            return;
        }
        this.f4383a.mDeferStart = true;
    }

    /* renamed from: b */
    public final void m43580b() {
        if (this.f4387e) {
            if (!FragmentManager.m43764a(2)) {
                return;
            }
            new StringBuilder("Ignoring re-entrant call to moveToExpectedState() for ").append(this.f4383a);
            return;
        }
        try {
            this.f4387e = true;
            while (true) {
                int m43583a = m43583a();
                if (m43583a == this.f4383a.mState) {
                    if (FragmentManager.f4192a && this.f4383a.mHiddenChanged) {
                        if (this.f4383a.mView != null && this.f4383a.mContainer != null) {
                            AbstractC1147z m43484a = AbstractC1147z.m43484a(this.f4383a.mContainer, this.f4383a.getParentFragmentManager());
                            if (this.f4383a.mHidden) {
                                m43484a.m43473c(this);
                            } else {
                                m43484a.m43475b(this);
                            }
                        }
                        if (this.f4383a.mFragmentManager != null) {
                            this.f4383a.mFragmentManager.m43684q(this.f4383a);
                        }
                        this.f4383a.mHiddenChanged = false;
                        Fragment fragment = this.f4383a;
                        fragment.onHiddenChanged(fragment.mHidden);
                    }
                    return;
                } else if (m43583a > this.f4383a.mState) {
                    switch (this.f4383a.mState + 1) {
                        case 0:
                            m43578d();
                            continue;
                        case 1:
                            m43577e();
                            continue;
                        case 2:
                            m43579c();
                            m43576f();
                            continue;
                        case 3:
                            m43575g();
                            continue;
                        case 4:
                            if (this.f4383a.mView != null && this.f4383a.mContainer != null) {
                                AbstractC1147z.m43484a(this.f4383a.mContainer, this.f4383a.getParentFragmentManager()).m43480a(AbstractC1147z.C1152b.EnumC1155b.from(this.f4383a.mView.getVisibility()), this);
                            }
                            this.f4383a.mState = 4;
                            continue;
                        case 5:
                            m43574h();
                            continue;
                        case 6:
                            this.f4383a.mState = 6;
                            continue;
                        case 7:
                            m43573i();
                            continue;
                        default:
                            continue;
                    }
                } else {
                    switch (this.f4383a.mState - 1) {
                        case -1:
                            m43565q();
                            continue;
                        case 0:
                            m43566p();
                            continue;
                        case 1:
                            m43567o();
                            this.f4383a.mState = 1;
                            continue;
                        case 2:
                            this.f4383a.mInLayout = false;
                            this.f4383a.mState = 2;
                            continue;
                        case 3:
                            if (FragmentManager.m43764a(3)) {
                                new StringBuilder("movefrom ACTIVITY_CREATED: ").append(this.f4383a);
                            }
                            if (this.f4383a.mView != null && this.f4383a.mSavedViewState == null) {
                                m43568n();
                            }
                            if (this.f4383a.mView != null && this.f4383a.mContainer != null) {
                                AbstractC1147z.m43484a(this.f4383a.mContainer, this.f4383a.getParentFragmentManager()).m43471d(this);
                            }
                            this.f4383a.mState = 3;
                            continue;
                        case 4:
                            m43571k();
                            continue;
                        case 5:
                            this.f4383a.mState = 5;
                            continue;
                        case 6:
                            m43572j();
                            continue;
                        default:
                            continue;
                    }
                }
            }
        } finally {
            this.f4387e = false;
        }
    }

    /* renamed from: c */
    public final void m43579c() {
        if (!this.f4383a.mFromLayout || !this.f4383a.mInLayout || this.f4383a.mPerformedCreateView) {
            return;
        }
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("moveto CREATE_VIEW: ").append(this.f4383a);
        }
        Fragment fragment = this.f4383a;
        fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), null, this.f4383a.mSavedFragmentState);
        if (this.f4383a.mView == null) {
            return;
        }
        this.f4383a.mView.setSaveFromParentEnabled(false);
        this.f4383a.mView.setTag(C1028a.C1030b.fragment_container_view_tag, this.f4383a);
        if (this.f4383a.mHidden) {
            this.f4383a.mView.setVisibility(8);
        }
        this.f4383a.performViewCreated();
        C1108j c1108j = this.f4385c;
        Fragment fragment2 = this.f4383a;
        c1108j.m43603a(fragment2, fragment2.mView, this.f4383a.mSavedFragmentState, false);
        this.f4383a.mState = 2;
    }

    /* renamed from: d */
    public final void m43578d() {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("moveto ATTACHED: ").append(this.f4383a);
        }
        C1116p c1116p = null;
        if (this.f4383a.mTarget != null) {
            c1116p = this.f4386d.m43549c(this.f4383a.mTarget.mWho);
            if (c1116p == null) {
                throw new IllegalStateException("Fragment " + this.f4383a + " declared target fragment " + this.f4383a.mTarget + " that does not belong to this FragmentManager!");
            }
            Fragment fragment = this.f4383a;
            fragment.mTargetWho = fragment.mTarget.mWho;
            this.f4383a.mTarget = null;
        } else if (this.f4383a.mTargetWho != null) {
            c1116p = this.f4386d.m43549c(this.f4383a.mTargetWho);
            if (c1116p == null) {
                throw new IllegalStateException("Fragment " + this.f4383a + " declared target fragment " + this.f4383a.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (c1116p != null && (FragmentManager.f4192a || c1116p.f4383a.mState <= 0)) {
            c1116p.m43580b();
        }
        Fragment fragment2 = this.f4383a;
        fragment2.mHost = fragment2.mFragmentManager.f4220l;
        Fragment fragment3 = this.f4383a;
        fragment3.mParentFragment = fragment3.mFragmentManager.f4222n;
        this.f4385c.m43605a(this.f4383a);
        this.f4383a.performAttach();
        this.f4385c.m43601b(this.f4383a);
    }

    /* renamed from: e */
    public final void m43577e() {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("moveto CREATED: ").append(this.f4383a);
        }
        if (this.f4383a.mIsCreated) {
            Fragment fragment = this.f4383a;
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.f4383a.mState = 1;
            return;
        }
        C1108j c1108j = this.f4385c;
        Fragment fragment2 = this.f4383a;
        c1108j.m43604a(fragment2, fragment2.mSavedFragmentState);
        Fragment fragment3 = this.f4383a;
        fragment3.performCreate(fragment3.mSavedFragmentState);
        C1108j c1108j2 = this.f4385c;
        Fragment fragment4 = this.f4383a;
        c1108j2.m43600b(fragment4, fragment4.mSavedFragmentState);
    }

    /* renamed from: f */
    public final void m43576f() {
        String str;
        if (this.f4383a.mFromLayout) {
            return;
        }
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("moveto CREATE_VIEW: ").append(this.f4383a);
        }
        Fragment fragment = this.f4383a;
        LayoutInflater performGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        ViewGroup viewGroup = null;
        if (this.f4383a.mContainer != null) {
            viewGroup = this.f4383a.mContainer;
        } else if (this.f4383a.mContainerId != 0) {
            if (this.f4383a.mContainerId == -1) {
                throw new IllegalArgumentException("Cannot create fragment " + this.f4383a + " for a container view with no id");
            }
            ViewGroup viewGroup2 = (ViewGroup) this.f4383a.mFragmentManager.f4221m.mo43613a(this.f4383a.mContainerId);
            viewGroup = viewGroup2;
            if (viewGroup2 == null) {
                if (!this.f4383a.mRestored) {
                    try {
                        str = this.f4383a.getResources().getResourceName(this.f4383a.mContainerId);
                    } catch (Resources.NotFoundException e) {
                        str = "unknown";
                    }
                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f4383a.mContainerId) + " (" + str + ") for fragment " + this.f4383a);
                }
                viewGroup = viewGroup2;
            }
        }
        this.f4383a.mContainer = viewGroup;
        Fragment fragment2 = this.f4383a;
        fragment2.performCreateView(performGetLayoutInflater, viewGroup, fragment2.mSavedFragmentState);
        if (this.f4383a.mView != null) {
            this.f4383a.mView.setSaveFromParentEnabled(false);
            this.f4383a.mView.setTag(C1028a.C1030b.fragment_container_view_tag, this.f4383a);
            if (viewGroup != null) {
                m43564r();
            }
            if (this.f4383a.mHidden) {
                this.f4383a.mView.setVisibility(8);
            }
            if (C0926v.m44154E(this.f4383a.mView)) {
                C0926v.m44081r(this.f4383a.mView);
            } else {
                final View view = this.f4383a.mView;
                view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.p.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewAttachedToWindow(View view2) {
                        view.removeOnAttachStateChangeListener(this);
                        C0926v.m44081r(view);
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewDetachedFromWindow(View view2) {
                    }
                });
            }
            this.f4383a.performViewCreated();
            C1108j c1108j = this.f4385c;
            Fragment fragment3 = this.f4383a;
            c1108j.m43603a(fragment3, fragment3.mView, this.f4383a.mSavedFragmentState, false);
            int visibility = this.f4383a.mView.getVisibility();
            float alpha = this.f4383a.mView.getAlpha();
            if (FragmentManager.f4192a) {
                this.f4383a.setPostOnViewCreatedAlpha(alpha);
                if (this.f4383a.mContainer != null && visibility == 0) {
                    View findFocus = this.f4383a.mView.findFocus();
                    if (findFocus != null) {
                        this.f4383a.setFocusedView(findFocus);
                        if (FragmentManager.m43764a(2)) {
                            StringBuilder sb = new StringBuilder("requestFocus: Saved focused view ");
                            sb.append(findFocus);
                            sb.append(" for Fragment ");
                            sb.append(this.f4383a);
                        }
                    }
                    this.f4383a.mView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
            } else {
                Fragment fragment4 = this.f4383a;
                boolean z = false;
                if (visibility == 0) {
                    z = false;
                    if (fragment4.mContainer != null) {
                        z = true;
                    }
                }
                fragment4.mIsNewlyAdded = z;
            }
        }
        this.f4383a.mState = 2;
    }

    /* renamed from: g */
    public final void m43575g() {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("moveto ACTIVITY_CREATED: ").append(this.f4383a);
        }
        Fragment fragment = this.f4383a;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        C1108j c1108j = this.f4385c;
        Fragment fragment2 = this.f4383a;
        c1108j.m43598c(fragment2, fragment2.mSavedFragmentState);
    }

    /* renamed from: h */
    public final void m43574h() {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("moveto STARTED: ").append(this.f4383a);
        }
        this.f4383a.performStart();
        this.f4385c.m43599c(this.f4383a);
    }

    /* renamed from: i */
    public final void m43573i() {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("moveto RESUMED: ").append(this.f4383a);
        }
        View focusedView = this.f4383a.getFocusedView();
        if (focusedView != null && m43582a(focusedView)) {
            boolean requestFocus = focusedView.requestFocus();
            if (FragmentManager.m43764a(2)) {
                StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                sb.append(focusedView);
                sb.append(StringUtils.SPACE);
                sb.append(requestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(this.f4383a);
                sb.append(" resulting in focused view ");
                sb.append(this.f4383a.mView.findFocus());
            }
        }
        this.f4383a.setFocusedView(null);
        this.f4383a.performResume();
        this.f4385c.m43597d(this.f4383a);
        this.f4383a.mSavedFragmentState = null;
        this.f4383a.mSavedViewState = null;
        this.f4383a.mSavedViewRegistryState = null;
    }

    /* renamed from: j */
    public final void m43572j() {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("movefrom RESUMED: ").append(this.f4383a);
        }
        this.f4383a.performPause();
        this.f4385c.m43595e(this.f4383a);
    }

    /* renamed from: k */
    public final void m43571k() {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("movefrom STARTED: ").append(this.f4383a);
        }
        this.f4383a.performStop();
        this.f4385c.m43594f(this.f4383a);
    }

    /* renamed from: l */
    public final FragmentState m43570l() {
        FragmentState fragmentState = new FragmentState(this.f4383a);
        if (this.f4383a.mState < 0 || fragmentState.mSavedFragmentState != null) {
            fragmentState.mSavedFragmentState = this.f4383a.mSavedFragmentState;
        } else {
            fragmentState.mSavedFragmentState = m43569m();
            if (this.f4383a.mTargetWho != null) {
                if (fragmentState.mSavedFragmentState == null) {
                    fragmentState.mSavedFragmentState = new Bundle();
                }
                fragmentState.mSavedFragmentState.putString("android:target_state", this.f4383a.mTargetWho);
                if (this.f4383a.mTargetRequestCode != 0) {
                    fragmentState.mSavedFragmentState.putInt("android:target_req_state", this.f4383a.mTargetRequestCode);
                }
            }
        }
        return fragmentState;
    }

    /* renamed from: m */
    public final Bundle m43569m() {
        Bundle bundle = new Bundle();
        this.f4383a.performSaveInstanceState(bundle);
        this.f4385c.m43596d(this.f4383a, bundle);
        Bundle bundle2 = bundle;
        if (bundle.isEmpty()) {
            bundle2 = null;
        }
        if (this.f4383a.mView != null) {
            m43568n();
        }
        Bundle bundle3 = bundle2;
        if (this.f4383a.mSavedViewState != null) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putSparseParcelableArray("android:view_state", this.f4383a.mSavedViewState);
        }
        Bundle bundle4 = bundle3;
        if (this.f4383a.mSavedViewRegistryState != null) {
            bundle4 = bundle3;
            if (bundle3 == null) {
                bundle4 = new Bundle();
            }
            bundle4.putBundle("android:view_registry_state", this.f4383a.mSavedViewRegistryState);
        }
        Bundle bundle5 = bundle4;
        if (!this.f4383a.mUserVisibleHint) {
            bundle5 = bundle4;
            if (bundle4 == null) {
                bundle5 = new Bundle();
            }
            bundle5.putBoolean("android:user_visible_hint", this.f4383a.mUserVisibleHint);
        }
        return bundle5;
    }

    /* renamed from: n */
    public final void m43568n() {
        if (this.f4383a.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f4383a.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f4383a.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f4383a.mViewLifecycleOwner.m43490a(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f4383a.mSavedViewRegistryState = bundle;
    }

    /* renamed from: o */
    public final void m43567o() {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("movefrom CREATE_VIEW: ").append(this.f4383a);
        }
        if (this.f4383a.mContainer != null && this.f4383a.mView != null) {
            this.f4383a.mContainer.removeView(this.f4383a.mView);
        }
        this.f4383a.performDestroyView();
        this.f4385c.m43602a(this.f4383a, false);
        this.f4383a.mContainer = null;
        this.f4383a.mView = null;
        this.f4383a.mViewLifecycleOwner = null;
        this.f4383a.mViewLifecycleOwnerLiveData.mo43286b((C1267t<AbstractC1263p>) null);
        this.f4383a.mInLayout = false;
    }

    /* renamed from: p */
    public final void m43566p() {
        Fragment m43545e;
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("movefrom CREATED: ").append(this.f4383a);
        }
        boolean z = true;
        boolean z2 = this.f4383a.mRemoving && !this.f4383a.isInBackStack();
        if (!(z2 || this.f4386d.f4399b.m43587b(this.f4383a))) {
            if (this.f4383a.mTargetWho != null && (m43545e = this.f4386d.m43545e(this.f4383a.mTargetWho)) != null && m43545e.mRetainInstance) {
                this.f4383a.mTarget = m43545e;
            }
            this.f4383a.mState = 0;
            return;
        }
        AbstractC1105h<?> abstractC1105h = this.f4383a.mHost;
        if (abstractC1105h instanceof AbstractC1239ad) {
            z = this.f4386d.f4399b.f4374d;
        } else if (abstractC1105h.f4360c instanceof Activity) {
            z = true ^ ((Activity) abstractC1105h.f4360c).isChangingConfigurations();
        }
        if (z2 || z) {
            C1111l c1111l = this.f4386d.f4399b;
            Fragment fragment = this.f4383a;
            if (FragmentManager.m43764a(3)) {
                new StringBuilder("Clearing non-config state for ").append(fragment);
            }
            C1111l c1111l2 = c1111l.f4371a.get(fragment.mWho);
            if (c1111l2 != null) {
                c1111l2.mo43317a();
                c1111l.f4371a.remove(fragment.mWho);
            }
            C1238ac c1238ac = c1111l.f4372b.get(fragment.mWho);
            if (c1238ac != null) {
                c1238ac.m43306b();
                c1111l.f4372b.remove(fragment.mWho);
            }
        }
        this.f4383a.performDestroy();
        this.f4385c.m43593g(this.f4383a);
        for (C1116p c1116p : this.f4386d.m43546e()) {
            if (c1116p != null) {
                Fragment fragment2 = c1116p.f4383a;
                if (this.f4383a.mWho.equals(fragment2.mTargetWho)) {
                    fragment2.mTarget = this.f4383a;
                    fragment2.mTargetWho = null;
                }
            }
        }
        if (this.f4383a.mTargetWho != null) {
            Fragment fragment3 = this.f4383a;
            fragment3.mTarget = this.f4386d.m43545e(fragment3.mTargetWho);
        }
        this.f4386d.m43553b(this);
    }

    /* renamed from: q */
    public final void m43565q() {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("movefrom ATTACHED: ").append(this.f4383a);
        }
        this.f4383a.performDetach();
        this.f4385c.m43592h(this.f4383a);
        this.f4383a.mState = -1;
        this.f4383a.mHost = null;
        this.f4383a.mParentFragment = null;
        this.f4383a.mFragmentManager = null;
        if ((this.f4383a.mRemoving && !this.f4383a.isInBackStack()) || this.f4386d.f4399b.m43587b(this.f4383a)) {
            if (FragmentManager.m43764a(3)) {
                new StringBuilder("initState called for fragment: ").append(this.f4383a);
            }
            this.f4383a.initState();
        }
    }

    /* renamed from: r */
    public final void m43564r() {
        this.f4383a.mContainer.addView(this.f4383a.mView, this.f4386d.m43550c(this.f4383a));
    }
}
