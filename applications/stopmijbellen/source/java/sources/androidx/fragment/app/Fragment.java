package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
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
import androidx.activity.result.AbstractC0112b;
import androidx.activity.result.AbstractC0113c;
import androidx.activity.result.AbstractC0114d;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.C0115e;
import androidx.fragment.app.AbstractC0397a0;
import androidx.lifecycle.AbstractC0514d0;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0522h;
import androidx.lifecycle.AbstractC0524j;
import androidx.lifecycle.AbstractC0548z;
import androidx.lifecycle.C0512c0;
import androidx.lifecycle.C0525k;
import androidx.lifecycle.C0530o;
import androidx.lifecycle.C0543v;
import androidx.lifecycle.LiveData;
import androidx.savedstate.AbstractC0661c;
import androidx.savedstate.C0657a;
import androidx.savedstate.C0660b;
import com.google.android.gms.internal.ads.C1676a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p007a6.C0028d;
import p016b1.AbstractC0714a;
import p016b1.C0715b;
import p026c0.AbstractC0812t;
import p026c0.C0774a;
import p026c0.C0779c;
import p065d.AbstractC2130a;
import p066d0.C2134a;
import p184o.AbstractC3805a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment.class */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, AbstractC0524j, AbstractC0514d0, AbstractC0661c {
    public static final int ACTIVITY_CREATED = 4;
    public static final int ATTACHED = 0;
    public static final int AWAITING_ENTER_EFFECTS = 6;
    public static final int AWAITING_EXIT_EFFECTS = 3;
    public static final int CREATED = 1;
    public static final int INITIALIZING = -1;
    public static final int RESUMED = 7;
    public static final int STARTED = 5;
    public static final Object USE_DEFAULT_TRANSITION = new Object();
    public static final int VIEW_CREATED = 2;
    public boolean mAdded;
    public C0391i mAnimationInfo;
    public Bundle mArguments;
    public int mBackStackNesting;
    private boolean mCalled;
    public AbstractC0397a0 mChildFragmentManager;
    public ViewGroup mContainer;
    public int mContainerId;
    private int mContentLayoutId;
    public AbstractC0548z mDefaultFactory;
    public boolean mDeferStart;
    public boolean mDetached;
    public int mFragmentId;
    public AbstractC0397a0 mFragmentManager;
    public boolean mFromLayout;
    public boolean mHasMenu;
    public boolean mHidden;
    public boolean mHiddenChanged;
    public AbstractC0492x<?> mHost;
    public boolean mInLayout;
    public boolean mIsCreated;
    public boolean mIsNewlyAdded;
    private Boolean mIsPrimaryNavigationFragment;
    public LayoutInflater mLayoutInflater;
    public C0525k mLifecycleRegistry;
    public AbstractC0516f.EnumC0519c mMaxState;
    public boolean mMenuVisible;
    private final AtomicInteger mNextLocalRequestCode;
    private final ArrayList<AbstractC0392j> mOnPreAttachedListeners;
    public Fragment mParentFragment;
    public boolean mPerformedCreateView;
    public float mPostponedAlpha;
    public Runnable mPostponedDurationRunnable;
    public boolean mRemoving;
    public boolean mRestored;
    public boolean mRetainInstance;
    public boolean mRetainInstanceChangedWhileDetached;
    public Bundle mSavedFragmentState;
    public C0660b mSavedStateRegistryController;
    public Boolean mSavedUserVisibleHint;
    public Bundle mSavedViewRegistryState;
    public SparseArray<Parcelable> mSavedViewState;
    public int mState;
    public String mTag;
    public Fragment mTarget;
    public int mTargetRequestCode;
    public String mTargetWho;
    public boolean mUserVisibleHint;
    public View mView;
    public C0480u0 mViewLifecycleOwner;
    public C0530o<AbstractC0524j> mViewLifecycleOwnerLiveData;
    public String mWho;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$InstantiationException.class */
    public static class InstantiationException extends RuntimeException {
        public InstantiationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$a.class */
    public class RunnableC0383a implements Runnable {
        public RunnableC0383a() {
            Fragment.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.startPostponedEnterTransition();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$b.class */
    public class RunnableC0384b implements Runnable {
        public RunnableC0384b() {
            Fragment.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.callStartTransitionListener(false);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$c.class */
    public class RunnableC0385c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0484w0 f1650a;

        public RunnableC0385c(Fragment fragment, AbstractC0484w0 abstractC0484w0) {
            this.f1650a = abstractC0484w0;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1650a.m8049c();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$d.class */
    public class C0386d extends AbstractC0477t {
        public C0386d() {
            Fragment.this = r4;
        }

        @Override // androidx.fragment.app.AbstractC0477t
        /* renamed from: c */
        public View mo8061c(int i) {
            View view = Fragment.this.mView;
            if (view != null) {
                return view.findViewById(i);
            }
            StringBuilder m8752j = C0082b.m8752j("Fragment ");
            m8752j.append(Fragment.this);
            m8752j.append(" does not have a view");
            throw new IllegalStateException(m8752j.toString());
        }

        @Override // androidx.fragment.app.AbstractC0477t
        /* renamed from: d */
        public boolean mo8060d() {
            return Fragment.this.mView != null;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$e.class */
    public class C0387e implements AbstractC3805a<Void, ActivityResultRegistry> {
        public C0387e() {
            Fragment.this = r4;
        }

        @Override // p184o.AbstractC3805a
        public ActivityResultRegistry apply(Void r3) {
            Fragment fragment = Fragment.this;
            AbstractC0492x<?> abstractC0492x = fragment.mHost;
            return abstractC0492x instanceof AbstractC0114d ? ((AbstractC0114d) abstractC0492x).mo8090i() : fragment.requireActivity().f210g;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$f.class */
    public class C0388f implements AbstractC3805a<Void, ActivityResultRegistry> {

        /* renamed from: a */
        public final /* synthetic */ ActivityResultRegistry f1653a;

        public C0388f(Fragment fragment, ActivityResultRegistry activityResultRegistry) {
            this.f1653a = activityResultRegistry;
        }

        @Override // p184o.AbstractC3805a
        public ActivityResultRegistry apply(Void r3) {
            return this.f1653a;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$g.class */
    public class C0389g extends AbstractC0392j {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3805a f1654a;

        /* renamed from: b */
        public final /* synthetic */ AtomicReference f1655b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC2130a f1656c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC0112b f1657d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0389g(AbstractC3805a abstractC3805a, AtomicReference atomicReference, AbstractC2130a abstractC2130a, AbstractC0112b abstractC0112b) {
            super(null);
            Fragment.this = r4;
            this.f1654a = abstractC3805a;
            this.f1655b = atomicReference;
            this.f1656c = abstractC2130a;
            this.f1657d = abstractC0112b;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0392j
        /* renamed from: a */
        public void mo8216a() {
            String generateActivityResultKey = Fragment.this.generateActivityResultKey();
            this.f1655b.set(((ActivityResultRegistry) this.f1654a.apply(null)).m8736c(generateActivityResultKey, Fragment.this, this.f1656c, this.f1657d));
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$h */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$h.class */
    public class C0390h extends AbstractC0113c<I> {

        /* renamed from: a */
        public final /* synthetic */ AtomicReference f1659a;

        public C0390h(Fragment fragment, AtomicReference atomicReference, AbstractC2130a abstractC2130a) {
            this.f1659a = atomicReference;
        }

        @Override // androidx.activity.result.AbstractC0113c
        /* renamed from: a */
        public void mo8218a(I i, C0779c c0779c) {
            AbstractC0113c abstractC0113c = (AbstractC0113c) this.f1659a.get();
            if (abstractC0113c != null) {
                abstractC0113c.mo8218a(i, c0779c);
                return;
            }
            throw new IllegalStateException("Operation cannot be started before fragment is in created state");
        }

        @Override // androidx.activity.result.AbstractC0113c
        /* renamed from: b */
        public void mo8217b() {
            AbstractC0113c abstractC0113c = (AbstractC0113c) this.f1659a.getAndSet(null);
            if (abstractC0113c != null) {
                abstractC0113c.mo8217b();
            }
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$i */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$i.class */
    public static class C0391i {

        /* renamed from: a */
        public View f1660a;

        /* renamed from: b */
        public Animator f1661b;

        /* renamed from: c */
        public boolean f1662c;

        /* renamed from: d */
        public int f1663d;

        /* renamed from: e */
        public int f1664e;

        /* renamed from: f */
        public int f1665f;

        /* renamed from: g */
        public int f1666g;

        /* renamed from: h */
        public int f1667h;

        /* renamed from: i */
        public ArrayList<String> f1668i;

        /* renamed from: j */
        public ArrayList<String> f1669j;

        /* renamed from: l */
        public Object f1671l;

        /* renamed from: n */
        public Object f1673n;

        /* renamed from: p */
        public Object f1675p;

        /* renamed from: q */
        public Boolean f1676q;

        /* renamed from: r */
        public Boolean f1677r;

        /* renamed from: u */
        public boolean f1680u;

        /* renamed from: v */
        public AbstractC0393k f1681v;

        /* renamed from: w */
        public boolean f1682w;

        /* renamed from: k */
        public Object f1670k = null;

        /* renamed from: m */
        public Object f1672m = null;

        /* renamed from: o */
        public Object f1674o = null;

        /* renamed from: s */
        public float f1678s = 1.0f;

        /* renamed from: t */
        public View f1679t = null;

        public C0391i() {
            Object obj = Fragment.USE_DEFAULT_TRANSITION;
            this.f1671l = obj;
            this.f1673n = obj;
            this.f1675p = obj;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$j */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$j.class */
    public static abstract class AbstractC0392j {
        public AbstractC0392j() {
        }

        public AbstractC0392j(RunnableC0383a runnableC0383a) {
        }

        /* renamed from: a */
        public abstract void mo8216a();
    }

    /* renamed from: androidx.fragment.app.Fragment$k */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$k.class */
    public interface AbstractC0393k {
    }

    @SuppressLint({"BanParcelableUsage, ParcelClassLoader"})
    /* renamed from: androidx.fragment.app.Fragment$l */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$l.class */
    public static class C0394l implements Parcelable {
        public static final Parcelable.Creator<C0394l> CREATOR = new C0395a();

        /* renamed from: a */
        public final Bundle f1683a;

        /* renamed from: androidx.fragment.app.Fragment$l$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$l$a.class */
        public class C0395a implements Parcelable.ClassLoaderCreator<C0394l> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C0394l(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C0394l createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0394l(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C0394l[i];
            }
        }

        public C0394l(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.f1683a = readBundle;
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
            parcel.writeBundle(this.f1683a);
        }
    }

    public Fragment() {
        this.mState = -1;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new C0415b0();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new RunnableC0383a();
        this.mMaxState = AbstractC0516f.EnumC0519c.RESUMED;
        this.mViewLifecycleOwnerLiveData = new C0530o<>();
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mOnPreAttachedListeners = new ArrayList<>();
        initLifecycle();
    }

    public Fragment(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private C0391i ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new C0391i();
        }
        return this.mAnimationInfo;
    }

    private int getMinimumMaxLifecycleState() {
        AbstractC0516f.EnumC0519c enumC0519c = this.mMaxState;
        return (enumC0519c == AbstractC0516f.EnumC0519c.INITIALIZED || this.mParentFragment == null) ? enumC0519c.ordinal() : Math.min(enumC0519c.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new C0525k(this);
        this.mSavedStateRegistryController = new C0660b(this);
        this.mDefaultFactory = null;
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment newInstance = C0483w.m8052c(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(newInstance.getClass().getClassLoader());
                newInstance.setArguments(bundle);
            }
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new InstantiationException(C0082b.m8755g("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (InstantiationException e2) {
            throw new InstantiationException(C0082b.m8755g("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (NoSuchMethodException e3) {
            throw new InstantiationException(C0082b.m8755g("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
        } catch (InvocationTargetException e4) {
            throw new InstantiationException(C0082b.m8755g("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
        }
    }

    private <I, O> AbstractC0113c<I> prepareCallInternal(AbstractC2130a<I, O> abstractC2130a, AbstractC3805a<Void, ActivityResultRegistry> abstractC3805a, AbstractC0112b<O> abstractC0112b) {
        if (this.mState <= 1) {
            AtomicReference atomicReference = new AtomicReference();
            registerOnPreAttachListener(new C0389g(abstractC3805a, atomicReference, abstractC2130a, abstractC0112b));
            return new C0390h(this, atomicReference, abstractC2130a);
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
    }

    private void registerOnPreAttachListener(AbstractC0392j abstractC0392j) {
        if (this.mState >= 0) {
            abstractC0392j.mo8216a();
        } else {
            this.mOnPreAttachedListeners.add(abstractC0392j);
        }
    }

    private void restoreViewState() {
        if (AbstractC0397a0.m8192N(3)) {
            toString();
        }
        if (this.mView != null) {
            restoreViewState(this.mSavedFragmentState);
        }
        this.mSavedFragmentState = null;
    }

    public void callStartTransitionListener(boolean z) {
        ViewGroup viewGroup;
        AbstractC0397a0 abstractC0397a0;
        C0391i c0391i = this.mAnimationInfo;
        Object obj = null;
        if (c0391i != null) {
            c0391i.f1680u = false;
            obj = c0391i.f1681v;
            c0391i.f1681v = null;
        }
        if (obj != null) {
            AbstractC0397a0.C0412n c0412n = (AbstractC0397a0.C0412n) obj;
            int i = c0412n.f1739c - 1;
            c0412n.f1739c = i;
            if (i != 0) {
                return;
            }
            c0412n.f1738b.f1684q.m8172d0();
        } else if (this.mView == null || (viewGroup = this.mContainer) == null || (abstractC0397a0 = this.mFragmentManager) == null) {
        } else {
            AbstractC0484w0 m8046f = AbstractC0484w0.m8046f(viewGroup, abstractC0397a0);
            m8046f.m8044h();
            if (z) {
                this.mHost.f1983c.post(new RunnableC0385c(this, m8046f));
            } else {
                m8046f.m8049c();
            }
        }
    }

    public AbstractC0477t createFragmentContainer() {
        return new C0386d();
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
            AbstractC0714a.m7437b(this).mo7436a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.m8144y(C1676a.m4789h(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.f1700c.m8106e(str);
    }

    public String generateActivityResultKey() {
        StringBuilder m8752j = C0082b.m8752j("fragment_");
        m8752j.append(this.mWho);
        m8752j.append("_rq#");
        m8752j.append(this.mNextLocalRequestCode.getAndIncrement());
        return m8752j.toString();
    }

    public final ActivityC0455o getActivity() {
        AbstractC0492x<?> abstractC0492x = this.mHost;
        return abstractC0492x == null ? null : (ActivityC0455o) abstractC0492x.f1981a;
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        C0391i c0391i = this.mAnimationInfo;
        return (c0391i == null || (bool = c0391i.f1677r) == null) ? true : bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        C0391i c0391i = this.mAnimationInfo;
        return (c0391i == null || (bool = c0391i.f1676q) == null) ? true : bool.booleanValue();
    }

    public View getAnimatingAway() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        return c0391i.f1660a;
    }

    public Animator getAnimator() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        return c0391i.f1661b;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final AbstractC0397a0 getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " has not been attached yet."));
    }

    public Context getContext() {
        AbstractC0492x<?> abstractC0492x = this.mHost;
        return abstractC0492x == null ? null : abstractC0492x.f1982b;
    }

    public AbstractC0548z getDefaultViewModelProviderFactory() {
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
                if (application == null && AbstractC0397a0.m8192N(3)) {
                    Objects.toString(requireContext().getApplicationContext());
                }
                this.mDefaultFactory = new C0543v(application, this, getArguments());
            }
            return this.mDefaultFactory;
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    public int getEnterAnim() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return 0;
        }
        return c0391i.f1663d;
    }

    public Object getEnterTransition() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        return c0391i.f1670k;
    }

    public AbstractC0812t getEnterTransitionCallback() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        Objects.requireNonNull(c0391i);
        return null;
    }

    public int getExitAnim() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return 0;
        }
        return c0391i.f1664e;
    }

    public Object getExitTransition() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        return c0391i.f1672m;
    }

    public AbstractC0812t getExitTransitionCallback() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        Objects.requireNonNull(c0391i);
        return null;
    }

    public View getFocusedView() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        return c0391i.f1679t;
    }

    @Deprecated
    public final AbstractC0397a0 getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        AbstractC0492x<?> abstractC0492x = this.mHost;
        return abstractC0492x == null ? null : abstractC0492x.mo8035e();
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
        AbstractC0492x<?> abstractC0492x = this.mHost;
        if (abstractC0492x != null) {
            LayoutInflater mo8034f = abstractC0492x.mo8034f();
            mo8034f.setFactory2(this.mChildFragmentManager.f1703f);
            return mo8034f;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Override // androidx.lifecycle.AbstractC0524j
    public AbstractC0516f getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public AbstractC0714a getLoaderManager() {
        return AbstractC0714a.m7437b(this);
    }

    public int getNextTransition() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return 0;
        }
        return c0391i.f1667h;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final AbstractC0397a0 getParentFragmentManager() {
        AbstractC0397a0 abstractC0397a0 = this.mFragmentManager;
        if (abstractC0397a0 != null) {
            return abstractC0397a0;
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " not associated with a fragment manager."));
    }

    public boolean getPopDirection() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return false;
        }
        return c0391i.f1662c;
    }

    public int getPopEnterAnim() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return 0;
        }
        return c0391i.f1665f;
    }

    public int getPopExitAnim() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return 0;
        }
        return c0391i.f1666g;
    }

    public float getPostOnViewCreatedAlpha() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return 1.0f;
        }
        return c0391i.f1678s;
    }

    public Object getReenterTransition() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        Object obj = c0391i.f1673n;
        Object obj2 = obj;
        if (obj == USE_DEFAULT_TRANSITION) {
            obj2 = getExitTransition();
        }
        return obj2;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        Object obj = c0391i.f1671l;
        Object obj2 = obj;
        if (obj == USE_DEFAULT_TRANSITION) {
            obj2 = getEnterTransition();
        }
        return obj2;
    }

    @Override // androidx.savedstate.AbstractC0661c
    public final C0657a getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f2565b;
    }

    public Object getSharedElementEnterTransition() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        return c0391i.f1674o;
    }

    public Object getSharedElementReturnTransition() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return null;
        }
        Object obj = c0391i.f1675p;
        Object obj2 = obj;
        if (obj == USE_DEFAULT_TRANSITION) {
            obj2 = getSharedElementEnterTransition();
        }
        return obj2;
    }

    public ArrayList<String> getSharedElementSourceNames() {
        ArrayList<String> arrayList;
        C0391i c0391i = this.mAnimationInfo;
        return (c0391i == null || (arrayList = c0391i.f1668i) == null) ? new ArrayList<>() : arrayList;
    }

    public ArrayList<String> getSharedElementTargetNames() {
        ArrayList<String> arrayList;
        C0391i c0391i = this.mAnimationInfo;
        return (c0391i == null || (arrayList = c0391i.f1669j) == null) ? new ArrayList<>() : arrayList;
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
        AbstractC0397a0 abstractC0397a0 = this.mFragmentManager;
        if (abstractC0397a0 != null && (str = this.mTargetWho) != null) {
            return abstractC0397a0.m8199G(str);
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

    public AbstractC0524j getViewLifecycleOwner() {
        C0480u0 c0480u0 = this.mViewLifecycleOwner;
        if (c0480u0 != null) {
            return c0480u0;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public LiveData<AbstractC0524j> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.AbstractC0514d0
    public C0512c0 getViewModelStore() {
        if (this.mFragmentManager != null) {
            if (getMinimumMaxLifecycleState() == 1) {
                throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
            }
            C0424d0 c0424d0 = this.mFragmentManager.f1696J;
            C0512c0 c0512c0 = c0424d0.f1781e.get(this.mWho);
            C0512c0 c0512c02 = c0512c0;
            if (c0512c0 == null) {
                c0512c02 = new C0512c0();
                c0424d0.f1781e.put(this.mWho, c0512c02);
            }
            return c0512c02;
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    @SuppressLint({"KotlinPropertyAccess"})
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
        this.mChildFragmentManager = new C0415b0();
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
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return false;
        }
        return c0391i.f1682w;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        AbstractC0397a0 abstractC0397a0;
        return this.mMenuVisible && ((abstractC0397a0 = this.mFragmentManager) == null || abstractC0397a0.m8190P(this.mParentFragment));
    }

    public boolean isPostponed() {
        C0391i c0391i = this.mAnimationInfo;
        if (c0391i == null) {
            return false;
        }
        return c0391i.f1680u;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isRemovingParent() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null && (parentFragment.isRemoving() || parentFragment.isRemovingParent());
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        AbstractC0397a0 abstractC0397a0 = this.mFragmentManager;
        if (abstractC0397a0 == null) {
            return false;
        }
        return abstractC0397a0.m8188R();
    }

    public final boolean isVisible() {
        View view;
        return isAdded() && !isHidden() && (view = this.mView) != null && view.getWindowToken() != null && this.mView.getVisibility() == 0;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.m8185U();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (AbstractC0397a0.m8192N(2)) {
            toString();
            Objects.toString(intent);
        }
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        AbstractC0492x<?> abstractC0492x = this.mHost;
        Activity activity = abstractC0492x == null ? null : abstractC0492x.f1981a;
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
        AbstractC0397a0 abstractC0397a0 = this.mChildFragmentManager;
        if (abstractC0397a0.f1713p < 1) {
            z = false;
        }
        if (!z) {
            abstractC0397a0.m8156m();
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
        AbstractC0492x<?> abstractC0492x = this.mHost;
        Activity activity = abstractC0492x == null ? null : abstractC0492x.f1981a;
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
        this.mChildFragmentManager.m8185U();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            restoreViewState();
            AbstractC0397a0 abstractC0397a0 = this.mChildFragmentManager;
            abstractC0397a0.f1688B = false;
            abstractC0397a0.f1689C = false;
            abstractC0397a0.f1696J.f1784h = false;
            abstractC0397a0.m8146w(4);
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onActivityCreated()"));
    }

    public void performAttach() {
        Iterator<AbstractC0392j> it2 = this.mOnPreAttachedListeners.iterator();
        while (it2.hasNext()) {
            it2.next().mo8216a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.m8177b(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.f1982b);
        if (this.mCalled) {
            AbstractC0397a0 abstractC0397a0 = this.mFragmentManager;
            Iterator<AbstractC0427e0> it3 = abstractC0397a0.f1712o.iterator();
            while (it3.hasNext()) {
                it3.next().mo8092a(abstractC0397a0, this);
            }
            AbstractC0397a0 abstractC0397a02 = this.mChildFragmentManager;
            abstractC0397a02.f1688B = false;
            abstractC0397a02.f1689C = false;
            abstractC0397a02.f1696J.f1784h = false;
            abstractC0397a02.m8146w(0);
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onAttach()"));
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.m8159k(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (!this.mHidden) {
            if (!onContextItemSelected(menuItem)) {
                return this.mChildFragmentManager.m8157l(menuItem);
            }
            return true;
        }
        return false;
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.m8185U();
        this.mState = 1;
        this.mCalled = false;
        this.mLifecycleRegistry.mo7992a(new AbstractC0522h() { // from class: androidx.fragment.app.Fragment.5
            @Override // androidx.lifecycle.AbstractC0522h
            /* renamed from: d */
            public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
                View view;
                if (enumC0518b != AbstractC0516f.EnumC0518b.ON_STOP || (view = Fragment.this.mView) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
        this.mSavedStateRegistryController.m7511a(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.m7988e(AbstractC0516f.EnumC0518b.ON_CREATE);
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onCreate()"));
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
            z = z2 | this.mChildFragmentManager.m8155n(menu, menuInflater);
        }
        return z;
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.m8185U();
        boolean z = true;
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new C0480u0(this, getViewModelStore());
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = onCreateView;
        if (onCreateView != null) {
            this.mViewLifecycleOwner.m8057c();
            this.mView.setTag(2131297208, this.mViewLifecycleOwner);
            this.mView.setTag(2131297210, this.mViewLifecycleOwner);
            this.mView.setTag(2131297209, this.mViewLifecycleOwner);
            this.mViewLifecycleOwnerLiveData.mo7432h(this.mViewLifecycleOwner);
            return;
        }
        if (this.mViewLifecycleOwner.f1949b == null) {
            z = false;
        }
        if (z) {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
        this.mViewLifecycleOwner = null;
    }

    public void performDestroy() {
        this.mChildFragmentManager.m8154o();
        this.mLifecycleRegistry.m7988e(AbstractC0516f.EnumC0518b.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (this.mCalled) {
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onDestroy()"));
    }

    public void performDestroyView() {
        this.mChildFragmentManager.m8146w(1);
        if (this.mView != null) {
            C0480u0 c0480u0 = this.mViewLifecycleOwner;
            c0480u0.m8057c();
            if (c0480u0.f1949b.f2038b.compareTo(AbstractC0516f.EnumC0519c.CREATED) >= 0) {
                this.mViewLifecycleOwner.m8058a(AbstractC0516f.EnumC0518b.ON_DESTROY);
            }
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            C0715b.C0717b c0717b = ((C0715b) AbstractC0714a.m7437b(this)).f2769b;
            int m1185g = c0717b.f2771c.m1185g();
            for (int i = 0; i < m1185g; i++) {
                Objects.requireNonNull(c0717b.f2771c.m1184h(i));
            }
            this.mPerformedCreateView = false;
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onDestroyView()"));
    }

    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (this.mCalled) {
            AbstractC0397a0 abstractC0397a0 = this.mChildFragmentManager;
            if (abstractC0397a0.f1690D) {
                return;
            }
            abstractC0397a0.m8154o();
            this.mChildFragmentManager = new C0415b0();
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onDetach()"));
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.m8153p();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.m8152q(z);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
                return true;
            }
            return this.mChildFragmentManager.m8151r(menuItem);
        }
        return false;
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible) {
                onOptionsMenuClosed(menu);
            }
            this.mChildFragmentManager.m8150s(menu);
        }
    }

    public void performPause() {
        this.mChildFragmentManager.m8146w(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.m8058a(AbstractC0516f.EnumC0518b.ON_PAUSE);
        }
        this.mLifecycleRegistry.m7988e(AbstractC0516f.EnumC0518b.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (this.mCalled) {
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onPause()"));
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.m8148u(z);
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
            z = z2 | this.mChildFragmentManager.m8147v(menu);
        }
        return z;
    }

    public void performPrimaryNavigationFragmentChanged() {
        boolean m8189Q = this.mFragmentManager.m8189Q(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != m8189Q) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(m8189Q);
            onPrimaryNavigationFragmentChanged(m8189Q);
            AbstractC0397a0 abstractC0397a0 = this.mChildFragmentManager;
            abstractC0397a0.m8158k0();
            abstractC0397a0.m8149t(abstractC0397a0.f1717t);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.m8185U();
        this.mChildFragmentManager.m8203C(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (this.mCalled) {
            C0525k c0525k = this.mLifecycleRegistry;
            AbstractC0516f.EnumC0518b enumC0518b = AbstractC0516f.EnumC0518b.ON_RESUME;
            c0525k.m7988e(enumC0518b);
            if (this.mView != null) {
                C0525k c0525k2 = this.mViewLifecycleOwner.f1949b;
                c0525k2.m7989d("handleLifecycleEvent");
                c0525k2.m7986g(enumC0518b.m7994a());
            }
            AbstractC0397a0 abstractC0397a0 = this.mChildFragmentManager;
            abstractC0397a0.f1688B = false;
            abstractC0397a0.f1689C = false;
            abstractC0397a0.f1696J.f1784h = false;
            abstractC0397a0.m8146w(7);
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onResume()"));
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.m7510b(bundle);
        Parcelable m8174c0 = this.mChildFragmentManager.m8174c0();
        if (m8174c0 != null) {
            bundle.putParcelable("android:support:fragments", m8174c0);
        }
    }

    public void performStart() {
        this.mChildFragmentManager.m8185U();
        this.mChildFragmentManager.m8203C(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (this.mCalled) {
            C0525k c0525k = this.mLifecycleRegistry;
            AbstractC0516f.EnumC0518b enumC0518b = AbstractC0516f.EnumC0518b.ON_START;
            c0525k.m7988e(enumC0518b);
            if (this.mView != null) {
                C0525k c0525k2 = this.mViewLifecycleOwner.f1949b;
                c0525k2.m7989d("handleLifecycleEvent");
                c0525k2.m7986g(enumC0518b.m7994a());
            }
            AbstractC0397a0 abstractC0397a0 = this.mChildFragmentManager;
            abstractC0397a0.f1688B = false;
            abstractC0397a0.f1689C = false;
            abstractC0397a0.f1696J.f1784h = false;
            abstractC0397a0.m8146w(5);
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onStart()"));
    }

    public void performStop() {
        AbstractC0397a0 abstractC0397a0 = this.mChildFragmentManager;
        abstractC0397a0.f1689C = true;
        abstractC0397a0.f1696J.f1784h = true;
        abstractC0397a0.m8146w(4);
        if (this.mView != null) {
            this.mViewLifecycleOwner.m8058a(AbstractC0516f.EnumC0518b.ON_STOP);
        }
        this.mLifecycleRegistry.m7988e(AbstractC0516f.EnumC0518b.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (this.mCalled) {
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onStop()"));
    }

    public void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.m8146w(2);
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().f1680u = true;
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        ensureAnimationInfo().f1680u = true;
        AbstractC0397a0 abstractC0397a0 = this.mFragmentManager;
        Handler handler = abstractC0397a0 != null ? abstractC0397a0.f1714q.f1983c : new Handler(Looper.getMainLooper());
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j));
    }

    public final <I, O> AbstractC0113c<I> registerForActivityResult(AbstractC2130a<I, O> abstractC2130a, ActivityResultRegistry activityResultRegistry, AbstractC0112b<O> abstractC0112b) {
        return prepareCallInternal(abstractC2130a, new C0388f(this, activityResultRegistry), abstractC0112b);
    }

    public final <I, O> AbstractC0113c<I> registerForActivityResult(AbstractC2130a<I, O> abstractC2130a, AbstractC0112b<O> abstractC0112b) {
        return prepareCallInternal(abstractC2130a, new C0387e(), abstractC0112b);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i) {
        if (this.mHost != null) {
            AbstractC0397a0 parentFragmentManager = getParentFragmentManager();
            if (parentFragmentManager.f1722y == null) {
                Objects.requireNonNull(parentFragmentManager.f1714q);
                return;
            }
            parentFragmentManager.f1723z.addLast(new AbstractC0397a0.C0408k(this.mWho, i));
            parentFragmentManager.f1722y.mo8218a(strArr, null);
            return;
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " not attached to Activity"));
    }

    public final ActivityC0455o requireActivity() {
        ActivityC0455o activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " not attached to an activity."));
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " does not have any arguments."));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " not attached to a context."));
    }

    @Deprecated
    public final AbstractC0397a0 requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " not attached to a host."));
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            if (getContext() == null) {
                throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " is not attached to any Fragment or host"));
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
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.mChildFragmentManager.m8176b0(parcelable);
        this.mChildFragmentManager.m8156m();
    }

    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            C0480u0 c0480u0 = this.mViewLifecycleOwner;
            c0480u0.f1950c.m7511a(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (this.mCalled) {
            if (this.mView == null) {
                return;
            }
            this.mViewLifecycleOwner.m8058a(AbstractC0516f.EnumC0518b.ON_CREATE);
            return;
        }
        throw new C0496y0(C0028d.m8915e("Fragment ", this, " did not call through to super.onViewStateRestored()"));
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().f1677r = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().f1676q = Boolean.valueOf(z);
    }

    public void setAnimatingAway(View view) {
        ensureAnimationInfo().f1660a = view;
    }

    public void setAnimations(int i, int i2, int i3, int i4) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        ensureAnimationInfo().f1663d = i;
        ensureAnimationInfo().f1664e = i2;
        ensureAnimationInfo().f1665f = i3;
        ensureAnimationInfo().f1666g = i4;
    }

    public void setAnimator(Animator animator) {
        ensureAnimationInfo().f1661b = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager == null || !isStateSaved()) {
            this.mArguments = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    public void setEnterSharedElementCallback(AbstractC0812t abstractC0812t) {
        Objects.requireNonNull(ensureAnimationInfo());
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().f1670k = obj;
    }

    public void setExitSharedElementCallback(AbstractC0812t abstractC0812t) {
        Objects.requireNonNull(ensureAnimationInfo());
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().f1672m = obj;
    }

    public void setFocusedView(View view) {
        ensureAnimationInfo().f1679t = view;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.mo8031j();
        }
    }

    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().f1682w = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r5 != null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setInitialSavedState(androidx.fragment.app.Fragment.C0394l r5) {
        /*
            r4 = this;
            r0 = r4
            androidx.fragment.app.a0 r0 = r0.mFragmentManager
            if (r0 != 0) goto L1f
            r0 = r5
            if (r0 == 0) goto L17
            r0 = r5
            android.os.Bundle r0 = r0.f1683a
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L17
            goto L19
        L17:
            r0 = 0
            r5 = r0
        L19:
            r0 = r4
            r1 = r5
            r0.mSavedFragmentState = r1
            return
        L1f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment already added"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.Fragment.setInitialSavedState(androidx.fragment.app.Fragment$l):void");
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (!this.mHasMenu || !isAdded() || isHidden()) {
                return;
            }
            this.mHost.mo8031j();
        }
    }

    public void setNextTransition(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        ensureAnimationInfo();
        this.mAnimationInfo.f1667h = i;
    }

    public void setOnStartEnterTransitionListener(AbstractC0393k abstractC0393k) {
        ensureAnimationInfo();
        C0391i c0391i = this.mAnimationInfo;
        AbstractC0393k abstractC0393k2 = c0391i.f1681v;
        if (abstractC0393k == abstractC0393k2) {
            return;
        }
        if (abstractC0393k != null && abstractC0393k2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (c0391i.f1680u) {
            c0391i.f1681v = abstractC0393k;
        }
        if (abstractC0393k == null) {
            return;
        }
        ((AbstractC0397a0.C0412n) abstractC0393k).f1739c++;
    }

    public void setPopDirection(boolean z) {
        if (this.mAnimationInfo == null) {
            return;
        }
        ensureAnimationInfo().f1662c = z;
    }

    public void setPostOnViewCreatedAlpha(float f) {
        ensureAnimationInfo().f1678s = f;
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().f1673n = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        AbstractC0397a0 abstractC0397a0 = this.mFragmentManager;
        if (abstractC0397a0 == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            abstractC0397a0.f1696J.m8130c(this);
        } else {
            abstractC0397a0.f1696J.m8129d(this);
        }
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().f1671l = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().f1674o = obj;
    }

    public void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        ensureAnimationInfo();
        C0391i c0391i = this.mAnimationInfo;
        c0391i.f1668i = arrayList;
        c0391i.f1669j = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().f1675p = obj;
    }

    @Deprecated
    public void setTargetFragment(Fragment fragment, int i) {
        AbstractC0397a0 abstractC0397a0 = this.mFragmentManager;
        AbstractC0397a0 abstractC0397a02 = fragment != null ? fragment.mFragmentManager : null;
        if (abstractC0397a0 == null || abstractC0397a02 == null || abstractC0397a0 == abstractC0397a02) {
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
        } else {
            throw new IllegalArgumentException(C0028d.m8915e("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
        }
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            AbstractC0397a0 abstractC0397a0 = this.mFragmentManager;
            abstractC0397a0.m8184V(abstractC0397a0.m8165h(this));
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 5 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        AbstractC0492x<?> abstractC0492x = this.mHost;
        if (abstractC0492x != null) {
            return abstractC0492x.mo8032h(str);
        }
        return false;
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        AbstractC0492x<?> abstractC0492x = this.mHost;
        if (abstractC0492x != null) {
            Context context = abstractC0492x.f1982b;
            Object obj = C2134a.f7832a;
            C2134a.C2135a.m3843b(context, intent, bundle);
            return;
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " not attached to Activity"));
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (this.mHost != null) {
            AbstractC0397a0 parentFragmentManager = getParentFragmentManager();
            if (parentFragmentManager.f1720w != null) {
                parentFragmentManager.f1723z.addLast(new AbstractC0397a0.C0408k(this.mWho, i));
                if (intent != null && bundle != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
                }
                parentFragmentManager.f1720w.mo8218a(intent, null);
                return;
            }
            AbstractC0492x<?> abstractC0492x = parentFragmentManager.f1714q;
            Objects.requireNonNull(abstractC0492x);
            if (i != -1) {
                throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
            }
            Context context = abstractC0492x.f1982b;
            Object obj = C2134a.f7832a;
            C2134a.C2135a.m3843b(context, intent, bundle);
            return;
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " not attached to Activity"));
    }

    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (this.mHost != null) {
            if (AbstractC0397a0.m8192N(2)) {
                toString();
                Objects.toString(intentSender);
                Objects.toString(intent);
                Objects.toString(bundle);
            }
            AbstractC0397a0 parentFragmentManager = getParentFragmentManager();
            if (parentFragmentManager.f1721x == null) {
                AbstractC0492x<?> abstractC0492x = parentFragmentManager.f1714q;
                Objects.requireNonNull(abstractC0492x);
                if (i != -1) {
                    throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
                }
                Activity activity = abstractC0492x.f1981a;
                int i5 = C0774a.f2893b;
                activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
                return;
            }
            if (bundle != null) {
                if (intent == null) {
                    intent = new Intent();
                    intent.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
                }
                if (AbstractC0397a0.m8192N(2)) {
                    bundle.toString();
                    intent.toString();
                    Objects.toString(this);
                }
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            }
            C0115e c0115e = new C0115e(intentSender, intent, i2, i3);
            parentFragmentManager.f1723z.addLast(new AbstractC0397a0.C0408k(this.mWho, i));
            if (AbstractC0397a0.m8192N(2)) {
                toString();
            }
            parentFragmentManager.f1721x.mo8218a(c0115e, null);
            return;
        }
        throw new IllegalStateException(C0028d.m8915e("Fragment ", this, " not attached to Activity"));
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !ensureAnimationInfo().f1680u) {
            return;
        }
        if (this.mHost == null) {
            ensureAnimationInfo().f1680u = false;
        } else if (Looper.myLooper() != this.mHost.f1983c.getLooper()) {
            this.mHost.f1983c.postAtFrontOfQueue(new RunnableC0384b());
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
