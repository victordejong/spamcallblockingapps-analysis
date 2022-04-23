package com.callapp.contacts.activity.contact.details;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.j;
import androidx.core.view.v;
import androidx.customview.a.c;
import androidx.customview.view.AbsSavedState;
import com.callapp.contacts.R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/TopSheetBehavior.class */
public class TopSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: b  reason: collision with root package name */
    private float f12175b;

    /* renamed from: c  reason: collision with root package name */
    private int f12176c;

    /* renamed from: d  reason: collision with root package name */
    private int f12177d;
    private int e;
    private boolean f;
    private boolean g;
    private c i;
    private boolean j;
    private int k;
    private boolean l;
    private WeakReference<V> n;
    private WeakReference<View> o;
    private TopSheetCallback p;
    private VelocityTracker q;
    private int r;
    private int s;
    private boolean t;
    private int h = 4;
    private boolean m = true;

    /* renamed from: a  reason: collision with root package name */
    int f12174a = 4;
    private final c.a u = new c.a() { // from class: com.callapp.contacts.activity.contact.details.TopSheetBehavior.1
        @Override // androidx.customview.a.c.a
        public final void a(int i) {
            if (i == 1) {
                TopSheetBehavior.this.setStateInternal(1);
            }
        }

        @Override // androidx.customview.a.c.a
        public final void a(View view, float f, float f2) {
            int i;
            int i2 = 3;
            int i3 = (f2 > BitmapDescriptorFactory.HUE_RED ? 1 : (f2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            if (i3 > 0) {
                i = TopSheetBehavior.this.e;
            } else if (!TopSheetBehavior.this.f || !TopSheetBehavior.this.a(view, f2)) {
                if (i3 == 0) {
                    int top = view.getTop();
                    if (Math.abs(top - TopSheetBehavior.this.f12177d) > Math.abs(top - TopSheetBehavior.this.e)) {
                        i = TopSheetBehavior.this.e;
                    } else {
                        i = TopSheetBehavior.this.f12177d;
                    }
                } else {
                    i = TopSheetBehavior.this.f12177d;
                }
                i2 = 4;
            } else {
                i = -((View) TopSheetBehavior.this.n.get()).getHeight();
                i2 = 5;
            }
            if (TopSheetBehavior.this.i.a(view.getLeft(), i)) {
                TopSheetBehavior.this.setStateInternal(2);
                v.a(view, new SettleRunnable(view, i2));
                return;
            }
            TopSheetBehavior.this.setStateInternal(i2);
        }

        @Override // androidx.customview.a.c.a
        public final void a(View view, int i, int i2) {
            TopSheetBehavior.this.c();
        }

        @Override // androidx.customview.a.c.a
        public final int b(View view) {
            return TopSheetBehavior.this.f ? view.getHeight() : TopSheetBehavior.this.e - TopSheetBehavior.this.f12177d;
        }

        @Override // androidx.customview.a.c.a
        public final boolean b(View view, int i) {
            View view2;
            if (TopSheetBehavior.this.h != 1 && !TopSheetBehavior.this.t) {
                return (TopSheetBehavior.this.h != 3 || TopSheetBehavior.this.r != i || (view2 = (View) TopSheetBehavior.this.o.get()) == null || !v.a(view2, -1)) && TopSheetBehavior.this.n != null && TopSheetBehavior.this.n.get() == view;
            }
            return false;
        }

        @Override // androidx.customview.a.c.a
        public final int c(View view, int i) {
            return view.getLeft();
        }

        @Override // androidx.customview.a.c.a
        public final int d(View view, int i) {
            return TopSheetBehavior.a(i, TopSheetBehavior.this.f ? -view.getHeight() : TopSheetBehavior.this.f12177d, TopSheetBehavior.this.e);
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/TopSheetBehavior$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.callapp.contacts.activity.contact.details.TopSheetBehavior.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
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
        final int state;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable.class */
    class SettleRunnable implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final View f12180b;

        /* renamed from: c  reason: collision with root package name */
        private final int f12181c;

        SettleRunnable(View view, int i) {
            this.f12180b = view;
            this.f12181c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TopSheetBehavior.this.i == null || !TopSheetBehavior.this.i.c()) {
                TopSheetBehavior.this.setStateInternal(this.f12181c);
            } else {
                v.a(this.f12180b, this);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/TopSheetBehavior$TopSheetCallback.class */
    public static abstract class TopSheetCallback {
    }

    public TopSheetBehavior() {
    }

    public TopSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        setPeekHeight(obtainStyledAttributes.getDimensionPixelSize(7, 0));
        setHideable(obtainStyledAttributes.getBoolean(6, false));
        setSkipCollapsed(obtainStyledAttributes.getBoolean(9, false));
        obtainStyledAttributes.recycle();
        this.f12175b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    static int a(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static <V extends View> TopSheetBehavior<V> a(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.d) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.d) layoutParams).f1663a;
            if (behavior instanceof TopSheetBehavior) {
                return (TopSheetBehavior) behavior;
            }
            throw new IllegalArgumentException("The view is not associated with TopSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(View view, float f) {
        return view.getTop() <= this.f12177d && Math.abs((((float) view.getTop()) + (f * 0.1f)) - ((float) this.f12177d)) / ((float) this.f12176c) > 0.5f;
    }

    private View b(View view) {
        if (view instanceof j) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View b2 = b(viewGroup.getChildAt(i));
            if (b2 != null) {
                return b2;
            }
        }
        return null;
    }

    private void b() {
        this.r = -1;
        VelocityTracker velocityTracker = this.q;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.q = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (!(this.n.get() == null || this.p == null || this.f12174a == 4)) {
        }
    }

    private float getYVelocity() {
        this.q.computeCurrentVelocity(1000, this.f12175b);
        return this.q.getYVelocity(this.r);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateInternal(int i) {
        if (i == 4 || i == 3) {
            this.f12174a = i;
        }
        if (this.h != i) {
            this.h = i;
            this.n.get();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void a(V v, View view, int i, int[] iArr) {
        if (view == this.o.get()) {
            int top = v.getTop();
            int i2 = top - i;
            if (i > 0) {
                if (!v.a(view, 1)) {
                    int i3 = this.f12177d;
                    if (i2 >= i3 || this.f) {
                        iArr[1] = i;
                        v.e(v, -i);
                        setStateInternal(1);
                    } else {
                        iArr[1] = top - i3;
                        v.e(v, -iArr[1]);
                        setStateInternal(4);
                    }
                }
            } else if (i < 0) {
                int i4 = this.e;
                if (i2 < i4) {
                    iArr[1] = i;
                    v.e(v, -i);
                    setStateInternal(1);
                } else {
                    iArr[1] = top - i4;
                    v.e(v, -iArr[1]);
                    setStateInternal(3);
                }
            }
            v.getTop();
            c();
            this.k = i;
            this.l = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.a(coordinatorLayout, (CoordinatorLayout) v, savedState.getSuperState());
        if (savedState.state == 1 || savedState.state == 2) {
            this.h = 4;
        } else {
            this.h = savedState.state;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(int i) {
        this.k = 0;
        this.l = false;
        return (i & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        if (v.s(coordinatorLayout) && !v.s(v)) {
            v.b((View) v, true);
        }
        int top = v.getTop();
        coordinatorLayout.b(v, i);
        coordinatorLayout.getHeight();
        int max = Math.max(-v.getHeight(), -(v.getHeight() - this.f12176c));
        this.f12177d = max;
        this.e = 0;
        int i2 = this.h;
        if (i2 == 3) {
            v.e(v, 0);
        } else if (this.f && i2 == 5) {
            v.e(v, -v.getHeight());
        } else if (i2 == 4) {
            v.e(v, max);
        } else if (i2 == 1 || i2 == 2) {
            v.e(v, top - v.getTop());
        }
        if (this.i == null) {
            this.i = c.a(coordinatorLayout, this.u);
        }
        this.n = new WeakReference<>(v);
        this.o = new WeakReference<>(b(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        c cVar;
        if (!this.m || !v.isShown()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            b();
        }
        if (this.q == null) {
            this.q = VelocityTracker.obtain();
        }
        this.q.addMovement(motionEvent);
        View view = null;
        if (action == 0) {
            int x = (int) motionEvent.getX();
            this.s = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.o;
            View view2 = weakReference != null ? weakReference.get() : null;
            if (view2 != null && coordinatorLayout.a(view2, x, this.s)) {
                this.r = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.t = true;
            }
            this.j = this.r == -1 && !coordinatorLayout.a(v, x, this.s);
        } else if (action == 1 || action == 3) {
            this.t = false;
            this.r = -1;
            if (this.j) {
                this.j = false;
                return false;
            }
        }
        if (!this.j && (cVar = this.i) != null && cVar.a(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.o;
        if (weakReference2 != null) {
            view = weakReference2.get();
        }
        return action == 2 && view != null && !this.j && this.h != 1 && !coordinatorLayout.a(view, (int) motionEvent.getX(), (int) motionEvent.getY()) && this.i != null && Math.abs(((float) this.s) - motionEvent.getY()) > ((float) this.i.f2083b);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        if (view == this.o.get()) {
            return this.h != 3 || super.a(coordinatorLayout, v, view, f, f2);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable b(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.b(coordinatorLayout, (CoordinatorLayout) v), this.h);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void b(V v, View view) {
        int i;
        int i2 = 3;
        if (v.getTop() == this.e) {
            setStateInternal(3);
        } else if (view == this.o.get() && this.l) {
            if (this.k < 0) {
                i = this.e;
            } else if (!this.f || !a(v, getYVelocity())) {
                if (this.k == 0) {
                    int top = v.getTop();
                    if (Math.abs(top - this.f12177d) > Math.abs(top - this.e)) {
                        i = this.e;
                    } else {
                        i = this.f12177d;
                    }
                } else {
                    i = this.f12177d;
                }
                i2 = 4;
            } else {
                i = -v.getHeight();
                i2 = 5;
            }
            if (this.i.a((View) v, v.getLeft(), i)) {
                setStateInternal(2);
                v.a(v, new SettleRunnable(v, i2));
            } else {
                setStateInternal(i2);
            }
            this.l = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!this.m) {
            return true;
        }
        if (!v.isShown()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (this.h == 1 && action == 0) {
            return true;
        }
        c cVar = this.i;
        if (cVar != null) {
            cVar.b(motionEvent);
            if (action == 0) {
                b();
            }
            if (this.q == null) {
                this.q = VelocityTracker.obtain();
            }
            this.q.addMovement(motionEvent);
            if (action == 2 && !this.j && Math.abs(this.s - motionEvent.getY()) > this.i.f2083b) {
                this.i.a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.j;
    }

    public final int getState() {
        return this.h;
    }

    public void setAllowUserDragging(boolean z) {
        this.m = z;
    }

    public void setHideable(boolean z) {
        this.f = z;
    }

    public final void setPeekHeight(int i) {
        this.f12176c = Math.max(0, i);
        WeakReference<V> weakReference = this.n;
        if (weakReference != null && weakReference.get() != null) {
            this.f12177d = Math.max(-this.n.get().getHeight(), -(this.n.get().getHeight() - this.f12176c));
        }
    }

    public void setSkipCollapsed(boolean z) {
        this.g = z;
    }

    public final void setState(int i) {
        int i2;
        if (i != this.h) {
            WeakReference<V> weakReference = this.n;
            if (weakReference != null) {
                V v = weakReference.get();
                if (v != null) {
                    if (i == 4) {
                        i2 = this.f12177d;
                    } else if (i == 3) {
                        i2 = this.e;
                    } else if (!this.f || i != 5) {
                        throw new IllegalArgumentException("Illegal state argument: ".concat(String.valueOf(i)));
                    } else {
                        i2 = -v.getHeight();
                    }
                    setStateInternal(2);
                    if (this.i.a((View) v, v.getLeft(), i2)) {
                        v.a(v, new SettleRunnable(v, i));
                    }
                }
            } else if (i == 4 || i == 3 || (this.f && i == 5)) {
                this.h = i;
            }
        }
    }
}
