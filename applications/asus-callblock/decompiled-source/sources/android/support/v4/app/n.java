package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.d;
import android.support.v4.b.c;
import android.support.v4.b.d;
import android.support.v4.view.i;
import android.support.v4.view.t;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/n.class */
public final class n extends m implements i {
    static final Interpolator A;
    static final Interpolator B;
    static final Interpolator C;
    static final Interpolator D;

    /* renamed from: a  reason: collision with root package name */
    static boolean f78a = false;

    /* renamed from: b  reason: collision with root package name */
    static final boolean f79b;
    static Field r;
    ArrayList<Runnable> c;
    Runnable[] d;
    boolean e;
    ArrayList<Fragment> f;
    ArrayList<Fragment> g;
    ArrayList<Integer> h;
    ArrayList<d> i;
    ArrayList<Fragment> j;
    ArrayList<d> k;
    ArrayList<Integer> l;
    ArrayList<Object> m;
    l o;
    j p;
    Fragment q;
    boolean s;
    boolean t;
    boolean u;
    String v;
    boolean w;
    int n = 0;
    Bundle x = null;
    SparseArray<Parcelable> y = null;
    Runnable z = new Runnable() { // from class: android.support.v4.app.n.1
        @Override // java.lang.Runnable
        public final void run() {
            n.this.d();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/n$a.class */
    public static class a implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        private Animation.AnimationListener f85a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f86b;
        private View c;

        public a(View view, Animation animation) {
            this.f85a = null;
            this.f86b = false;
            this.c = null;
            if (view != null && animation != null) {
                this.c = view;
            }
        }

        public a(View view, Animation animation, Animation.AnimationListener animationListener) {
            this.f85a = null;
            this.f86b = false;
            this.c = null;
            if (view != null && animation != null) {
                this.f85a = animationListener;
                this.c = view;
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (this.c != null && this.f86b) {
                this.c.post(new Runnable() { // from class: android.support.v4.app.n.a.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        t.a(a.this.c, 0, (Paint) null);
                    }
                });
            }
            if (this.f85a != null) {
                this.f85a.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            if (this.f85a != null) {
                this.f85a.onAnimationRepeat(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            if (this.c != null) {
                this.f86b = n.a(this.c, animation);
                if (this.f86b) {
                    this.c.post(new Runnable() { // from class: android.support.v4.app.n.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            t.a(a.this.c, 2, (Paint) null);
                        }
                    });
                }
            }
            if (this.f85a != null) {
                this.f85a.onAnimationStart(animation);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/n$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final int[] f89a = {16842755, 16842960, 16842961};
    }

    static {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 11) {
            z = true;
        }
        f79b = z;
        r = null;
        A = new DecelerateInterpolator(2.5f);
        B = new DecelerateInterpolator(1.5f);
        C = new AccelerateInterpolator(2.5f);
        D = new AccelerateInterpolator(1.5f);
    }

    private static Animation a(float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(B);
        alphaAnimation.setDuration(220L);
        return alphaAnimation;
    }

    private static Animation a(float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(A);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(B);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r0 == null) goto L_0x0035;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.view.animation.Animation a(android.support.v4.app.Fragment r6, int r7, boolean r8, int r9) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.n.a(android.support.v4.app.Fragment, int, boolean, int):android.view.animation.Animation");
    }

    private void a(int i, d dVar) {
        synchronized (this) {
            if (this.k == null) {
                this.k = new ArrayList<>();
            }
            int size = this.k.size();
            if (i < size) {
                if (f78a) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + dVar);
                }
                this.k.set(i, dVar);
            } else {
                for (int i2 = size; i2 < i; i2++) {
                    this.k.add(null);
                    if (this.l == null) {
                        this.l = new ArrayList<>();
                    }
                    if (f78a) {
                        Log.v("FragmentManager", "Adding available back stack index " + i2);
                    }
                    this.l.add(Integer.valueOf(i2));
                }
                if (f78a) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + dVar);
                }
                this.k.add(dVar);
            }
        }
    }

    private void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new d("FragmentManager"));
        if (this.o != null) {
            try {
                this.o.a("  ", printWriter, new String[0]);
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
            }
        } else {
            try {
                a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    static boolean a(View view, Animation animation) {
        boolean z;
        boolean z2 = false;
        if (Build.VERSION.SDK_INT >= 19) {
            z2 = false;
            if (t.e(view) == 0) {
                z2 = false;
                if (t.n(view)) {
                    if (animation instanceof AlphaAnimation) {
                        z = true;
                    } else {
                        if (animation instanceof AnimationSet) {
                            List<Animation> animations = ((AnimationSet) animation).getAnimations();
                            for (int i = 0; i < animations.size(); i++) {
                                if (animations.get(i) instanceof AlphaAnimation) {
                                    z = true;
                                    break;
                                }
                            }
                        }
                        z = false;
                    }
                    z2 = false;
                    if (z) {
                        z2 = true;
                    }
                }
            }
        }
        return z2;
    }

    private static void b(View view, Animation animation) {
        Animation.AnimationListener animationListener;
        if (view != null && animation != null && a(view, animation)) {
            try {
                if (r == null) {
                    Field declaredField = Animation.class.getDeclaredField("mListener");
                    r = declaredField;
                    declaredField.setAccessible(true);
                }
                animationListener = (Animation.AnimationListener) r.get(animation);
            } catch (IllegalAccessException e) {
                Log.e("FragmentManager", "Cannot access Animation's mListener field", e);
                animationListener = null;
            } catch (NoSuchFieldException e2) {
                Log.e("FragmentManager", "No field with the name mListener is found in Animation class", e2);
                animationListener = null;
            }
            animation.setAnimationListener(new a(view, animation, animationListener));
        }
    }

    public static int c(int i) {
        int i2 = 0;
        switch (i) {
            case 4097:
                i2 = 8194;
                break;
            case 4099:
                i2 = 4099;
                break;
            case 8194:
                i2 = 4097;
                break;
        }
        return i2;
    }

    private Fragment d(int i) {
        Fragment fragment;
        if (this.g != null) {
            for (int size = this.g.size() - 1; size >= 0; size--) {
                fragment = this.g.get(size);
                if (fragment != null && fragment.F == i) {
                    break;
                }
            }
        }
        if (this.f != null) {
            for (int size2 = this.f.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = this.f.get(size2);
                if (fragment2 != null) {
                    fragment = fragment2;
                    if (fragment2.F == i) {
                        break;
                    }
                }
            }
        }
        fragment = null;
        return fragment;
    }

    private void d(Fragment fragment) {
        a(fragment, this.n, 0, 0, false);
    }

    private void e(Fragment fragment) {
        if (fragment.S != null) {
            if (this.y == null) {
                this.y = new SparseArray<>();
            } else {
                this.y.clear();
            }
            fragment.S.saveHierarchyState(this.y);
            if (this.y.size() > 0) {
                fragment.o = this.y;
                this.y = null;
            }
        }
    }

    private Bundle f(Fragment fragment) {
        Bundle bundle;
        if (this.x == null) {
            this.x = new Bundle();
        }
        fragment.a(this.x);
        if (!this.x.isEmpty()) {
            bundle = this.x;
            this.x = null;
        } else {
            bundle = null;
        }
        if (fragment.R != null) {
            e(fragment);
        }
        Bundle bundle2 = bundle;
        if (fragment.o != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putSparseParcelableArray("android:view_state", fragment.o);
        }
        Bundle bundle3 = bundle2;
        if (!fragment.U) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putBoolean("android:user_visible_hint", fragment.U);
        }
        return bundle3;
    }

    private void n() {
        if (this.f != null) {
            for (int i = 0; i < this.f.size(); i++) {
                Fragment fragment = this.f.get(i);
                if (fragment != null) {
                    b(fragment);
                }
            }
        }
    }

    private void o() {
        if (this.t) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.v != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.v);
        }
    }

    public final int a(d dVar) {
        int i;
        synchronized (this) {
            if (this.l == null || this.l.size() <= 0) {
                if (this.k == null) {
                    this.k = new ArrayList<>();
                }
                i = this.k.size();
                if (f78a) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + dVar);
                }
                this.k.add(dVar);
            } else {
                i = this.l.remove(this.l.size() - 1).intValue();
                if (f78a) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + dVar);
                }
                this.k.set(i, dVar);
            }
        }
        return i;
    }

    @Override // android.support.v4.app.m
    public final Fragment.SavedState a(Fragment fragment) {
        if (fragment.p < 0) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        Fragment.SavedState savedState = null;
        if (fragment.k > 0) {
            Bundle f = f(fragment);
            savedState = null;
            if (f != null) {
                savedState = new Fragment.SavedState(f);
            }
        }
        return savedState;
    }

    @Override // android.support.v4.app.m
    public final Fragment a(Bundle bundle, String str) {
        Fragment fragment;
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            fragment = null;
        } else {
            if (i >= this.f.size()) {
                a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
            }
            Fragment fragment2 = this.f.get(i);
            fragment = fragment2;
            if (fragment2 == null) {
                a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
                fragment = fragment2;
            }
        }
        return fragment;
    }

    @Override // android.support.v4.app.m
    public final Fragment a(String str) {
        Fragment fragment;
        if (!(this.g == null || str == null)) {
            for (int size = this.g.size() - 1; size >= 0; size--) {
                fragment = this.g.get(size);
                if (fragment != null && str.equals(fragment.H)) {
                    break;
                }
            }
        }
        if (!(this.f == null || str == null)) {
            for (int size2 = this.f.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = this.f.get(size2);
                if (fragment2 != null) {
                    fragment = fragment2;
                    if (str.equals(fragment2.H)) {
                        break;
                    }
                }
            }
        }
        fragment = null;
        return fragment;
    }

    @Override // android.support.v4.app.m
    public final q a() {
        return new d(this);
    }

    @Override // android.support.v4.view.i
    public final View a(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment;
        View view2;
        if (!"fragment".equals(str)) {
            view2 = null;
        } else {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.f89a);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(0);
            }
            int resourceId = obtainStyledAttributes.getResourceId(1, -1);
            String string = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            if (!Fragment.a(this.o.c, attributeValue)) {
                view2 = null;
            } else {
                int id = view != null ? view.getId() : 0;
                if (id == -1 && resourceId == -1 && string == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                Fragment d = resourceId != -1 ? d(resourceId) : null;
                Fragment fragment2 = d;
                if (d == null) {
                    fragment2 = d;
                    if (string != null) {
                        fragment2 = a(string);
                    }
                }
                Fragment fragment3 = fragment2;
                if (fragment2 == null) {
                    fragment3 = fragment2;
                    if (id != -1) {
                        fragment3 = d(id);
                    }
                }
                if (f78a) {
                    Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + attributeValue + " existing=" + fragment3);
                }
                if (fragment3 == null) {
                    fragment = Fragment.instantiate(context, attributeValue);
                    fragment.x = true;
                    fragment.F = resourceId != 0 ? resourceId : id;
                    fragment.G = id;
                    fragment.H = string;
                    fragment.y = true;
                    fragment.B = this;
                    fragment.C = this.o;
                    fragment.onInflate(this.o.c, attributeSet, fragment.n);
                    a(fragment, true);
                } else if (fragment3.y) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                } else {
                    fragment3.y = true;
                    fragment3.C = this.o;
                    if (!fragment3.L) {
                        fragment3.onInflate(this.o.c, attributeSet, fragment3.n);
                    }
                    fragment = fragment3;
                }
                if (this.n > 0 || !fragment.x) {
                    d(fragment);
                } else {
                    a(fragment, 1, 0, 0, false);
                }
                if (fragment.R == null) {
                    throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
                }
                if (resourceId != 0) {
                    fragment.R.setId(resourceId);
                }
                if (fragment.R.getTag() == null) {
                    fragment.R.setTag(string);
                }
                view2 = fragment.R;
            }
        }
        return view2;
    }

    @Override // android.support.v4.app.m
    public final void a(final int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        a(new Runnable() { // from class: android.support.v4.app.n.2

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f82b = 1;

            @Override // java.lang.Runnable
            public final void run() {
                n nVar = n.this;
                l lVar = n.this.o;
                nVar.a(i, this.f82b);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2, int i3, boolean z) {
        if (this.o == null && i != 0) {
            throw new IllegalStateException("No host");
        } else if (z || this.n != i) {
            this.n = i;
            if (this.f != null) {
                boolean z2 = false;
                for (int i4 = 0; i4 < this.f.size(); i4++) {
                    Fragment fragment = this.f.get(i4);
                    if (fragment != null) {
                        a(fragment, i, i2, i3, false);
                        if (fragment.V != null) {
                            z2 |= fragment.V.a();
                        }
                    }
                }
                if (!z2) {
                    n();
                }
                if (this.s && this.o != null && this.n == 5) {
                    this.o.d();
                    this.s = false;
                }
            }
        }
    }

    public final void a(Configuration configuration) {
        if (this.g != null) {
            for (int i = 0; i < this.g.size(); i++) {
                Fragment fragment = this.g.get(i);
                if (fragment != null) {
                    fragment.onConfigurationChanged(configuration);
                    if (fragment.D != null) {
                        fragment.D.a(configuration);
                    }
                }
            }
        }
    }

    @Override // android.support.v4.app.m
    public final void a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.p < 0) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Parcelable parcelable, List<Fragment> list) {
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.f32a != null) {
                if (list != null) {
                    for (int i = 0; i < list.size(); i++) {
                        Fragment fragment = list.get(i);
                        if (f78a) {
                            Log.v("FragmentManager", "restoreAllState: re-attaching retained " + fragment);
                        }
                        FragmentState fragmentState = fragmentManagerState.f32a[fragment.p];
                        fragmentState.k = fragment;
                        fragment.o = null;
                        fragment.A = 0;
                        fragment.y = false;
                        fragment.v = false;
                        fragment.s = null;
                        if (fragmentState.j != null) {
                            fragmentState.j.setClassLoader(this.o.c.getClassLoader());
                            fragment.o = fragmentState.j.getSparseParcelableArray("android:view_state");
                            fragment.n = fragmentState.j;
                        }
                    }
                }
                this.f = new ArrayList<>(fragmentManagerState.f32a.length);
                if (this.h != null) {
                    this.h.clear();
                }
                for (int i2 = 0; i2 < fragmentManagerState.f32a.length; i2++) {
                    FragmentState fragmentState2 = fragmentManagerState.f32a[i2];
                    if (fragmentState2 != null) {
                        l lVar = this.o;
                        Fragment fragment2 = this.q;
                        if (fragmentState2.k == null) {
                            Context context = lVar.c;
                            if (fragmentState2.i != null) {
                                fragmentState2.i.setClassLoader(context.getClassLoader());
                            }
                            fragmentState2.k = Fragment.instantiate(context, fragmentState2.f34a, fragmentState2.i);
                            if (fragmentState2.j != null) {
                                fragmentState2.j.setClassLoader(context.getClassLoader());
                                fragmentState2.k.n = fragmentState2.j;
                            }
                            fragmentState2.k.a(fragmentState2.f35b, fragment2);
                            fragmentState2.k.x = fragmentState2.c;
                            fragmentState2.k.z = true;
                            fragmentState2.k.F = fragmentState2.d;
                            fragmentState2.k.G = fragmentState2.e;
                            fragmentState2.k.H = fragmentState2.f;
                            fragmentState2.k.K = fragmentState2.g;
                            fragmentState2.k.J = fragmentState2.h;
                            fragmentState2.k.B = lVar.f;
                            if (f78a) {
                                Log.v("FragmentManager", "Instantiated fragment " + fragmentState2.k);
                            }
                        }
                        Fragment fragment3 = fragmentState2.k;
                        if (f78a) {
                            Log.v("FragmentManager", "restoreAllState: active #" + i2 + ": " + fragment3);
                        }
                        this.f.add(fragment3);
                        fragmentState2.k = null;
                    } else {
                        this.f.add(null);
                        if (this.h == null) {
                            this.h = new ArrayList<>();
                        }
                        if (f78a) {
                            Log.v("FragmentManager", "restoreAllState: avail #" + i2);
                        }
                        this.h.add(Integer.valueOf(i2));
                    }
                }
                if (list != null) {
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        Fragment fragment4 = list.get(i3);
                        if (fragment4.t >= 0) {
                            if (fragment4.t < this.f.size()) {
                                fragment4.s = this.f.get(fragment4.t);
                            } else {
                                Log.w("FragmentManager", "Re-attaching retained fragment " + fragment4 + " target no longer exists: " + fragment4.t);
                                fragment4.s = null;
                            }
                        }
                    }
                }
                if (fragmentManagerState.f33b != null) {
                    this.g = new ArrayList<>(fragmentManagerState.f33b.length);
                    for (int i4 = 0; i4 < fragmentManagerState.f33b.length; i4++) {
                        Fragment fragment5 = this.f.get(fragmentManagerState.f33b[i4]);
                        if (fragment5 == null) {
                            a(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.f33b[i4]));
                        }
                        fragment5.v = true;
                        if (f78a) {
                            Log.v("FragmentManager", "restoreAllState: added #" + i4 + ": " + fragment5);
                        }
                        if (this.g.contains(fragment5)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.g.add(fragment5);
                    }
                } else {
                    this.g = null;
                }
                if (fragmentManagerState.c != null) {
                    this.i = new ArrayList<>(fragmentManagerState.c.length);
                    for (int i5 = 0; i5 < fragmentManagerState.c.length; i5++) {
                        d a2 = fragmentManagerState.c[i5].a(this);
                        if (f78a) {
                            Log.v("FragmentManager", "restoreAllState: back stack #" + i5 + " (index " + a2.p + "): " + a2);
                            a2.a("  ", new PrintWriter(new d("FragmentManager")), false);
                        }
                        this.i.add(a2);
                        if (a2.p >= 0) {
                            a(a2.p, a2);
                        }
                    }
                    return;
                }
                this.i = null;
            }
        }
    }

    public final void a(Fragment fragment, int i, int i2) {
        if (f78a) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.A);
        }
        boolean z = !(fragment.A > 0);
        if (!fragment.J || z) {
            if (this.g != null) {
                this.g.remove(fragment);
            }
            if (fragment.M && fragment.N) {
                this.s = true;
            }
            fragment.v = false;
            fragment.w = true;
            a(fragment, z ? 0 : 1, i, i2, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r9.J != false) goto L_0x0011;
     */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0596  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0665  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x06ff  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0763  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(final android.support.v4.app.Fragment r9, int r10, int r11, int r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 2592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.n.a(android.support.v4.app.Fragment, int, int, int, boolean):void");
    }

    public final void a(Fragment fragment, boolean z) {
        if (this.g == null) {
            this.g = new ArrayList<>();
        }
        if (f78a) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        c(fragment);
        if (fragment.J) {
            return;
        }
        if (this.g.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        this.g.add(fragment);
        fragment.v = true;
        fragment.w = false;
        if (fragment.M && fragment.N) {
            this.s = true;
        }
        if (z) {
            d(fragment);
        }
    }

    public final void a(l lVar, j jVar, Fragment fragment) {
        if (this.o != null) {
            throw new IllegalStateException("Already attached");
        }
        this.o = lVar;
        this.p = jVar;
        this.q = fragment;
    }

    public final void a(Runnable runnable, boolean z) {
        if (!z) {
            o();
        }
        synchronized (this) {
            if (this.u || this.o == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.c == null) {
                this.c = new ArrayList<>();
            }
            this.c.add(runnable);
            if (this.c.size() == 1) {
                this.o.d.removeCallbacks(this.z);
                this.o.d.post(this.z);
            }
        }
    }

    @Override // android.support.v4.app.m
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        int size6;
        String str2 = str + "    ";
        if (this.f != null && (size6 = this.f.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i = 0; i < size6; i++) {
                Fragment fragment = this.f.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        if (this.g != null && (size5 = this.g.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size5; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.g.get(i2).toString());
            }
        }
        if (this.j != null && (size4 = this.j.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size4; i3++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(this.j.get(i3).toString());
            }
        }
        if (this.i != null && (size3 = this.i.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size3; i4++) {
                d dVar = this.i.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(dVar.toString());
                dVar.a(str2, printWriter);
            }
        }
        synchronized (this) {
            if (this.k != null && (size2 = this.k.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i5 = 0; i5 < size2; i5++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i5);
                    printWriter.print(": ");
                    printWriter.println((d) this.k.get(i5));
                }
            }
            if (this.l != null && this.l.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.l.toArray()));
            }
        }
        if (this.c != null && (size = this.c.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i6 = 0; i6 < size; i6++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println((Runnable) this.c.get(i6));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.o);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.p);
        if (this.q != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.q);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.n);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.t);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.u);
        if (this.s) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.s);
        }
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.v);
        }
        if (this.h != null && this.h.size() > 0) {
            printWriter.print(str);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.h.toArray()));
        }
    }

    final boolean a(int i, int i2) {
        boolean z;
        d.b bVar = null;
        if (this.i == null) {
            z = false;
        } else if (i >= 0 || (i2 & 1) != 0) {
            int i3 = -1;
            if (i >= 0) {
                int size = this.i.size() - 1;
                while (size >= 0) {
                    d dVar = this.i.get(size);
                    if (i >= 0 && i == dVar.p) {
                        break;
                    }
                    size--;
                }
                z = false;
                if (size >= 0) {
                    i3 = size;
                    if ((i2 & 1) != 0) {
                        int i4 = size - 1;
                        while (true) {
                            i3 = i4;
                            if (i4 < 0) {
                                break;
                            }
                            d dVar2 = this.i.get(i4);
                            i3 = i4;
                            if (i < 0) {
                                break;
                            }
                            i3 = i4;
                            if (i != dVar2.p) {
                                break;
                            }
                            i4--;
                        }
                    }
                }
            }
            z = false;
            if (i3 != this.i.size() - 1) {
                ArrayList arrayList = new ArrayList();
                for (int size2 = this.i.size() - 1; size2 > i3; size2--) {
                    arrayList.add(this.i.remove(size2));
                }
                int size3 = arrayList.size() - 1;
                SparseArray<Fragment> sparseArray = new SparseArray<>();
                SparseArray<Fragment> sparseArray2 = new SparseArray<>();
                for (int i5 = 0; i5 <= size3; i5++) {
                    ((d) arrayList.get(i5)).a(sparseArray, sparseArray2);
                }
                int i6 = 0;
                while (i6 <= size3) {
                    if (f78a) {
                        Log.v("FragmentManager", "Popping back stack state: " + arrayList.get(i6));
                    }
                    bVar = ((d) arrayList.get(i6)).a(i6 == size3, bVar, sparseArray, sparseArray2);
                    i6++;
                }
                e();
                z = true;
            }
        } else {
            int size4 = this.i.size() - 1;
            z = false;
            if (size4 >= 0) {
                d remove = this.i.remove(size4);
                SparseArray<Fragment> sparseArray3 = new SparseArray<>();
                SparseArray<Fragment> sparseArray4 = new SparseArray<>();
                remove.a(sparseArray3, sparseArray4);
                remove.a(true, (d.b) null, sparseArray3, sparseArray4);
                e();
                z = true;
            }
        }
        return z;
    }

    public final boolean a(Menu menu) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.g != null) {
            int i = 0;
            boolean z4 = false;
            while (true) {
                z = z4;
                if (i >= this.g.size()) {
                    break;
                }
                Fragment fragment = this.g.get(i);
                z4 = z4;
                if (fragment != null) {
                    if (!fragment.I) {
                        if (!fragment.M || !fragment.N) {
                            z3 = false;
                        } else {
                            fragment.onPrepareOptionsMenu(menu);
                            z3 = true;
                        }
                        z2 = z3;
                        if (fragment.D != null) {
                            z2 = z3 | fragment.D.a(menu);
                        }
                    } else {
                        z2 = false;
                    }
                    z4 = z4;
                    if (z2) {
                        z4 = true;
                    }
                }
                i++;
            }
        } else {
            z = false;
        }
        return z;
    }

    public final boolean a(Menu menu, MenuInflater menuInflater) {
        boolean z;
        boolean z2;
        boolean z3;
        ArrayList<Fragment> arrayList = null;
        ArrayList<Fragment> arrayList2 = null;
        if (this.g != null) {
            int i = 0;
            boolean z4 = false;
            while (true) {
                arrayList = arrayList2;
                z = z4;
                if (i >= this.g.size()) {
                    break;
                }
                Fragment fragment = this.g.get(i);
                if (fragment != null) {
                    if (!fragment.I) {
                        if (!fragment.M || !fragment.N) {
                            z3 = false;
                        } else {
                            fragment.onCreateOptionsMenu(menu, menuInflater);
                            z3 = true;
                        }
                        z2 = z3;
                        if (fragment.D != null) {
                            z2 = z3 | fragment.D.a(menu, menuInflater);
                        }
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        ArrayList<Fragment> arrayList3 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList3 = new ArrayList<>();
                        }
                        arrayList3.add(fragment);
                        z4 = true;
                        arrayList2 = arrayList3;
                    }
                }
                i++;
            }
        } else {
            z = false;
        }
        if (this.j != null) {
            for (int i2 = 0; i2 < this.j.size(); i2++) {
                Fragment fragment2 = this.j.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.j = arrayList;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.view.MenuItem r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r0.g
            if (r0 == 0) goto L_0x005a
            r0 = 0
            r7 = r0
        L_0x000e:
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = r3
            java.util.ArrayList<android.support.v4.app.Fragment> r1 = r1.g
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x005a
            r0 = r3
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r0.g
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            android.support.v4.app.Fragment r0 = (android.support.v4.app.Fragment) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x007c
            r0 = r8
            boolean r0 = r0.I
            if (r0 != 0) goto L_0x0076
            r0 = r8
            boolean r0 = r0.M
            if (r0 == 0) goto L_0x005c
            r0 = r8
            boolean r0 = r0.N
            if (r0 == 0) goto L_0x005c
            r0 = r8
            r1 = r4
            boolean r0 = r0.onOptionsItemSelected(r1)
            if (r0 == 0) goto L_0x005c
            r0 = 1
            r9 = r0
        L_0x0053:
            r0 = r9
            if (r0 == 0) goto L_0x007c
            r0 = 1
            r6 = r0
        L_0x005a:
            r0 = r6
            return r0
        L_0x005c:
            r0 = r8
            android.support.v4.app.n r0 = r0.D
            if (r0 == 0) goto L_0x0076
            r0 = r8
            android.support.v4.app.n r0 = r0.D
            r1 = r4
            boolean r0 = r0.a(r1)
            if (r0 == 0) goto L_0x0076
            r0 = 1
            r9 = r0
            goto L_0x0053
        L_0x0076:
            r0 = 0
            r9 = r0
            goto L_0x0053
        L_0x007c:
            int r7 = r7 + 1
            goto L_0x000e
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.n.a(android.view.MenuItem):boolean");
    }

    public final Fragment b(String str) {
        Fragment fragment;
        if (!(this.f == null || str == null)) {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                fragment = this.f.get(size);
                if (fragment != null) {
                    if (!str.equals(fragment.q)) {
                        fragment = fragment.D != null ? fragment.D.b(str) : null;
                    }
                    if (fragment != null) {
                        break;
                    }
                }
            }
        }
        fragment = null;
        return fragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        a(i, 0, 0, false);
    }

    public final void b(Fragment fragment) {
        if (!fragment.T) {
            return;
        }
        if (this.e) {
            this.w = true;
            return;
        }
        fragment.T = false;
        a(fragment, this.n, 0, 0, false);
    }

    public final void b(Fragment fragment, int i, int i2) {
        if (f78a) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.I) {
            fragment.I = true;
            if (fragment.R != null) {
                Animation a2 = a(fragment, i, false, i2);
                if (a2 != null) {
                    b(fragment.R, a2);
                    fragment.R.startAnimation(a2);
                }
                fragment.R.setVisibility(8);
            }
            if (fragment.v && fragment.M && fragment.N) {
                this.s = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    public final void b(Menu menu) {
        if (this.g != null) {
            for (int i = 0; i < this.g.size(); i++) {
                Fragment fragment = this.g.get(i);
                if (fragment != null && !fragment.I) {
                    if (fragment.M && fragment.N) {
                        fragment.onOptionsMenuClosed(menu);
                    }
                    if (fragment.D != null) {
                        fragment.D.b(menu);
                    }
                }
            }
        }
    }

    @Override // android.support.v4.app.m
    public final boolean b() {
        return d();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(android.view.MenuItem r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r0.g
            if (r0 == 0) goto L_0x004a
            r0 = 0
            r7 = r0
        L_0x000e:
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = r3
            java.util.ArrayList<android.support.v4.app.Fragment> r1 = r1.g
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x004a
            r0 = r3
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r0.g
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            android.support.v4.app.Fragment r0 = (android.support.v4.app.Fragment) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006c
            r0 = r8
            boolean r0 = r0.I
            if (r0 != 0) goto L_0x0066
            r0 = r8
            r1 = r4
            boolean r0 = r0.onContextItemSelected(r1)
            if (r0 == 0) goto L_0x004c
            r0 = 1
            r9 = r0
        L_0x0043:
            r0 = r9
            if (r0 == 0) goto L_0x006c
            r0 = 1
            r6 = r0
        L_0x004a:
            r0 = r6
            return r0
        L_0x004c:
            r0 = r8
            android.support.v4.app.n r0 = r0.D
            if (r0 == 0) goto L_0x0066
            r0 = r8
            android.support.v4.app.n r0 = r0.D
            r1 = r4
            boolean r0 = r0.b(r1)
            if (r0 == 0) goto L_0x0066
            r0 = 1
            r9 = r0
            goto L_0x0043
        L_0x0066:
            r0 = 0
            r9 = r0
            goto L_0x0043
        L_0x006c:
            int r7 = r7 + 1
            goto L_0x000e
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.n.b(android.view.MenuItem):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(Fragment fragment) {
        if (fragment.p < 0) {
            if (this.h == null || this.h.size() <= 0) {
                if (this.f == null) {
                    this.f = new ArrayList<>();
                }
                fragment.a(this.f.size(), this.q);
                this.f.add(fragment);
            } else {
                fragment.a(this.h.remove(this.h.size() - 1).intValue(), this.q);
                this.f.set(fragment.p, fragment);
            }
            if (f78a) {
                Log.v("FragmentManager", "Allocated fragment index " + fragment);
            }
        }
    }

    public final void c(Fragment fragment, int i, int i2) {
        if (f78a) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.I) {
            fragment.I = false;
            if (fragment.R != null) {
                Animation a2 = a(fragment, i, true, i2);
                if (a2 != null) {
                    b(fragment.R, a2);
                    fragment.R.startAnimation(a2);
                }
                fragment.R.setVisibility(0);
            }
            if (fragment.v && fragment.M && fragment.N) {
                this.s = true;
            }
            fragment.onHiddenChanged(false);
        }
    }

    @Override // android.support.v4.app.m
    public final boolean c() {
        o();
        d();
        return a(-1, 0);
    }

    public final void d(Fragment fragment, int i, int i2) {
        if (f78a) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.J) {
            fragment.J = true;
            if (fragment.v) {
                if (this.g != null) {
                    if (f78a) {
                        Log.v("FragmentManager", "remove from detach: " + fragment);
                    }
                    this.g.remove(fragment);
                }
                if (fragment.M && fragment.N) {
                    this.s = true;
                }
                fragment.v = false;
                a(fragment, 1, i, i2, false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d6, code lost:
        r4.e = true;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00df, code lost:
        if (r6 >= r0) goto L_0x0101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e2, code lost:
        r4.d[r6].run();
        r4.d[r6] = null;
        r6 = r6 + 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d() {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.n.d():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        if (this.m != null) {
            for (int i = 0; i < this.m.size(); i++) {
                this.m.get(i);
            }
        }
    }

    public final void e(Fragment fragment, int i, int i2) {
        if (f78a) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.J) {
            fragment.J = false;
            if (!fragment.v) {
                if (this.g == null) {
                    this.g = new ArrayList<>();
                }
                if (this.g.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (f78a) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                this.g.add(fragment);
                fragment.v = true;
                if (fragment.M && fragment.N) {
                    this.s = true;
                }
                a(fragment, this.n, i, i2, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Parcelable f() {
        int[] iArr;
        int size;
        d();
        if (f79b) {
            this.t = true;
        }
        FragmentManagerState fragmentManagerState = null;
        if (this.f != null) {
            if (this.f.size() <= 0) {
                fragmentManagerState = null;
            } else {
                int size2 = this.f.size();
                FragmentState[] fragmentStateArr = new FragmentState[size2];
                boolean z = false;
                for (int i = 0; i < size2; i++) {
                    Fragment fragment = this.f.get(i);
                    if (fragment != null) {
                        if (fragment.p < 0) {
                            a(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.p));
                        }
                        FragmentState fragmentState = new FragmentState(fragment);
                        fragmentStateArr[i] = fragmentState;
                        if (fragment.k <= 0 || fragmentState.j != null) {
                            fragmentState.j = fragment.n;
                        } else {
                            fragmentState.j = f(fragment);
                            if (fragment.s != null) {
                                if (fragment.s.p < 0) {
                                    a(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.s));
                                }
                                if (fragmentState.j == null) {
                                    fragmentState.j = new Bundle();
                                }
                                a(fragmentState.j, "android:target_state", fragment.s);
                                if (fragment.u != 0) {
                                    fragmentState.j.putInt("android:target_req_state", fragment.u);
                                }
                            }
                        }
                        if (f78a) {
                            Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragmentState.j);
                        }
                        z = true;
                    }
                }
                if (!z) {
                    fragmentManagerState = null;
                    if (f78a) {
                        Log.v("FragmentManager", "saveAllState: no fragments!");
                        fragmentManagerState = null;
                    }
                } else {
                    if (this.g != null && (size = this.g.size()) > 0) {
                        int[] iArr2 = new int[size];
                        int i2 = 0;
                        while (true) {
                            iArr = iArr2;
                            if (i2 >= size) {
                                break;
                            }
                            iArr2[i2] = this.g.get(i2).p;
                            if (iArr2[i2] < 0) {
                                a(new IllegalStateException("Failure saving state: active " + this.g.get(i2) + " has cleared index: " + iArr2[i2]));
                            }
                            if (f78a) {
                                Log.v("FragmentManager", "saveAllState: adding fragment #" + i2 + ": " + this.g.get(i2));
                            }
                            i2++;
                        }
                    } else {
                        iArr = null;
                    }
                    BackStackState[] backStackStateArr = null;
                    if (this.i != null) {
                        int size3 = this.i.size();
                        backStackStateArr = null;
                        if (size3 > 0) {
                            BackStackState[] backStackStateArr2 = new BackStackState[size3];
                            int i3 = 0;
                            while (true) {
                                backStackStateArr = backStackStateArr2;
                                if (i3 >= size3) {
                                    break;
                                }
                                backStackStateArr2[i3] = new BackStackState(this.i.get(i3));
                                if (f78a) {
                                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i3 + ": " + this.i.get(i3));
                                }
                                i3++;
                            }
                        }
                    }
                    FragmentManagerState fragmentManagerState2 = new FragmentManagerState();
                    fragmentManagerState2.f32a = fragmentStateArr;
                    fragmentManagerState2.f33b = iArr;
                    fragmentManagerState2.c = backStackStateArr;
                    fragmentManagerState = fragmentManagerState2;
                }
            }
        }
        return fragmentManagerState;
    }

    public final void g() {
        this.t = false;
        b(1);
    }

    public final void h() {
        this.t = false;
        b(2);
    }

    public final void i() {
        this.t = false;
        b(4);
    }

    public final void j() {
        this.t = false;
        b(5);
    }

    public final void k() {
        this.t = true;
        b(3);
    }

    public final void l() {
        this.u = true;
        d();
        b(0);
        this.o = null;
        this.p = null;
        this.q = null;
    }

    public final void m() {
        if (this.g != null) {
            for (int i = 0; i < this.g.size(); i++) {
                Fragment fragment = this.g.get(i);
                if (fragment != null) {
                    fragment.onLowMemory();
                    if (fragment.D != null) {
                        fragment.D.m();
                    }
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.q != null) {
            c.a(this.q, sb);
        } else {
            c.a(this.o, sb);
        }
        sb.append("}}");
        return sb.toString();
    }
}
