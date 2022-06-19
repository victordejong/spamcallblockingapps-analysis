package androidx.fragment.app;

import android.animation.Animator;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.app.AbstractC0457l;
import androidx.core.p022f.C0495a;
import androidx.core.p023g.C0536e;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0901i;
import androidx.lifecycle.AbstractC0903k;
import androidx.lifecycle.AbstractC0927y;
import androidx.lifecycle.C0904l;
import androidx.lifecycle.C0910p;
import androidx.lifecycle.C0926x;
import androidx.lifecycle.LiveData;
import androidx.p039h.p040a.AbstractC0759a;
import androidx.savedstate.AbstractC1082c;
import androidx.savedstate.C1078a;
import androidx.savedstate.C1081b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment.class */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, AbstractC0903k, AbstractC0927y, AbstractC1082c {
    static final int ACTIVITY_CREATED = 2;
    static final int CREATED = 1;
    static final int INITIALIZING = 0;
    static final int RESUMED = 4;
    static final int STARTED = 3;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    boolean mAdded;
    C0704a mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    private boolean mCalled;
    LayoutInflater$Factory2C0720i mChildFragmentManager;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    LayoutInflater$Factory2C0720i mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    AbstractC0716g mHost;
    boolean mInLayout;
    View mInnerView;
    boolean mIsCreated;
    boolean mIsNewlyAdded;
    private Boolean mIsPrimaryNavigationFragment;
    LayoutInflater mLayoutInflater;
    C0904l mLifecycleRegistry;
    AbstractC0896g.EnumC0898b mMaxState;
    boolean mMenuVisible;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    float mPostponedAlpha;
    Runnable mPostponedDurationRunnable;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    C1081b mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    SparseArray<Parcelable> mSavedViewState;
    int mState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    String mTargetWho;
    boolean mUserVisibleHint;
    View mView;
    C0755p mViewLifecycleOwner;
    C0910p<AbstractC0903k> mViewLifecycleOwnerLiveData;
    String mWho;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$InstantiationException.class */
    public static class InstantiationException extends RuntimeException {
        public InstantiationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.fragment.app.Fragment.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        final Bundle f2275a;

        public SavedState(Bundle bundle) {
            this.f2275a = bundle;
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle bundle;
            this.f2275a = parcel.readBundle();
            if (classLoader == null || (bundle = this.f2275a) == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.f2275a);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$a.class */
    public static class C0704a {

        /* renamed from: a */
        View f2276a;

        /* renamed from: b */
        Animator f2277b;

        /* renamed from: c */
        int f2278c;

        /* renamed from: d */
        int f2279d;

        /* renamed from: e */
        int f2280e;

        /* renamed from: f */
        int f2281f;

        /* renamed from: m */
        Boolean f2288m;

        /* renamed from: n */
        Boolean f2289n;

        /* renamed from: q */
        boolean f2292q;

        /* renamed from: r */
        AbstractC0705b f2293r;

        /* renamed from: s */
        boolean f2294s;

        /* renamed from: g */
        Object f2282g = null;

        /* renamed from: h */
        Object f2283h = Fragment.USE_DEFAULT_TRANSITION;

        /* renamed from: i */
        Object f2284i = null;

        /* renamed from: j */
        Object f2285j = Fragment.USE_DEFAULT_TRANSITION;

        /* renamed from: k */
        Object f2286k = null;

        /* renamed from: l */
        Object f2287l = Fragment.USE_DEFAULT_TRANSITION;

        /* renamed from: o */
        AbstractC0457l f2290o = null;

        /* renamed from: p */
        AbstractC0457l f2291p = null;

        C0704a() {
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$b.class */
    public interface AbstractC0705b {
        /* renamed from: a */
        void mo5477a();

        /* renamed from: b */
        void mo5476b();
    }

    public Fragment() {
        this.mState = 0;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new LayoutInflater$Factory2C0720i();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new Runnable() { // from class: androidx.fragment.app.Fragment.1
            @Override // java.lang.Runnable
            public void run() {
                Fragment.this.startPostponedEnterTransition();
            }
        };
        this.mMaxState = AbstractC0896g.EnumC0898b.RESUMED;
        this.mViewLifecycleOwnerLiveData = new C0910p<>();
        initLifecycle();
    }

    public Fragment(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private C0704a ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new C0704a();
        }
        return this.mAnimationInfo;
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new C0904l(this);
        this.mSavedStateRegistryController = C1081b.m4381a(this);
        if (Build.VERSION.SDK_INT >= 19) {
            this.mLifecycleRegistry.mo5108a(new AbstractC0901i() { // from class: androidx.fragment.app.Fragment.2
                @Override // androidx.lifecycle.AbstractC0901i
                /* renamed from: a */
                public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
                    if (enumC0897a != AbstractC0896g.EnumC0897a.ON_STOP || Fragment.this.mView == null) {
                        return;
                    }
                    Fragment.this.mView.cancelPendingInputEvents();
                }
            });
        }
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment newInstance = C0715f.m5635b(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(newInstance.getClass().getClassLoader());
                newInstance.setArguments(bundle);
            }
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    void callStartTransitionListener() {
        AbstractC0705b abstractC0705b;
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            abstractC0705b = null;
        } else {
            c0704a.f2292q = false;
            abstractC0705b = c0704a.f2293r;
            this.mAnimationInfo.f2293r = null;
        }
        if (abstractC0705b != null) {
            abstractC0705b.mo5477a();
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        if (getNextAnim() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(getNextAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (this.mInnerView != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(getStateAfterAnimating());
        }
        if (getContext() != null) {
            AbstractC0759a.m5407a(this).mo5403a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.mChildFragmentManager;
        layoutInflater$Factory2C0720i.mo5561a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.m5543b(str);
    }

    public final ActivityC0711c getActivity() {
        AbstractC0716g abstractC0716g = this.mHost;
        return abstractC0716g == null ? null : (ActivityC0711c) abstractC0716g.m5619i();
    }

    public boolean getAllowEnterTransitionOverlap() {
        C0704a c0704a = this.mAnimationInfo;
        return (c0704a == null || c0704a.f2289n == null) ? true : this.mAnimationInfo.f2289n.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        C0704a c0704a = this.mAnimationInfo;
        return (c0704a == null || c0704a.f2288m == null) ? true : this.mAnimationInfo.f2288m.booleanValue();
    }

    public View getAnimatingAway() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return null;
        }
        return c0704a.f2276a;
    }

    public Animator getAnimator() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return null;
        }
        return c0704a.f2277b;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final AbstractC0717h getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public Context getContext() {
        AbstractC0716g abstractC0716g = this.mHost;
        return abstractC0716g == null ? null : abstractC0716g.m5618j();
    }

    public Object getEnterTransition() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return null;
        }
        return c0704a.f2282g;
    }

    public AbstractC0457l getEnterTransitionCallback() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return null;
        }
        return c0704a.f2290o;
    }

    public Object getExitTransition() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return null;
        }
        return c0704a.f2284i;
    }

    public AbstractC0457l getExitTransitionCallback() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return null;
        }
        return c0704a.f2291p;
    }

    public final AbstractC0717h getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        AbstractC0716g abstractC0716g = this.mHost;
        return abstractC0716g == null ? null : abstractC0716g.mo5620h();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        LayoutInflater layoutInflater2 = layoutInflater;
        if (layoutInflater == null) {
            layoutInflater2 = performGetLayoutInflater(null);
        }
        return layoutInflater2;
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        AbstractC0716g abstractC0716g = this.mHost;
        if (abstractC0716g != null) {
            LayoutInflater mo5624c = abstractC0716g.mo5624c();
            C0536e.m6335a(mo5624c, this.mChildFragmentManager.m5599B());
            return mo5624c;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Override // androidx.lifecycle.AbstractC0903k
    public AbstractC0896g getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public AbstractC0759a getLoaderManager() {
        return AbstractC0759a.m5407a(this);
    }

    public int getNextAnim() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return 0;
        }
        return c0704a.f2279d;
    }

    public int getNextTransition() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return 0;
        }
        return c0704a.f2280e;
    }

    public int getNextTransitionStyle() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return 0;
        }
        return c0704a.f2281f;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public Object getReenterTransition() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return null;
        }
        return c0704a.f2285j == USE_DEFAULT_TRANSITION ? getExitTransition() : this.mAnimationInfo.f2285j;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return null;
        }
        return c0704a.f2283h == USE_DEFAULT_TRANSITION ? getEnterTransition() : this.mAnimationInfo.f2283h;
    }

    @Override // androidx.savedstate.AbstractC1082c
    public final C1078a getSavedStateRegistry() {
        return this.mSavedStateRegistryController.m4383a();
    }

    public Object getSharedElementEnterTransition() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return null;
        }
        return c0704a.f2286k;
    }

    public Object getSharedElementReturnTransition() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return null;
        }
        return c0704a.f2287l == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : this.mAnimationInfo.f2287l;
    }

    public int getStateAfterAnimating() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return 0;
        }
        return c0704a.f2278c;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final String getTag() {
        return this.mTag;
    }

    public final Fragment getTargetFragment() {
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.mFragmentManager;
        if (layoutInflater$Factory2C0720i != null && this.mTargetWho != null) {
            return layoutInflater$Factory2C0720i.f2352g.get(this.mTargetWho);
        }
        return null;
    }

    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i) {
        return getResources().getText(i);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public AbstractC0903k getViewLifecycleOwner() {
        C0755p c0755p = this.mViewLifecycleOwner;
        if (c0755p != null) {
            return c0755p;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public LiveData<AbstractC0903k> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.AbstractC0927y
    public C0926x getViewModelStore() {
        LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.mFragmentManager;
        if (layoutInflater$Factory2C0720i != null) {
            return layoutInflater$Factory2C0720i.m5537c(this);
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void initState() {
        initLifecycle();
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new LayoutInflater$Factory2C0720i();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    public boolean isHideReplaced() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return false;
        }
        return c0704a.f2294s;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        return this.mMenuVisible;
    }

    public boolean isPostponed() {
        C0704a c0704a = this.mAnimationInfo;
        if (c0704a == null) {
            return false;
        }
        return c0704a.f2292q;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 4;
    }

    public final boolean isStateSaved() {
        LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.mFragmentManager;
        if (layoutInflater$Factory2C0720i == null) {
            return false;
        }
        return layoutInflater$Factory2C0720i.m5514i();
    }

    public final boolean isVisible() {
        View view;
        return isAdded() && !isHidden() && (view = this.mView) != null && view.getWindowToken() != null && this.mView.getVisibility() == 0;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.m5502o();
    }

    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        AbstractC0716g abstractC0716g = this.mHost;
        Activity m5619i = abstractC0716g == null ? null : abstractC0716g.m5619i();
        if (m5619i != null) {
            this.mCalled = false;
            onAttach(m5619i);
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        if (!this.mChildFragmentManager.m5589a(1)) {
            this.mChildFragmentManager.m5500p();
        }
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.mContentLayoutId;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        AbstractC0716g abstractC0716g = this.mHost;
        Activity m5619i = abstractC0716g == null ? null : abstractC0716g.m5619i();
        if (m5619i != null) {
            this.mCalled = false;
            onInflate(m5619i, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.m5502o();
        this.mState = 2;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            this.mChildFragmentManager.m5498q();
            return;
        }
        throw new C0756q("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    public void performAttach() {
        this.mChildFragmentManager.m5566a(this.mHost, new AbstractC0713d() { // from class: androidx.fragment.app.Fragment.4
            @Override // androidx.fragment.app.AbstractC0713d
            /* renamed from: a */
            public View mo5632a(int i) {
                if (Fragment.this.mView != null) {
                    return Fragment.this.mView.findViewById(i);
                }
                throw new IllegalStateException("Fragment " + this + " does not have a view");
            }

            @Override // androidx.fragment.app.AbstractC0713d
            /* renamed from: a */
            public boolean mo5633a() {
                return Fragment.this.mView != null;
            }
        }, this);
        this.mCalled = false;
        onAttach(this.mHost.m5618j());
        if (this.mCalled) {
            return;
        }
        throw new C0756q("Fragment " + this + " did not call through to super.onAttach()");
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.m5585a(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (!this.mHidden) {
            return onContextItemSelected(menuItem) || this.mChildFragmentManager.m5551b(menuItem);
        }
        return false;
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.m5502o();
        this.mState = 1;
        this.mCalled = false;
        this.mSavedStateRegistryController.m4382a(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.m5111a(AbstractC0896g.EnumC0897a.ON_CREATE);
            return;
        }
        throw new C0756q("Fragment " + this + " did not call through to super.onCreate()");
    }

    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (!this.mHidden) {
            boolean z2 = false;
            if (this.mHasMenu) {
                z2 = false;
                if (this.mMenuVisible) {
                    z2 = true;
                    onCreateOptionsMenu(menu, menuInflater);
                }
            }
            z = z2 | this.mChildFragmentManager.m5580a(menu, menuInflater);
        }
        return z;
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.m5502o();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new C0755p();
        this.mView = onCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null) {
            this.mViewLifecycleOwner.m5411a();
            this.mViewLifecycleOwnerLiveData.mo5084a((C0910p<AbstractC0903k>) this.mViewLifecycleOwner);
        } else if (this.mViewLifecycleOwner.m5409b()) {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        } else {
            this.mViewLifecycleOwner = null;
        }
    }

    public void performDestroy() {
        this.mChildFragmentManager.m5486w();
        this.mLifecycleRegistry.m5111a(AbstractC0896g.EnumC0897a.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (this.mCalled) {
            return;
        }
        throw new C0756q("Fragment " + this + " did not call through to super.onDestroy()");
    }

    public void performDestroyView() {
        this.mChildFragmentManager.m5488v();
        if (this.mView != null) {
            this.mViewLifecycleOwner.m5410a(AbstractC0896g.EnumC0897a.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            AbstractC0759a.m5407a(this).mo5404a();
            this.mPerformedCreateView = false;
            return;
        }
        throw new C0756q("Fragment " + this + " did not call through to super.onDestroyView()");
    }

    public void performDetach() {
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (this.mCalled) {
            if (this.mChildFragmentManager.m5520g()) {
                return;
            }
            this.mChildFragmentManager.m5486w();
            this.mChildFragmentManager = new LayoutInflater$Factory2C0720i();
            return;
        }
        throw new C0756q("Fragment " + this + " did not call through to super.onDetach()");
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        this.mLayoutInflater = onGetLayoutInflater(bundle);
        return this.mLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.m5484x();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.m5556a(z);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (!this.mHidden) {
            return (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) || this.mChildFragmentManager.m5579a(menuItem);
        }
        return false;
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible) {
                onOptionsMenuClosed(menu);
            }
            this.mChildFragmentManager.m5552b(menu);
        }
    }

    public void performPause() {
        this.mChildFragmentManager.m5492t();
        if (this.mView != null) {
            this.mViewLifecycleOwner.m5410a(AbstractC0896g.EnumC0897a.ON_PAUSE);
        }
        this.mLifecycleRegistry.m5111a(AbstractC0896g.EnumC0897a.ON_PAUSE);
        this.mState = 3;
        this.mCalled = false;
        onPause();
        if (this.mCalled) {
            return;
        }
        throw new C0756q("Fragment " + this + " did not call through to super.onPause()");
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.m5540b(z);
    }

    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (!this.mHidden) {
            boolean z2 = false;
            if (this.mHasMenu) {
                z2 = false;
                if (this.mMenuVisible) {
                    z2 = true;
                    onPrepareOptionsMenu(menu);
                }
            }
            z = z2 | this.mChildFragmentManager.m5581a(menu);
        }
        return z;
    }

    public void performPrimaryNavigationFragmentChanged() {
        boolean m5549b = this.mFragmentManager.m5549b(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != m5549b) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(m5549b);
            onPrimaryNavigationFragmentChanged(m5549b);
            this.mChildFragmentManager.m5482y();
        }
    }

    public void performResume() {
        this.mChildFragmentManager.m5502o();
        this.mChildFragmentManager.m5510k();
        this.mState = 4;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new C0756q("Fragment " + this + " did not call through to super.onResume()");
        }
        this.mLifecycleRegistry.m5111a(AbstractC0896g.EnumC0897a.ON_RESUME);
        if (this.mView != null) {
            this.mViewLifecycleOwner.m5410a(AbstractC0896g.EnumC0897a.ON_RESUME);
        }
        this.mChildFragmentManager.m5494s();
        this.mChildFragmentManager.m5510k();
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.m4380b(bundle);
        Parcelable m5504n = this.mChildFragmentManager.m5504n();
        if (m5504n != null) {
            bundle.putParcelable("android:support:fragments", m5504n);
        }
    }

    public void performStart() {
        this.mChildFragmentManager.m5502o();
        this.mChildFragmentManager.m5510k();
        this.mState = 3;
        this.mCalled = false;
        onStart();
        if (this.mCalled) {
            this.mLifecycleRegistry.m5111a(AbstractC0896g.EnumC0897a.ON_START);
            if (this.mView != null) {
                this.mViewLifecycleOwner.m5410a(AbstractC0896g.EnumC0897a.ON_START);
            }
            this.mChildFragmentManager.m5496r();
            return;
        }
        throw new C0756q("Fragment " + this + " did not call through to super.onStart()");
    }

    public void performStop() {
        this.mChildFragmentManager.m5490u();
        if (this.mView != null) {
            this.mViewLifecycleOwner.m5410a(AbstractC0896g.EnumC0897a.ON_STOP);
        }
        this.mLifecycleRegistry.m5111a(AbstractC0896g.EnumC0897a.ON_STOP);
        this.mState = 2;
        this.mCalled = false;
        onStop();
        if (this.mCalled) {
            return;
        }
        throw new C0756q("Fragment " + this + " did not call through to super.onStop()");
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().f2292q = true;
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        ensureAnimationInfo().f2292q = true;
        LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.mFragmentManager;
        Handler m5617k = layoutInflater$Factory2C0720i != null ? layoutInflater$Factory2C0720i.f2359n.m5617k() : new Handler(Looper.getMainLooper());
        m5617k.removeCallbacks(this.mPostponedDurationRunnable);
        m5617k.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j));
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public final void requestPermissions(String[] strArr, int i) {
        AbstractC0716g abstractC0716g = this.mHost;
        if (abstractC0716g != null) {
            abstractC0716g.mo5628a(this, strArr, i);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final ActivityC0711c requireActivity() {
        ActivityC0711c activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final AbstractC0717h requireFragmentManager() {
        AbstractC0717h fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            if (getContext() == null) {
                throw new IllegalStateException("Fragment " + this + " is not attached to any Fragment or host");
            }
            throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
        }
        return parentFragment;
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.mChildFragmentManager.m5582a(parcelable);
        this.mChildFragmentManager.m5500p();
    }

    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mInnerView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (this.mCalled) {
            if (this.mView == null) {
                return;
            }
            this.mViewLifecycleOwner.m5410a(AbstractC0896g.EnumC0897a.ON_CREATE);
            return;
        }
        throw new C0756q("Fragment " + this + " did not call through to super.onViewStateRestored()");
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().f2289n = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().f2288m = Boolean.valueOf(z);
    }

    public void setAnimatingAway(View view) {
        ensureAnimationInfo().f2276a = view;
    }

    public void setAnimator(Animator animator) {
        ensureAnimationInfo().f2277b = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager == null || !isStateSaved()) {
            this.mArguments = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    public void setEnterSharedElementCallback(AbstractC0457l abstractC0457l) {
        ensureAnimationInfo().f2290o = abstractC0457l;
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().f2282g = obj;
    }

    public void setExitSharedElementCallback(AbstractC0457l abstractC0457l) {
        ensureAnimationInfo().f2291p = abstractC0457l;
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().f2284i = obj;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.mo5623e();
        }
    }

    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().f2294s = z;
    }

    public void setInitialSavedState(SavedState savedState) {
        if (this.mFragmentManager == null) {
            this.mSavedFragmentState = (savedState == null || savedState.f2275a == null) ? null : savedState.f2275a;
            return;
        }
        throw new IllegalStateException("Fragment already added");
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (!this.mHasMenu || !isAdded() || isHidden()) {
                return;
            }
            this.mHost.mo5623e();
        }
    }

    public void setNextAnim(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        ensureAnimationInfo().f2279d = i;
    }

    public void setNextTransition(int i, int i2) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0) {
            return;
        }
        ensureAnimationInfo();
        C0704a c0704a = this.mAnimationInfo;
        c0704a.f2280e = i;
        c0704a.f2281f = i2;
    }

    public void setOnStartEnterTransitionListener(AbstractC0705b abstractC0705b) {
        ensureAnimationInfo();
        if (abstractC0705b == this.mAnimationInfo.f2293r) {
            return;
        }
        if (abstractC0705b != null && this.mAnimationInfo.f2293r != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (this.mAnimationInfo.f2292q) {
            this.mAnimationInfo.f2293r = abstractC0705b;
        }
        if (abstractC0705b == null) {
            return;
        }
        abstractC0705b.mo5476b();
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().f2285j = obj;
    }

    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.mFragmentManager;
        if (layoutInflater$Factory2C0720i == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            layoutInflater$Factory2C0720i.m5525e(this);
        } else {
            layoutInflater$Factory2C0720i.m5522f(this);
        }
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().f2283h = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().f2286k = obj;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().f2287l = obj;
    }

    public void setStateAfterAnimating(int i) {
        ensureAnimationInfo().f2278c = i;
    }

    public void setTargetFragment(Fragment fragment, int i) {
        AbstractC0717h fragmentManager = getFragmentManager();
        AbstractC0717h fragmentManager2 = fragment != null ? fragment.getFragmentManager() : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException("Fragment " + fragment + " must share the same FragmentManager to be set as a target fragment");
        }
        Fragment fragment2 = fragment;
        while (true) {
            Fragment fragment3 = fragment2;
            if (fragment3 == null) {
                if (fragment == null) {
                    this.mTargetWho = null;
                    this.mTarget = null;
                } else if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
                    this.mTargetWho = null;
                    this.mTarget = fragment;
                } else {
                    this.mTargetWho = fragment.mWho;
                    this.mTarget = null;
                }
                this.mTargetRequestCode = i;
                return;
            } else if (fragment3 == this) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            } else {
                fragment2 = fragment3.getTargetFragment();
            }
        }
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 3 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            this.mFragmentManager.m5519g(this);
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 3 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        AbstractC0716g abstractC0716g = this.mHost;
        if (abstractC0716g != null) {
            return abstractC0716g.mo5627a(str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        AbstractC0716g abstractC0716g = this.mHost;
        if (abstractC0716g != null) {
            abstractC0716g.mo5630a(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        AbstractC0716g abstractC0716g = this.mHost;
        if (abstractC0716g != null) {
            abstractC0716g.mo5630a(this, intent, i, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        AbstractC0716g abstractC0716g = this.mHost;
        if (abstractC0716g != null) {
            abstractC0716g.mo5629a(this, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startPostponedEnterTransition() {
        LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.mFragmentManager;
        if (layoutInflater$Factory2C0720i == null || layoutInflater$Factory2C0720i.f2359n == null) {
            ensureAnimationInfo().f2292q = false;
        } else if (Looper.myLooper() != this.mFragmentManager.f2359n.m5617k().getLooper()) {
            this.mFragmentManager.f2359n.m5617k().postAtFrontOfQueue(new Runnable() { // from class: androidx.fragment.app.Fragment.3
                @Override // java.lang.Runnable
                public void run() {
                    Fragment.this.callStartTransitionListener();
                }
            });
        } else {
            callStartTransitionListener();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        C0495a.m6470a(this, sb);
        sb.append(" (");
        sb.append(this.mWho);
        sb.append(")");
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" ");
            sb.append(this.mTag);
        }
        sb.append('}');
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }
}
