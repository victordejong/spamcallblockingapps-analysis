package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.fragment.C0308R;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentStateManager.class */
public class FragmentStateManager {

    /* renamed from: a */
    private final FragmentLifecycleCallbacksDispatcher f3810a;
    @NonNull

    /* renamed from: b */
    private final Fragment f3811b;

    /* renamed from: c */
    private int f3812c = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentStateManager$1 */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentStateManager$1.class */
    public static /* synthetic */ class C03331 {

        /* renamed from: a */
        static final /* synthetic */ int[] f3813a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f3813a = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3813a[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3813a[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull Fragment fragment) {
        this.f3810a = fragmentLifecycleCallbacksDispatcher;
        this.f3811b = fragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull Fragment fragment, @NonNull FragmentState fragmentState) {
        this.f3810a = fragmentLifecycleCallbacksDispatcher;
        this.f3811b = fragment;
        fragment.mSavedViewState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        Fragment fragment3 = this.f3811b;
        fragment3.mTarget = null;
        Bundle bundle = fragmentState.f3809r;
        if (bundle != null) {
            fragment3.mSavedFragmentState = bundle;
        } else {
            fragment3.mSavedFragmentState = new Bundle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull ClassLoader classLoader, @NonNull FragmentFactory fragmentFactory, @NonNull FragmentState fragmentState) {
        this.f3810a = fragmentLifecycleCallbacksDispatcher;
        this.f3811b = fragmentFactory.mo18434a(classLoader, fragmentState.f3797f);
        Bundle bundle = fragmentState.f3806o;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        this.f3811b.setArguments(fragmentState.f3806o);
        Fragment fragment = this.f3811b;
        fragment.mWho = fragmentState.f3798g;
        fragment.mFromLayout = fragmentState.f3799h;
        fragment.mRestored = true;
        fragment.mFragmentId = fragmentState.f3800i;
        fragment.mContainerId = fragmentState.f3801j;
        fragment.mTag = fragmentState.f3802k;
        fragment.mRetainInstance = fragmentState.f3803l;
        fragment.mRemoving = fragmentState.f3804m;
        fragment.mDetached = fragmentState.f3805n;
        fragment.mHidden = fragmentState.f3807p;
        fragment.mMaxState = Lifecycle.State.values()[fragmentState.f3808q];
        Bundle bundle2 = fragmentState.f3809r;
        if (bundle2 != null) {
            this.f3811b.mSavedFragmentState = bundle2;
        } else {
            this.f3811b.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + this.f3811b);
        }
    }

    /* renamed from: n */
    private Bundle m18381n() {
        Bundle bundle = new Bundle();
        this.f3811b.performSaveInstanceState(bundle);
        this.f3810a.m18442j(this.f3811b, bundle, false);
        Bundle bundle2 = bundle;
        if (bundle.isEmpty()) {
            bundle2 = null;
        }
        if (this.f3811b.mView != null) {
            m18378q();
        }
        Bundle bundle3 = bundle2;
        if (this.f3811b.mSavedViewState != null) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putSparseParcelableArray("android:view_state", this.f3811b.mSavedViewState);
        }
        Bundle bundle4 = bundle3;
        if (!this.f3811b.mUserVisibleHint) {
            bundle4 = bundle3;
            if (bundle3 == null) {
                bundle4 = new Bundle();
            }
            bundle4.putBoolean("android:user_visible_hint", this.f3811b.mUserVisibleHint);
        }
        return bundle4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m18394a() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.f3811b);
        }
        Fragment fragment = this.f3811b;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f3810a;
        Fragment fragment2 = this.f3811b;
        fragmentLifecycleCallbacksDispatcher.m18451a(fragment2, fragment2.mSavedFragmentState, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m18393b(@NonNull FragmentHostCallback<?> fragmentHostCallback, @NonNull FragmentManager fragmentManager, @Nullable Fragment fragment) {
        Fragment fragment2 = this.f3811b;
        fragment2.mHost = fragmentHostCallback;
        fragment2.mParentFragment = fragment;
        fragment2.mFragmentManager = fragmentManager;
        this.f3810a.m18445g(fragment2, fragmentHostCallback.m18463e(), false);
        this.f3811b.performAttach();
        Fragment fragment3 = this.f3811b;
        Fragment fragment4 = fragment3.mParentFragment;
        if (fragment4 == null) {
            fragmentHostCallback.mo18461g(fragment3);
        } else {
            fragment4.onAttachFragment(fragment3);
        }
        this.f3810a.m18450b(this.f3811b, fragmentHostCallback.m18463e(), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public int m18392c() {
        int i = this.f3812c;
        Fragment fragment = this.f3811b;
        int i2 = i;
        if (fragment.mFromLayout) {
            i2 = fragment.mInLayout ? Math.max(i, 1) : Math.min(i, 1);
        }
        int i3 = i2;
        if (!this.f3811b.mAdded) {
            i3 = Math.min(i2, 1);
        }
        Fragment fragment2 = this.f3811b;
        int i4 = i3;
        if (fragment2.mRemoving) {
            i4 = fragment2.isInBackStack() ? Math.min(i3, 1) : Math.min(i3, -1);
        }
        Fragment fragment3 = this.f3811b;
        int i5 = i4;
        if (fragment3.mDeferStart) {
            i5 = i4;
            if (fragment3.mState < 3) {
                i5 = Math.min(i4, 2);
            }
        }
        int i6 = C03331.f3813a[this.f3811b.mMaxState.ordinal()];
        int i7 = i5;
        if (i6 != 1) {
            i7 = i6 != 2 ? i6 != 3 ? Math.min(i5, -1) : Math.min(i5, 1) : Math.min(i5, 3);
        }
        return i7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m18391d() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.f3811b);
        }
        Fragment fragment = this.f3811b;
        if (!fragment.mIsCreated) {
            this.f3810a.m18444h(fragment, fragment.mSavedFragmentState, false);
            Fragment fragment2 = this.f3811b;
            fragment2.performCreate(fragment2.mSavedFragmentState);
            FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f3810a;
            Fragment fragment3 = this.f3811b;
            fragmentLifecycleCallbacksDispatcher.m18449c(fragment3, fragment3.mSavedFragmentState, false);
            return;
        }
        fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
        this.f3811b.mState = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m18390e(@NonNull FragmentContainer fragmentContainer) {
        int i;
        String str;
        if (!this.f3811b.mFromLayout) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f3811b);
            }
            r8 = null;
            Fragment fragment = this.f3811b;
            ViewGroup viewGroup = fragment.mContainer;
            if (viewGroup == null && (i = fragment.mContainerId) != 0) {
                if (i != -1) {
                    ViewGroup viewGroup2 = (ViewGroup) fragmentContainer.mo18466b(i);
                    viewGroup = viewGroup2;
                    if (viewGroup2 == null) {
                        Fragment fragment2 = this.f3811b;
                        if (fragment2.mRestored) {
                            viewGroup = viewGroup2;
                        } else {
                            try {
                                str = fragment2.getResources().getResourceName(this.f3811b.mContainerId);
                            } catch (Resources.NotFoundException e) {
                                str = "unknown";
                            }
                            throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f3811b.mContainerId) + " (" + str + ") for fragment " + this.f3811b);
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f3811b + " for a container view with no id");
                }
            }
            Fragment fragment3 = this.f3811b;
            fragment3.mContainer = viewGroup;
            fragment3.performCreateView(fragment3.performGetLayoutInflater(fragment3.mSavedFragmentState), viewGroup, this.f3811b.mSavedFragmentState);
            View view = this.f3811b.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment4 = this.f3811b;
                fragment4.mView.setTag(C0308R.C0311id.fragment_container_view_tag, fragment4);
                if (viewGroup != null) {
                    viewGroup.addView(this.f3811b.mView);
                }
                Fragment fragment5 = this.f3811b;
                if (fragment5.mHidden) {
                    fragment5.mView.setVisibility(8);
                }
                ViewCompat.m19189k0(this.f3811b.mView);
                Fragment fragment6 = this.f3811b;
                fragment6.onViewCreated(fragment6.mView, fragment6.mSavedFragmentState);
                FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f3810a;
                Fragment fragment7 = this.f3811b;
                fragmentLifecycleCallbacksDispatcher.m18439m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
                Fragment fragment8 = this.f3811b;
                boolean z = false;
                if (fragment8.mView.getVisibility() == 0) {
                    z = false;
                    if (this.f3811b.mContainer != null) {
                        z = true;
                    }
                }
                fragment8.mIsNewlyAdded = z;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m18389f(@NonNull FragmentHostCallback<?> fragmentHostCallback, @NonNull FragmentManagerViewModel fragmentManagerViewModel) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.f3811b);
        }
        Fragment fragment = this.f3811b;
        boolean z = true;
        boolean z2 = fragment.mRemoving && !fragment.isInBackStack();
        if (z2 || fragmentManagerViewModel.m18397q(this.f3811b)) {
            if (fragmentHostCallback instanceof ViewModelStoreOwner) {
                z = fragmentManagerViewModel.m18400n();
            } else if (fragmentHostCallback.m18463e() instanceof Activity) {
                z = true ^ ((Activity) fragmentHostCallback.m18463e()).isChangingConfigurations();
            }
            if (z2 || z) {
                fragmentManagerViewModel.m18407g(this.f3811b);
            }
            this.f3811b.performDestroy();
            this.f3810a.m18448d(this.f3811b, false);
            return;
        }
        this.f3811b.mState = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m18388g(@NonNull FragmentManagerViewModel fragmentManagerViewModel) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.f3811b);
        }
        this.f3811b.performDetach();
        this.f3810a.m18447e(this.f3811b, false);
        Fragment fragment = this.f3811b;
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
        if (z || fragmentManagerViewModel.m18397q(this.f3811b)) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + this.f3811b);
            }
            this.f3811b.initState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m18387h() {
        Fragment fragment = this.f3811b;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f3811b);
            }
            Fragment fragment2 = this.f3811b;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.f3811b.mSavedFragmentState);
            View view = this.f3811b.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f3811b;
                if (fragment3.mHidden) {
                    fragment3.mView.setVisibility(8);
                }
                Fragment fragment4 = this.f3811b;
                fragment4.onViewCreated(fragment4.mView, fragment4.mSavedFragmentState);
                FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f3810a;
                Fragment fragment5 = this.f3811b;
                fragmentLifecycleCallbacksDispatcher.m18439m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: i */
    public Fragment m18386i() {
        return this.f3811b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m18385j() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.f3811b);
        }
        this.f3811b.performPause();
        this.f3810a.m18446f(this.f3811b, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public void m18384k(@NonNull ClassLoader classLoader) {
        Bundle bundle = this.f3811b.mSavedFragmentState;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
            Fragment fragment = this.f3811b;
            fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
            Fragment fragment2 = this.f3811b;
            fragment2.mTargetWho = fragment2.mSavedFragmentState.getString("android:target_state");
            Fragment fragment3 = this.f3811b;
            if (fragment3.mTargetWho != null) {
                fragment3.mTargetRequestCode = fragment3.mSavedFragmentState.getInt("android:target_req_state", 0);
            }
            Fragment fragment4 = this.f3811b;
            Boolean bool = fragment4.mSavedUserVisibleHint;
            if (bool != null) {
                fragment4.mUserVisibleHint = bool.booleanValue();
                this.f3811b.mSavedUserVisibleHint = null;
            } else {
                fragment4.mUserVisibleHint = fragment4.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
            }
            Fragment fragment5 = this.f3811b;
            if (!fragment5.mUserVisibleHint) {
                fragment5.mDeferStart = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m18383l() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this.f3811b);
        }
        Fragment fragment = this.f3811b;
        if (fragment.mView != null) {
            fragment.restoreViewState(fragment.mSavedFragmentState);
        }
        this.f3811b.mSavedFragmentState = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m18382m() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.f3811b);
        }
        this.f3811b.performResume();
        this.f3810a.m18443i(this.f3811b, false);
        Fragment fragment = this.f3811b;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: o */
    public Fragment.SavedState m18380o() {
        Fragment.SavedState savedState = null;
        if (this.f3811b.mState > -1) {
            Bundle n = m18381n();
            savedState = null;
            if (n != null) {
                savedState = new Fragment.SavedState(n);
            }
        }
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: p */
    public FragmentState m18379p() {
        FragmentState fragmentState = new FragmentState(this.f3811b);
        if (this.f3811b.mState <= -1 || fragmentState.f3809r != null) {
            fragmentState.f3809r = this.f3811b.mSavedFragmentState;
        } else {
            Bundle n = m18381n();
            fragmentState.f3809r = n;
            if (this.f3811b.mTargetWho != null) {
                if (n == null) {
                    fragmentState.f3809r = new Bundle();
                }
                fragmentState.f3809r.putString("android:target_state", this.f3811b.mTargetWho);
                int i = this.f3811b.mTargetRequestCode;
                if (i != 0) {
                    fragmentState.f3809r.putInt("android:target_req_state", i);
                }
            }
        }
        return fragmentState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m18378q() {
        if (this.f3811b.mView != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f3811b.mView.saveHierarchyState(sparseArray);
            if (sparseArray.size() > 0) {
                this.f3811b.mSavedViewState = sparseArray;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public void m18377r(int i) {
        this.f3812c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void m18376s() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.f3811b);
        }
        this.f3811b.performStart();
        this.f3810a.m18441k(this.f3811b, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public void m18375t() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.f3811b);
        }
        this.f3811b.performStop();
        this.f3810a.m18440l(this.f3811b, false);
    }
}
