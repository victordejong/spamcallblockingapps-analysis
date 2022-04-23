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
import androidx.core.view.v;
import androidx.fragment.a;
import androidx.fragment.app.z;
import androidx.lifecycle.ac;
import androidx.lifecycle.ad;
import androidx.lifecycle.j;
import androidx.lifecycle.t;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    final Fragment f2308a;

    /* renamed from: c  reason: collision with root package name */
    private final j f2310c;

    /* renamed from: d  reason: collision with root package name */
    private final r f2311d;
    private boolean e = false;

    /* renamed from: b  reason: collision with root package name */
    int f2309b = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.p$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/p$2.class */
    public static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2314a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[j.b.values().length];
            f2314a = iArr;
            try {
                iArr[j.b.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2314a[j.b.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2314a[j.b.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2314a[j.b.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(j jVar, r rVar, Fragment fragment) {
        this.f2310c = jVar;
        this.f2311d = rVar;
        this.f2308a = fragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(j jVar, r rVar, Fragment fragment, FragmentState fragmentState) {
        this.f2310c = jVar;
        this.f2311d = rVar;
        this.f2308a = fragment;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(j jVar, r rVar, ClassLoader classLoader, g gVar, FragmentState fragmentState) {
        this.f2310c = jVar;
        this.f2311d = rVar;
        Fragment c2 = gVar.c(classLoader, fragmentState.mClassName);
        this.f2308a = c2;
        if (fragmentState.mArguments != null) {
            fragmentState.mArguments.setClassLoader(classLoader);
        }
        c2.setArguments(fragmentState.mArguments);
        c2.mWho = fragmentState.mWho;
        c2.mFromLayout = fragmentState.mFromLayout;
        c2.mRestored = true;
        c2.mFragmentId = fragmentState.mFragmentId;
        c2.mContainerId = fragmentState.mContainerId;
        c2.mTag = fragmentState.mTag;
        c2.mRetainInstance = fragmentState.mRetainInstance;
        c2.mRemoving = fragmentState.mRemoving;
        c2.mDetached = fragmentState.mDetached;
        c2.mHidden = fragmentState.mHidden;
        c2.mMaxState = j.b.values()[fragmentState.mMaxLifecycleState];
        if (fragmentState.mSavedFragmentState != null) {
            c2.mSavedFragmentState = fragmentState.mSavedFragmentState;
        } else {
            c2.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.a(2)) {
            new StringBuilder("Instantiated fragment ").append(c2);
        }
    }

    private boolean a(View view) {
        if (view == this.f2308a.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f2308a.mView) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        int i;
        if (this.f2308a.mFragmentManager == null) {
            return this.f2308a.mState;
        }
        int i2 = this.f2309b;
        int i3 = AnonymousClass2.f2314a[this.f2308a.mMaxState.ordinal()];
        int i4 = i2;
        if (i3 != 1) {
            i4 = i3 != 2 ? i3 != 3 ? i3 != 4 ? Math.min(i2, -1) : Math.min(i2, 0) : Math.min(i2, 1) : Math.min(i2, 5);
        }
        int i5 = i4;
        if (this.f2308a.mFromLayout) {
            if (this.f2308a.mInLayout) {
                int max = Math.max(this.f2309b, 2);
                i5 = max;
                if (this.f2308a.mView != null) {
                    i5 = max;
                    if (this.f2308a.mView.getParent() == null) {
                        i5 = Math.min(max, 2);
                    }
                }
            } else {
                i5 = this.f2309b < 4 ? Math.min(i4, this.f2308a.mState) : Math.min(i4, 1);
            }
        }
        int i6 = i5;
        if (!this.f2308a.mAdded) {
            i6 = Math.min(i5, 1);
        }
        z.b.a aVar = null;
        if (FragmentManager.f2185a) {
            aVar = null;
            if (this.f2308a.mContainer != null) {
                aVar = z.a(this.f2308a.mContainer, this.f2308a.getParentFragmentManager()).a(this);
            }
        }
        if (aVar == z.b.a.ADDING) {
            i = Math.min(i6, 6);
        } else if (aVar == z.b.a.REMOVING) {
            i = Math.max(i6, 3);
        } else {
            i = i6;
            if (this.f2308a.mRemoving) {
                i = this.f2308a.isInBackStack() ? Math.min(i6, 1) : Math.min(i6, -1);
            }
        }
        int i7 = i;
        if (this.f2308a.mDeferStart) {
            i7 = i;
            if (this.f2308a.mState < 5) {
                i7 = Math.min(i, 4);
            }
        }
        if (FragmentManager.a(2)) {
            StringBuilder sb = new StringBuilder("computeExpectedState() of ");
            sb.append(i7);
            sb.append(" for ");
            sb.append(this.f2308a);
        }
        return i7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ClassLoader classLoader) {
        if (this.f2308a.mSavedFragmentState != null) {
            this.f2308a.mSavedFragmentState.setClassLoader(classLoader);
            Fragment fragment = this.f2308a;
            fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
            Fragment fragment2 = this.f2308a;
            fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
            Fragment fragment3 = this.f2308a;
            fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
            if (this.f2308a.mTargetWho != null) {
                Fragment fragment4 = this.f2308a;
                fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
            }
            if (this.f2308a.mSavedUserVisibleHint != null) {
                Fragment fragment5 = this.f2308a;
                fragment5.mUserVisibleHint = fragment5.mSavedUserVisibleHint.booleanValue();
                this.f2308a.mSavedUserVisibleHint = null;
            } else {
                Fragment fragment6 = this.f2308a;
                fragment6.mUserVisibleHint = fragment6.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
            }
            if (!this.f2308a.mUserVisibleHint) {
                this.f2308a.mDeferStart = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (!this.e) {
            try {
                this.e = true;
                while (true) {
                    int a2 = a();
                    if (a2 == this.f2308a.mState) {
                        if (FragmentManager.f2185a && this.f2308a.mHiddenChanged) {
                            if (!(this.f2308a.mView == null || this.f2308a.mContainer == null)) {
                                z a3 = z.a(this.f2308a.mContainer, this.f2308a.getParentFragmentManager());
                                if (this.f2308a.mHidden) {
                                    a3.c(this);
                                } else {
                                    a3.b(this);
                                }
                            }
                            if (this.f2308a.mFragmentManager != null) {
                                this.f2308a.mFragmentManager.q(this.f2308a);
                            }
                            this.f2308a.mHiddenChanged = false;
                            Fragment fragment = this.f2308a;
                            fragment.onHiddenChanged(fragment.mHidden);
                        }
                        return;
                    } else if (a2 > this.f2308a.mState) {
                        switch (this.f2308a.mState + 1) {
                            case 0:
                                d();
                                continue;
                            case 1:
                                e();
                                continue;
                            case 2:
                                c();
                                f();
                                continue;
                            case 3:
                                g();
                                continue;
                            case 4:
                                if (!(this.f2308a.mView == null || this.f2308a.mContainer == null)) {
                                    z.a(this.f2308a.mContainer, this.f2308a.getParentFragmentManager()).a(z.b.EnumC0064b.from(this.f2308a.mView.getVisibility()), this);
                                }
                                this.f2308a.mState = 4;
                                continue;
                            case 5:
                                h();
                                continue;
                            case 6:
                                this.f2308a.mState = 6;
                                continue;
                            case 7:
                                i();
                                continue;
                            default:
                                continue;
                        }
                    } else {
                        switch (this.f2308a.mState - 1) {
                            case -1:
                                q();
                                continue;
                            case 0:
                                p();
                                continue;
                            case 1:
                                o();
                                this.f2308a.mState = 1;
                                continue;
                            case 2:
                                this.f2308a.mInLayout = false;
                                this.f2308a.mState = 2;
                                continue;
                            case 3:
                                if (FragmentManager.a(3)) {
                                    new StringBuilder("movefrom ACTIVITY_CREATED: ").append(this.f2308a);
                                }
                                if (this.f2308a.mView != null && this.f2308a.mSavedViewState == null) {
                                    n();
                                }
                                if (!(this.f2308a.mView == null || this.f2308a.mContainer == null)) {
                                    z.a(this.f2308a.mContainer, this.f2308a.getParentFragmentManager()).d(this);
                                }
                                this.f2308a.mState = 3;
                                continue;
                            case 4:
                                k();
                                continue;
                            case 5:
                                this.f2308a.mState = 5;
                                continue;
                            case 6:
                                j();
                                continue;
                            default:
                                continue;
                        }
                    }
                }
            } finally {
                this.e = false;
            }
        } else if (FragmentManager.a(2)) {
            new StringBuilder("Ignoring re-entrant call to moveToExpectedState() for ").append(this.f2308a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (this.f2308a.mFromLayout && this.f2308a.mInLayout && !this.f2308a.mPerformedCreateView) {
            if (FragmentManager.a(3)) {
                new StringBuilder("moveto CREATE_VIEW: ").append(this.f2308a);
            }
            Fragment fragment = this.f2308a;
            fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), null, this.f2308a.mSavedFragmentState);
            if (this.f2308a.mView != null) {
                this.f2308a.mView.setSaveFromParentEnabled(false);
                this.f2308a.mView.setTag(a.b.fragment_container_view_tag, this.f2308a);
                if (this.f2308a.mHidden) {
                    this.f2308a.mView.setVisibility(8);
                }
                this.f2308a.performViewCreated();
                j jVar = this.f2310c;
                Fragment fragment2 = this.f2308a;
                jVar.a(fragment2, fragment2.mView, this.f2308a.mSavedFragmentState, false);
                this.f2308a.mState = 2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        if (FragmentManager.a(3)) {
            new StringBuilder("moveto ATTACHED: ").append(this.f2308a);
        }
        p pVar = null;
        if (this.f2308a.mTarget != null) {
            pVar = this.f2311d.c(this.f2308a.mTarget.mWho);
            if (pVar != null) {
                Fragment fragment = this.f2308a;
                fragment.mTargetWho = fragment.mTarget.mWho;
                this.f2308a.mTarget = null;
            } else {
                throw new IllegalStateException("Fragment " + this.f2308a + " declared target fragment " + this.f2308a.mTarget + " that does not belong to this FragmentManager!");
            }
        } else if (this.f2308a.mTargetWho != null) {
            pVar = this.f2311d.c(this.f2308a.mTargetWho);
            if (pVar == null) {
                throw new IllegalStateException("Fragment " + this.f2308a + " declared target fragment " + this.f2308a.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (pVar != null && (FragmentManager.f2185a || pVar.f2308a.mState <= 0)) {
            pVar.b();
        }
        Fragment fragment2 = this.f2308a;
        fragment2.mHost = fragment2.mFragmentManager.l;
        Fragment fragment3 = this.f2308a;
        fragment3.mParentFragment = fragment3.mFragmentManager.n;
        this.f2310c.a(this.f2308a);
        this.f2308a.performAttach();
        this.f2310c.b(this.f2308a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        if (FragmentManager.a(3)) {
            new StringBuilder("moveto CREATED: ").append(this.f2308a);
        }
        if (!this.f2308a.mIsCreated) {
            j jVar = this.f2310c;
            Fragment fragment = this.f2308a;
            jVar.a(fragment, fragment.mSavedFragmentState);
            Fragment fragment2 = this.f2308a;
            fragment2.performCreate(fragment2.mSavedFragmentState);
            j jVar2 = this.f2310c;
            Fragment fragment3 = this.f2308a;
            jVar2.b(fragment3, fragment3.mSavedFragmentState);
            return;
        }
        Fragment fragment4 = this.f2308a;
        fragment4.restoreChildFragmentState(fragment4.mSavedFragmentState);
        this.f2308a.mState = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        String str;
        if (!this.f2308a.mFromLayout) {
            if (FragmentManager.a(3)) {
                new StringBuilder("moveto CREATE_VIEW: ").append(this.f2308a);
            }
            Fragment fragment = this.f2308a;
            LayoutInflater performGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
            ViewGroup viewGroup = null;
            if (this.f2308a.mContainer != null) {
                viewGroup = this.f2308a.mContainer;
            } else if (this.f2308a.mContainerId != 0) {
                if (this.f2308a.mContainerId != -1) {
                    ViewGroup viewGroup2 = (ViewGroup) this.f2308a.mFragmentManager.m.a(this.f2308a.mContainerId);
                    viewGroup = viewGroup2;
                    if (viewGroup2 == null) {
                        if (this.f2308a.mRestored) {
                            viewGroup = viewGroup2;
                        } else {
                            try {
                                str = this.f2308a.getResources().getResourceName(this.f2308a.mContainerId);
                            } catch (Resources.NotFoundException e) {
                                str = "unknown";
                            }
                            throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f2308a.mContainerId) + " (" + str + ") for fragment " + this.f2308a);
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f2308a + " for a container view with no id");
                }
            }
            this.f2308a.mContainer = viewGroup;
            Fragment fragment2 = this.f2308a;
            fragment2.performCreateView(performGetLayoutInflater, viewGroup, fragment2.mSavedFragmentState);
            if (this.f2308a.mView != null) {
                this.f2308a.mView.setSaveFromParentEnabled(false);
                this.f2308a.mView.setTag(a.b.fragment_container_view_tag, this.f2308a);
                if (viewGroup != null) {
                    r();
                }
                if (this.f2308a.mHidden) {
                    this.f2308a.mView.setVisibility(8);
                }
                if (v.E(this.f2308a.mView)) {
                    v.r(this.f2308a.mView);
                } else {
                    final View view = this.f2308a.mView;
                    view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.p.1
                        @Override // android.view.View.OnAttachStateChangeListener
                        public final void onViewAttachedToWindow(View view2) {
                            view.removeOnAttachStateChangeListener(this);
                            v.r(view);
                        }

                        @Override // android.view.View.OnAttachStateChangeListener
                        public final void onViewDetachedFromWindow(View view2) {
                        }
                    });
                }
                this.f2308a.performViewCreated();
                j jVar = this.f2310c;
                Fragment fragment3 = this.f2308a;
                jVar.a(fragment3, fragment3.mView, this.f2308a.mSavedFragmentState, false);
                int visibility = this.f2308a.mView.getVisibility();
                float alpha = this.f2308a.mView.getAlpha();
                if (FragmentManager.f2185a) {
                    this.f2308a.setPostOnViewCreatedAlpha(alpha);
                    if (this.f2308a.mContainer != null && visibility == 0) {
                        View findFocus = this.f2308a.mView.findFocus();
                        if (findFocus != null) {
                            this.f2308a.setFocusedView(findFocus);
                            if (FragmentManager.a(2)) {
                                StringBuilder sb = new StringBuilder("requestFocus: Saved focused view ");
                                sb.append(findFocus);
                                sb.append(" for Fragment ");
                                sb.append(this.f2308a);
                            }
                        }
                        this.f2308a.mView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    }
                } else {
                    Fragment fragment4 = this.f2308a;
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
            this.f2308a.mState = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        if (FragmentManager.a(3)) {
            new StringBuilder("moveto ACTIVITY_CREATED: ").append(this.f2308a);
        }
        Fragment fragment = this.f2308a;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        j jVar = this.f2310c;
        Fragment fragment2 = this.f2308a;
        jVar.c(fragment2, fragment2.mSavedFragmentState);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        if (FragmentManager.a(3)) {
            new StringBuilder("moveto STARTED: ").append(this.f2308a);
        }
        this.f2308a.performStart();
        this.f2310c.c(this.f2308a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        if (FragmentManager.a(3)) {
            new StringBuilder("moveto RESUMED: ").append(this.f2308a);
        }
        View focusedView = this.f2308a.getFocusedView();
        if (focusedView != null && a(focusedView)) {
            boolean requestFocus = focusedView.requestFocus();
            if (FragmentManager.a(2)) {
                StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                sb.append(focusedView);
                sb.append(StringUtils.SPACE);
                sb.append(requestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(this.f2308a);
                sb.append(" resulting in focused view ");
                sb.append(this.f2308a.mView.findFocus());
            }
        }
        this.f2308a.setFocusedView(null);
        this.f2308a.performResume();
        this.f2310c.d(this.f2308a);
        this.f2308a.mSavedFragmentState = null;
        this.f2308a.mSavedViewState = null;
        this.f2308a.mSavedViewRegistryState = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j() {
        if (FragmentManager.a(3)) {
            new StringBuilder("movefrom RESUMED: ").append(this.f2308a);
        }
        this.f2308a.performPause();
        this.f2310c.e(this.f2308a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        if (FragmentManager.a(3)) {
            new StringBuilder("movefrom STARTED: ").append(this.f2308a);
        }
        this.f2308a.performStop();
        this.f2310c.f(this.f2308a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final FragmentState l() {
        FragmentState fragmentState = new FragmentState(this.f2308a);
        if (this.f2308a.mState < 0 || fragmentState.mSavedFragmentState != null) {
            fragmentState.mSavedFragmentState = this.f2308a.mSavedFragmentState;
        } else {
            fragmentState.mSavedFragmentState = m();
            if (this.f2308a.mTargetWho != null) {
                if (fragmentState.mSavedFragmentState == null) {
                    fragmentState.mSavedFragmentState = new Bundle();
                }
                fragmentState.mSavedFragmentState.putString("android:target_state", this.f2308a.mTargetWho);
                if (this.f2308a.mTargetRequestCode != 0) {
                    fragmentState.mSavedFragmentState.putInt("android:target_req_state", this.f2308a.mTargetRequestCode);
                }
            }
        }
        return fragmentState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle m() {
        Bundle bundle = new Bundle();
        this.f2308a.performSaveInstanceState(bundle);
        this.f2310c.d(this.f2308a, bundle);
        Bundle bundle2 = bundle;
        if (bundle.isEmpty()) {
            bundle2 = null;
        }
        if (this.f2308a.mView != null) {
            n();
        }
        Bundle bundle3 = bundle2;
        if (this.f2308a.mSavedViewState != null) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putSparseParcelableArray("android:view_state", this.f2308a.mSavedViewState);
        }
        Bundle bundle4 = bundle3;
        if (this.f2308a.mSavedViewRegistryState != null) {
            bundle4 = bundle3;
            if (bundle3 == null) {
                bundle4 = new Bundle();
            }
            bundle4.putBundle("android:view_registry_state", this.f2308a.mSavedViewRegistryState);
        }
        Bundle bundle5 = bundle4;
        if (!this.f2308a.mUserVisibleHint) {
            bundle5 = bundle4;
            if (bundle4 == null) {
                bundle5 = new Bundle();
            }
            bundle5.putBoolean("android:user_visible_hint", this.f2308a.mUserVisibleHint);
        }
        return bundle5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n() {
        if (this.f2308a.mView != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f2308a.mView.saveHierarchyState(sparseArray);
            if (sparseArray.size() > 0) {
                this.f2308a.mSavedViewState = sparseArray;
            }
            Bundle bundle = new Bundle();
            this.f2308a.mViewLifecycleOwner.a(bundle);
            if (!bundle.isEmpty()) {
                this.f2308a.mSavedViewRegistryState = bundle;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o() {
        if (FragmentManager.a(3)) {
            new StringBuilder("movefrom CREATE_VIEW: ").append(this.f2308a);
        }
        if (!(this.f2308a.mContainer == null || this.f2308a.mView == null)) {
            this.f2308a.mContainer.removeView(this.f2308a.mView);
        }
        this.f2308a.performDestroyView();
        this.f2310c.a(this.f2308a, false);
        this.f2308a.mContainer = null;
        this.f2308a.mView = null;
        this.f2308a.mViewLifecycleOwner = null;
        this.f2308a.mViewLifecycleOwnerLiveData.b((t<androidx.lifecycle.p>) null);
        this.f2308a.mInLayout = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void p() {
        Fragment e;
        if (FragmentManager.a(3)) {
            new StringBuilder("movefrom CREATED: ").append(this.f2308a);
        }
        boolean z = true;
        boolean z2 = this.f2308a.mRemoving && !this.f2308a.isInBackStack();
        if (z2 || this.f2311d.f2320b.b(this.f2308a)) {
            h<?> hVar = this.f2308a.mHost;
            if (hVar instanceof ad) {
                z = this.f2311d.f2320b.f2303d;
            } else if (hVar.f2291c instanceof Activity) {
                z = true ^ ((Activity) hVar.f2291c).isChangingConfigurations();
            }
            if (z2 || z) {
                l lVar = this.f2311d.f2320b;
                Fragment fragment = this.f2308a;
                if (FragmentManager.a(3)) {
                    new StringBuilder("Clearing non-config state for ").append(fragment);
                }
                l lVar2 = lVar.f2300a.get(fragment.mWho);
                if (lVar2 != null) {
                    lVar2.a();
                    lVar.f2300a.remove(fragment.mWho);
                }
                ac acVar = lVar.f2301b.get(fragment.mWho);
                if (acVar != null) {
                    acVar.b();
                    lVar.f2301b.remove(fragment.mWho);
                }
            }
            this.f2308a.performDestroy();
            this.f2310c.g(this.f2308a);
            for (p pVar : this.f2311d.e()) {
                if (pVar != null) {
                    Fragment fragment2 = pVar.f2308a;
                    if (this.f2308a.mWho.equals(fragment2.mTargetWho)) {
                        fragment2.mTarget = this.f2308a;
                        fragment2.mTargetWho = null;
                    }
                }
            }
            if (this.f2308a.mTargetWho != null) {
                Fragment fragment3 = this.f2308a;
                fragment3.mTarget = this.f2311d.e(fragment3.mTargetWho);
            }
            this.f2311d.b(this);
            return;
        }
        if (!(this.f2308a.mTargetWho == null || (e = this.f2311d.e(this.f2308a.mTargetWho)) == null || !e.mRetainInstance)) {
            this.f2308a.mTarget = e;
        }
        this.f2308a.mState = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q() {
        if (FragmentManager.a(3)) {
            new StringBuilder("movefrom ATTACHED: ").append(this.f2308a);
        }
        this.f2308a.performDetach();
        this.f2310c.h(this.f2308a);
        this.f2308a.mState = -1;
        this.f2308a.mHost = null;
        this.f2308a.mParentFragment = null;
        this.f2308a.mFragmentManager = null;
        if ((this.f2308a.mRemoving && !this.f2308a.isInBackStack()) || this.f2311d.f2320b.b(this.f2308a)) {
            if (FragmentManager.a(3)) {
                new StringBuilder("initState called for fragment: ").append(this.f2308a);
            }
            this.f2308a.initState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void r() {
        this.f2308a.mContainer.addView(this.f2308a.mView, this.f2311d.c(this.f2308a));
    }
}
