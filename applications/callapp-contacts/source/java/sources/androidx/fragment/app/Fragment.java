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
import androidx.activity.result.AbstractC0129a;
import androidx.activity.result.AbstractC0135b;
import androidx.activity.result.AbstractC0136c;
import androidx.activity.result.AbstractC0141d;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.p016a.AbstractC0130a;
import androidx.core.app.AbstractC0766n;
import androidx.core.app.C0726a;
import androidx.core.app.C0734b;
import androidx.core.view.C0911g;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.AbstractC1239ad;
import androidx.lifecycle.AbstractC1252i;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1261n;
import androidx.lifecycle.AbstractC1263p;
import androidx.lifecycle.C1232ab;
import androidx.lifecycle.C1238ac;
import androidx.lifecycle.C1240ae;
import androidx.lifecycle.C1241af;
import androidx.lifecycle.C1267t;
import androidx.lifecycle.C1283y;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.LiveData;
import androidx.p010a.p011a.p014c.AbstractC0112a;
import androidx.p049h.p050a.AbstractC1160a;
import androidx.savedstate.AbstractC2774d;
import androidx.savedstate.C2770b;
import androidx.savedstate.C2773c;
import androidx.savedstate.C2775e;
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
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, AbstractC1239ad, AbstractC1252i, AbstractC1263p, AbstractC2774d {
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
    C1043a mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    private boolean mCalled;
    FragmentManager mChildFragmentManager;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    private C1232ab.AbstractC1234b mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    FragmentManager mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    AbstractC1105h<?> mHost;
    boolean mInLayout;
    boolean mIsCreated;
    boolean mIsNewlyAdded;
    private Boolean mIsPrimaryNavigationFragment;
    LayoutInflater mLayoutInflater;
    LifecycleRegistry mLifecycleRegistry;
    AbstractC1253j.EnumC1256b mMaxState;
    boolean mMenuVisible;
    private final AtomicInteger mNextLocalRequestCode;
    private final ArrayList<AbstractC1044b> mOnPreAttachedListeners;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    float mPostponedAlpha;
    Runnable mPostponedDurationRunnable;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    C2773c mSavedStateRegistryController;
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
    C1142w mViewLifecycleOwner;
    C1267t<AbstractC1263p> mViewLifecycleOwnerLiveData;
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

        public SavedState(Bundle bundle) {
            this.mState = bundle;
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.mState = readBundle;
            if (classLoader == null || readBundle == null) {
                return;
            }
            readBundle.setClassLoader(classLoader);
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

    /* renamed from: androidx.fragment.app.Fragment$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$a.class */
    public static final class C1043a {

        /* renamed from: a */
        View f4160a;

        /* renamed from: b */
        Animator f4161b;

        /* renamed from: c */
        boolean f4162c;

        /* renamed from: d */
        int f4163d;

        /* renamed from: e */
        int f4164e;

        /* renamed from: f */
        int f4165f;

        /* renamed from: g */
        int f4166g;

        /* renamed from: h */
        int f4167h;

        /* renamed from: i */
        ArrayList<String> f4168i;

        /* renamed from: j */
        ArrayList<String> f4169j;

        /* renamed from: q */
        Boolean f4176q;

        /* renamed from: r */
        Boolean f4177r;

        /* renamed from: w */
        boolean f4182w;

        /* renamed from: x */
        AbstractC1045c f4183x;

        /* renamed from: y */
        boolean f4184y;

        /* renamed from: k */
        Object f4170k = null;

        /* renamed from: l */
        Object f4171l = Fragment.USE_DEFAULT_TRANSITION;

        /* renamed from: m */
        Object f4172m = null;

        /* renamed from: n */
        Object f4173n = Fragment.USE_DEFAULT_TRANSITION;

        /* renamed from: o */
        Object f4174o = null;

        /* renamed from: p */
        Object f4175p = Fragment.USE_DEFAULT_TRANSITION;

        /* renamed from: s */
        AbstractC0766n f4178s = null;

        /* renamed from: t */
        AbstractC0766n f4179t = null;

        /* renamed from: u */
        float f4180u = 1.0f;

        /* renamed from: v */
        View f4181v = null;

        C1043a() {
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$b.class */
    public static abstract class AbstractC1044b {
        private AbstractC1044b() {
        }

        /* renamed from: a */
        abstract void mo43769a();
    }

    /* renamed from: androidx.fragment.app.Fragment$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$c.class */
    public interface AbstractC1045c {
        /* renamed from: a */
        void mo43664a();

        /* renamed from: b */
        void mo43663b();
    }

    public Fragment() {
        this.mState = -1;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new C1110k();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new Runnable() { // from class: androidx.fragment.app.Fragment.1
            @Override // java.lang.Runnable
            public final void run() {
                Fragment.this.startPostponedEnterTransition();
            }
        };
        this.mMaxState = AbstractC1253j.EnumC1256b.RESUMED;
        this.mViewLifecycleOwnerLiveData = new C1267t<>();
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mOnPreAttachedListeners = new ArrayList<>();
        initLifecycle();
    }

    public Fragment(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private C1043a ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new C1043a();
        }
        return this.mAnimationInfo;
    }

    private int getMinimumMaxLifecycleState() {
        return (this.mMaxState == AbstractC1253j.EnumC1256b.INITIALIZED || this.mParentFragment == null) ? this.mMaxState.ordinal() : Math.min(this.mMaxState.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new LifecycleRegistry(this);
        this.mSavedStateRegistryController = C2773c.m39929a(this);
        this.mDefaultFactory = null;
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment newInstance = C1104g.m43617b(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
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

    private <I, O> AbstractC0135b<I> prepareCallInternal(final AbstractC0130a<I, O> abstractC0130a, final AbstractC0112a<Void, AbstractC0136c> abstractC0112a, final AbstractC0129a<O> abstractC0129a) {
        if (this.mState <= 1) {
            final AtomicReference atomicReference = new AtomicReference();
            registerOnPreAttachListener(new AbstractC1044b() { // from class: androidx.fragment.app.Fragment.8
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                    Fragment.this = this;
                }

                @Override // androidx.fragment.app.Fragment.AbstractC1044b
                /* renamed from: a */
                final void mo43769a() {
                    String generateActivityResultKey = Fragment.this.generateActivityResultKey();
                    atomicReference.set(((AbstractC0136c) abstractC0112a.apply(null)).m46379a(generateActivityResultKey, Fragment.this, abstractC0130a, abstractC0129a));
                }
            });
            return new AbstractC0135b<I>() { // from class: androidx.fragment.app.Fragment.9
                @Override // androidx.activity.result.AbstractC0135b
                /* renamed from: a */
                public final void mo43771a() {
                    AbstractC0135b abstractC0135b = (AbstractC0135b) atomicReference.getAndSet(null);
                    if (abstractC0135b != null) {
                        abstractC0135b.mo43771a();
                    }
                }

                @Override // androidx.activity.result.AbstractC0135b
                /* renamed from: a */
                public final void mo43770a(I i, C0734b c0734b) {
                    AbstractC0135b abstractC0135b = (AbstractC0135b) atomicReference.get();
                    if (abstractC0135b != null) {
                        abstractC0135b.mo43770a(i, c0734b);
                        return;
                    }
                    throw new IllegalStateException("Operation cannot be started before fragment is in created state");
                }
            };
        }
        throw new IllegalStateException("Fragment " + this + " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate()).");
    }

    private void registerOnPreAttachListener(AbstractC1044b abstractC1044b) {
        if (this.mState >= 0) {
            abstractC1044b.mo43769a();
        } else {
            this.mOnPreAttachedListeners.add(abstractC1044b);
        }
    }

    private void restoreViewState() {
        if (FragmentManager.m43764a(3)) {
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
        C1043a c1043a = this.mAnimationInfo;
        AbstractC1045c abstractC1045c = null;
        if (c1043a != null) {
            c1043a.f4182w = false;
            abstractC1045c = this.mAnimationInfo.f4183x;
            this.mAnimationInfo.f4183x = null;
        }
        if (abstractC1045c != null) {
            abstractC1045c.mo43664a();
        } else if (!FragmentManager.f4192a || this.mView == null || (viewGroup = this.mContainer) == null || (fragmentManager = this.mFragmentManager) == null) {
        } else {
            final AbstractC1147z m43484a = AbstractC1147z.m43484a(viewGroup, fragmentManager);
            m43484a.m43477b();
            if (z) {
                this.mHost.f4361d.post(new Runnable() { // from class: androidx.fragment.app.Fragment.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        m43484a.m43472d();
                    }
                });
            } else {
                m43484a.m43472d();
            }
        }
    }

    public AbstractC1102e createFragmentContainer() {
        return new AbstractC1102e() { // from class: androidx.fragment.app.Fragment.4
            @Override // androidx.fragment.app.AbstractC1102e
            /* renamed from: a */
            public final View mo43613a(int i) {
                if (Fragment.this.mView != null) {
                    return Fragment.this.mView.findViewById(i);
                }
                throw new IllegalStateException("Fragment " + Fragment.this + " does not have a view");
            }

            @Override // androidx.fragment.app.AbstractC1102e
            /* renamed from: a */
            public final boolean mo43614a() {
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
            AbstractC1160a.m43461a(this).mo43456a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        FragmentManager fragmentManager = this.mChildFragmentManager;
        fragmentManager.m43739a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.f4210b.m43547d(str);
    }

    String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final FragmentActivity getActivity() {
        AbstractC1105h<?> abstractC1105h = this.mHost;
        if (abstractC1105h == null) {
            return null;
        }
        return (FragmentActivity) abstractC1105h.f4359b;
    }

    public boolean getAllowEnterTransitionOverlap() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null || c1043a.f4177r == null) {
            return true;
        }
        return this.mAnimationInfo.f4177r.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null || c1043a.f4176q == null) {
            return true;
        }
        return this.mAnimationInfo.f4176q.booleanValue();
    }

    public View getAnimatingAway() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4160a;
    }

    public Animator getAnimator() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4161b;
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
        AbstractC1105h<?> abstractC1105h = this.mHost;
        if (abstractC1105h == null) {
            return null;
        }
        return abstractC1105h.f4360c;
    }

    @Override // androidx.lifecycle.AbstractC1252i
    public C1232ab.AbstractC1234b getDefaultViewModelProviderFactory() {
        Application application;
        if (this.mFragmentManager != null) {
            if (this.mDefaultFactory == null) {
                Context applicationContext = requireContext().getApplicationContext();
                while (true) {
                    Context context = applicationContext;
                    application = null;
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else if (context instanceof Application) {
                        application = (Application) context;
                        break;
                    } else {
                        applicationContext = ((ContextWrapper) context).getBaseContext();
                    }
                }
                if (application == null && FragmentManager.m43764a(3)) {
                    StringBuilder sb = new StringBuilder("Could not find Application instance from Context ");
                    sb.append(requireContext().getApplicationContext());
                    sb.append(", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
                }
                this.mDefaultFactory = new C1283y(application, this, getArguments());
            }
            return this.mDefaultFactory;
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    public int getEnterAnim() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return 0;
        }
        return c1043a.f4163d;
    }

    public Object getEnterTransition() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4170k;
    }

    public AbstractC0766n getEnterTransitionCallback() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4178s;
    }

    public int getExitAnim() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return 0;
        }
        return c1043a.f4164e;
    }

    public Object getExitTransition() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4172m;
    }

    public AbstractC0766n getExitTransitionCallback() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4179t;
    }

    public View getFocusedView() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4181v;
    }

    @Deprecated
    public final FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        AbstractC1105h<?> abstractC1105h = this.mHost;
        if (abstractC1105h == null) {
            return null;
        }
        return abstractC1105h.mo43606e();
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
        AbstractC1105h<?> abstractC1105h = this.mHost;
        if (abstractC1105h != null) {
            LayoutInflater mo43608c = abstractC1105h.mo43608c();
            C0911g.m44189a(mo43608c, this.mChildFragmentManager.f4212d);
            return mo43608c;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Override // androidx.lifecycle.AbstractC1263p
    public AbstractC1253j getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public AbstractC1160a getLoaderManager() {
        return AbstractC1160a.m43461a(this);
    }

    public int getNextTransition() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return 0;
        }
        return c1043a.f4167h;
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

    public boolean getPopDirection() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return false;
        }
        return c1043a.f4162c;
    }

    public int getPopEnterAnim() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return 0;
        }
        return c1043a.f4165f;
    }

    public int getPopExitAnim() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return 0;
        }
        return c1043a.f4166g;
    }

    public float getPostOnViewCreatedAlpha() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return 1.0f;
        }
        return c1043a.f4180u;
    }

    public Object getReenterTransition() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4173n == USE_DEFAULT_TRANSITION ? getExitTransition() : this.mAnimationInfo.f4173n;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4171l == USE_DEFAULT_TRANSITION ? getEnterTransition() : this.mAnimationInfo.f4171l;
    }

    @Override // androidx.savedstate.AbstractC2774d
    public final C2770b getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f10496a;
    }

    public Object getSharedElementEnterTransition() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4174o;
    }

    public Object getSharedElementReturnTransition() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return null;
        }
        return c1043a.f4175p == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : this.mAnimationInfo.f4175p;
    }

    public ArrayList<String> getSharedElementSourceNames() {
        C1043a c1043a = this.mAnimationInfo;
        return (c1043a == null || c1043a.f4168i == null) ? new ArrayList<>() : this.mAnimationInfo.f4168i;
    }

    public ArrayList<String> getSharedElementTargetNames() {
        C1043a c1043a = this.mAnimationInfo;
        return (c1043a == null || c1043a.f4169j == null) ? new ArrayList<>() : this.mAnimationInfo.f4169j;
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
        if (fragmentManager != null && (str = this.mTargetWho) != null) {
            return fragmentManager.m43724b(str);
        }
        return null;
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

    public AbstractC1263p getViewLifecycleOwner() {
        C1142w c1142w = this.mViewLifecycleOwner;
        if (c1142w != null) {
            return c1142w;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public LiveData<AbstractC1263p> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.AbstractC1239ad
    public C1238ac getViewModelStore() {
        if (this.mFragmentManager != null) {
            if (getMinimumMaxLifecycleState() == AbstractC1253j.EnumC1256b.INITIALIZED.ordinal()) {
                throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
            }
            C1111l c1111l = this.mFragmentManager.f4231w;
            C1238ac c1238ac = c1111l.f4372b.get(this.mWho);
            C1238ac c1238ac2 = c1238ac;
            if (c1238ac == null) {
                c1238ac2 = new C1238ac();
                c1111l.f4372b.put(this.mWho, c1238ac2);
            }
            return c1238ac2;
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
        this.mChildFragmentManager = new C1110k();
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
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return false;
        }
        return c1043a.f4184y;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        if (this.mMenuVisible) {
            return this.mFragmentManager == null || FragmentManager.m43727b(this.mParentFragment);
        }
        return false;
    }

    public boolean isPostponed() {
        C1043a c1043a = this.mAnimationInfo;
        if (c1043a == null) {
            return false;
        }
        return c1043a.f4182w;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

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
        return fragmentManager.m43707f();
    }

    public final boolean isVisible() {
        View view;
        return isAdded() && !isHidden() && (view = this.mView) != null && view.getWindowToken() != null && this.mView.getVisibility() == 0;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.m43701i();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (FragmentManager.m43764a(2)) {
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
        AbstractC1105h<?> abstractC1105h = this.mHost;
        Activity activity = abstractC1105h == null ? null : abstractC1105h.f4359b;
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
        if (this.mChildFragmentManager.f4219k <= 0) {
            z = false;
        }
        if (!z) {
            this.mChildFragmentManager.m43699j();
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
        AbstractC1105h<?> abstractC1105h = this.mHost;
        Activity activity = abstractC1105h == null ? null : abstractC1105h.f4359b;
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

    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.m43701i();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            restoreViewState();
            this.mChildFragmentManager.m43697k();
            return;
        }
        throw new C1073ab("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    public void performAttach() {
        Iterator<AbstractC1044b> it2 = this.mOnPreAttachedListeners.iterator();
        while (it2.hasNext()) {
            it2.next().mo43769a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.m43744a(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.f4360c);
        if (!this.mCalled) {
            throw new C1073ab("Fragment " + this + " did not call through to super.onAttach()");
        }
        this.mFragmentManager.m43686p(this);
        FragmentManager fragmentManager = this.mChildFragmentManager;
        fragmentManager.f4228t = false;
        fragmentManager.f4229u = false;
        fragmentManager.f4231w.f4375e = false;
        fragmentManager.m43713d(0);
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.m43762a(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (!this.mHidden) {
            if (!onContextItemSelected(menuItem)) {
                return this.mChildFragmentManager.m43729b(menuItem);
            }
            return true;
        }
        return false;
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.m43701i();
        this.mState = 1;
        this.mCalled = false;
        if (Build.VERSION.SDK_INT >= 19) {
            this.mLifecycleRegistry.addObserver(new AbstractC1261n() { // from class: androidx.fragment.app.Fragment.5
                @Override // androidx.lifecycle.AbstractC1261n
                /* renamed from: a */
                public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
                    if (enumC1255a != AbstractC1253j.EnumC1255a.ON_STOP || Fragment.this.mView == null) {
                        return;
                    }
                    Fragment.this.mView.cancelPendingInputEvents();
                }
            });
        }
        this.mSavedStateRegistryController.m39930a(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_CREATE);
            return;
        }
        throw new C1073ab("Fragment " + this + " did not call through to super.onCreate()");
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
            z = z2 | this.mChildFragmentManager.m43757a(menu, menuInflater);
        }
        return z;
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.m43701i();
        boolean z = true;
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new C1142w(getViewModelStore());
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = onCreateView;
        if (onCreateView != null) {
            this.mViewLifecycleOwner.m43491a();
            C1240ae.m43305a(this.mView, this.mViewLifecycleOwner);
            C1241af.m43304a(this.mView, this.mViewLifecycleOwner);
            C2775e.m39927a(this.mView, this.mViewLifecycleOwner);
            this.mViewLifecycleOwnerLiveData.mo43286b((C1267t<AbstractC1263p>) this.mViewLifecycleOwner);
            return;
        }
        if (this.mViewLifecycleOwner.f4499a == null) {
            z = false;
        }
        if (z) {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
        this.mViewLifecycleOwner = null;
    }

    public void performDestroy() {
        this.mChildFragmentManager.m43689o();
        this.mLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (this.mCalled) {
            return;
        }
        throw new C1073ab("Fragment " + this + " did not call through to super.onDestroy()");
    }

    public void performDestroyView() {
        this.mChildFragmentManager.m43713d(1);
        if (this.mView != null && this.mViewLifecycleOwner.getLifecycle().getCurrentState().isAtLeast(AbstractC1253j.EnumC1256b.CREATED)) {
            this.mViewLifecycleOwner.m43489a(AbstractC1253j.EnumC1255a.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            AbstractC1160a.m43461a(this).mo43460a();
            this.mPerformedCreateView = false;
            return;
        }
        throw new C1073ab("Fragment " + this + " did not call through to super.onDestroyView()");
    }

    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new C1073ab("Fragment " + this + " did not call through to super.onDetach()");
        } else if (this.mChildFragmentManager.f4230v) {
        } else {
            this.mChildFragmentManager.m43689o();
            this.mChildFragmentManager = new C1110k();
        }
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.m43687p();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.m43721b(z);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
                return true;
            }
            return this.mChildFragmentManager.m43756a(menuItem);
        }
        return false;
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible) {
                onOptionsMenuClosed(menu);
            }
            this.mChildFragmentManager.m43730b(menu);
        }
    }

    public void performPause() {
        this.mChildFragmentManager.m43713d(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.m43489a(AbstractC1253j.EnumC1255a.ON_PAUSE);
        }
        this.mLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (this.mCalled) {
            return;
        }
        throw new C1073ab("Fragment " + this + " did not call through to super.onPause()");
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.m43715c(z);
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
            z = z2 | this.mChildFragmentManager.m43758a(menu);
        }
        return z;
    }

    public void performPrimaryNavigationFragmentChanged() {
        boolean m43753a = this.mFragmentManager.m43753a(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != m43753a) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(m43753a);
            onPrimaryNavigationFragmentChanged(m43753a);
            FragmentManager fragmentManager = this.mChildFragmentManager;
            fragmentManager.m43720c();
            fragmentManager.m43688o(fragmentManager.f4223o);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.m43701i();
        this.mChildFragmentManager.m43733a(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new C1073ab("Fragment " + this + " did not call through to super.onResume()");
        }
        this.mLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_RESUME);
        if (this.mView != null) {
            this.mViewLifecycleOwner.m43489a(AbstractC1253j.EnumC1255a.ON_RESUME);
        }
        this.mChildFragmentManager.m43693m();
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.m39928b(bundle);
        Parcelable m43703h = this.mChildFragmentManager.m43703h();
        if (m43703h != null) {
            bundle.putParcelable("android:support:fragments", m43703h);
        }
    }

    public void performStart() {
        this.mChildFragmentManager.m43701i();
        this.mChildFragmentManager.m43733a(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new C1073ab("Fragment " + this + " did not call through to super.onStart()");
        }
        this.mLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_START);
        if (this.mView != null) {
            this.mViewLifecycleOwner.m43489a(AbstractC1253j.EnumC1255a.ON_START);
        }
        this.mChildFragmentManager.m43695l();
    }

    public void performStop() {
        this.mChildFragmentManager.m43691n();
        if (this.mView != null) {
            this.mViewLifecycleOwner.m43489a(AbstractC1253j.EnumC1255a.ON_STOP);
        }
        this.mLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (this.mCalled) {
            return;
        }
        throw new C1073ab("Fragment " + this + " did not call through to super.onStop()");
    }

    public void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.m43713d(2);
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().f4182w = true;
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        ensureAnimationInfo().f4182w = true;
        FragmentManager fragmentManager = this.mFragmentManager;
        Handler handler = fragmentManager != null ? fragmentManager.f4220l.f4361d : new Handler(Looper.getMainLooper());
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j));
    }

    public final <I, O> AbstractC0135b<I> registerForActivityResult(AbstractC0130a<I, O> abstractC0130a, AbstractC0129a<O> abstractC0129a) {
        return prepareCallInternal(abstractC0130a, new AbstractC0112a<Void, AbstractC0136c>() { // from class: androidx.fragment.app.Fragment.6
            @Override // androidx.p010a.p011a.p014c.AbstractC0112a
            public final /* synthetic */ AbstractC0136c apply(Void r3) {
                return Fragment.this.mHost instanceof AbstractC0141d ? ((AbstractC0141d) Fragment.this.mHost).getActivityResultRegistry() : Fragment.this.requireActivity().getActivityResultRegistry();
            }
        }, abstractC0129a);
    }

    public final <I, O> AbstractC0135b<I> registerForActivityResult(AbstractC0130a<I, O> abstractC0130a, final AbstractC0136c abstractC0136c, AbstractC0129a<O> abstractC0129a) {
        return prepareCallInternal(abstractC0130a, new AbstractC0112a<Void, AbstractC0136c>() { // from class: androidx.fragment.app.Fragment.7
            @Override // androidx.p010a.p011a.p014c.AbstractC0112a
            public final /* bridge */ /* synthetic */ AbstractC0136c apply(Void r3) {
                return abstractC0136c;
            }
        }, abstractC0129a);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i) {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f4226r == null) {
            return;
        }
        parentFragmentManager.f4227s.addLast(new FragmentManager.LaunchedFragmentInfo(this.mWho, i));
        parentFragmentManager.f4226r.mo43770a(strArr, null);
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
        this.mChildFragmentManager.m43759a(parcelable);
        this.mChildFragmentManager.m43699j();
    }

    final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            C1142w c1142w = this.mViewLifecycleOwner;
            c1142w.f4500b.m39930a(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (this.mCalled) {
            if (this.mView == null) {
                return;
            }
            this.mViewLifecycleOwner.m43489a(AbstractC1253j.EnumC1255a.ON_CREATE);
            return;
        }
        throw new C1073ab("Fragment " + this + " did not call through to super.onViewStateRestored()");
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().f4177r = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().f4176q = Boolean.valueOf(z);
    }

    public void setAnimatingAway(View view) {
        ensureAnimationInfo().f4160a = view;
    }

    public void setAnimations(int i, int i2, int i3, int i4) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        ensureAnimationInfo().f4163d = i;
        ensureAnimationInfo().f4164e = i2;
        ensureAnimationInfo().f4165f = i3;
        ensureAnimationInfo().f4166g = i4;
    }

    public void setAnimator(Animator animator) {
        ensureAnimationInfo().f4161b = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager == null || !isStateSaved()) {
            this.mArguments = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    public void setEnterSharedElementCallback(AbstractC0766n abstractC0766n) {
        ensureAnimationInfo().f4178s = abstractC0766n;
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().f4170k = obj;
    }

    public void setExitSharedElementCallback(AbstractC0766n abstractC0766n) {
        ensureAnimationInfo().f4179t = abstractC0766n;
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().f4172m = obj;
    }

    public void setFocusedView(View view) {
        ensureAnimationInfo().f4181v = view;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.mo43607d();
        }
    }

    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().f4184y = z;
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
            if (!this.mHasMenu || !isAdded() || isHidden()) {
                return;
            }
            this.mHost.mo43607d();
        }
    }

    public void setNextTransition(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        ensureAnimationInfo();
        this.mAnimationInfo.f4167h = i;
    }

    public void setOnStartEnterTransitionListener(AbstractC1045c abstractC1045c) {
        ensureAnimationInfo();
        if (abstractC1045c == this.mAnimationInfo.f4183x) {
            return;
        }
        if (abstractC1045c != null && this.mAnimationInfo.f4183x != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on ".concat(String.valueOf(this)));
        }
        if (this.mAnimationInfo.f4182w) {
            this.mAnimationInfo.f4183x = abstractC1045c;
        }
        if (abstractC1045c == null) {
            return;
        }
        abstractC1045c.mo43663b();
    }

    public void setPopDirection(boolean z) {
        if (this.mAnimationInfo == null) {
            return;
        }
        ensureAnimationInfo().f4162c = z;
    }

    public void setPostOnViewCreatedAlpha(float f) {
        ensureAnimationInfo().f4180u = f;
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().f4173n = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            fragmentManager.f4231w.m43591a(this);
        } else {
            fragmentManager.f4231w.m43586c(this);
        }
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().f4171l = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().f4174o = obj;
    }

    public void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        ensureAnimationInfo();
        this.mAnimationInfo.f4168i = arrayList;
        this.mAnimationInfo.f4169j = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().f4175p = obj;
    }

    @Deprecated
    public void setTargetFragment(Fragment fragment, int i) {
        FragmentManager fragmentManager = this.mFragmentManager;
        FragmentManager fragmentManager2 = fragment != null ? fragment.mFragmentManager : null;
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
            } else if (fragment3.equals(this)) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            } else {
                fragment2 = fragment3.getTargetFragment();
            }
        }
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            FragmentManager fragmentManager = this.mFragmentManager;
            fragmentManager.m43742a(fragmentManager.m43704g(this));
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 5 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        AbstractC1105h<?> abstractC1105h = this.mHost;
        if (abstractC1105h != null) {
            return abstractC1105h.mo43611a(str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        AbstractC1105h<?> abstractC1105h = this.mHost;
        if (abstractC1105h != null) {
            abstractC1105h.m43612a(intent, -1, bundle);
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
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f4224p == null) {
            parentFragmentManager.f4220l.m43612a(intent, i, bundle);
            return;
        }
        parentFragmentManager.f4227s.addLast(new FragmentManager.LaunchedFragmentInfo(this.mWho, i));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        parentFragmentManager.f4224p.mo43770a(intent, null);
    }

    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        if (FragmentManager.m43764a(2)) {
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
        if (parentFragmentManager.f4225q == null) {
            AbstractC1105h<?> abstractC1105h = parentFragmentManager.f4220l;
            if (i != -1) {
                throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
            }
            C0726a.m44616a(abstractC1105h.f4359b, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        Intent intent2 = intent;
        if (bundle != null) {
            intent2 = intent;
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            }
            if (FragmentManager.m43764a(2)) {
                StringBuilder sb2 = new StringBuilder("ActivityOptions ");
                sb2.append(bundle);
                sb2.append(" were added to fillInIntent ");
                sb2.append(intent2);
                sb2.append(" for fragment ");
                sb2.append(this);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        IntentSenderRequest.C0128a c0128a = new IntentSenderRequest.C0128a(intentSender);
        c0128a.f250a = intent2;
        IntentSenderRequest m46389a = c0128a.m46388a(i3, i2).m46389a();
        parentFragmentManager.f4227s.addLast(new FragmentManager.LaunchedFragmentInfo(this.mWho, i));
        if (FragmentManager.m43764a(2)) {
            StringBuilder sb3 = new StringBuilder("Fragment ");
            sb3.append(this);
            sb3.append("is launching an IntentSender for result ");
        }
        parentFragmentManager.f4225q.mo43770a(m46389a, null);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !ensureAnimationInfo().f4182w) {
            return;
        }
        if (this.mHost == null) {
            ensureAnimationInfo().f4182w = false;
        } else if (Looper.myLooper() != this.mHost.f4361d.getLooper()) {
            this.mHost.f4361d.postAtFrontOfQueue(new Runnable() { // from class: androidx.fragment.app.Fragment.2
                @Override // java.lang.Runnable
                public final void run() {
                    Fragment.this.callStartTransitionListener(false);
                }
            });
        } else {
            callStartTransitionListener(true);
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
