package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p032b.C0770a;
import androidx.core.view.C0889ac;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.AbstractC0878f;
import androidx.core.view.p038a.C0869c;
import androidx.customview.p039a.C0972c;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p371h.C14598c;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14678m;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior.class */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: G */
    private static final int f52644G = C14376a.C14387k.Widget_Design_BottomSheet_Modal;

    /* renamed from: A */
    private int f52645A;

    /* renamed from: B */
    private boolean f52646B;

    /* renamed from: C */
    private C14678m f52647C;

    /* renamed from: D */
    private boolean f52648D;

    /* renamed from: E */
    private BottomSheetBehavior<V>.RunnableC14454b f52649E;

    /* renamed from: F */
    private ValueAnimator f52650F;

    /* renamed from: H */
    private boolean f52651H;

    /* renamed from: I */
    private boolean f52652I;

    /* renamed from: J */
    private boolean f52653J;

    /* renamed from: K */
    private int f52654K;

    /* renamed from: L */
    private boolean f52655L;

    /* renamed from: M */
    private int f52656M;

    /* renamed from: N */
    private VelocityTracker f52657N;

    /* renamed from: O */
    private int f52658O;

    /* renamed from: P */
    private Map<View, Integer> f52659P;

    /* renamed from: Q */
    private int f52660Q;

    /* renamed from: R */
    private final C0972c.AbstractC0975a f52661R;

    /* renamed from: a */
    int f52662a;

    /* renamed from: b */
    int f52663b;

    /* renamed from: c */
    int f52664c;

    /* renamed from: d */
    float f52665d;

    /* renamed from: e */
    int f52666e;

    /* renamed from: f */
    float f52667f;

    /* renamed from: g */
    boolean f52668g;

    /* renamed from: h */
    int f52669h;

    /* renamed from: i */
    C0972c f52670i;

    /* renamed from: j */
    int f52671j;

    /* renamed from: k */
    int f52672k;

    /* renamed from: l */
    WeakReference<V> f52673l;

    /* renamed from: m */
    WeakReference<View> f52674m;

    /* renamed from: n */
    final ArrayList<AbstractC14453a> f52675n;

    /* renamed from: o */
    int f52676o;

    /* renamed from: p */
    boolean f52677p;

    /* renamed from: q */
    private int f52678q;

    /* renamed from: r */
    private boolean f52679r;

    /* renamed from: s */
    private boolean f52680s;

    /* renamed from: t */
    private float f52681t;

    /* renamed from: u */
    private int f52682u;

    /* renamed from: v */
    private boolean f52683v;

    /* renamed from: w */
    private int f52684w;

    /* renamed from: x */
    private int f52685x;

    /* renamed from: y */
    private boolean f52686y;

    /* renamed from: z */
    private C14670h f52687z;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.SavedState.1
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
        boolean fitToContents;
        boolean hideable;
        int peekHeight;
        boolean skipCollapsed;
        final int state;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
            this.peekHeight = parcel.readInt();
            this.fitToContents = parcel.readInt() == 1;
            this.hideable = parcel.readInt() == 1;
            this.skipCollapsed = parcel.readInt() == 1;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }

        public SavedState(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.state = bottomSheetBehavior.f52669h;
            this.peekHeight = ((BottomSheetBehavior) bottomSheetBehavior).f52682u;
            this.fitToContents = ((BottomSheetBehavior) bottomSheetBehavior).f52679r;
            this.hideable = bottomSheetBehavior.f52668g;
            this.skipCollapsed = ((BottomSheetBehavior) bottomSheetBehavior).f52651H;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
            parcel.writeInt(this.peekHeight);
            parcel.writeInt(this.fitToContents ? 1 : 0);
            parcel.writeInt(this.hideable ? 1 : 0);
            parcel.writeInt(this.skipCollapsed ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$a.class */
    public static abstract class AbstractC14453a {
        /* renamed from: a */
        public abstract void mo11076a(int i);
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$b.class */
    public final class RunnableC14454b implements Runnable {

        /* renamed from: a */
        int f52696a;

        /* renamed from: c */
        private final View f52698c;

        /* renamed from: d */
        private boolean f52699d;

        RunnableC14454b(View view, int i) {
            BottomSheetBehavior.this = r4;
            this.f52698c = view;
            this.f52696a = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (BottomSheetBehavior.this.f52670i == null || !BottomSheetBehavior.this.f52670i.m43885c()) {
                BottomSheetBehavior.this.m11108d(this.f52696a);
            } else {
                C0926v.m44117a(this.f52698c, this);
            }
            this.f52699d = false;
        }
    }

    public BottomSheetBehavior() {
        this.f52678q = 0;
        this.f52679r = true;
        this.f52680s = false;
        this.f52649E = null;
        this.f52665d = 0.5f;
        this.f52667f = -1.0f;
        this.f52652I = true;
        this.f52669h = 4;
        this.f52675n = new ArrayList<>();
        this.f52660Q = -1;
        this.f52661R = new C0972c.AbstractC0975a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            @Override // androidx.customview.p039a.C0972c.AbstractC0975a
            /* renamed from: a */
            public final void mo11096a(int i) {
                if (i != 1 || !BottomSheetBehavior.this.f52652I) {
                    return;
                }
                BottomSheetBehavior.this.m11108d(1);
            }

            @Override // androidx.customview.p039a.C0972c.AbstractC0975a
            /* renamed from: a */
            public final void mo11095a(View view, float f, float f2) {
                int i;
                int i2 = 4;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    if (BottomSheetBehavior.this.f52679r) {
                        i = BottomSheetBehavior.this.f52663b;
                    } else if (view.getTop() > BottomSheetBehavior.this.f52664c) {
                        i = BottomSheetBehavior.this.f52664c;
                        i2 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f52662a;
                    }
                    i2 = 3;
                } else if (BottomSheetBehavior.this.f52668g && BottomSheetBehavior.this.m11134a(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        if (!(view.getTop() > (BottomSheetBehavior.this.f52672k + BottomSheetBehavior.this.m11120b()) / 2)) {
                            if (BottomSheetBehavior.this.f52679r) {
                                i = BottomSheetBehavior.this.f52663b;
                            } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.f52662a) < Math.abs(view.getTop() - BottomSheetBehavior.this.f52664c)) {
                                i = BottomSheetBehavior.this.f52662a;
                            } else {
                                i = BottomSheetBehavior.this.f52664c;
                                i2 = 6;
                            }
                            i2 = 3;
                        }
                    }
                    i = BottomSheetBehavior.this.f52672k;
                    i2 = 5;
                } else if (f2 == BitmapDescriptorFactory.HUE_RED || Math.abs(f) > Math.abs(f2)) {
                    int top = view.getTop();
                    if (!BottomSheetBehavior.this.f52679r) {
                        if (top < BottomSheetBehavior.this.f52664c) {
                            if (top < Math.abs(top - BottomSheetBehavior.this.f52666e)) {
                                i = BottomSheetBehavior.this.f52662a;
                                i2 = 3;
                            } else {
                                i = BottomSheetBehavior.this.f52664c;
                            }
                        } else if (Math.abs(top - BottomSheetBehavior.this.f52664c) < Math.abs(top - BottomSheetBehavior.this.f52666e)) {
                            i = BottomSheetBehavior.this.f52664c;
                        } else {
                            i = BottomSheetBehavior.this.f52666e;
                        }
                        i2 = 6;
                    } else if (Math.abs(top - BottomSheetBehavior.this.f52663b) < Math.abs(top - BottomSheetBehavior.this.f52666e)) {
                        i = BottomSheetBehavior.this.f52663b;
                        i2 = 3;
                    } else {
                        i = BottomSheetBehavior.this.f52666e;
                    }
                } else {
                    if (!BottomSheetBehavior.this.f52679r) {
                        int top2 = view.getTop();
                        if (Math.abs(top2 - BottomSheetBehavior.this.f52664c) < Math.abs(top2 - BottomSheetBehavior.this.f52666e)) {
                            i = BottomSheetBehavior.this.f52664c;
                            i2 = 6;
                        }
                    }
                    i = BottomSheetBehavior.this.f52666e;
                }
                BottomSheetBehavior.this.m11132a(view, i2, i, true);
            }

            @Override // androidx.customview.p039a.C0972c.AbstractC0975a
            /* renamed from: a */
            public final void mo11094a(View view, int i, int i2) {
                BottomSheetBehavior.this.m11105e(i2);
            }

            @Override // androidx.customview.p039a.C0972c.AbstractC0975a
            /* renamed from: b */
            public final int mo11093b(View view) {
                return BottomSheetBehavior.this.f52668g ? BottomSheetBehavior.this.f52672k : BottomSheetBehavior.this.f52666e;
            }

            @Override // androidx.customview.p039a.C0972c.AbstractC0975a
            /* renamed from: b */
            public final boolean mo11092b(View view, int i) {
                if (BottomSheetBehavior.this.f52669h != 1 && !BottomSheetBehavior.this.f52677p) {
                    if (BottomSheetBehavior.this.f52669h == 3 && BottomSheetBehavior.this.f52676o == i) {
                        View view2 = BottomSheetBehavior.this.f52674m != null ? BottomSheetBehavior.this.f52674m.get() : null;
                        if (view2 != null && view2.canScrollVertically(-1)) {
                            return false;
                        }
                    }
                    return BottomSheetBehavior.this.f52673l != null && BottomSheetBehavior.this.f52673l.get() == view;
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
                return C0770a.m44521a(i, BottomSheetBehavior.this.m11120b(), BottomSheetBehavior.this.f52668g ? BottomSheetBehavior.this.f52672k : BottomSheetBehavior.this.f52666e);
            }
        };
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f52678q = 0;
        this.f52679r = true;
        this.f52680s = false;
        this.f52649E = null;
        this.f52665d = 0.5f;
        this.f52667f = -1.0f;
        this.f52652I = true;
        this.f52669h = 4;
        this.f52675n = new ArrayList<>();
        this.f52660Q = -1;
        this.f52661R = new C0972c.AbstractC0975a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            @Override // androidx.customview.p039a.C0972c.AbstractC0975a
            /* renamed from: a */
            public final void mo11096a(int i) {
                if (i != 1 || !BottomSheetBehavior.this.f52652I) {
                    return;
                }
                BottomSheetBehavior.this.m11108d(1);
            }

            @Override // androidx.customview.p039a.C0972c.AbstractC0975a
            /* renamed from: a */
            public final void mo11095a(View view, float f, float f2) {
                int i;
                int i2 = 4;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    if (BottomSheetBehavior.this.f52679r) {
                        i = BottomSheetBehavior.this.f52663b;
                    } else if (view.getTop() > BottomSheetBehavior.this.f52664c) {
                        i = BottomSheetBehavior.this.f52664c;
                        i2 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f52662a;
                    }
                    i2 = 3;
                } else if (BottomSheetBehavior.this.f52668g && BottomSheetBehavior.this.m11134a(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        if (!(view.getTop() > (BottomSheetBehavior.this.f52672k + BottomSheetBehavior.this.m11120b()) / 2)) {
                            if (BottomSheetBehavior.this.f52679r) {
                                i = BottomSheetBehavior.this.f52663b;
                            } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.f52662a) < Math.abs(view.getTop() - BottomSheetBehavior.this.f52664c)) {
                                i = BottomSheetBehavior.this.f52662a;
                            } else {
                                i = BottomSheetBehavior.this.f52664c;
                                i2 = 6;
                            }
                            i2 = 3;
                        }
                    }
                    i = BottomSheetBehavior.this.f52672k;
                    i2 = 5;
                } else if (f2 == BitmapDescriptorFactory.HUE_RED || Math.abs(f) > Math.abs(f2)) {
                    int top = view.getTop();
                    if (!BottomSheetBehavior.this.f52679r) {
                        if (top < BottomSheetBehavior.this.f52664c) {
                            if (top < Math.abs(top - BottomSheetBehavior.this.f52666e)) {
                                i = BottomSheetBehavior.this.f52662a;
                                i2 = 3;
                            } else {
                                i = BottomSheetBehavior.this.f52664c;
                            }
                        } else if (Math.abs(top - BottomSheetBehavior.this.f52664c) < Math.abs(top - BottomSheetBehavior.this.f52666e)) {
                            i = BottomSheetBehavior.this.f52664c;
                        } else {
                            i = BottomSheetBehavior.this.f52666e;
                        }
                        i2 = 6;
                    } else if (Math.abs(top - BottomSheetBehavior.this.f52663b) < Math.abs(top - BottomSheetBehavior.this.f52666e)) {
                        i = BottomSheetBehavior.this.f52663b;
                        i2 = 3;
                    } else {
                        i = BottomSheetBehavior.this.f52666e;
                    }
                } else {
                    if (!BottomSheetBehavior.this.f52679r) {
                        int top2 = view.getTop();
                        if (Math.abs(top2 - BottomSheetBehavior.this.f52664c) < Math.abs(top2 - BottomSheetBehavior.this.f52666e)) {
                            i = BottomSheetBehavior.this.f52664c;
                            i2 = 6;
                        }
                    }
                    i = BottomSheetBehavior.this.f52666e;
                }
                BottomSheetBehavior.this.m11132a(view, i2, i, true);
            }

            @Override // androidx.customview.p039a.C0972c.AbstractC0975a
            /* renamed from: a */
            public final void mo11094a(View view, int i, int i2) {
                BottomSheetBehavior.this.m11105e(i2);
            }

            @Override // androidx.customview.p039a.C0972c.AbstractC0975a
            /* renamed from: b */
            public final int mo11093b(View view) {
                return BottomSheetBehavior.this.f52668g ? BottomSheetBehavior.this.f52672k : BottomSheetBehavior.this.f52666e;
            }

            @Override // androidx.customview.p039a.C0972c.AbstractC0975a
            /* renamed from: b */
            public final boolean mo11092b(View view, int i) {
                if (BottomSheetBehavior.this.f52669h != 1 && !BottomSheetBehavior.this.f52677p) {
                    if (BottomSheetBehavior.this.f52669h == 3 && BottomSheetBehavior.this.f52676o == i) {
                        View view2 = BottomSheetBehavior.this.f52674m != null ? BottomSheetBehavior.this.f52674m.get() : null;
                        if (view2 != null && view2.canScrollVertically(-1)) {
                            return false;
                        }
                    }
                    return BottomSheetBehavior.this.f52673l != null && BottomSheetBehavior.this.f52673l.get() == view;
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
                return C0770a.m44521a(i, BottomSheetBehavior.this.m11120b(), BottomSheetBehavior.this.f52668g ? BottomSheetBehavior.this.f52672k : BottomSheetBehavior.this.f52666e);
            }
        };
        this.f52685x = context.getResources().getDimensionPixelSize(C14376a.C14380d.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.BottomSheetBehavior_Layout);
        this.f52686y = obtainStyledAttributes.hasValue(C14376a.C14388l.BottomSheetBehavior_Layout_shapeAppearance);
        boolean hasValue = obtainStyledAttributes.hasValue(C14376a.C14388l.BottomSheetBehavior_Layout_backgroundTint);
        if (hasValue) {
            m11136a(context, attributeSet, hasValue, C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.BottomSheetBehavior_Layout_backgroundTint));
        } else {
            m11136a(context, attributeSet, hasValue, (ColorStateList) null);
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f52650F = ofFloat;
        ofFloat.setDuration(500L);
        this.f52650F.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (BottomSheetBehavior.this.f52687z != null) {
                    BottomSheetBehavior.this.f52687z.m10443p(floatValue);
                }
            }
        });
        if (Build.VERSION.SDK_INT >= 21) {
            this.f52667f = obtainStyledAttributes.getDimension(C14376a.C14388l.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(C14376a.C14388l.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue == null || peekValue.data != -1) {
            m11119b(obtainStyledAttributes.getDimensionPixelSize(C14376a.C14388l.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            m11119b(peekValue.data);
        }
        m11121a(obtainStyledAttributes.getBoolean(C14376a.C14388l.BottomSheetBehavior_Layout_behavior_hideable, false));
        this.f52646B = obtainStyledAttributes.getBoolean(C14376a.C14388l.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false);
        boolean z = obtainStyledAttributes.getBoolean(C14376a.C14388l.BottomSheetBehavior_Layout_behavior_fitToContents, true);
        if (this.f52679r != z) {
            this.f52679r = z;
            if (this.f52673l != null) {
                m11109d();
            }
            m11108d((!this.f52679r || this.f52669h != 6) ? this.f52669h : 3);
            m11100g();
        }
        this.f52651H = obtainStyledAttributes.getBoolean(C14376a.C14388l.BottomSheetBehavior_Layout_behavior_skipCollapsed, false);
        this.f52652I = obtainStyledAttributes.getBoolean(C14376a.C14388l.BottomSheetBehavior_Layout_behavior_draggable, true);
        this.f52678q = obtainStyledAttributes.getInt(C14376a.C14388l.BottomSheetBehavior_Layout_behavior_saveFlags, 0);
        float f = obtainStyledAttributes.getFloat(C14376a.C14388l.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f);
        if (f <= BitmapDescriptorFactory.HUE_RED || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f52665d = f;
        if (this.f52673l != null) {
            m11106e();
        }
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(C14376a.C14388l.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (peekValue2 == null || peekValue2.type != 16) {
            m11102f(obtainStyledAttributes.getDimensionPixelOffset(C14376a.C14388l.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        } else {
            m11102f(peekValue2.data);
        }
        obtainStyledAttributes.recycle();
        this.f52681t = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* renamed from: a */
    public static <V extends View> BottomSheetBehavior<V> m11135a(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.C0702d) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.C0702d) layoutParams).f3200a;
            if (!(behavior instanceof BottomSheetBehavior)) {
                throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
            }
            return (BottomSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    /* renamed from: a */
    private void m11136a(Context context, AttributeSet attributeSet, boolean z, ColorStateList colorStateList) {
        if (this.f52686y) {
            this.f52647C = C14678m.m10426a(context, attributeSet, C14376a.C14378b.bottomSheetStyle, f52644G).m10421a();
            C14670h c14670h = new C14670h(this.f52647C);
            this.f52687z = c14670h;
            c14670h.m10479a(context);
            if (z && colorStateList != null) {
                this.f52687z.m10456g(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(16842801, typedValue, true);
            this.f52687z.setTint(typedValue.data);
        }
    }

    /* renamed from: a */
    private void m11131a(V v, C0869c.C0870a c0870a, int i) {
        C0926v.m44125a(v, c0870a, m11097i(i));
    }

    /* renamed from: b */
    private int m11117b(V v, int i) {
        return C0926v.m44118a(v, v.getResources().getString(i), m11097i(6));
    }

    /* renamed from: b */
    private View m11118b(View view) {
        if (C0926v.m44074y(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View m11118b = m11118b(viewGroup.getChildAt(i));
            if (m11118b != null) {
                return m11118b;
            }
        }
        return null;
    }

    /* renamed from: b */
    public void m11114b(boolean z) {
        V v;
        if (this.f52673l != null) {
            m11109d();
            if (this.f52669h != 4 || (v = this.f52673l.get()) == null) {
                return;
            }
            v.requestLayout();
        }
    }

    /* renamed from: c */
    private int m11113c() {
        int i;
        return this.f52683v ? Math.min(Math.max(this.f52684w, this.f52672k - ((this.f52671j * 9) / 16)), this.f52656M) : (this.f52646B || (i = this.f52645A) <= 0) ? this.f52682u : Math.max(this.f52682u, i + this.f52685x);
    }

    /* renamed from: c */
    private void m11110c(boolean z) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.f52673l;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (Build.VERSION.SDK_INT >= 16 && z) {
            if (this.f52659P != null) {
                return;
            }
            this.f52659P = new HashMap(childCount);
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = coordinatorLayout.getChildAt(i);
            if (childAt != this.f52673l.get()) {
                if (z) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        this.f52659P.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    }
                    if (this.f52680s) {
                        C0926v.m44102c(childAt, 4);
                    }
                } else if (this.f52680s && (map = this.f52659P) != null && map.containsKey(childAt)) {
                    C0926v.m44102c(childAt, this.f52659P.get(childAt).intValue());
                }
            }
        }
        if (!z) {
            this.f52659P = null;
        } else if (this.f52680s) {
            this.f52673l.get().sendAccessibilityEvent(8);
        }
    }

    /* renamed from: d */
    private void m11109d() {
        int m11113c = m11113c();
        if (this.f52679r) {
            this.f52666e = Math.max(this.f52672k - m11113c, this.f52663b);
        } else {
            this.f52666e = this.f52672k - m11113c;
        }
    }

    /* renamed from: e */
    private void m11106e() {
        this.f52664c = (int) (this.f52672k * (1.0f - this.f52665d));
    }

    /* renamed from: f */
    private void m11103f() {
        this.f52676o = -1;
        VelocityTracker velocityTracker = this.f52657N;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f52657N = null;
        }
    }

    /* renamed from: f */
    private void m11102f(int i) {
        if (i >= 0) {
            this.f52662a = i;
            return;
        }
        throw new IllegalArgumentException("offset must be greater than or equal to 0");
    }

    /* renamed from: g */
    private void m11100g() {
        V v;
        WeakReference<V> weakReference = this.f52673l;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        C0926v.m44100d(v, 524288);
        C0926v.m44100d(v, 262144);
        C0926v.m44100d(v, 1048576);
        int i = this.f52660Q;
        if (i != -1) {
            C0926v.m44100d(v, i);
        }
        int i2 = 6;
        if (this.f52669h != 6) {
            this.f52660Q = m11117b((BottomSheetBehavior<V>) v, C14376a.C14386j.bottomsheet_action_expand_halfway);
        }
        if (this.f52668g && this.f52669h != 5) {
            m11131a((BottomSheetBehavior<V>) v, C0869c.C0870a.f3678u, 5);
        }
        int i3 = this.f52669h;
        if (i3 == 3) {
            if (this.f52679r) {
                i2 = 4;
            }
            m11131a((BottomSheetBehavior<V>) v, C0869c.C0870a.f3677t, i2);
        } else if (i3 == 4) {
            if (this.f52679r) {
                i2 = 3;
            }
            m11131a((BottomSheetBehavior<V>) v, C0869c.C0870a.f3676s, i2);
        } else if (i3 != 6) {
        } else {
            m11131a((BottomSheetBehavior<V>) v, C0869c.C0870a.f3677t, 4);
            m11131a((BottomSheetBehavior<V>) v, C0869c.C0870a.f3676s, 3);
        }
    }

    /* renamed from: g */
    private void m11099g(final int i) {
        final V v = this.f52673l.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent == null || !parent.isLayoutRequested() || !C0926v.m44154E(v)) {
            m11133a((View) v, i);
        } else {
            v.post(new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                @Override // java.lang.Runnable
                public final void run() {
                    BottomSheetBehavior.this.m11133a(v, i);
                }
            });
        }
    }

    /* renamed from: h */
    private void m11098h(int i) {
        ValueAnimator valueAnimator;
        if (i == 2) {
            return;
        }
        boolean z = i == 3;
        if (this.f52648D == z) {
            return;
        }
        this.f52648D = z;
        if (this.f52687z == null || (valueAnimator = this.f52650F) == null) {
            return;
        }
        if (valueAnimator.isRunning()) {
            this.f52650F.reverse();
            return;
        }
        float f = z ? 0.0f : 1.0f;
        this.f52650F.setFloatValues(1.0f - f, f);
        this.f52650F.start();
    }

    /* renamed from: i */
    private AbstractC0878f m11097i(final int i) {
        return new AbstractC0878f() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.core.view.p038a.AbstractC0878f
            /* renamed from: a */
            public final boolean mo11089a(View view) {
                BottomSheetBehavior.this.m11112c(i);
                return true;
            }
        };
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo11137a() {
        super.mo11137a();
        this.f52673l = null;
        this.f52670i = null;
    }

    /* renamed from: a */
    final void m11133a(View view, int i) {
        int i2;
        int i3;
        if (i == 4) {
            i2 = this.f52666e;
        } else if (i == 6) {
            i2 = this.f52664c;
            if (this.f52679r && i2 <= (i3 = this.f52663b)) {
                i2 = i3;
                i = 3;
            }
        } else if (i == 3) {
            i2 = m11120b();
        } else if (!this.f52668g || i != 5) {
            throw new IllegalArgumentException("Illegal state argument: ".concat(String.valueOf(i)));
        } else {
            i2 = this.f52672k;
        }
        m11132a(view, i, i2, false);
    }

    /* renamed from: a */
    final void m11132a(View view, int i, int i2, boolean z) {
        C0972c c0972c = this.f52670i;
        if (!(c0972c != null && (!z ? c0972c.m43897a(view, view.getLeft(), i2) : c0972c.m43903a(view.getLeft(), i2)))) {
            m11108d(i);
            return;
        }
        m11108d(2);
        m11098h(i);
        if (this.f52649E == null) {
            this.f52649E = new RunnableC14454b(view, i);
        }
        if (((RunnableC14454b) this.f52649E).f52699d) {
            this.f52649E.f52696a = i;
            return;
        }
        this.f52649E.f52696a = i;
        C0926v.m44117a(view, this.f52649E);
        ((RunnableC14454b) this.f52649E).f52699d = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo9842a(CoordinatorLayout.C0702d c0702d) {
        super.mo9842a(c0702d);
        this.f52673l = null;
        this.f52670i = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo11130a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.mo11130a(coordinatorLayout, (CoordinatorLayout) v, savedState.getSuperState());
        int i = this.f52678q;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.f52682u = savedState.peekHeight;
            }
            int i2 = this.f52678q;
            if (i2 == -1 || (i2 & 2) == 2) {
                this.f52679r = savedState.fitToContents;
            }
            int i3 = this.f52678q;
            if (i3 == -1 || (i3 & 4) == 4) {
                this.f52668g = savedState.hideable;
            }
            int i4 = this.f52678q;
            if (i4 == -1 || (i4 & 8) == 8) {
                this.f52651H = savedState.skipCollapsed;
            }
        }
        if (savedState.state == 1 || savedState.state == 2) {
            this.f52669h = 4;
        } else {
            this.f52669h = savedState.state;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo11128a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        int i2;
        float f;
        int i3 = 3;
        if (v.getTop() == m11120b()) {
            m11108d(3);
            return;
        }
        WeakReference<View> weakReference = this.f52674m;
        if (weakReference == null || view != weakReference.get() || !this.f52655L) {
            return;
        }
        if (this.f52654K > 0) {
            if (this.f52679r) {
                i2 = this.f52663b;
            } else {
                int top = v.getTop();
                i2 = this.f52664c;
                if (top <= i2) {
                    i2 = this.f52662a;
                }
                i3 = 6;
            }
            m11132a((View) v, i3, i2, false);
            this.f52655L = false;
        }
        if (this.f52668g) {
            VelocityTracker velocityTracker = this.f52657N;
            if (velocityTracker == null) {
                f = 0.0f;
            } else {
                velocityTracker.computeCurrentVelocity(1000, this.f52681t);
                f = this.f52657N.getYVelocity(this.f52676o);
            }
            if (m11134a(v, f)) {
                i2 = this.f52672k;
                i3 = 5;
                m11132a((View) v, i3, i2, false);
                this.f52655L = false;
            }
        }
        if (this.f52654K == 0) {
            int top2 = v.getTop();
            if (!this.f52679r) {
                int i4 = this.f52664c;
                if (top2 < i4) {
                    if (top2 < Math.abs(top2 - this.f52666e)) {
                        i2 = this.f52662a;
                    } else {
                        i2 = this.f52664c;
                    }
                } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.f52666e)) {
                    i2 = this.f52664c;
                } else {
                    i2 = this.f52666e;
                    i3 = 4;
                }
                i3 = 6;
            } else if (Math.abs(top2 - this.f52663b) < Math.abs(top2 - this.f52666e)) {
                i2 = this.f52663b;
            } else {
                i2 = this.f52666e;
                i3 = 4;
            }
        } else {
            if (!this.f52679r) {
                int top3 = v.getTop();
                if (Math.abs(top3 - this.f52664c) < Math.abs(top3 - this.f52666e)) {
                    i2 = this.f52664c;
                    i3 = 6;
                }
            }
            i2 = this.f52666e;
            i3 = 4;
        }
        m11132a((View) v, i3, i2, false);
        this.f52655L = false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo11127a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo11126a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.f52674m;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < m11120b()) {
                iArr[1] = top - m11120b();
                C0926v.m44098e(v, -iArr[1]);
                m11108d(3);
            } else if (!this.f52652I) {
                return;
            } else {
                iArr[1] = i2;
                C0926v.m44098e(v, -i2);
                m11108d(1);
            }
        } else if (i2 < 0 && !view.canScrollVertically(-1)) {
            int i5 = this.f52666e;
            if (i4 > i5 && !this.f52668g) {
                iArr[1] = top - i5;
                C0926v.m44098e(v, -iArr[1]);
                m11108d(4);
            } else if (!this.f52652I) {
                return;
            } else {
                iArr[1] = i2;
                C0926v.m44098e(v, -i2);
                m11108d(1);
            }
        }
        m11105e(v.getTop());
        this.f52654K = i2;
        this.f52655L = true;
    }

    /* renamed from: a */
    public final void m11124a(AbstractC14453a abstractC14453a) {
        if (!this.f52675n.contains(abstractC14453a)) {
            this.f52675n.add(abstractC14453a);
        }
    }

    /* renamed from: a */
    public final void m11121a(boolean z) {
        if (this.f52668g != z) {
            this.f52668g = z;
            if (!z && this.f52669h == 5) {
                m11112c(4);
            }
            m11100g();
        }
    }

    /* renamed from: a */
    final boolean m11134a(View view, float f) {
        if (this.f52651H) {
            return true;
        }
        if (view.getTop() < this.f52666e) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f * 0.1f)) - ((float) this.f52666e)) / ((float) m11113c()) > 0.5f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo9852a(CoordinatorLayout coordinatorLayout, V v, int i) {
        C14670h c14670h;
        if (C0926v.m44080s(coordinatorLayout) && !C0926v.m44080s(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.f52673l == null) {
            this.f52684w = coordinatorLayout.getResources().getDimensionPixelSize(C14376a.C14380d.design_bottom_sheet_peek_height_min);
            if (Build.VERSION.SDK_INT >= 29 && !this.f52646B && !this.f52683v) {
                C14654r.m10496a(v, new C14654r.AbstractC14659a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
                    @Override // com.google.android.material.internal.C14654r.AbstractC14659a
                    /* renamed from: a */
                    public final C0889ac mo10490a(View view, C0889ac c0889ac, C14654r.C14660b c14660b) {
                        BottomSheetBehavior.this.f52645A = c0889ac.f3696b.mo44208i().f3566e;
                        BottomSheetBehavior.this.m11114b(false);
                        return c0889ac;
                    }
                });
            }
            this.f52673l = new WeakReference<>(v);
            if (this.f52686y && (c14670h = this.f52687z) != null) {
                C0926v.m44128a(v, c14670h);
            }
            C14670h c14670h2 = this.f52687z;
            if (c14670h2 != null) {
                float f = this.f52667f;
                float f2 = f;
                if (f == -1.0f) {
                    f2 = C0926v.m44085n(v);
                }
                c14670h2.m10439r(f2);
                boolean z = this.f52669h == 3;
                this.f52648D = z;
                this.f52687z.m10443p(z ? 0.0f : 1.0f);
            }
            m11100g();
            if (C0926v.m44099e(v) == 0) {
                C0926v.m44102c((View) v, 1);
            }
        }
        if (this.f52670i == null) {
            this.f52670i = C0972c.m43894a(coordinatorLayout, this.f52661R);
        }
        int top = v.getTop();
        coordinatorLayout.m44655b(v, i);
        this.f52671j = coordinatorLayout.getWidth();
        this.f52672k = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.f52656M = height;
        this.f52663b = Math.max(0, this.f52672k - height);
        m11106e();
        m11109d();
        int i2 = this.f52669h;
        if (i2 == 3) {
            C0926v.m44098e(v, m11120b());
        } else if (i2 == 6) {
            C0926v.m44098e(v, this.f52664c);
        } else if (this.f52668g && i2 == 5) {
            C0926v.m44098e(v, this.f52672k);
        } else if (i2 == 4) {
            C0926v.m44098e(v, this.f52666e);
        } else if (i2 == 1 || i2 == 2) {
            C0926v.m44098e(v, top - v.getTop());
        }
        this.f52674m = new WeakReference<>(m11118b(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo10175a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C0972c c0972c;
        if (!v.isShown() || !this.f52652I) {
            this.f52653J = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m11103f();
        }
        if (this.f52657N == null) {
            this.f52657N = VelocityTracker.obtain();
        }
        this.f52657N.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.f52658O = (int) motionEvent.getY();
            if (this.f52669h != 2) {
                WeakReference<View> weakReference = this.f52674m;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.m44663a(view, x, this.f52658O)) {
                    this.f52676o = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f52677p = true;
                }
            }
            this.f52653J = this.f52676o == -1 && !coordinatorLayout.m44663a(v, x, this.f52658O);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f52677p = false;
            this.f52676o = -1;
            if (this.f52653J) {
                this.f52653J = false;
                return false;
            }
        }
        if (!this.f52653J && (c0972c = this.f52670i) != null && c0972c.m43900a(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f52674m;
        View view2 = null;
        if (weakReference2 != null) {
            view2 = weakReference2.get();
        }
        return actionMasked == 2 && view2 != null && !this.f52653J && this.f52669h != 1 && !coordinatorLayout.m44663a(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) && this.f52670i != null && Math.abs(((float) this.f52658O) - motionEvent.getY()) > ((float) this.f52670i.f3898b);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo11129a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        WeakReference<View> weakReference = this.f52674m;
        if (weakReference == null || view != weakReference.get()) {
            return false;
        }
        return this.f52669h != 3 || super.mo11129a(coordinatorLayout, v, view, f, f2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo11125a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        boolean z = false;
        this.f52654K = 0;
        this.f52655L = false;
        if ((i & 2) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final int m11120b() {
        return this.f52679r ? this.f52663b : this.f52662a;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public final Parcelable mo11116b(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.mo11116b(coordinatorLayout, (CoordinatorLayout) v), (BottomSheetBehavior<?>) this);
    }

    /* renamed from: b */
    public final void m11119b(int i) {
        boolean z;
        if (i == -1) {
            if (!this.f52683v) {
                this.f52683v = true;
                z = true;
            }
            z = false;
        } else {
            if (this.f52683v || this.f52682u != i) {
                this.f52683v = false;
                this.f52682u = Math.max(0, i);
                z = true;
            }
            z = false;
        }
        if (z) {
            m11114b(false);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public final boolean mo9836b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f52669h == 1 && actionMasked == 0) {
            return true;
        }
        C0972c c0972c = this.f52670i;
        if (c0972c != null) {
            c0972c.m43888b(motionEvent);
        }
        if (actionMasked == 0) {
            m11103f();
        }
        if (this.f52657N == null) {
            this.f52657N = VelocityTracker.obtain();
        }
        this.f52657N.addMovement(motionEvent);
        if (this.f52670i != null && actionMasked == 2 && !this.f52653J && Math.abs(this.f52658O - motionEvent.getY()) > this.f52670i.f3898b) {
            this.f52670i.m43898a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f52653J;
    }

    /* renamed from: c */
    public final void m11112c(int i) {
        if (i == this.f52669h) {
            return;
        }
        if (this.f52673l != null) {
            m11099g(i);
        } else if (i != 4 && i != 3 && i != 6 && (!this.f52668g || i != 5)) {
        } else {
            this.f52669h = i;
        }
    }

    /* renamed from: d */
    final void m11108d(int i) {
        if (this.f52669h == i) {
            return;
        }
        this.f52669h = i;
        WeakReference<V> weakReference = this.f52673l;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        if (i == 3) {
            m11110c(true);
        } else if (i == 6 || i == 5 || i == 4) {
            m11110c(false);
        }
        m11098h(i);
        for (int i2 = 0; i2 < this.f52675n.size(); i2++) {
            this.f52675n.get(i2).mo11076a(i);
        }
        m11100g();
    }

    /* renamed from: e */
    final void m11105e(int i) {
        if (this.f52673l.get() == null || this.f52675n.isEmpty()) {
            return;
        }
        int i2 = this.f52666e;
        if (i <= i2 && i2 != m11120b()) {
            m11120b();
        }
        for (int i3 = 0; i3 < this.f52675n.size(); i3++) {
            this.f52675n.get(i3);
        }
    }
}
