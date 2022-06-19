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
import androidx.core.view.AbstractC0914j;
import androidx.core.view.C0926v;
import androidx.customview.p039a.C0972c;
import androidx.customview.view.AbsSavedState;
import com.callapp.contacts.C5563R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/TopSheetBehavior.class */
public class TopSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: b */
    private float f21899b;

    /* renamed from: c */
    private int f21900c;

    /* renamed from: d */
    private int f21901d;

    /* renamed from: e */
    private int f21902e;

    /* renamed from: f */
    private boolean f21903f;

    /* renamed from: g */
    private boolean f21904g;

    /* renamed from: i */
    private C0972c f21906i;

    /* renamed from: j */
    private boolean f21907j;

    /* renamed from: k */
    private int f21908k;

    /* renamed from: l */
    private boolean f21909l;

    /* renamed from: n */
    private WeakReference<V> f21911n;

    /* renamed from: o */
    private WeakReference<View> f21912o;

    /* renamed from: p */
    private TopSheetCallback f21913p;

    /* renamed from: q */
    private VelocityTracker f21914q;

    /* renamed from: r */
    private int f21915r;

    /* renamed from: s */
    private int f21916s;

    /* renamed from: t */
    private boolean f21917t;

    /* renamed from: h */
    private int f21905h = 4;

    /* renamed from: m */
    private boolean f21910m = true;

    /* renamed from: a */
    int f21898a = 4;

    /* renamed from: u */
    private final C0972c.AbstractC0975a f21918u = new C0972c.AbstractC0975a() { // from class: com.callapp.contacts.activity.contact.details.TopSheetBehavior.1
        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11096a(int i) {
            if (i == 1) {
                TopSheetBehavior.this.setStateInternal(1);
            }
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11095a(View view, float f, float f2) {
            int i;
            int i2 = 3;
            int i3 = (f2 > BitmapDescriptorFactory.HUE_RED ? 1 : (f2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            if (i3 > 0) {
                i = TopSheetBehavior.this.f21902e;
            } else if (!TopSheetBehavior.this.f21903f || !TopSheetBehavior.this.m30917a(view, f2)) {
                if (i3 == 0) {
                    int top = view.getTop();
                    if (Math.abs(top - TopSheetBehavior.this.f21901d) > Math.abs(top - TopSheetBehavior.this.f21902e)) {
                        i = TopSheetBehavior.this.f21902e;
                    } else {
                        i = TopSheetBehavior.this.f21901d;
                    }
                } else {
                    i = TopSheetBehavior.this.f21901d;
                }
                i2 = 4;
            } else {
                i = -((View) TopSheetBehavior.this.f21911n.get()).getHeight();
                i2 = 5;
            }
            if (!TopSheetBehavior.this.f21906i.m43903a(view.getLeft(), i)) {
                TopSheetBehavior.this.setStateInternal(i2);
                return;
            }
            TopSheetBehavior.this.setStateInternal(2);
            C0926v.m44117a(view, new SettleRunnable(view, i2));
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11094a(View view, int i, int i2) {
            TopSheetBehavior.this.m30907c();
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: b */
        public final int mo11093b(View view) {
            return TopSheetBehavior.this.f21903f ? view.getHeight() : TopSheetBehavior.this.f21902e - TopSheetBehavior.this.f21901d;
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: b */
        public final boolean mo11092b(View view, int i) {
            View view2;
            if (TopSheetBehavior.this.f21905h != 1 && !TopSheetBehavior.this.f21917t) {
                return (TopSheetBehavior.this.f21905h != 3 || TopSheetBehavior.this.f21915r != i || (view2 = (View) TopSheetBehavior.this.f21912o.get()) == null || !C0926v.m44137a(view2, -1)) && TopSheetBehavior.this.f21911n != null && TopSheetBehavior.this.f21911n.get() == view;
            }
            return false;
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: c */
        public final int mo11091c(View view, int i) {
            return view.getLeft();
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: d */
        public final int mo11090d(View view, int i) {
            return TopSheetBehavior.m30919a(i, TopSheetBehavior.this.f21903f ? -view.getHeight() : TopSheetBehavior.this.f21901d, TopSheetBehavior.this.f21902e);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable.class */
    public class SettleRunnable implements Runnable {

        /* renamed from: b */
        private final View f21921b;

        /* renamed from: c */
        private final int f21922c;

        SettleRunnable(View view, int i) {
            TopSheetBehavior.this = r4;
            this.f21921b = view;
            this.f21922c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TopSheetBehavior.this.f21906i == null || !TopSheetBehavior.this.f21906i.m43885c()) {
                TopSheetBehavior.this.setStateInternal(this.f21922c);
            } else {
                C0926v.m44117a(this.f21921b, this);
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
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.BottomSheetBehavior_Layout);
        setPeekHeight(obtainStyledAttributes.getDimensionPixelSize(7, 0));
        setHideable(obtainStyledAttributes.getBoolean(6, false));
        setSkipCollapsed(obtainStyledAttributes.getBoolean(9, false));
        obtainStyledAttributes.recycle();
        this.f21899b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* renamed from: a */
    static int m30919a(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* renamed from: a */
    public static <V extends View> TopSheetBehavior<V> m30918a(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.C0702d) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.C0702d) layoutParams).f3200a;
            if (!(behavior instanceof TopSheetBehavior)) {
                throw new IllegalArgumentException("The view is not associated with TopSheetBehavior");
            }
            return (TopSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    /* renamed from: a */
    public boolean m30917a(View view, float f) {
        return view.getTop() <= this.f21901d && Math.abs((((float) view.getTop()) + (f * 0.1f)) - ((float) this.f21901d)) / ((float) this.f21900c) > 0.5f;
    }

    /* renamed from: b */
    private View m30911b(View view) {
        if (view instanceof AbstractC0914j) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View m30911b = m30911b(viewGroup.getChildAt(i));
            if (m30911b != null) {
                return m30911b;
            }
        }
        return null;
    }

    /* renamed from: b */
    private void m30912b() {
        this.f21915r = -1;
        VelocityTracker velocityTracker = this.f21914q;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f21914q = null;
        }
    }

    /* renamed from: c */
    public void m30907c() {
        if (this.f21911n.get() != null && this.f21913p != null && this.f21898a != 4) {
        }
    }

    private float getYVelocity() {
        this.f21914q.computeCurrentVelocity(1000, this.f21899b);
        return this.f21914q.getYVelocity(this.f21915r);
    }

    public void setStateInternal(int i) {
        if (i == 4 || i == 3) {
            this.f21898a = i;
        }
        if (this.f21905h == i) {
            return;
        }
        this.f21905h = i;
        this.f21911n.get();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo30916a(V v, View view, int i, int[] iArr) {
        if (view != this.f21912o.get()) {
            return;
        }
        int top = v.getTop();
        int i2 = top - i;
        if (i > 0) {
            if (!C0926v.m44137a(view, 1)) {
                int i3 = this.f21901d;
                if (i2 >= i3 || this.f21903f) {
                    iArr[1] = i;
                    C0926v.m44098e(v, -i);
                    setStateInternal(1);
                } else {
                    iArr[1] = top - i3;
                    C0926v.m44098e(v, -iArr[1]);
                    setStateInternal(4);
                }
            }
        } else if (i < 0) {
            int i4 = this.f21902e;
            if (i2 < i4) {
                iArr[1] = i;
                C0926v.m44098e(v, -i);
                setStateInternal(1);
            } else {
                iArr[1] = top - i4;
                C0926v.m44098e(v, -iArr[1]);
                setStateInternal(3);
            }
        }
        v.getTop();
        m30907c();
        this.f21908k = i;
        this.f21909l = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo11130a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.mo11130a(coordinatorLayout, (CoordinatorLayout) v, savedState.getSuperState());
        if (savedState.state == 1 || savedState.state == 2) {
            this.f21905h = 4;
        } else {
            this.f21905h = savedState.state;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo29078a(int i) {
        this.f21908k = 0;
        this.f21909l = false;
        return (i & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo9852a(CoordinatorLayout coordinatorLayout, V v, int i) {
        if (C0926v.m44080s(coordinatorLayout) && !C0926v.m44080s(v)) {
            C0926v.m44106b((View) v, true);
        }
        int top = v.getTop();
        coordinatorLayout.m44655b(v, i);
        coordinatorLayout.getHeight();
        int max = Math.max(-v.getHeight(), -(v.getHeight() - this.f21900c));
        this.f21901d = max;
        this.f21902e = 0;
        int i2 = this.f21905h;
        if (i2 == 3) {
            C0926v.m44098e(v, 0);
        } else if (this.f21903f && i2 == 5) {
            C0926v.m44098e(v, -v.getHeight());
        } else if (i2 == 4) {
            C0926v.m44098e(v, max);
        } else if (i2 == 1 || i2 == 2) {
            C0926v.m44098e(v, top - v.getTop());
        }
        if (this.f21906i == null) {
            this.f21906i = C0972c.m43894a(coordinatorLayout, this.f21918u);
        }
        this.f21911n = new WeakReference<>(v);
        this.f21912o = new WeakReference<>(m30911b(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo10175a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C0972c c0972c;
        if (this.f21910m && v.isShown()) {
            int action = motionEvent.getAction();
            if (action == 0) {
                m30912b();
            }
            if (this.f21914q == null) {
                this.f21914q = VelocityTracker.obtain();
            }
            this.f21914q.addMovement(motionEvent);
            if (action == 0) {
                int x = (int) motionEvent.getX();
                this.f21916s = (int) motionEvent.getY();
                WeakReference<View> weakReference = this.f21912o;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.m44663a(view, x, this.f21916s)) {
                    this.f21915r = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f21917t = true;
                }
                this.f21907j = this.f21915r == -1 && !coordinatorLayout.m44663a(v, x, this.f21916s);
            } else if (action == 1 || action == 3) {
                this.f21917t = false;
                this.f21915r = -1;
                if (this.f21907j) {
                    this.f21907j = false;
                    return false;
                }
            }
            if (!this.f21907j && (c0972c = this.f21906i) != null && c0972c.m43900a(motionEvent)) {
                return true;
            }
            WeakReference<View> weakReference2 = this.f21912o;
            View view2 = null;
            if (weakReference2 != null) {
                view2 = weakReference2.get();
            }
            return action == 2 && view2 != null && !this.f21907j && this.f21905h != 1 && !coordinatorLayout.m44663a(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) && this.f21906i != null && Math.abs(((float) this.f21916s) - motionEvent.getY()) > ((float) this.f21906i.f3898b);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo11129a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        if (view == this.f21912o.get()) {
            return this.f21905h != 3 || super.mo11129a(coordinatorLayout, v, view, f, f2);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public final Parcelable mo11116b(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.mo11116b(coordinatorLayout, (CoordinatorLayout) v), this.f21905h);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public final void mo30910b(V v, View view) {
        int i;
        int i2 = 3;
        if (v.getTop() == this.f21902e) {
            setStateInternal(3);
        } else if (view != this.f21912o.get() || !this.f21909l) {
        } else {
            if (this.f21908k < 0) {
                i = this.f21902e;
            } else if (!this.f21903f || !m30917a(v, getYVelocity())) {
                if (this.f21908k == 0) {
                    int top = v.getTop();
                    if (Math.abs(top - this.f21901d) > Math.abs(top - this.f21902e)) {
                        i = this.f21902e;
                    } else {
                        i = this.f21901d;
                    }
                } else {
                    i = this.f21901d;
                }
                i2 = 4;
            } else {
                i = -v.getHeight();
                i2 = 5;
            }
            if (this.f21906i.m43897a((View) v, v.getLeft(), i)) {
                setStateInternal(2);
                C0926v.m44117a(v, new SettleRunnable(v, i2));
            } else {
                setStateInternal(i2);
            }
            this.f21909l = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public final boolean mo9836b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!this.f21910m) {
            return true;
        }
        if (!v.isShown()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (this.f21905h == 1 && action == 0) {
            return true;
        }
        C0972c c0972c = this.f21906i;
        if (c0972c != null) {
            c0972c.m43888b(motionEvent);
            if (action == 0) {
                m30912b();
            }
            if (this.f21914q == null) {
                this.f21914q = VelocityTracker.obtain();
            }
            this.f21914q.addMovement(motionEvent);
            if (action == 2 && !this.f21907j && Math.abs(this.f21916s - motionEvent.getY()) > this.f21906i.f3898b) {
                this.f21906i.m43898a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.f21907j;
    }

    public final int getState() {
        return this.f21905h;
    }

    public void setAllowUserDragging(boolean z) {
        this.f21910m = z;
    }

    public void setHideable(boolean z) {
        this.f21903f = z;
    }

    public final void setPeekHeight(int i) {
        this.f21900c = Math.max(0, i);
        WeakReference<V> weakReference = this.f21911n;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f21901d = Math.max(-this.f21911n.get().getHeight(), -(this.f21911n.get().getHeight() - this.f21900c));
    }

    public void setSkipCollapsed(boolean z) {
        this.f21904g = z;
    }

    public final void setState(int i) {
        int i2;
        if (i == this.f21905h) {
            return;
        }
        WeakReference<V> weakReference = this.f21911n;
        if (weakReference == null) {
            if (i != 4 && i != 3 && (!this.f21903f || i != 5)) {
                return;
            }
            this.f21905h = i;
            return;
        }
        V v = weakReference.get();
        if (v == null) {
            return;
        }
        if (i == 4) {
            i2 = this.f21901d;
        } else if (i == 3) {
            i2 = this.f21902e;
        } else if (!this.f21903f || i != 5) {
            throw new IllegalArgumentException("Illegal state argument: ".concat(String.valueOf(i)));
        } else {
            i2 = -v.getHeight();
        }
        setStateInternal(2);
        if (!this.f21906i.m43897a((View) v, v.getLeft(), i2)) {
            return;
        }
        C0926v.m44117a(v, new SettleRunnable(v, i));
    }
}
