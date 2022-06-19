package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.fragment.C0308R;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentStateManager.class */
public class FragmentStateManager {
    private static final String TAG = "FragmentManager";
    private static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    private static final String TARGET_STATE_TAG = "android:target_state";
    private static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    private static final String VIEW_STATE_TAG = "android:view_state";
    private final FragmentLifecycleCallbacksDispatcher mDispatcher;
    private final Fragment mFragment;
    private int mFragmentManagerState = -1;

    /* renamed from: androidx.fragment.app.FragmentStateManager$1 */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentStateManager$1.class */
    public static /* synthetic */ class C03331 {
        static final /* synthetic */ int[] $SwitchMap$androidx$lifecycle$Lifecycle$State;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            $SwitchMap$androidx$lifecycle$Lifecycle$State = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, Fragment fragment) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragment = fragment;
    }

    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, Fragment fragment, FragmentState fragmentState) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragment = fragment;
        fragment.mSavedViewState = null;
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

    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, ClassLoader classLoader, FragmentFactory fragmentFactory, FragmentState fragmentState) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        Fragment instantiate = fragmentFactory.instantiate(classLoader, fragmentState.mClassName);
        this.mFragment = instantiate;
        if (fragmentState.mArguments != null) {
            fragmentState.mArguments.setClassLoader(classLoader);
        }
        instantiate.setArguments(fragmentState.mArguments);
        instantiate.mWho = fragmentState.mWho;
        instantiate.mFromLayout = fragmentState.mFromLayout;
        instantiate.mRestored = true;
        instantiate.mFragmentId = fragmentState.mFragmentId;
        instantiate.mContainerId = fragmentState.mContainerId;
        instantiate.mTag = fragmentState.mTag;
        instantiate.mRetainInstance = fragmentState.mRetainInstance;
        instantiate.mRemoving = fragmentState.mRemoving;
        instantiate.mDetached = fragmentState.mDetached;
        instantiate.mHidden = fragmentState.mHidden;
        instantiate.mMaxState = Lifecycle.State.values()[fragmentState.mMaxLifecycleState];
        if (fragmentState.mSavedFragmentState != null) {
            instantiate.mSavedFragmentState = fragmentState.mSavedFragmentState;
        } else {
            instantiate.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(TAG, "Instantiated fragment " + instantiate);
        }
    }

    private Bundle saveBasicState() {
        Bundle bundle = new Bundle();
        this.mFragment.performSaveInstanceState(bundle);
        this.mDispatcher.dispatchOnFragmentSaveInstanceState(this.mFragment, bundle, false);
        Bundle bundle2 = bundle;
        if (bundle.isEmpty()) {
            bundle2 = null;
        }
        if (this.mFragment.mView != null) {
            saveViewState();
        }
        Bundle bundle3 = bundle2;
        if (this.mFragment.mSavedViewState != null) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putSparseParcelableArray(VIEW_STATE_TAG, this.mFragment.mSavedViewState);
        }
        Bundle bundle4 = bundle3;
        if (!this.mFragment.mUserVisibleHint) {
            bundle4 = bundle3;
            if (bundle3 == null) {
                bundle4 = new Bundle();
            }
            bundle4.putBoolean(USER_VISIBLE_HINT_TAG, this.mFragment.mUserVisibleHint);
        }
        return bundle4;
    }

    public void activityCreated() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "moveto ACTIVITY_CREATED: " + this.mFragment);
        }
        Fragment fragment = this.mFragment;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
        Fragment fragment2 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentActivityCreated(fragment2, fragment2.mSavedFragmentState, false);
    }

    public void attach(FragmentHostCallback<?> fragmentHostCallback, FragmentManager fragmentManager, Fragment fragment) {
        this.mFragment.mHost = fragmentHostCallback;
        this.mFragment.mParentFragment = fragment;
        this.mFragment.mFragmentManager = fragmentManager;
        this.mDispatcher.dispatchOnFragmentPreAttached(this.mFragment, fragmentHostCallback.getContext(), false);
        this.mFragment.performAttach();
        if (this.mFragment.mParentFragment == null) {
            fragmentHostCallback.onAttachFragment(this.mFragment);
        } else {
            this.mFragment.mParentFragment.onAttachFragment(this.mFragment);
        }
        this.mDispatcher.dispatchOnFragmentAttached(this.mFragment, fragmentHostCallback.getContext(), false);
    }

    public int computeMaxState() {
        int i = this.mFragmentManagerState;
        int i2 = i;
        if (this.mFragment.mFromLayout) {
            i2 = this.mFragment.mInLayout ? Math.max(this.mFragmentManagerState, 1) : this.mFragmentManagerState < 2 ? Math.min(i, this.mFragment.mState) : Math.min(i, 1);
        }
        int i3 = i2;
        if (!this.mFragment.mAdded) {
            i3 = Math.min(i2, 1);
        }
        int i4 = i3;
        if (this.mFragment.mRemoving) {
            i4 = this.mFragment.isInBackStack() ? Math.min(i3, 1) : Math.min(i3, -1);
        }
        int i5 = i4;
        if (this.mFragment.mDeferStart) {
            i5 = i4;
            if (this.mFragment.mState < 3) {
                i5 = Math.min(i4, 2);
            }
        }
        int i6 = C03331.$SwitchMap$androidx$lifecycle$Lifecycle$State[this.mFragment.mMaxState.ordinal()];
        int i7 = i5;
        if (i6 != 1) {
            i7 = i6 != 2 ? i6 != 3 ? Math.min(i5, -1) : Math.min(i5, 1) : Math.min(i5, 3);
        }
        return i7;
    }

    public void create() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "moveto CREATED: " + this.mFragment);
        }
        if (this.mFragment.mIsCreated) {
            Fragment fragment = this.mFragment;
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.mFragment.mState = 1;
            return;
        }
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
        Fragment fragment2 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentPreCreated(fragment2, fragment2.mSavedFragmentState, false);
        Fragment fragment3 = this.mFragment;
        fragment3.performCreate(fragment3.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher2 = this.mDispatcher;
        Fragment fragment4 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher2.dispatchOnFragmentCreated(fragment4, fragment4.mSavedFragmentState, false);
    }

    public void createView(FragmentContainer fragmentContainer) {
        String str;
        if (this.mFragment.mFromLayout) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "moveto CREATE_VIEW: " + this.mFragment);
        }
        ViewGroup viewGroup = null;
        if (this.mFragment.mContainer != null) {
            viewGroup = this.mFragment.mContainer;
        } else if (this.mFragment.mContainerId != 0) {
            if (this.mFragment.mContainerId == -1) {
                throw new IllegalArgumentException("Cannot create fragment " + this.mFragment + " for a container view with no id");
            }
            ViewGroup viewGroup2 = (ViewGroup) fragmentContainer.onFindViewById(this.mFragment.mContainerId);
            viewGroup = viewGroup2;
            if (viewGroup2 == null) {
                if (!this.mFragment.mRestored) {
                    try {
                        str = this.mFragment.getResources().getResourceName(this.mFragment.mContainerId);
                    } catch (Resources.NotFoundException e) {
                        str = "unknown";
                    }
                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.mFragment.mContainerId) + " (" + str + ") for fragment " + this.mFragment);
                }
                viewGroup = viewGroup2;
            }
        }
        this.mFragment.mContainer = viewGroup;
        Fragment fragment = this.mFragment;
        fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), viewGroup, this.mFragment.mSavedFragmentState);
        if (this.mFragment.mView == null) {
            return;
        }
        this.mFragment.mView.setSaveFromParentEnabled(false);
        this.mFragment.mView.setTag(C0308R.C0311id.fragment_container_view_tag, this.mFragment);
        if (viewGroup != null) {
            viewGroup.addView(this.mFragment.mView);
        }
        if (this.mFragment.mHidden) {
            this.mFragment.mView.setVisibility(8);
        }
        ViewCompat.requestApplyInsets(this.mFragment.mView);
        Fragment fragment2 = this.mFragment;
        fragment2.onViewCreated(fragment2.mView, this.mFragment.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
        Fragment fragment3 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment3, fragment3.mView, this.mFragment.mSavedFragmentState, false);
        Fragment fragment4 = this.mFragment;
        boolean z = false;
        if (fragment4.mView.getVisibility() == 0) {
            z = false;
            if (this.mFragment.mContainer != null) {
                z = true;
            }
        }
        fragment4.mIsNewlyAdded = z;
    }

    public void destroy(FragmentHostCallback<?> fragmentHostCallback, FragmentManagerViewModel fragmentManagerViewModel) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "movefrom CREATED: " + this.mFragment);
        }
        boolean z = true;
        boolean z2 = this.mFragment.mRemoving && !this.mFragment.isInBackStack();
        if (!(z2 || fragmentManagerViewModel.shouldDestroy(this.mFragment))) {
            this.mFragment.mState = 0;
            return;
        }
        if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            z = fragmentManagerViewModel.isCleared();
        } else if (fragmentHostCallback.getContext() instanceof Activity) {
            z = true ^ ((Activity) fragmentHostCallback.getContext()).isChangingConfigurations();
        }
        if (z2 || z) {
            fragmentManagerViewModel.clearNonConfigState(this.mFragment);
        }
        this.mFragment.performDestroy();
        this.mDispatcher.dispatchOnFragmentDestroyed(this.mFragment, false);
    }

    public void detach(FragmentManagerViewModel fragmentManagerViewModel) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "movefrom ATTACHED: " + this.mFragment);
        }
        this.mFragment.performDetach();
        this.mDispatcher.dispatchOnFragmentDetached(this.mFragment, false);
        this.mFragment.mState = -1;
        this.mFragment.mHost = null;
        this.mFragment.mParentFragment = null;
        this.mFragment.mFragmentManager = null;
        boolean z = false;
        if (this.mFragment.mRemoving) {
            z = false;
            if (!this.mFragment.isInBackStack()) {
                z = true;
            }
        }
        if (z || fragmentManagerViewModel.shouldDestroy(this.mFragment)) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d(TAG, "initState called for fragment: " + this.mFragment);
            }
            this.mFragment.initState();
        }
    }

    public void ensureInflatedView() {
        if (!this.mFragment.mFromLayout || !this.mFragment.mInLayout || this.mFragment.mPerformedCreateView) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "moveto CREATE_VIEW: " + this.mFragment);
        }
        Fragment fragment = this.mFragment;
        fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), null, this.mFragment.mSavedFragmentState);
        if (this.mFragment.mView == null) {
            return;
        }
        this.mFragment.mView.setSaveFromParentEnabled(false);
        this.mFragment.mView.setTag(C0308R.C0311id.fragment_container_view_tag, this.mFragment);
        if (this.mFragment.mHidden) {
            this.mFragment.mView.setVisibility(8);
        }
        Fragment fragment2 = this.mFragment;
        fragment2.onViewCreated(fragment2.mView, this.mFragment.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
        Fragment fragment3 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment3, fragment3.mView, this.mFragment.mSavedFragmentState, false);
    }

    public Fragment getFragment() {
        return this.mFragment;
    }

    public void pause() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "movefrom RESUMED: " + this.mFragment);
        }
        this.mFragment.performPause();
        this.mDispatcher.dispatchOnFragmentPaused(this.mFragment, false);
    }

    public void restoreState(ClassLoader classLoader) {
        if (this.mFragment.mSavedFragmentState == null) {
            return;
        }
        this.mFragment.mSavedFragmentState.setClassLoader(classLoader);
        Fragment fragment = this.mFragment;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
        Fragment fragment2 = this.mFragment;
        fragment2.mTargetWho = fragment2.mSavedFragmentState.getString(TARGET_STATE_TAG);
        if (this.mFragment.mTargetWho != null) {
            Fragment fragment3 = this.mFragment;
            fragment3.mTargetRequestCode = fragment3.mSavedFragmentState.getInt(TARGET_REQUEST_CODE_STATE_TAG, 0);
        }
        if (this.mFragment.mSavedUserVisibleHint != null) {
            Fragment fragment4 = this.mFragment;
            fragment4.mUserVisibleHint = fragment4.mSavedUserVisibleHint.booleanValue();
            this.mFragment.mSavedUserVisibleHint = null;
        } else {
            Fragment fragment5 = this.mFragment;
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean(USER_VISIBLE_HINT_TAG, true);
        }
        if (this.mFragment.mUserVisibleHint) {
            return;
        }
        this.mFragment.mDeferStart = true;
    }

    public void restoreViewState() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "moveto RESTORE_VIEW_STATE: " + this.mFragment);
        }
        if (this.mFragment.mView != null) {
            Fragment fragment = this.mFragment;
            fragment.restoreViewState(fragment.mSavedFragmentState);
        }
        this.mFragment.mSavedFragmentState = null;
    }

    public void resume() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "moveto RESUMED: " + this.mFragment);
        }
        this.mFragment.performResume();
        this.mDispatcher.dispatchOnFragmentResumed(this.mFragment, false);
        this.mFragment.mSavedFragmentState = null;
        this.mFragment.mSavedViewState = null;
    }

    public Fragment.SavedState saveInstanceState() {
        Fragment.SavedState savedState = null;
        if (this.mFragment.mState > -1) {
            Bundle saveBasicState = saveBasicState();
            savedState = null;
            if (saveBasicState != null) {
                savedState = new Fragment.SavedState(saveBasicState);
            }
        }
        return savedState;
    }

    public FragmentState saveState() {
        FragmentState fragmentState = new FragmentState(this.mFragment);
        if (this.mFragment.mState <= -1 || fragmentState.mSavedFragmentState != null) {
            fragmentState.mSavedFragmentState = this.mFragment.mSavedFragmentState;
        } else {
            fragmentState.mSavedFragmentState = saveBasicState();
            if (this.mFragment.mTargetWho != null) {
                if (fragmentState.mSavedFragmentState == null) {
                    fragmentState.mSavedFragmentState = new Bundle();
                }
                fragmentState.mSavedFragmentState.putString(TARGET_STATE_TAG, this.mFragment.mTargetWho);
                if (this.mFragment.mTargetRequestCode != 0) {
                    fragmentState.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, this.mFragment.mTargetRequestCode);
                }
            }
        }
        return fragmentState;
    }

    public void saveViewState() {
        if (this.mFragment.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.mFragment.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() <= 0) {
            return;
        }
        this.mFragment.mSavedViewState = sparseArray;
    }

    public void setFragmentManagerState(int i) {
        this.mFragmentManagerState = i;
    }

    public void start() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "moveto STARTED: " + this.mFragment);
        }
        this.mFragment.performStart();
        this.mDispatcher.dispatchOnFragmentStarted(this.mFragment, false);
    }

    public void stop() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(TAG, "movefrom STARTED: " + this.mFragment);
        }
        this.mFragment.performStop();
        this.mDispatcher.dispatchOnFragmentStopped(this.mFragment, false);
    }
}
