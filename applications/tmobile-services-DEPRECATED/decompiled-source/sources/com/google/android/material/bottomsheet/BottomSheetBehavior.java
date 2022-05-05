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
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.C1027R;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior.class */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: Q */
    private static final int f10203Q = C1027R.style.Widget_Design_BottomSheet_Modal;
    @Nullable

    /* renamed from: A */
    ViewDragHelper f10204A;

    /* renamed from: B */
    private boolean f10205B;

    /* renamed from: C */
    private int f10206C;

    /* renamed from: D */
    private boolean f10207D;

    /* renamed from: E */
    private int f10208E;

    /* renamed from: F */
    int f10209F;

    /* renamed from: G */
    int f10210G;
    @Nullable

    /* renamed from: H */
    WeakReference<V> f10211H;
    @Nullable

    /* renamed from: I */
    WeakReference<View> f10212I;
    @NonNull

    /* renamed from: J */
    private final ArrayList<BottomSheetCallback> f10213J;
    @Nullable

    /* renamed from: K */
    private VelocityTracker f10214K;

    /* renamed from: L */
    int f10215L;

    /* renamed from: M */
    private int f10216M;

    /* renamed from: N */
    boolean f10217N;
    @Nullable

    /* renamed from: O */
    private Map<View, Integer> f10218O;

    /* renamed from: P */
    private final ViewDragHelper.Callback f10219P;

    /* renamed from: a */
    private int f10220a;

    /* renamed from: b */
    private boolean f10221b;

    /* renamed from: c */
    private boolean f10222c;

    /* renamed from: d */
    private float f10223d;

    /* renamed from: e */
    private int f10224e;

    /* renamed from: f */
    private boolean f10225f;

    /* renamed from: g */
    private int f10226g;

    /* renamed from: h */
    private int f10227h;

    /* renamed from: i */
    private boolean f10228i;

    /* renamed from: j */
    private MaterialShapeDrawable f10229j;

    /* renamed from: k */
    private int f10230k;

    /* renamed from: l */
    private boolean f10231l;

    /* renamed from: m */
    private ShapeAppearanceModel f10232m;

    /* renamed from: n */
    private boolean f10233n;

    /* renamed from: o */
    private BottomSheetBehavior<V>.SettleRunnable f10234o;
    @Nullable

    /* renamed from: p */
    private ValueAnimator f10235p;

    /* renamed from: q */
    int f10236q;

    /* renamed from: r */
    int f10237r;

    /* renamed from: s */
    int f10238s;

    /* renamed from: t */
    float f10239t;

    /* renamed from: u */
    int f10240u;

    /* renamed from: v */
    float f10241v;

    /* renamed from: w */
    boolean f10242w;

    /* renamed from: x */
    private boolean f10243x;

    /* renamed from: y */
    private boolean f10244y;

    /* renamed from: z */
    int f10245z;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback.class */
    public static abstract class BottomSheetCallback {
        /* renamed from: a */
        public abstract void mo10363a(@NonNull View view, float f);

        /* renamed from: b */
        public abstract void mo10362b(@NonNull View view, int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SaveFlags.class */
    public @interface SaveFlags {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.SavedState.1
            @Nullable
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: h */
        final int f10254h;

        /* renamed from: i */
        int f10255i;

        /* renamed from: j */
        boolean f10256j;

        /* renamed from: k */
        boolean f10257k;

        /* renamed from: l */
        boolean f10258l;

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f10254h = parcel.readInt();
            this.f10255i = parcel.readInt();
            boolean z = false;
            this.f10256j = parcel.readInt() == 1;
            this.f10257k = parcel.readInt() == 1;
            this.f10258l = parcel.readInt() == 1 ? true : z;
        }

        public SavedState(Parcelable parcelable, @NonNull BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f10254h = bottomSheetBehavior.f10245z;
            this.f10255i = ((BottomSheetBehavior) bottomSheetBehavior).f10224e;
            this.f10256j = ((BottomSheetBehavior) bottomSheetBehavior).f10221b;
            this.f10257k = bottomSheetBehavior.f10242w;
            this.f10258l = ((BottomSheetBehavior) bottomSheetBehavior).f10243x;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f10254h);
            parcel.writeInt(this.f10255i);
            parcel.writeInt(this.f10256j ? 1 : 0);
            parcel.writeInt(this.f10257k ? 1 : 0);
            parcel.writeInt(this.f10258l ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable.class */
    public class SettleRunnable implements Runnable {

        /* renamed from: f */
        private final View f10259f;

        /* renamed from: g */
        private boolean f10260g;

        /* renamed from: h */
        int f10261h;

        SettleRunnable(View view, int i) {
            this.f10259f = view;
            this.f10261h = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper viewDragHelper = BottomSheetBehavior.this.f10204A;
            if (viewDragHelper == null || !viewDragHelper.m18704n(true)) {
                BottomSheetBehavior.this.m10402p0(this.f10261h);
            } else {
                ViewCompat.m19199f0(this.f10259f, this);
            }
            this.f10260g = false;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$State.class */
    public @interface State {
    }

    public BottomSheetBehavior() {
        this.f10220a = 0;
        this.f10221b = true;
        this.f10222c = false;
        this.f10234o = null;
        this.f10239t = 0.5f;
        this.f10241v = -1.0f;
        this.f10244y = true;
        this.f10245z = 4;
        this.f10213J = new ArrayList<>();
        this.f10219P = new ViewDragHelper.Callback() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            /* renamed from: n */
            private boolean m10381n(@NonNull View view) {
                int top = view.getTop();
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return top > (bottomSheetBehavior.f10210G + bottomSheetBehavior.m10423W()) / 2;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: a */
            public int mo10388a(@NonNull View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: b */
            public int mo10387b(@NonNull View view, int i, int i2) {
                int W = BottomSheetBehavior.this.m10423W();
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return MathUtils.m19451b(i, W, bottomSheetBehavior.f10242w ? bottomSheetBehavior.f10210G : bottomSheetBehavior.f10240u);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: e */
            public int mo10386e(@NonNull View view) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return bottomSheetBehavior.f10242w ? bottomSheetBehavior.f10210G : bottomSheetBehavior.f10240u;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: j */
            public void mo10385j(int i) {
                if (i == 1 && BottomSheetBehavior.this.f10244y) {
                    BottomSheetBehavior.this.m10402p0(1);
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: k */
            public void mo10384k(@NonNull View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.m10426T(i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: l */
            public void mo10383l(@NonNull View view, float f, float f2) {
                int i;
                int i2 = 4;
                if (f2 < 0.0f) {
                    if (BottomSheetBehavior.this.f10221b) {
                        i = BottomSheetBehavior.this.f10237r;
                    } else {
                        int top = view.getTop();
                        BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                        i = bottomSheetBehavior.f10238s;
                        if (top <= i) {
                            i = bottomSheetBehavior.f10236q;
                        }
                        i2 = 6;
                    }
                    i2 = 3;
                } else {
                    BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                    if (!bottomSheetBehavior2.f10242w || !bottomSheetBehavior2.m10396t0(view, f2)) {
                        if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                            int top2 = view.getTop();
                            if (!BottomSheetBehavior.this.f10221b) {
                                BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                                int i3 = bottomSheetBehavior3.f10238s;
                                if (top2 < i3) {
                                    if (top2 < Math.abs(top2 - bottomSheetBehavior3.f10240u)) {
                                        i = BottomSheetBehavior.this.f10236q;
                                        i2 = 3;
                                    } else {
                                        i = BottomSheetBehavior.this.f10238s;
                                    }
                                } else if (Math.abs(top2 - i3) < Math.abs(top2 - BottomSheetBehavior.this.f10240u)) {
                                    i = BottomSheetBehavior.this.f10238s;
                                } else {
                                    i = BottomSheetBehavior.this.f10240u;
                                }
                                i2 = 6;
                            } else if (Math.abs(top2 - BottomSheetBehavior.this.f10237r) < Math.abs(top2 - BottomSheetBehavior.this.f10240u)) {
                                i = BottomSheetBehavior.this.f10237r;
                                i2 = 3;
                            } else {
                                i = BottomSheetBehavior.this.f10240u;
                            }
                        } else if (BottomSheetBehavior.this.f10221b) {
                            i = BottomSheetBehavior.this.f10240u;
                        } else {
                            int top3 = view.getTop();
                            if (Math.abs(top3 - BottomSheetBehavior.this.f10238s) < Math.abs(top3 - BottomSheetBehavior.this.f10240u)) {
                                i = BottomSheetBehavior.this.f10238s;
                                i2 = 6;
                            } else {
                                i = BottomSheetBehavior.this.f10240u;
                            }
                        }
                    } else if ((Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) && !m10381n(view)) {
                        if (BottomSheetBehavior.this.f10221b) {
                            i = BottomSheetBehavior.this.f10237r;
                        } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.f10236q) < Math.abs(view.getTop() - BottomSheetBehavior.this.f10238s)) {
                            i = BottomSheetBehavior.this.f10236q;
                        } else {
                            i = BottomSheetBehavior.this.f10238s;
                            i2 = 6;
                        }
                        i2 = 3;
                    } else {
                        i = BottomSheetBehavior.this.f10210G;
                        i2 = 5;
                    }
                }
                BottomSheetBehavior.this.m10395u0(view, i2, i, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: m */
            public boolean mo10382m(@NonNull View view, int i) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i2 = bottomSheetBehavior.f10245z;
                boolean z = true;
                if (i2 == 1 || bottomSheetBehavior.f10217N) {
                    return false;
                }
                if (i2 == 3 && bottomSheetBehavior.f10215L == i) {
                    WeakReference<View> weakReference = bottomSheetBehavior.f10212I;
                    View view2 = weakReference != null ? weakReference.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                WeakReference<V> weakReference2 = BottomSheetBehavior.this.f10211H;
                if (weakReference2 == null || weakReference2.get() != view) {
                    z = false;
                }
                return z;
            }
        };
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        this.f10220a = 0;
        this.f10221b = true;
        this.f10222c = false;
        this.f10234o = null;
        this.f10239t = 0.5f;
        this.f10241v = -1.0f;
        this.f10244y = true;
        this.f10245z = 4;
        this.f10213J = new ArrayList<>();
        this.f10219P = new ViewDragHelper.Callback() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            /* renamed from: n */
            private boolean m10381n(@NonNull View view) {
                int top = view.getTop();
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return top > (bottomSheetBehavior.f10210G + bottomSheetBehavior.m10423W()) / 2;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: a */
            public int mo10388a(@NonNull View view, int i2, int i22) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: b */
            public int mo10387b(@NonNull View view, int i2, int i22) {
                int W = BottomSheetBehavior.this.m10423W();
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return MathUtils.m19451b(i2, W, bottomSheetBehavior.f10242w ? bottomSheetBehavior.f10210G : bottomSheetBehavior.f10240u);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: e */
            public int mo10386e(@NonNull View view) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return bottomSheetBehavior.f10242w ? bottomSheetBehavior.f10210G : bottomSheetBehavior.f10240u;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: j */
            public void mo10385j(int i2) {
                if (i2 == 1 && BottomSheetBehavior.this.f10244y) {
                    BottomSheetBehavior.this.m10402p0(1);
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: k */
            public void mo10384k(@NonNull View view, int i2, int i22, int i3, int i4) {
                BottomSheetBehavior.this.m10426T(i22);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: l */
            public void mo10383l(@NonNull View view, float f, float f2) {
                int i2;
                int i22 = 4;
                if (f2 < 0.0f) {
                    if (BottomSheetBehavior.this.f10221b) {
                        i2 = BottomSheetBehavior.this.f10237r;
                    } else {
                        int top = view.getTop();
                        BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                        i2 = bottomSheetBehavior.f10238s;
                        if (top <= i2) {
                            i2 = bottomSheetBehavior.f10236q;
                        }
                        i22 = 6;
                    }
                    i22 = 3;
                } else {
                    BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                    if (!bottomSheetBehavior2.f10242w || !bottomSheetBehavior2.m10396t0(view, f2)) {
                        if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                            int top2 = view.getTop();
                            if (!BottomSheetBehavior.this.f10221b) {
                                BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                                int i3 = bottomSheetBehavior3.f10238s;
                                if (top2 < i3) {
                                    if (top2 < Math.abs(top2 - bottomSheetBehavior3.f10240u)) {
                                        i2 = BottomSheetBehavior.this.f10236q;
                                        i22 = 3;
                                    } else {
                                        i2 = BottomSheetBehavior.this.f10238s;
                                    }
                                } else if (Math.abs(top2 - i3) < Math.abs(top2 - BottomSheetBehavior.this.f10240u)) {
                                    i2 = BottomSheetBehavior.this.f10238s;
                                } else {
                                    i2 = BottomSheetBehavior.this.f10240u;
                                }
                                i22 = 6;
                            } else if (Math.abs(top2 - BottomSheetBehavior.this.f10237r) < Math.abs(top2 - BottomSheetBehavior.this.f10240u)) {
                                i2 = BottomSheetBehavior.this.f10237r;
                                i22 = 3;
                            } else {
                                i2 = BottomSheetBehavior.this.f10240u;
                            }
                        } else if (BottomSheetBehavior.this.f10221b) {
                            i2 = BottomSheetBehavior.this.f10240u;
                        } else {
                            int top3 = view.getTop();
                            if (Math.abs(top3 - BottomSheetBehavior.this.f10238s) < Math.abs(top3 - BottomSheetBehavior.this.f10240u)) {
                                i2 = BottomSheetBehavior.this.f10238s;
                                i22 = 6;
                            } else {
                                i2 = BottomSheetBehavior.this.f10240u;
                            }
                        }
                    } else if ((Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) && !m10381n(view)) {
                        if (BottomSheetBehavior.this.f10221b) {
                            i2 = BottomSheetBehavior.this.f10237r;
                        } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.f10236q) < Math.abs(view.getTop() - BottomSheetBehavior.this.f10238s)) {
                            i2 = BottomSheetBehavior.this.f10236q;
                        } else {
                            i2 = BottomSheetBehavior.this.f10238s;
                            i22 = 6;
                        }
                        i22 = 3;
                    } else {
                        i2 = BottomSheetBehavior.this.f10210G;
                        i22 = 5;
                    }
                }
                BottomSheetBehavior.this.m10395u0(view, i22, i2, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /* renamed from: m */
            public boolean mo10382m(@NonNull View view, int i2) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i22 = bottomSheetBehavior.f10245z;
                boolean z = true;
                if (i22 == 1 || bottomSheetBehavior.f10217N) {
                    return false;
                }
                if (i22 == 3 && bottomSheetBehavior.f10215L == i2) {
                    WeakReference<View> weakReference = bottomSheetBehavior.f10212I;
                    View view2 = weakReference != null ? weakReference.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                WeakReference<V> weakReference2 = BottomSheetBehavior.this.f10211H;
                if (weakReference2 == null || weakReference2.get() != view) {
                    z = false;
                }
                return z;
            }
        };
        this.f10227h = context.getResources().getDimensionPixelSize(C1027R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1027R.styleable.BottomSheetBehavior_Layout);
        this.f10228i = obtainStyledAttributes.hasValue(C1027R.styleable.BottomSheetBehavior_Layout_shapeAppearance);
        boolean hasValue = obtainStyledAttributes.hasValue(C1027R.styleable.BottomSheetBehavior_Layout_backgroundTint);
        if (hasValue) {
            m10428R(context, attributeSet, hasValue, MaterialResources.m9394a(context, obtainStyledAttributes, C1027R.styleable.BottomSheetBehavior_Layout_backgroundTint));
        } else {
            m10429Q(context, attributeSet, hasValue);
        }
        m10427S();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f10241v = obtainStyledAttributes.getDimension(C1027R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(C1027R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue == null || (i = peekValue.data) != -1) {
            m10408k0(obtainStyledAttributes.getDimensionPixelSize(C1027R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            m10408k0(i);
        }
        m10409j0(obtainStyledAttributes.getBoolean(C1027R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        m10412h0(obtainStyledAttributes.getBoolean(C1027R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        m10413g0(obtainStyledAttributes.getBoolean(C1027R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        m10405n0(obtainStyledAttributes.getBoolean(C1027R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        m10415e0(obtainStyledAttributes.getBoolean(C1027R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        m10406m0(obtainStyledAttributes.getInt(C1027R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        m10411i0(obtainStyledAttributes.getFloat(C1027R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(C1027R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (peekValue2 == null || peekValue2.type != 16) {
            m10414f0(obtainStyledAttributes.getDimensionPixelOffset(C1027R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        } else {
            m10414f0(peekValue2.data);
        }
        obtainStyledAttributes.recycle();
        this.f10223d = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* renamed from: L */
    private void m10434L(V v, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, final int i) {
        ViewCompat.m19191j0(v, accessibilityActionCompat, null, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            /* renamed from: a */
            public boolean mo10380a(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                BottomSheetBehavior.this.m10403o0(i);
                return true;
            }
        });
    }

    /* renamed from: N */
    private void m10432N() {
        int P = m10430P();
        if (this.f10221b) {
            this.f10240u = Math.max(this.f10210G - P, this.f10237r);
        } else {
            this.f10240u = this.f10210G - P;
        }
    }

    /* renamed from: O */
    private void m10431O() {
        this.f10238s = (int) (this.f10210G * (1.0f - this.f10239t));
    }

    /* renamed from: P */
    private int m10430P() {
        int i;
        return this.f10225f ? Math.min(Math.max(this.f10226g, this.f10210G - ((this.f10209F * 9) / 16)), this.f10208E) : (this.f10231l || (i = this.f10230k) <= 0) ? this.f10224e : Math.max(this.f10224e, i + this.f10227h);
    }

    /* renamed from: Q */
    private void m10429Q(@NonNull Context context, AttributeSet attributeSet, boolean z) {
        m10428R(context, attributeSet, z, null);
    }

    /* renamed from: R */
    private void m10428R(@NonNull Context context, AttributeSet attributeSet, boolean z, @Nullable ColorStateList colorStateList) {
        if (this.f10228i) {
            this.f10232m = ShapeAppearanceModel.m9273e(context, attributeSet, C1027R.attr.bottomSheetStyle, f10203Q).m9232m();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f10232m);
            this.f10229j = materialShapeDrawable;
            materialShapeDrawable.m9338M(context);
            if (!z || colorStateList == null) {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16842801, typedValue, true);
                this.f10229j.setTint(typedValue.data);
                return;
            }
            this.f10229j.m9328W(colorStateList);
        }
    }

    /* renamed from: S */
    private void m10427S() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f10235p = ofFloat;
        ofFloat.setDuration(500L);
        this.f10235p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (BottomSheetBehavior.this.f10229j != null) {
                    BottomSheetBehavior.this.f10229j.m9327X(floatValue);
                }
            }
        });
    }

    @NonNull
    /* renamed from: V */
    public static <V extends View> BottomSheetBehavior<V> m10424V(@NonNull V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior f = ((CoordinatorLayout.LayoutParams) layoutParams).m19892f();
            if (f instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) f;
            }
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    /* renamed from: Y */
    private float m10421Y() {
        VelocityTracker velocityTracker = this.f10214K;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f10223d);
        return this.f10214K.getYVelocity(this.f10215L);
    }

    /* renamed from: c0 */
    private void m10417c0() {
        this.f10215L = -1;
        VelocityTracker velocityTracker = this.f10214K;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f10214K = null;
        }
    }

    /* renamed from: d0 */
    private void m10416d0(@NonNull SavedState savedState) {
        int i = this.f10220a;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.f10224e = savedState.f10255i;
            }
            int i2 = this.f10220a;
            if (i2 == -1 || (i2 & 2) == 2) {
                this.f10221b = savedState.f10256j;
            }
            int i3 = this.f10220a;
            if (i3 == -1 || (i3 & 4) == 4) {
                this.f10242w = savedState.f10257k;
            }
            int i4 = this.f10220a;
            if (i4 == -1 || (i4 & 8) == 8) {
                this.f10243x = savedState.f10258l;
            }
        }
    }

    /* renamed from: q0 */
    private void m10400q0(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 29 && !m10420Z() && !this.f10225f) {
            ViewUtils.m9434b(view, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
                @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
                /* renamed from: a */
                public WindowInsetsCompat mo9424a(View view2, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                    BottomSheetBehavior.this.f10230k = windowInsetsCompat.m19097d().f3019d;
                    BottomSheetBehavior.this.m10389y0(false);
                    return windowInsetsCompat;
                }
            });
        }
    }

    /* renamed from: s0 */
    private void m10398s0(final int i) {
        final V v = this.f10211H.get();
        if (v != null) {
            ViewParent parent = v.getParent();
            if (parent == null || !parent.isLayoutRequested() || !ViewCompat.m19219R(v)) {
                m10399r0(v, i);
            } else {
                v.post(new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BottomSheetBehavior.this.m10399r0(v, i);
                    }
                });
            }
        }
    }

    /* renamed from: v0 */
    private void m10394v0() {
        V v;
        WeakReference<V> weakReference = this.f10211H;
        if (weakReference != null && (v = weakReference.get()) != null) {
            ViewCompat.m19195h0(v, 524288);
            ViewCompat.m19195h0(v, 262144);
            ViewCompat.m19195h0(v, 1048576);
            if (this.f10242w && this.f10245z != 5) {
                m10434L(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3337l, 5);
            }
            int i = this.f10245z;
            int i2 = 6;
            if (i == 3) {
                if (this.f10221b) {
                    i2 = 4;
                }
                m10434L(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3336k, i2);
            } else if (i == 4) {
                if (this.f10221b) {
                    i2 = 3;
                }
                m10434L(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3335j, i2);
            } else if (i == 6) {
                m10434L(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3336k, 4);
                m10434L(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3335j, 3);
            }
        }
    }

    /* renamed from: w0 */
    private void m10393w0(int i) {
        ValueAnimator valueAnimator;
        if (i != 2) {
            boolean z = i == 3;
            if (this.f10233n != z) {
                this.f10233n = z;
                if (this.f10229j != null && (valueAnimator = this.f10235p) != null) {
                    if (valueAnimator.isRunning()) {
                        this.f10235p.reverse();
                        return;
                    }
                    float f = z ? 0.0f : 1.0f;
                    this.f10235p.setFloatValues(1.0f - f, f);
                    this.f10235p.start();
                }
            }
        }
    }

    /* renamed from: x0 */
    private void m10391x0(boolean z) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.f10211H;
        if (weakReference != null) {
            ViewParent parent = weakReference.get().getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (Build.VERSION.SDK_INT >= 16 && z) {
                    if (this.f10218O == null) {
                        this.f10218O = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    if (childAt != this.f10211H.get()) {
                        if (z) {
                            if (Build.VERSION.SDK_INT >= 16) {
                                this.f10218O.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                            }
                            if (this.f10222c) {
                                ViewCompat.m19163x0(childAt, 4);
                            }
                        } else if (this.f10222c && (map = this.f10218O) != null && map.containsKey(childAt)) {
                            ViewCompat.m19163x0(childAt, this.f10218O.get(childAt).intValue());
                        }
                    }
                }
                if (!z) {
                    this.f10218O = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y0 */
    public void m10389y0(boolean z) {
        V v;
        if (this.f10211H != null) {
            m10432N();
            if (this.f10245z == 4 && (v = this.f10211H.get()) != null) {
                if (z) {
                    m10398s0(this.f10245z);
                } else {
                    v.requestLayout();
                }
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: A */
    public boolean mo10443A(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        boolean z = false;
        this.f10206C = 0;
        this.f10207D = false;
        if ((i & 2) != 0) {
            z = true;
        }
        return z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: C */
    public void mo10442C(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i) {
        int i2;
        int i3 = 3;
        if (v.getTop() == m10423W()) {
            m10402p0(3);
            return;
        }
        WeakReference<View> weakReference = this.f10212I;
        if (weakReference != null && view == weakReference.get() && this.f10207D) {
            if (this.f10206C > 0) {
                if (this.f10221b) {
                    i2 = this.f10237r;
                } else {
                    int top = v.getTop();
                    i2 = this.f10238s;
                    if (top <= i2) {
                        i2 = this.f10236q;
                    }
                    i3 = 6;
                }
                m10395u0(v, i3, i2, false);
                this.f10207D = false;
            }
            if (this.f10242w && m10396t0(v, m10421Y())) {
                i2 = this.f10210G;
                i3 = 5;
            } else if (this.f10206C == 0) {
                int top2 = v.getTop();
                if (!this.f10221b) {
                    int i4 = this.f10238s;
                    if (top2 < i4) {
                        if (top2 < Math.abs(top2 - this.f10240u)) {
                            i2 = this.f10236q;
                        } else {
                            i2 = this.f10238s;
                        }
                    } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.f10240u)) {
                        i2 = this.f10238s;
                    } else {
                        i2 = this.f10240u;
                        i3 = 4;
                    }
                    i3 = 6;
                } else if (Math.abs(top2 - this.f10237r) < Math.abs(top2 - this.f10240u)) {
                    i2 = this.f10237r;
                } else {
                    i2 = this.f10240u;
                    i3 = 4;
                }
            } else {
                if (this.f10221b) {
                    i2 = this.f10240u;
                } else {
                    int top3 = v.getTop();
                    if (Math.abs(top3 - this.f10238s) < Math.abs(top3 - this.f10240u)) {
                        i2 = this.f10238s;
                        i3 = 6;
                    } else {
                        i2 = this.f10240u;
                    }
                }
                i3 = 4;
            }
            m10395u0(v, i3, i2, false);
            this.f10207D = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: D */
    public boolean mo8654D(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f10245z == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.f10204A;
        if (viewDragHelper != null) {
            viewDragHelper.m18729F(motionEvent);
        }
        if (actionMasked == 0) {
            m10417c0();
        }
        if (this.f10214K == null) {
            this.f10214K = VelocityTracker.obtain();
        }
        this.f10214K.addMovement(motionEvent);
        if (this.f10204A != null && actionMasked == 2 && !this.f10205B && Math.abs(this.f10216M - motionEvent.getY()) > this.f10204A.m18692z()) {
            this.f10204A.m18715c(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f10205B;
    }

    /* renamed from: M */
    public void m10433M(@NonNull BottomSheetCallback bottomSheetCallback) {
        if (!this.f10213J.contains(bottomSheetCallback)) {
            this.f10213J.add(bottomSheetCallback);
        }
    }

    /* renamed from: T */
    void m10426T(int i) {
        float f;
        float f2;
        V v = this.f10211H.get();
        if (!(v == null || this.f10213J.isEmpty())) {
            int i2 = this.f10240u;
            if (i > i2 || i2 == m10423W()) {
                int i3 = this.f10240u;
                f2 = i3 - i;
                f = this.f10210G - i3;
            } else {
                int i4 = this.f10240u;
                f2 = i4 - i;
                f = i4 - m10423W();
            }
            float f3 = f2 / f;
            for (int i5 = 0; i5 < this.f10213J.size(); i5++) {
                this.f10213J.get(i5).mo10363a(v, f3);
            }
        }
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: U */
    View m10425U(View view) {
        if (ViewCompat.m19217T(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View U = m10425U(viewGroup.getChildAt(i));
            if (U != null) {
                return U;
            }
        }
        return null;
    }

    /* renamed from: W */
    public int m10423W() {
        return this.f10221b ? this.f10237r : this.f10236q;
    }

    /* renamed from: X */
    public int m10422X() {
        return this.f10245z;
    }

    /* renamed from: Z */
    public boolean m10420Z() {
        return this.f10231l;
    }

    /* renamed from: a0 */
    public boolean m10419a0() {
        return this.f10242w;
    }

    /* renamed from: b0 */
    public void m10418b0(@NonNull BottomSheetCallback bottomSheetCallback) {
        this.f10213J.remove(bottomSheetCallback);
    }

    /* renamed from: e0 */
    public void m10415e0(boolean z) {
        this.f10244y = z;
    }

    /* renamed from: f0 */
    public void m10414f0(int i) {
        if (i >= 0) {
            this.f10236q = i;
            return;
        }
        throw new IllegalArgumentException("offset must be greater than or equal to 0");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: g */
    public void mo8655g(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.mo8655g(layoutParams);
        this.f10211H = null;
        this.f10204A = null;
    }

    /* renamed from: g0 */
    public void m10413g0(boolean z) {
        if (this.f10221b != z) {
            this.f10221b = z;
            if (this.f10211H != null) {
                m10432N();
            }
            m10402p0((!this.f10221b || this.f10245z != 6) ? this.f10245z : 3);
            m10394v0();
        }
    }

    /* renamed from: h0 */
    public void m10412h0(boolean z) {
        this.f10231l = z;
    }

    /* renamed from: i0 */
    public void m10411i0(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (f <= 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f10239t = f;
        if (this.f10211H != null) {
            m10431O();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: j */
    public void mo10410j() {
        super.mo10410j();
        this.f10211H = null;
        this.f10204A = null;
    }

    /* renamed from: j0 */
    public void m10409j0(boolean z) {
        if (this.f10242w != z) {
            this.f10242w = z;
            if (!z && this.f10245z == 5) {
                m10403o0(4);
            }
            m10394v0();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: k */
    public boolean mo9030k(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!v.isShown() || !this.f10244y) {
            this.f10205B = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m10417c0();
        }
        if (this.f10214K == null) {
            this.f10214K = VelocityTracker.obtain();
        }
        this.f10214K.addMovement(motionEvent);
        View view = null;
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.f10216M = (int) motionEvent.getY();
            if (this.f10245z != 2) {
                WeakReference<View> weakReference = this.f10212I;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && coordinatorLayout.m19948F(view2, x, this.f10216M)) {
                    this.f10215L = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f10217N = true;
                }
            }
            this.f10205B = this.f10215L == -1 && !coordinatorLayout.m19948F(v, x, this.f10216M);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f10217N = false;
            this.f10215L = -1;
            if (this.f10205B) {
                this.f10205B = false;
                return false;
            }
        }
        if (!this.f10205B && (viewDragHelper = this.f10204A) != null && viewDragHelper.m18720O(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f10212I;
        if (weakReference2 != null) {
            view = weakReference2.get();
        }
        boolean z = false;
        if (actionMasked == 2) {
            z = false;
            if (view != null) {
                z = false;
                if (!this.f10205B) {
                    z = false;
                    if (this.f10245z != 1) {
                        z = false;
                        if (!coordinatorLayout.m19948F(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                            z = false;
                            if (this.f10204A != null) {
                                z = false;
                                if (Math.abs(this.f10216M - motionEvent.getY()) > this.f10204A.m18692z()) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: k0 */
    public void m10408k0(int i) {
        m10407l0(i, false);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: l */
    public boolean mo8678l(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        MaterialShapeDrawable materialShapeDrawable;
        if (ViewCompat.m19164x(coordinatorLayout) && !ViewCompat.m19164x(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.f10211H == null) {
            this.f10226g = coordinatorLayout.getResources().getDimensionPixelSize(C1027R.dimen.design_bottom_sheet_peek_height_min);
            m10400q0(v);
            this.f10211H = new WeakReference<>(v);
            if (this.f10228i && (materialShapeDrawable = this.f10229j) != null) {
                ViewCompat.m19177q0(v, materialShapeDrawable);
            }
            MaterialShapeDrawable materialShapeDrawable2 = this.f10229j;
            if (materialShapeDrawable2 != null) {
                float f = this.f10241v;
                float f2 = f;
                if (f == -1.0f) {
                    f2 = ViewCompat.m19168v(v);
                }
                materialShapeDrawable2.m9329V(f2);
                boolean z = this.f10245z == 3;
                this.f10233n = z;
                this.f10229j.m9327X(z ? 0.0f : 1.0f);
            }
            m10394v0();
            if (ViewCompat.m19162y(v) == 0) {
                ViewCompat.m19163x0(v, 1);
            }
        }
        if (this.f10204A == null) {
            this.f10204A = ViewDragHelper.m18702p(coordinatorLayout, this.f10219P);
        }
        int top = v.getTop();
        coordinatorLayout.m19941M(v, i);
        this.f10209F = coordinatorLayout.getWidth();
        this.f10210G = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.f10208E = height;
        this.f10237r = Math.max(0, this.f10210G - height);
        m10431O();
        m10432N();
        int i2 = this.f10245z;
        if (i2 == 3) {
            ViewCompat.m19212Y(v, m10423W());
        } else if (i2 == 6) {
            ViewCompat.m19212Y(v, this.f10238s);
        } else if (!this.f10242w || i2 != 5) {
            int i3 = this.f10245z;
            if (i3 == 4) {
                ViewCompat.m19212Y(v, this.f10240u);
            } else if (i3 == 1 || i3 == 2) {
                ViewCompat.m19212Y(v, top - v.getTop());
            }
        } else {
            ViewCompat.m19212Y(v, this.f10210G);
        }
        this.f10212I = new WeakReference<>(m10425U(v));
        return true;
    }

    /* renamed from: l0 */
    public final void m10407l0(int i, boolean z) {
        boolean z2;
        if (i == -1) {
            if (!this.f10225f) {
                this.f10225f = true;
                z2 = true;
            }
            z2 = false;
        } else {
            if (this.f10225f || this.f10224e != i) {
                this.f10225f = false;
                this.f10224e = Math.max(0, i);
                z2 = true;
            }
            z2 = false;
        }
        if (z2) {
            m10389y0(z);
        }
    }

    /* renamed from: m0 */
    public void m10406m0(int i) {
        this.f10220a = i;
    }

    /* renamed from: n0 */
    public void m10405n0(boolean z) {
        this.f10243x = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
        if (super.mo10404o(r8, r9, r10, r11, r12) != false) goto L_0x0039;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo10404o(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r8, @androidx.annotation.NonNull V r9, @androidx.annotation.NonNull android.view.View r10, float r11, float r12) {
        /*
            r7 = this;
            r0 = r7
            java.lang.ref.WeakReference<android.view.View> r0 = r0.f10212I
            r13 = r0
            r0 = 0
            r14 = r0
            r0 = r14
            r15 = r0
            r0 = r13
            if (r0 == 0) goto L_0x003c
            r0 = r14
            r15 = r0
            r0 = r10
            r1 = r13
            java.lang.Object r1 = r1.get()
            if (r0 != r1) goto L_0x003c
            r0 = r7
            int r0 = r0.f10245z
            r1 = 3
            if (r0 != r1) goto L_0x0039
            r0 = r14
            r15 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            boolean r0 = super.mo10404o(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L_0x003c
        L_0x0039:
            r0 = 1
            r15 = r0
        L_0x003c:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.mo10404o(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, float, float):boolean");
    }

    /* renamed from: o0 */
    public void m10403o0(int i) {
        if (i != this.f10245z) {
            if (this.f10211H != null) {
                m10398s0(i);
            } else if (i == 4 || i == 3 || i == 6 || (this.f10242w && i == 5)) {
                this.f10245z = i;
            }
        }
    }

    /* renamed from: p0 */
    void m10402p0(int i) {
        V v;
        if (this.f10245z != i) {
            this.f10245z = i;
            WeakReference<V> weakReference = this.f10211H;
            if (!(weakReference == null || (v = weakReference.get()) == null)) {
                if (i == 3) {
                    m10391x0(true);
                } else if (i == 6 || i == 5 || i == 4) {
                    m10391x0(false);
                }
                m10393w0(i);
                for (int i2 = 0; i2 < this.f10213J.size(); i2++) {
                    this.f10213J.get(i2).mo10362b(v, i);
                }
                m10394v0();
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: q */
    public void mo10401q(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        if (i3 != 1) {
            WeakReference<View> weakReference = this.f10212I;
            if (view == (weakReference != null ? weakReference.get() : null)) {
                int top = v.getTop();
                int i4 = top - i2;
                if (i2 > 0) {
                    if (i4 < m10423W()) {
                        iArr[1] = top - m10423W();
                        ViewCompat.m19212Y(v, -iArr[1]);
                        m10402p0(3);
                    } else if (this.f10244y) {
                        iArr[1] = i2;
                        ViewCompat.m19212Y(v, -i2);
                        m10402p0(1);
                    } else {
                        return;
                    }
                } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                    int i5 = this.f10240u;
                    if (i4 > i5 && !this.f10242w) {
                        iArr[1] = top - i5;
                        ViewCompat.m19212Y(v, -iArr[1]);
                        m10402p0(4);
                    } else if (this.f10244y) {
                        iArr[1] = i2;
                        ViewCompat.m19212Y(v, -i2);
                        m10402p0(1);
                    } else {
                        return;
                    }
                }
                m10426T(v.getTop());
                this.f10206C = i2;
                this.f10207D = true;
            }
        }
    }

    /* renamed from: r0 */
    void m10399r0(@NonNull View view, int i) {
        int i2;
        int i3;
        if (i == 4) {
            i2 = this.f10240u;
        } else if (i == 6) {
            i2 = this.f10238s;
            if (this.f10221b && i2 <= (i3 = this.f10237r)) {
                i2 = i3;
                i = 3;
            }
        } else if (i == 3) {
            i2 = m10423W();
        } else if (!this.f10242w || i != 5) {
            throw new IllegalArgumentException("Illegal state argument: " + i);
        } else {
            i2 = this.f10210G;
        }
        m10395u0(view, i, i2, false);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: t */
    public void mo10397t(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
    }

    /* renamed from: t0 */
    boolean m10396t0(@NonNull View view, float f) {
        boolean z = true;
        if (this.f10243x) {
            return true;
        }
        if (view.getTop() < this.f10240u) {
            return false;
        }
        if (Math.abs((view.getTop() + (f * 0.1f)) - this.f10240u) / m10430P() <= 0.5f) {
            z = false;
        }
        return z;
    }

    /* renamed from: u0 */
    void m10395u0(View view, int i, int i2, boolean z) {
        ViewDragHelper viewDragHelper = this.f10204A;
        if (viewDragHelper != null && (!z ? viewDragHelper.m18719P(view, view.getLeft(), i2) : viewDragHelper.m18721N(view.getLeft(), i2))) {
            m10402p0(2);
            m10393w0(i);
            if (this.f10234o == null) {
                this.f10234o = new SettleRunnable(view, i);
            }
            if (!((SettleRunnable) this.f10234o).f10260g) {
                BottomSheetBehavior<V>.SettleRunnable settleRunnable = this.f10234o;
                settleRunnable.f10261h = i;
                ViewCompat.m19199f0(view, settleRunnable);
                ((SettleRunnable) this.f10234o).f10260g = true;
                return;
            }
            this.f10234o.f10261h = i;
            return;
        }
        m10402p0(i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: x */
    public void mo10392x(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.mo10392x(coordinatorLayout, v, savedState.m18793a());
        m10416d0(savedState);
        int i = savedState.f10254h;
        if (i == 1 || i == 2) {
            this.f10245z = 4;
        } else {
            this.f10245z = i;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @NonNull
    /* renamed from: y */
    public Parcelable mo10390y(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
        return new SavedState(super.mo10390y(coordinatorLayout, v), (BottomSheetBehavior<?>) this);
    }
}
