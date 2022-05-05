package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.b.c;
import android.support.v4.b.h;
import android.support.v4.view.f;
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
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/Fragment.class */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener {

    /* renamed from: a  reason: collision with root package name */
    private static final h<String, Class<?>> f29a = new h<>();
    static final Object j = new Object();
    int A;
    n B;
    l C;
    n D;
    Fragment E;
    int F;
    int G;
    String H;
    boolean I;
    boolean J;
    boolean K;
    boolean L;
    boolean M;
    boolean O;
    int P;
    ViewGroup Q;
    View R;
    View S;
    boolean T;
    t V;
    boolean W;
    boolean X;
    Boolean ae;
    Boolean af;
    View l;
    int m;
    Bundle n;
    SparseArray<Parcelable> o;
    String q;
    Bundle r;
    Fragment s;
    int u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    boolean z;
    int k = 0;
    int p = -1;
    int t = -1;
    boolean N = true;
    boolean U = true;
    Object Y = null;
    Object Z = j;
    Object aa = null;
    Object ab = j;
    Object ac = null;
    Object ad = j;
    ai ag = null;
    ai ah = null;

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/Fragment$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.app.Fragment.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        final Bundle f31a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Bundle bundle) {
            this.f31a = bundle;
        }

        SavedState(Parcel parcel) {
            this.f31a = parcel.readBundle();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.f31a);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/Fragment$a.class */
    public static final class a extends RuntimeException {
        public a(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context, String str) {
        boolean z;
        try {
            Class<?> cls = f29a.get(str);
            Class<?> cls2 = cls;
            if (cls == null) {
                cls2 = context.getClassLoader().loadClass(str);
                f29a.put(str, cls2);
            }
            z = Fragment.class.isAssignableFrom(cls2);
        } catch (ClassNotFoundException e) {
            z = false;
        }
        return z;
    }

    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Class<?> cls = f29a.get(str);
            Class<?> cls2 = cls;
            if (cls == null) {
                cls2 = context.getClassLoader().loadClass(str);
                f29a.put(str, cls2);
            }
            Fragment fragment = (Fragment) cls2.newInstance();
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.r = bundle;
            }
            return fragment;
        } catch (ClassNotFoundException e) {
            throw new a("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (IllegalAccessException e2) {
            throw new a("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (InstantiationException e3) {
            throw new a("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.D != null) {
            this.D.t = false;
        }
        return onCreateView(layoutInflater, viewGroup, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, Fragment fragment) {
        this.p = i;
        if (fragment != null) {
            this.q = fragment.q + ":" + this.p;
        } else {
            this.q = "android:fragment:" + this.p;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Bundle bundle) {
        Parcelable f;
        onSaveInstanceState(bundle);
        if (this.D != null && (f = this.D.f()) != null) {
            bundle.putParcelable("android:support:fragments", f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.D = new n();
        this.D.a(this.C, new j() { // from class: android.support.v4.app.Fragment.1
            @Override // android.support.v4.app.j
            public final View a(int i) {
                if (Fragment.this.R != null) {
                    return Fragment.this.R.findViewById(i);
                }
                throw new IllegalStateException("Fragment does not have a view");
            }

            @Override // android.support.v4.app.j
            public final boolean a() {
                return Fragment.this.R != null;
            }
        }, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (this.D != null) {
            this.D.b(2);
        }
        this.k = 2;
        if (this.W) {
            this.W = false;
            if (!this.X) {
                this.X = true;
                this.V = this.C.a(this.q, this.W, false);
            }
            if (this.V == null) {
                return;
            }
            if (this.C.h) {
                this.V.d();
            } else {
                this.V.c();
            }
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.F));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.G));
        printWriter.print(" mTag=");
        printWriter.println(this.H);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.k);
        printWriter.print(" mIndex=");
        printWriter.print(this.p);
        printWriter.print(" mWho=");
        printWriter.print(this.q);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.A);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.v);
        printWriter.print(" mRemoving=");
        printWriter.print(this.w);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.x);
        printWriter.print(" mInLayout=");
        printWriter.println(this.y);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.I);
        printWriter.print(" mDetached=");
        printWriter.print(this.J);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.N);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.M);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.K);
        printWriter.print(" mRetaining=");
        printWriter.print(this.L);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.U);
        if (this.B != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.B);
        }
        if (this.C != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.C);
        }
        if (this.E != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.E);
        }
        if (this.r != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.r);
        }
        if (this.n != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.n);
        }
        if (this.o != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.o);
        }
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(this.s);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.u);
        }
        if (this.P != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(this.P);
        }
        if (this.Q != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.Q);
        }
        if (this.R != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.R);
        }
        if (this.S != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.R);
        }
        if (this.l != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(this.l);
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(this.m);
        }
        if (this.V != null) {
            printWriter.print(str);
            printWriter.println("Loader Manager:");
            this.V.a(str + "  ", printWriter);
        }
        if (this.D != null) {
            printWriter.print(str);
            printWriter.println("Child " + this.D + ":");
            this.D.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final i getActivity() {
        return this.C == null ? null : (i) this.C.f77b;
    }

    public boolean getAllowEnterTransitionOverlap() {
        return this.af == null ? true : this.af.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        return this.ae == null ? true : this.ae.booleanValue();
    }

    public final Bundle getArguments() {
        return this.r;
    }

    public final m getChildFragmentManager() {
        if (this.D == null) {
            b();
            if (this.k >= 5) {
                this.D.j();
            } else if (this.k >= 4) {
                this.D.i();
            } else if (this.k >= 2) {
                this.D.h();
            } else if (this.k > 0) {
                this.D.g();
            }
        }
        return this.D;
    }

    public Context getContext() {
        return this.C == null ? null : this.C.c;
    }

    public Object getEnterTransition() {
        return this.Y;
    }

    public Object getExitTransition() {
        return this.aa;
    }

    public final m getFragmentManager() {
        return this.B;
    }

    public final Object getHost() {
        return this.C == null ? null : this.C.g();
    }

    public final int getId() {
        return this.F;
    }

    public LayoutInflater getLayoutInflater(Bundle bundle) {
        LayoutInflater c = this.C.c();
        getChildFragmentManager();
        f.a(c, this.D);
        return c;
    }

    public s getLoaderManager() {
        t tVar;
        if (this.V != null) {
            tVar = this.V;
        } else if (this.C == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        } else {
            this.X = true;
            this.V = this.C.a(this.q, this.W, true);
            tVar = this.V;
        }
        return tVar;
    }

    public final Fragment getParentFragment() {
        return this.E;
    }

    public Object getReenterTransition() {
        return this.ab == j ? getExitTransition() : this.ab;
    }

    public final Resources getResources() {
        if (this.C != null) {
            return this.C.c.getResources();
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final boolean getRetainInstance() {
        return this.K;
    }

    public Object getReturnTransition() {
        return this.Z == j ? getEnterTransition() : this.Z;
    }

    public Object getSharedElementEnterTransition() {
        return this.ac;
    }

    public Object getSharedElementReturnTransition() {
        return this.ad == j ? getSharedElementEnterTransition() : this.ad;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final String getTag() {
        return this.H;
    }

    public final Fragment getTargetFragment() {
        return this.s;
    }

    public final int getTargetRequestCode() {
        return this.u;
    }

    public final CharSequence getText(int i) {
        return getResources().getText(i);
    }

    public boolean getUserVisibleHint() {
        return this.U;
    }

    public View getView() {
        return this.R;
    }

    public final boolean hasOptionsMenu() {
        return this.M;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final boolean isAdded() {
        return this.C != null && this.v;
    }

    public final boolean isDetached() {
        return this.J;
    }

    public final boolean isHidden() {
        return this.I;
    }

    public final boolean isInLayout() {
        return this.y;
    }

    public final boolean isMenuVisible() {
        return this.N;
    }

    public final boolean isRemoving() {
        return this.w;
    }

    public final boolean isResumed() {
        return this.k >= 5;
    }

    public final boolean isVisible() {
        return isAdded() && !isHidden() && this.R != null && this.R.getWindowToken() != null && this.R.getVisibility() == 0;
    }

    public void onActivityCreated(Bundle bundle) {
        this.O = true;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.O = true;
    }

    public void onAttach(Context context) {
        this.O = true;
        Activity activity = this.C == null ? null : this.C.f77b;
        if (activity != null) {
            this.O = false;
            onAttach(activity);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.O = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.O = true;
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        getActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public void onDestroy() {
        this.O = true;
        if (!this.X) {
            this.X = true;
            this.V = this.C.a(this.q, this.W, false);
        }
        if (this.V != null) {
            this.V.g();
        }
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.O = true;
    }

    public void onDetach() {
        this.O = true;
    }

    public void onHiddenChanged(boolean z) {
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.O = true;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.O = true;
        Activity activity = this.C == null ? null : this.C.f77b;
        if (activity != null) {
            this.O = false;
            onInflate(activity, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.O = true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.O = true;
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.O = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.O = true;
        if (!this.W) {
            this.W = true;
            if (!this.X) {
                this.X = true;
                this.V = this.C.a(this.q, this.W, false);
            }
            if (this.V != null) {
                this.V.b();
            }
        }
    }

    public void onStop() {
        this.O = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.O = true;
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public final void requestPermissions(String[] strArr, int i) {
        if (this.C == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.C.a(this, strArr, i);
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        this.af = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        this.ae = Boolean.valueOf(z);
    }

    public void setArguments(Bundle bundle) {
        if (this.p >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.r = bundle;
    }

    public void setEnterSharedElementCallback(ai aiVar) {
        this.ag = aiVar;
    }

    public void setEnterTransition(Object obj) {
        this.Y = obj;
    }

    public void setExitSharedElementCallback(ai aiVar) {
        this.ah = aiVar;
    }

    public void setExitTransition(Object obj) {
        this.aa = obj;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.M != z) {
            this.M = z;
            if (isAdded() && !isHidden()) {
                this.C.d();
            }
        }
    }

    public void setInitialSavedState(SavedState savedState) {
        if (this.p >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.n = (savedState == null || savedState.f31a == null) ? null : savedState.f31a;
    }

    public void setMenuVisibility(boolean z) {
        if (this.N != z) {
            this.N = z;
            if (this.M && isAdded() && !isHidden()) {
                this.C.d();
            }
        }
    }

    public void setReenterTransition(Object obj) {
        this.ab = obj;
    }

    public void setRetainInstance(boolean z) {
        if (!z || this.E == null) {
            this.K = z;
            return;
        }
        throw new IllegalStateException("Can't retain fragements that are nested in other fragments");
    }

    public void setReturnTransition(Object obj) {
        this.Z = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        this.ac = obj;
    }

    public void setSharedElementReturnTransition(Object obj) {
        this.ad = obj;
    }

    public void setTargetFragment(Fragment fragment, int i) {
        this.s = fragment;
        this.u = i;
    }

    public void setUserVisibleHint(boolean z) {
        if (!this.U && z && this.k < 4) {
            this.B.b(this);
        }
        this.U = z;
        this.T = !z;
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        return this.C != null ? this.C.a(str) : false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        if (this.C == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.C.a(this, intent, -1, bundle);
    }

    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (this.C == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.C.a(this, intent, i, bundle);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        c.a(this, sb);
        if (this.p >= 0) {
            sb.append(" #");
            sb.append(this.p);
        }
        if (this.F != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.F));
        }
        if (this.H != null) {
            sb.append(" ");
            sb.append(this.H);
        }
        sb.append('}');
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }
}
