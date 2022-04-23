package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.fragment.C0317R;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentStateManager.class */
public class FragmentStateManager {
    public static final String TAG = "FragmentManager";
    public static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    public static final String TARGET_STATE_TAG = "android:target_state";
    public static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    public static final String VIEW_STATE_TAG = "android:view_state";
    public final FragmentLifecycleCallbacksDispatcher mDispatcher;
    @NonNull
    public final Fragment mFragment;
    public int mFragmentManagerState = -1;

    /* renamed from: androidx.fragment.app.FragmentStateManager$1 */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentStateManager$1.class */
    public static /* synthetic */ class C03421 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$lifecycle$Lifecycle$State = new int[Lifecycle.State.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.RESUMED.ordinal()] = 1;
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

    public FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull Fragment fragment) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragment = fragment;
    }

    public FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull Fragment fragment, @NonNull FragmentState fragmentState) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragment = fragment;
        Fragment fragment2 = this.mFragment;
        fragment2.mSavedViewState = null;
        fragment2.mBackStackNesting = 0;
        fragment2.mInLayout = false;
        fragment2.mAdded = false;
        Fragment fragment3 = fragment2.mTarget;
        fragment2.mTargetWho = fragment3 != null ? fragment3.mWho : null;
        Fragment fragment4 = this.mFragment;
        fragment4.mTarget = null;
        Bundle bundle = fragmentState.mSavedFragmentState;
        if (bundle != null) {
            fragment4.mSavedFragmentState = bundle;
        } else {
            fragment4.mSavedFragmentState = new Bundle();
        }
    }

    public FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull ClassLoader classLoader, @NonNull FragmentFactory fragmentFactory, @NonNull FragmentState fragmentState) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragment = fragmentFactory.instantiate(classLoader, fragmentState.mClassName);
        Bundle bundle = fragmentState.mArguments;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        this.mFragment.setArguments(fragmentState.mArguments);
        Fragment fragment = this.mFragment;
        fragment.mWho = fragmentState.mWho;
        fragment.mFromLayout = fragmentState.mFromLayout;
        fragment.mRestored = true;
        fragment.mFragmentId = fragmentState.mFragmentId;
        fragment.mContainerId = fragmentState.mContainerId;
        fragment.mTag = fragmentState.mTag;
        fragment.mRetainInstance = fragmentState.mRetainInstance;
        fragment.mRemoving = fragmentState.mRemoving;
        fragment.mDetached = fragmentState.mDetached;
        fragment.mHidden = fragmentState.mHidden;
        fragment.mMaxState = Lifecycle.State.values()[fragmentState.mMaxLifecycleState];
        Bundle bundle2 = fragmentState.mSavedFragmentState;
        if (bundle2 != null) {
            this.mFragment.mSavedFragmentState = bundle2;
        } else {
            this.mFragment.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            String str = "Instantiated fragment " + this.mFragment;
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
            String str = "moveto ACTIVITY_CREATED: " + this.mFragment;
        }
        Fragment fragment = this.mFragment;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
        Fragment fragment2 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentActivityCreated(fragment2, fragment2.mSavedFragmentState, false);
    }

    public void attach(@NonNull FragmentHostCallback<?> fragmentHostCallback, @NonNull FragmentManager fragmentManager, @Nullable Fragment fragment) {
        Fragment fragment2 = this.mFragment;
        fragment2.mHost = fragmentHostCallback;
        fragment2.mParentFragment = fragment;
        fragment2.mFragmentManager = fragmentManager;
        this.mDispatcher.dispatchOnFragmentPreAttached(fragment2, fragmentHostCallback.getContext(), false);
        this.mFragment.performAttach();
        Fragment fragment3 = this.mFragment;
        Fragment fragment4 = fragment3.mParentFragment;
        if (fragment4 == null) {
            fragmentHostCallback.onAttachFragment(fragment3);
        } else {
            fragment4.onAttachFragment(fragment3);
        }
        this.mDispatcher.dispatchOnFragmentAttached(this.mFragment, fragmentHostCallback.getContext(), false);
    }

    public int computeMaxState() {
        int i = this.mFragmentManagerState;
        Fragment fragment = this.mFragment;
        int i2 = i;
        if (fragment.mFromLayout) {
            i2 = fragment.mInLayout ? Math.max(i, 1) : i < 2 ? Math.min(i, fragment.mState) : Math.min(i, 1);
        }
        int i3 = i2;
        if (!this.mFragment.mAdded) {
            i3 = Math.min(i2, 1);
        }
        Fragment fragment2 = this.mFragment;
        int i4 = i3;
        if (fragment2.mRemoving) {
            i4 = fragment2.isInBackStack() ? Math.min(i3, 1) : Math.min(i3, -1);
        }
        Fragment fragment3 = this.mFragment;
        int i5 = i4;
        if (fragment3.mDeferStart) {
            i5 = i4;
            if (fragment3.mState < 3) {
                i5 = Math.min(i4, 2);
            }
        }
        int i6 = C03421.$SwitchMap$androidx$lifecycle$Lifecycle$State[this.mFragment.mMaxState.ordinal()];
        int i7 = i5;
        if (i6 != 1) {
            i7 = i6 != 2 ? i6 != 3 ? Math.min(i5, -1) : Math.min(i5, 1) : Math.min(i5, 3);
        }
        return i7;
    }

    public void create() {
        if (FragmentManager.isLoggingEnabled(3)) {
            String str = "moveto CREATED: " + this.mFragment;
        }
        Fragment fragment = this.mFragment;
        if (!fragment.mIsCreated) {
            this.mDispatcher.dispatchOnFragmentPreCreated(fragment, fragment.mSavedFragmentState, false);
            Fragment fragment2 = this.mFragment;
            fragment2.performCreate(fragment2.mSavedFragmentState);
            FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
            Fragment fragment3 = this.mFragment;
            fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentCreated(fragment3, fragment3.mSavedFragmentState, false);
            return;
        }
        fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
        this.mFragment.mState = 1;
    }

    public void createView(@NonNull FragmentContainer fragmentContainer) {
        int i;
        String str;
        if (!this.mFragment.mFromLayout) {
            if (FragmentManager.isLoggingEnabled(3)) {
                String str2 = "moveto CREATE_VIEW: " + this.mFragment;
            }
            r8 = null;
            Fragment fragment = this.mFragment;
            ViewGroup viewGroup = fragment.mContainer;
            if (viewGroup == null && (i = fragment.mContainerId) != 0) {
                if (i != -1) {
                    ViewGroup viewGroup2 = (ViewGroup) fragmentContainer.onFindViewById(i);
                    viewGroup = viewGroup2;
                    if (viewGroup2 == null) {
                        Fragment fragment2 = this.mFragment;
                        if (fragment2.mRestored) {
                            viewGroup = viewGroup2;
                        } else {
                            try {
                                str = fragment2.getResources().getResourceName(this.mFragment.mContainerId);
                            } catch (Resources.NotFoundException e) {
                                str = "unknown";
                            }
                            throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.mFragment.mContainerId) + " (" + str + ") for fragment " + this.mFragment);
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Cannot create fragment " + this.mFragment + " for a container view with no id");
                }
            }
            Fragment fragment3 = this.mFragment;
            fragment3.mContainer = viewGroup;
            fragment3.performCreateView(fragment3.performGetLayoutInflater(fragment3.mSavedFragmentState), viewGroup, this.mFragment.mSavedFragmentState);
            View view = this.mFragment.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment4 = this.mFragment;
                fragment4.mView.setTag(C0317R.C0319id.fragment_container_view_tag, fragment4);
                if (viewGroup != null) {
                    viewGroup.addView(this.mFragment.mView);
                }
                Fragment fragment5 = this.mFragment;
                if (fragment5.mHidden) {
                    fragment5.mView.setVisibility(8);
                }
                ViewCompat.requestApplyInsets(this.mFragment.mView);
                Fragment fragment6 = this.mFragment;
                fragment6.onViewCreated(fragment6.mView, fragment6.mSavedFragmentState);
                FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
                Fragment fragment7 = this.mFragment;
                fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
                Fragment fragment8 = this.mFragment;
                boolean z = false;
                if (fragment8.mView.getVisibility() == 0) {
                    z = false;
                    if (this.mFragment.mContainer != null) {
                        z = true;
                    }
                }
                fragment8.mIsNewlyAdded = z;
            }
        }
    }

    public void destroy(@NonNull FragmentHostCallback<?> fragmentHostCallback, @NonNull FragmentManagerViewModel fragmentManagerViewModel) {
        if (FragmentManager.isLoggingEnabled(3)) {
            String str = "movefrom CREATED: " + this.mFragment;
        }
        Fragment fragment = this.mFragment;
        boolean z = true;
        boolean z2 = fragment.mRemoving && !fragment.isInBackStack();
        if (z2 || fragmentManagerViewModel.shouldDestroy(this.mFragment)) {
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
            return;
        }
        this.mFragment.mState = 0;
    }

    public void detach(@NonNull FragmentManagerViewModel fragmentManagerViewModel) {
        if (FragmentManager.isLoggingEnabled(3)) {
            String str = "movefrom ATTACHED: " + this.mFragment;
        }
        this.mFragment.performDetach();
        this.mDispatcher.dispatchOnFragmentDetached(this.mFragment, false);
        Fragment fragment = this.mFragment;
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
        if (z || fragmentManagerViewModel.shouldDestroy(this.mFragment)) {
            if (FragmentManager.isLoggingEnabled(3)) {
                String str2 = "initState called for fragment: " + this.mFragment;
            }
            this.mFragment.initState();
        }
    }

    public void ensureInflatedView() {
        Fragment fragment = this.mFragment;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.isLoggingEnabled(3)) {
                String str = "moveto CREATE_VIEW: " + this.mFragment;
            }
            Fragment fragment2 = this.mFragment;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.mFragment.mSavedFragmentState);
            View view = this.mFragment.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.mFragment;
                fragment3.mView.setTag(C0317R.C0319id.fragment_container_view_tag, fragment3);
                Fragment fragment4 = this.mFragment;
                if (fragment4.mHidden) {
                    fragment4.mView.setVisibility(8);
                }
                Fragment fragment5 = this.mFragment;
                fragment5.onViewCreated(fragment5.mView, fragment5.mSavedFragmentState);
                FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
                Fragment fragment6 = this.mFragment;
                fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment6, fragment6.mView, fragment6.mSavedFragmentState, false);
            }
        }
    }

    @NonNull
    public Fragment getFragment() {
        return this.mFragment;
    }

    public void pause() {
        if (FragmentManager.isLoggingEnabled(3)) {
            String str = "movefrom RESUMED: " + this.mFragment;
        }
        this.mFragment.performPause();
        this.mDispatcher.dispatchOnFragmentPaused(this.mFragment, false);
    }

    public void restoreState(@NonNull ClassLoader classLoader) {
        Bundle bundle = this.mFragment.mSavedFragmentState;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
            Fragment fragment = this.mFragment;
            fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
            Fragment fragment2 = this.mFragment;
            fragment2.mTargetWho = fragment2.mSavedFragmentState.getString(TARGET_STATE_TAG);
            Fragment fragment3 = this.mFragment;
            if (fragment3.mTargetWho != null) {
                fragment3.mTargetRequestCode = fragment3.mSavedFragmentState.getInt(TARGET_REQUEST_CODE_STATE_TAG, 0);
            }
            Fragment fragment4 = this.mFragment;
            Boolean bool = fragment4.mSavedUserVisibleHint;
            if (bool != null) {
                fragment4.mUserVisibleHint = bool.booleanValue();
                this.mFragment.mSavedUserVisibleHint = null;
            } else {
                fragment4.mUserVisibleHint = fragment4.mSavedFragmentState.getBoolean(USER_VISIBLE_HINT_TAG, true);
            }
            Fragment fragment5 = this.mFragment;
            if (!fragment5.mUserVisibleHint) {
                fragment5.mDeferStart = true;
            }
        }
    }

    public void restoreViewState() {
        if (FragmentManager.isLoggingEnabled(3)) {
            String str = "moveto RESTORE_VIEW_STATE: " + this.mFragment;
        }
        Fragment fragment = this.mFragment;
        if (fragment.mView != null) {
            fragment.restoreViewState(fragment.mSavedFragmentState);
        }
        this.mFragment.mSavedFragmentState = null;
    }

    public void resume() {
        if (FragmentManager.isLoggingEnabled(3)) {
            String str = "moveto RESUMED: " + this.mFragment;
        }
        this.mFragment.performResume();
        this.mDispatcher.dispatchOnFragmentResumed(this.mFragment, false);
        Fragment fragment = this.mFragment;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
    }

    @Nullable
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

    @NonNull
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
                int i = this.mFragment.mTargetRequestCode;
                if (i != 0) {
                    fragmentState.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, i);
                }
            }
        }
        return fragmentState;
    }

    public void saveViewState() {
        if (this.mFragment.mView != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.mFragment.mView.saveHierarchyState(sparseArray);
            if (sparseArray.size() > 0) {
                this.mFragment.mSavedViewState = sparseArray;
            }
        }
    }

    public void setFragmentManagerState(int i) {
        this.mFragmentManagerState = i;
    }

    public void start() {
        if (FragmentManager.isLoggingEnabled(3)) {
            String str = "moveto STARTED: " + this.mFragment;
        }
        this.mFragment.performStart();
        this.mDispatcher.dispatchOnFragmentStarted(this.mFragment, false);
    }

    public void stop() {
        if (FragmentManager.isLoggingEnabled(3)) {
            String str = "movefrom STARTED: " + this.mFragment;
        }
        this.mFragment.performStop();
        this.mDispatcher.dispatchOnFragmentStopped(this.mFragment, false);
    }
}
