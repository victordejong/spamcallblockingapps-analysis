package androidx.fragment.app;

import android.animation.Animator;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
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
import androidx.activity.result.IntentSenderRequest;
import androidx.core.app.n;
import androidx.core.view.g;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.ab;
import androidx.lifecycle.ac;
import androidx.lifecycle.ad;
import androidx.lifecycle.ae;
import androidx.lifecycle.af;
import androidx.lifecycle.i;
import androidx.lifecycle.j;
import androidx.lifecycle.p;
import androidx.lifecycle.t;
import androidx.lifecycle.y;
import androidx.savedstate.d;
import androidx.savedstate.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment.class */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, ad, i, p, d {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    a mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    private boolean mCalled;
    FragmentManager mChildFragmentManager;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    private ab.b mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    FragmentManager mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    h<?> mHost;
    boolean mInLayout;
    boolean mIsCreated;
    boolean mIsNewlyAdded;
    private Boolean mIsPrimaryNavigationFragment;
    LayoutInflater mLayoutInflater;
    LifecycleRegistry mLifecycleRegistry;
    j.b mMaxState;
    boolean mMenuVisible;
    private final AtomicInteger mNextLocalRequestCode;
    private final ArrayList<b> mOnPreAttachedListeners;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    float mPostponedAlpha;
    Runnable mPostponedDurationRunnable;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    androidx.savedstate.c mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    int mState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    String mTargetWho;
    boolean mUserVisibleHint;
    View mView;
    w mViewLifecycleOwner;
    t<p> mViewLifecycleOwnerLiveData;
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
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        final Bundle mState;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Bundle bundle) {
            this.mState = bundle;
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.mState = readBundle;
            if (classLoader != null && readBundle != null) {
                readBundle.setClassLoader(classLoader);
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.mState);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        View f2174a;

        /* renamed from: b  reason: collision with root package name */
        Animator f2175b;

        /* renamed from: c  reason: collision with root package name */
        boolean f2176c;

        /* renamed from: d  reason: collision with root package name */
        int f2177d;
        int e;
        int f;
        int g;
        int h;
        ArrayList<String> i;
        ArrayList<String> j;
        Boolean q;
        Boolean r;
        boolean w;
        c x;
        boolean y;
        Object k = null;
        Object l = Fragment.USE_DEFAULT_TRANSITION;
        Object m = null;
        Object n = Fragment.USE_DEFAULT_TRANSITION;
        Object o = null;
        Object p = Fragment.USE_DEFAULT_TRANSITION;
        n s = null;
        n t = null;
        float u = 1.0f;
        View v = null;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$b.class */
    public static abstract class b {
        private b() {
        }

        abstract void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$c.class */
    public interface c {
        void a();

        void b();
    }

    public Fragment() {
        this.mState = -1;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new k();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new Runnable() { // from class: androidx.fragment.app.Fragment.1
            @Override // java.lang.Runnable
            public final void run() {
                Fragment.this.startPostponedEnterTransition();
            }
        };
        this.mMaxState = j.b.RESUMED;
        this.mViewLifecycleOwnerLiveData = new t<>();
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mOnPreAttachedListeners = new ArrayList<>();
        initLifecycle();
    }

    public Fragment(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private a ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new a();
        }
        return this.mAnimationInfo;
    }

    private int getMinimumMaxLifecycleState() {
        return (this.mMaxState == j.b.INITIALIZED || this.mParentFragment == null) ? this.mMaxState.ordinal() : Math.min(this.mMaxState.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new LifecycleRegistry(this);
        this.mSavedStateRegistryController = androidx.savedstate.c.a(this);
        this.mDefaultFactory = null;
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) g.b(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.setArguments(bundle);
            }
            return fragment;
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

    private <I, O> androidx.activity.result.b<I> prepareCallInternal(final androidx.activity.result.a.a<I, O> aVar, final androidx.a.a.c.a<Void, androidx.activity.result.c> aVar2, final androidx.activity.result.a<O> aVar3) {
        if (this.mState <= 1) {
            final AtomicReference atomicReference = new AtomicReference();
            registerOnPreAttachListener(new b() { // from class: androidx.fragment.app.Fragment.8
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // androidx.fragment.app.Fragment.b
                final void a() {
                    String generateActivityResultKey = Fragment.this.generateActivityResultKey();
                    atomicReference.set(((androidx.activity.result.c) aVar2.apply(null)).a(generateActivityResultKey, Fragment.this, aVar, aVar3));
                }
            });
            return new androidx.activity.result.b<I>() { // from class: androidx.fragment.app.Fragment.9
                @Override // androidx.activity.result.b
                public final void a() {
                    androidx.activity.result.b bVar = (androidx.activity.result.b) atomicReference.getAndSet(null);
                    if (bVar != null) {
                        bVar.a();
                    }
                }

                @Override // androidx.activity.result.b
                public final void a(I i, androidx.core.app.b bVar) {
                    androidx.activity.result.b bVar2 = (androidx.activity.result.b) atomicReference.get();
                    if (bVar2 != null) {
                        bVar2.a(i, bVar);
                        return;
                    }
                    throw new IllegalStateException("Operation cannot be started before fragment is in created state");
                }
            };
        }
        throw new IllegalStateException("Fragment " + this + " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate()).");
    }

    private void registerOnPreAttachListener(b bVar) {
        if (this.mState >= 0) {
            bVar.a();
        } else {
            this.mOnPreAttachedListeners.add(bVar);
        }
    }

    private void restoreViewState() {
        if (FragmentManager.a(3)) {
            new StringBuilder("moveto RESTORE_VIEW_STATE: ").append(this);
        }
        if (this.mView != null) {
            restoreViewState(this.mSavedFragmentState);
        }
        this.mSavedFragmentState = null;
    }

    void callStartTransitionListener(boolean z) {
        ViewGroup viewGroup;
        FragmentManager fragmentManager;
        a aVar = this.mAnimationInfo;
        c cVar = null;
        if (aVar != null) {
            aVar.w = false;
            cVar = this.mAnimationInfo.x;
            this.mAnimationInfo.x = null;
        }
        if (cVar != null) {
            cVar.a();
        } else if (FragmentManager.f2185a && this.mView != null && (viewGroup = this.mContainer) != null && (fragmentManager = this.mFragmentManager) != null) {
            final z a2 = z.a(viewGroup, fragmentManager);
            a2.b();
            if (z) {
                this.mHost.f2292d.post(new Runnable() { // from class: androidx.fragment.app.Fragment.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        a2.d();
                    }
                });
            } else {
                a2.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e createFragmentContainer() {
        return new e() { // from class: androidx.fragment.app.Fragment.4
            @Override // androidx.fragment.app.e
            public final View a(int i) {
                if (Fragment.this.mView != null) {
                    return Fragment.this.mView.findViewById(i);
                }
                throw new IllegalStateException("Fragment " + Fragment.this + " does not have a view");
            }

            @Override // androidx.fragment.app.e
            public final boolean a() {
                return Fragment.this.mView != null;
            }
        };
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
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(getPopExitAnim());
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
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            androidx.h.a.a.a(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        FragmentManager fragmentManager = this.mChildFragmentManager;
        fragmentManager.a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.f2186b.d(str);
    }

    String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final FragmentActivity getActivity() {
        h<?> hVar = this.mHost;
        if (hVar == null) {
            return null;
        }
        return (FragmentActivity) hVar.f2290b;
    }

    public boolean getAllowEnterTransitionOverlap() {
        a aVar = this.mAnimationInfo;
        if (aVar == null || aVar.r == null) {
            return true;
        }
        return this.mAnimationInfo.r.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        a aVar = this.mAnimationInfo;
        if (aVar == null || aVar.q == null) {
            return true;
        }
        return this.mAnimationInfo.q.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getAnimatingAway() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.f2174a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Animator getAnimator() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.f2175b;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final FragmentManager getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public Context getContext() {
        h<?> hVar = this.mHost;
        if (hVar == null) {
            return null;
        }
        return hVar.f2291c;
    }

    @Override // androidx.lifecycle.i
    public ab.b getDefaultViewModelProviderFactory() {
        if (this.mFragmentManager != null) {
            if (this.mDefaultFactory == null) {
                Application application = null;
                Context applicationContext = requireContext().getApplicationContext();
                while (true) {
                    if (!(applicationContext instanceof ContextWrapper)) {
                        break;
                    } else if (applicationContext instanceof Application) {
                        application = (Application) applicationContext;
                        break;
                    } else {
                        applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
                    }
                }
                if (application == null && FragmentManager.a(3)) {
                    StringBuilder sb = new StringBuilder("Could not find Application instance from Context ");
                    sb.append(requireContext().getApplicationContext());
                    sb.append(", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
                }
                this.mDefaultFactory = new y(application, this, getArguments());
            }
            return this.mDefaultFactory;
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEnterAnim() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return 0;
        }
        return aVar.f2177d;
    }

    public Object getEnterTransition() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n getEnterTransitionCallback() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getExitAnim() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return 0;
        }
        return aVar.e;
    }

    public Object getExitTransition() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n getExitTransitionCallback() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getFocusedView() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.v;
    }

    @Deprecated
    public final FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        h<?> hVar = this.mHost;
        if (hVar == null) {
            return null;
        }
        return hVar.e();
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
        h<?> hVar = this.mHost;
        if (hVar != null) {
            LayoutInflater c2 = hVar.c();
            g.a(c2, this.mChildFragmentManager.f2188d);
            return c2;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Override // androidx.lifecycle.p
    public j getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public androidx.h.a.a getLoaderManager() {
        return androidx.h.a.a.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNextTransition() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return 0;
        }
        return aVar.h;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final FragmentManager getParentFragmentManager() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getPopDirection() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return false;
        }
        return aVar.f2176c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPopEnterAnim() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return 0;
        }
        return aVar.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPopExitAnim() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return 0;
        }
        return aVar.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getPostOnViewCreatedAlpha() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return 1.0f;
        }
        return aVar.u;
    }

    public Object getReenterTransition() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.n == USE_DEFAULT_TRANSITION ? getExitTransition() : this.mAnimationInfo.n;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.l == USE_DEFAULT_TRANSITION ? getEnterTransition() : this.mAnimationInfo.l;
    }

    @Override // androidx.savedstate.d
    public final androidx.savedstate.b getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f5612a;
    }

    public Object getSharedElementEnterTransition() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.o;
    }

    public Object getSharedElementReturnTransition() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return null;
        }
        return aVar.p == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : this.mAnimationInfo.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<String> getSharedElementSourceNames() {
        a aVar = this.mAnimationInfo;
        return (aVar == null || aVar.i == null) ? new ArrayList<>() : this.mAnimationInfo.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<String> getSharedElementTargetNames() {
        a aVar = this.mAnimationInfo;
        return (aVar == null || aVar.j == null) ? new ArrayList<>() : this.mAnimationInfo.j;
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

    @Deprecated
    public final Fragment getTargetFragment() {
        String str;
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return fragmentManager.b(str);
    }

    @Deprecated
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

    public p getViewLifecycleOwner() {
        w wVar = this.mViewLifecycleOwner;
        if (wVar != null) {
            return wVar;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public LiveData<p> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.ad
    public ac getViewModelStore() {
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        } else if (getMinimumMaxLifecycleState() != j.b.INITIALIZED.ordinal()) {
            l lVar = this.mFragmentManager.w;
            ac acVar = lVar.f2301b.get(this.mWho);
            ac acVar2 = acVar;
            if (acVar == null) {
                acVar2 = new ac();
                lVar.f2301b.put(this.mWho, acVar2);
            }
            return acVar2;
        } else {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
    }

    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        this.mChildFragmentManager = new k();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHideReplaced() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return false;
        }
        return aVar.y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        if (this.mMenuVisible) {
            return this.mFragmentManager == null || FragmentManager.b(this.mParentFragment);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPostponed() {
        a aVar = this.mAnimationInfo;
        if (aVar == null) {
            return false;
        }
        return aVar.w;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isRemovingParent() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment.isRemoving() || parentFragment.isRemovingParent();
        }
        return false;
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            return false;
        }
        return fragmentManager.f();
    }

    public final boolean isVisible() {
        View view;
        return isAdded() && !isHidden() && (view = this.mView) != null && view.getWindowToken() != null && this.mView.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void noteStateNotSaved() {
        this.mChildFragmentManager.i();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (FragmentManager.a(2)) {
            StringBuilder sb = new StringBuilder("Fragment ");
            sb.append(this);
            sb.append(" received the following in onActivityResult(): requestCode: ");
            sb.append(i);
            sb.append(" resultCode: ");
            sb.append(i2);
            sb.append(" data: ");
            sb.append(intent);
        }
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        h<?> hVar = this.mHost;
        Activity activity = hVar == null ? null : hVar.f2290b;
        if (activity != null) {
            this.mCalled = false;
            onAttach(activity);
        }
    }

    @Deprecated
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
        boolean z = true;
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        if (this.mChildFragmentManager.k <= 0) {
            z = false;
        }
        if (!z) {
            this.mChildFragmentManager.j();
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
        h<?> hVar = this.mHost;
        Activity activity = hVar == null ? null : hVar.f2290b;
        if (activity != null) {
            this.mCalled = false;
            onInflate(activity, attributeSet, bundle);
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

    @Deprecated
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.i();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            restoreViewState();
            this.mChildFragmentManager.k();
            return;
        }
        throw new ab("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performAttach() {
        Iterator<b> it2 = this.mOnPreAttachedListeners.iterator();
        while (it2.hasNext()) {
            it2.next().a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.a(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.f2291c);
        if (this.mCalled) {
            this.mFragmentManager.p(this);
            FragmentManager fragmentManager = this.mChildFragmentManager;
            fragmentManager.t = false;
            fragmentManager.u = false;
            fragmentManager.w.e = false;
            fragmentManager.d(0);
            return;
        }
        throw new ab("Fragment " + this + " did not call through to super.onAttach()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.b(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.i();
        this.mState = 1;
        this.mCalled = false;
        if (Build.VERSION.SDK_INT >= 19) {
            this.mLifecycleRegistry.addObserver(new androidx.lifecycle.n() { // from class: androidx.fragment.app.Fragment.5
                @Override // androidx.lifecycle.n
                public final void a(p pVar, j.a aVar) {
                    if (aVar == j.a.ON_STOP && Fragment.this.mView != null) {
                        Fragment.this.mView.cancelPendingInputEvents();
                    }
                }
            });
        }
        this.mSavedStateRegistryController.a(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.handleLifecycleEvent(j.a.ON_CREATE);
            return;
        }
        throw new ab("Fragment " + this + " did not call through to super.onCreate()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
            z = z2 | this.mChildFragmentManager.a(menu, menuInflater);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.i();
        boolean z = true;
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new w(getViewModelStore());
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = onCreateView;
        if (onCreateView != null) {
            this.mViewLifecycleOwner.a();
            ae.a(this.mView, this.mViewLifecycleOwner);
            af.a(this.mView, this.mViewLifecycleOwner);
            e.a(this.mView, this.mViewLifecycleOwner);
            this.mViewLifecycleOwnerLiveData.b((t<p>) this.mViewLifecycleOwner);
            return;
        }
        if (this.mViewLifecycleOwner.f2378a == null) {
            z = false;
        }
        if (!z) {
            this.mViewLifecycleOwner = null;
            return;
        }
        throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDestroy() {
        this.mChildFragmentManager.o();
        this.mLifecycleRegistry.handleLifecycleEvent(j.a.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new ab("Fragment " + this + " did not call through to super.onDestroy()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDestroyView() {
        this.mChildFragmentManager.d(1);
        if (this.mView != null && this.mViewLifecycleOwner.getLifecycle().getCurrentState().isAtLeast(j.b.CREATED)) {
            this.mViewLifecycleOwner.a(j.a.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            androidx.h.a.a.a(this).a();
            this.mPerformedCreateView = false;
            return;
        }
        throw new ab("Fragment " + this + " did not call through to super.onDestroyView()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new ab("Fragment " + this + " did not call through to super.onDetach()");
        } else if (!this.mChildFragmentManager.v) {
            this.mChildFragmentManager.o();
            this.mChildFragmentManager = new k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.b(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (!this.mHasMenu || !this.mMenuVisible || !onOptionsItemSelected(menuItem)) {
            return this.mChildFragmentManager.a(menuItem);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performOptionsMenuClosed(Menu menu) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible) {
                onOptionsMenuClosed(menu);
            }
            this.mChildFragmentManager.b(menu);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPause() {
        this.mChildFragmentManager.d(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(j.a.ON_PAUSE);
        }
        this.mLifecycleRegistry.handleLifecycleEvent(j.a.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new ab("Fragment " + this + " did not call through to super.onPause()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.c(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
            z = z2 | this.mChildFragmentManager.a(menu);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performPrimaryNavigationFragmentChanged() {
        boolean a2 = this.mFragmentManager.a(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != a2) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(a2);
            onPrimaryNavigationFragmentChanged(a2);
            FragmentManager fragmentManager = this.mChildFragmentManager;
            fragmentManager.c();
            fragmentManager.o(fragmentManager.o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performResume() {
        this.mChildFragmentManager.i();
        this.mChildFragmentManager.a(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (this.mCalled) {
            this.mLifecycleRegistry.handleLifecycleEvent(j.a.ON_RESUME);
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(j.a.ON_RESUME);
            }
            this.mChildFragmentManager.m();
            return;
        }
        throw new ab("Fragment " + this + " did not call through to super.onResume()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
        Parcelable h = this.mChildFragmentManager.h();
        if (h != null) {
            bundle.putParcelable("android:support:fragments", h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performStart() {
        this.mChildFragmentManager.i();
        this.mChildFragmentManager.a(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (this.mCalled) {
            this.mLifecycleRegistry.handleLifecycleEvent(j.a.ON_START);
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(j.a.ON_START);
            }
            this.mChildFragmentManager.l();
            return;
        }
        throw new ab("Fragment " + this + " did not call through to super.onStart()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performStop() {
        this.mChildFragmentManager.n();
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(j.a.ON_STOP);
        }
        this.mLifecycleRegistry.handleLifecycleEvent(j.a.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new ab("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.d(2);
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().w = true;
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        ensureAnimationInfo().w = true;
        FragmentManager fragmentManager = this.mFragmentManager;
        Handler handler = fragmentManager != null ? fragmentManager.l.f2292d : new Handler(Looper.getMainLooper());
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j));
    }

    public final <I, O> androidx.activity.result.b<I> registerForActivityResult(androidx.activity.result.a.a<I, O> aVar, androidx.activity.result.a<O> aVar2) {
        return prepareCallInternal(aVar, new androidx.a.a.c.a<Void, androidx.activity.result.c>() { // from class: androidx.fragment.app.Fragment.6
            @Override // androidx.a.a.c.a
            public final /* synthetic */ androidx.activity.result.c apply(Void r3) {
                return Fragment.this.mHost instanceof androidx.activity.result.d ? ((androidx.activity.result.d) Fragment.this.mHost).getActivityResultRegistry() : Fragment.this.requireActivity().getActivityResultRegistry();
            }
        }, aVar2);
    }

    public final <I, O> androidx.activity.result.b<I> registerForActivityResult(androidx.activity.result.a.a<I, O> aVar, final androidx.activity.result.c cVar, androidx.activity.result.a<O> aVar2) {
        return prepareCallInternal(aVar, new androidx.a.a.c.a<Void, androidx.activity.result.c>() { // from class: androidx.fragment.app.Fragment.7
            @Override // androidx.a.a.c.a
            public final /* bridge */ /* synthetic */ androidx.activity.result.c apply(Void r3) {
                return cVar;
            }
        }, aVar2);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i) {
        if (this.mHost != null) {
            FragmentManager parentFragmentManager = getParentFragmentManager();
            if (parentFragmentManager.r != null) {
                parentFragmentManager.s.addLast(new FragmentManager.LaunchedFragmentInfo(this.mWho, i));
                parentFragmentManager.r.a(strArr, null);
                return;
            }
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final FragmentActivity requireActivity() {
        FragmentActivity activity = getActivity();
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

    @Deprecated
    public final FragmentManager requireFragmentManager() {
        return getParentFragmentManager();
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
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException("Fragment " + this + " is not attached to any Fragment or host");
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.mChildFragmentManager.a(parcelable);
            this.mChildFragmentManager.j();
        }
    }

    final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            w wVar = this.mViewLifecycleOwner;
            wVar.f2379b.a(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new ab("Fragment " + this + " did not call through to super.onViewStateRestored()");
        } else if (this.mView != null) {
            this.mViewLifecycleOwner.a(j.a.ON_CREATE);
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().r = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().q = Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAnimatingAway(View view) {
        ensureAnimationInfo().f2174a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAnimations(int i, int i2, int i3, int i4) {
        if (this.mAnimationInfo != null || i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            ensureAnimationInfo().f2177d = i;
            ensureAnimationInfo().e = i2;
            ensureAnimationInfo().f = i3;
            ensureAnimationInfo().g = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAnimator(Animator animator) {
        ensureAnimationInfo().f2175b = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager == null || !isStateSaved()) {
            this.mArguments = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    public void setEnterSharedElementCallback(n nVar) {
        ensureAnimationInfo().s = nVar;
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().k = obj;
    }

    public void setExitSharedElementCallback(n nVar) {
        ensureAnimationInfo().t = nVar;
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().m = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFocusedView(View view) {
        ensureAnimationInfo().v = view;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (isAdded() && !isHidden()) {
                this.mHost.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().y = z;
    }

    public void setInitialSavedState(SavedState savedState) {
        if (this.mFragmentManager == null) {
            this.mSavedFragmentState = (savedState == null || savedState.mState == null) ? null : savedState.mState;
            return;
        }
        throw new IllegalStateException("Fragment already added");
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNextTransition(int i) {
        if (this.mAnimationInfo != null || i != 0) {
            ensureAnimationInfo();
            this.mAnimationInfo.h = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnStartEnterTransitionListener(c cVar) {
        ensureAnimationInfo();
        if (cVar != this.mAnimationInfo.x) {
            if (cVar == null || this.mAnimationInfo.x == null) {
                if (this.mAnimationInfo.w) {
                    this.mAnimationInfo.x = cVar;
                }
                if (cVar != null) {
                    cVar.b();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on ".concat(String.valueOf(this)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPopDirection(boolean z) {
        if (this.mAnimationInfo != null) {
            ensureAnimationInfo().f2176c = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPostOnViewCreatedAlpha(float f) {
        ensureAnimationInfo().u = f;
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().n = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            fragmentManager.w.a(this);
        } else {
            fragmentManager.w.c(this);
        }
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().l = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().o = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        ensureAnimationInfo();
        this.mAnimationInfo.i = arrayList;
        this.mAnimationInfo.j = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().p = obj;
    }

    @Deprecated
    public void setTargetFragment(Fragment fragment, int i) {
        FragmentManager fragmentManager = this.mFragmentManager;
        FragmentManager fragmentManager2 = fragment != null ? fragment.mFragmentManager : null;
        if (fragmentManager == null || fragmentManager2 == null || fragmentManager == fragmentManager2) {
            for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getTargetFragment()) {
                if (fragment2.equals(this)) {
                    throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
                }
            }
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
        }
        throw new IllegalArgumentException("Fragment " + fragment + " must share the same FragmentManager to be set as a target fragment");
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            FragmentManager fragmentManager = this.mFragmentManager;
            fragmentManager.a(fragmentManager.g(this));
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 5 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        h<?> hVar = this.mHost;
        if (hVar != null) {
            return hVar.a(str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        h<?> hVar = this.mHost;
        if (hVar != null) {
            hVar.a(intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (this.mHost != null) {
            FragmentManager parentFragmentManager = getParentFragmentManager();
            if (parentFragmentManager.p != null) {
                parentFragmentManager.s.addLast(new FragmentManager.LaunchedFragmentInfo(this.mWho, i));
                if (!(intent == null || bundle == null)) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
                }
                parentFragmentManager.p.a(intent, null);
                return;
            }
            parentFragmentManager.l.a(intent, i, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (this.mHost != null) {
            if (FragmentManager.a(2)) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(this);
                sb.append(" received the following in startIntentSenderForResult() requestCode: ");
                sb.append(i);
                sb.append(" IntentSender: ");
                sb.append(intentSender);
                sb.append(" fillInIntent: ");
                sb.append(intent);
                sb.append(" options: ");
                sb.append(bundle);
            }
            FragmentManager parentFragmentManager = getParentFragmentManager();
            if (parentFragmentManager.q != null) {
                Intent intent2 = intent;
                if (bundle != null) {
                    intent2 = intent;
                    if (intent == null) {
                        intent2 = new Intent();
                        intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
                    }
                    if (FragmentManager.a(2)) {
                        StringBuilder sb2 = new StringBuilder("ActivityOptions ");
                        sb2.append(bundle);
                        sb2.append(" were added to fillInIntent ");
                        sb2.append(intent2);
                        sb2.append(" for fragment ");
                        sb2.append(this);
                    }
                    intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
                }
                IntentSenderRequest.a aVar = new IntentSenderRequest.a(intentSender);
                aVar.f541a = intent2;
                IntentSenderRequest a2 = aVar.a(i3, i2).a();
                parentFragmentManager.s.addLast(new FragmentManager.LaunchedFragmentInfo(this.mWho, i));
                if (FragmentManager.a(2)) {
                    StringBuilder sb3 = new StringBuilder("Fragment ");
                    sb3.append(this);
                    sb3.append("is launching an IntentSender for result ");
                }
                parentFragmentManager.q.a(a2, null);
                return;
            }
            h<?> hVar = parentFragmentManager.l;
            if (i == -1) {
                androidx.core.app.a.a(hVar.f2290b, intentSender, i, intent, i2, i3, i4, bundle);
                return;
            }
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo != null && ensureAnimationInfo().w) {
            if (this.mHost == null) {
                ensureAnimationInfo().w = false;
            } else if (Looper.myLooper() != this.mHost.f2292d.getLooper()) {
                this.mHost.f2292d.postAtFrontOfQueue(new Runnable() { // from class: androidx.fragment.app.Fragment.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Fragment.this.callStartTransitionListener(false);
                    }
                });
            } else {
                callStartTransitionListener(true);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("}");
        sb.append(" (");
        sb.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        sb.append(")");
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }
}
