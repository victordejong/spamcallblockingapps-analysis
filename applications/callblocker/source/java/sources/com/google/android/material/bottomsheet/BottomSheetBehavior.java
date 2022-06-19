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
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p021c.C0486a;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.AbstractC0561f;
import androidx.core.p026h.p027a.C0553c;
import androidx.p029d.p030a.AbstractC0633a;
import androidx.p029d.p031b.C0644c;
import com.google.android.material.C4492a;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4743k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior.class */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.AbstractC0423b<V> {

    /* renamed from: B */
    private static final int f19801B = C4492a.C4503k.Widget_Design_BottomSheet_Modal;

    /* renamed from: A */
    private ValueAnimator f19802A;

    /* renamed from: C */
    private boolean f19803C;

    /* renamed from: D */
    private boolean f19804D;

    /* renamed from: E */
    private int f19805E;

    /* renamed from: F */
    private boolean f19806F;

    /* renamed from: G */
    private final ArrayList<AbstractC4566a> f19807G;

    /* renamed from: H */
    private VelocityTracker f19808H;

    /* renamed from: I */
    private int f19809I;

    /* renamed from: J */
    private Map<View, Integer> f19810J;

    /* renamed from: K */
    private final C0644c.AbstractC0647a f19811K;

    /* renamed from: a */
    int f19812a;

    /* renamed from: b */
    int f19813b;

    /* renamed from: c */
    int f19814c;

    /* renamed from: d */
    float f19815d;

    /* renamed from: e */
    int f19816e;

    /* renamed from: f */
    float f19817f;

    /* renamed from: g */
    boolean f19818g;

    /* renamed from: h */
    int f19819h;

    /* renamed from: i */
    C0644c f19820i;

    /* renamed from: j */
    int f19821j;

    /* renamed from: k */
    int f19822k;

    /* renamed from: l */
    WeakReference<V> f19823l;

    /* renamed from: m */
    WeakReference<View> f19824m;

    /* renamed from: n */
    int f19825n;

    /* renamed from: o */
    boolean f19826o;

    /* renamed from: p */
    private int f19827p;

    /* renamed from: q */
    private boolean f19828q;

    /* renamed from: r */
    private float f19829r;

    /* renamed from: s */
    private int f19830s;

    /* renamed from: t */
    private boolean f19831t;

    /* renamed from: u */
    private int f19832u;

    /* renamed from: v */
    private boolean f19833v;

    /* renamed from: w */
    private C4736g f19834w;

    /* renamed from: x */
    private C4743k f19835x;

    /* renamed from: y */
    private boolean f19836y;

    /* renamed from: z */
    private BottomSheetBehavior<V>.RunnableC4569c f19837z;

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$a.class */
    public static abstract class AbstractC4566a {
        /* renamed from: a */
        public abstract void mo3511a(View view, float f);

        /* renamed from: a */
        public abstract void mo3510a(View view, int i);
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$b.class */
    public static class C4567b extends AbstractC0633a {
        public static final Parcelable.Creator<C4567b> CREATOR = new Parcelable.ClassLoaderCreator<C4567b>() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.b.1
            /* renamed from: a */
            public C4567b createFromParcel(Parcel parcel) {
                return new C4567b(parcel, (ClassLoader) null);
            }

            /* renamed from: a */
            public C4567b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C4567b(parcel, classLoader);
            }

            /* renamed from: a */
            public C4567b[] newArray(int i) {
                return new C4567b[i];
            }
        };

        /* renamed from: a */
        final int f19845a;

        /* renamed from: b */
        int f19846b;

        /* renamed from: d */
        boolean f19847d;

        /* renamed from: e */
        boolean f19848e;

        /* renamed from: f */
        boolean f19849f;

        public C4567b(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f19845a = parcel.readInt();
            this.f19846b = parcel.readInt();
            this.f19847d = parcel.readInt() == 1;
            this.f19848e = parcel.readInt() == 1;
            this.f19849f = parcel.readInt() == 1;
        }

        public C4567b(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f19845a = bottomSheetBehavior.f19819h;
            this.f19846b = ((BottomSheetBehavior) bottomSheetBehavior).f19830s;
            this.f19847d = ((BottomSheetBehavior) bottomSheetBehavior).f19828q;
            this.f19848e = bottomSheetBehavior.f19818g;
            this.f19849f = ((BottomSheetBehavior) bottomSheetBehavior).f19803C;
        }

        @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f19845a);
            parcel.writeInt(this.f19846b);
            parcel.writeInt(this.f19847d ? 1 : 0);
            parcel.writeInt(this.f19848e ? 1 : 0);
            parcel.writeInt(this.f19849f ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$c.class */
    public class RunnableC4569c implements Runnable {

        /* renamed from: a */
        int f19850a;

        /* renamed from: c */
        private final View f19852c;

        /* renamed from: d */
        private boolean f19853d;

        RunnableC4569c(View view, int i) {
            BottomSheetBehavior.this = r4;
            this.f19852c = view;
            this.f19850a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BottomSheetBehavior.this.f19820i == null || !BottomSheetBehavior.this.f19820i.m20047a(true)) {
                BottomSheetBehavior.this.m3538e(this.f19850a);
            } else {
                C0595u.m20341a(this.f19852c, this);
            }
            this.f19853d = false;
        }
    }

    public BottomSheetBehavior() {
        this.f19827p = 0;
        this.f19828q = true;
        this.f19837z = null;
        this.f19815d = 0.5f;
        this.f19817f = -1.0f;
        this.f19819h = 4;
        this.f19807G = new ArrayList<>();
        this.f19811K = new C0644c.AbstractC0647a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public int mo3527a(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public void mo3529a(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.m3538e(1);
                }
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public void mo3528a(View view, float f, float f2) {
                int i;
                int i2 = 3;
                if (f2 < 0.0f) {
                    if (BottomSheetBehavior.this.f19828q) {
                        i = BottomSheetBehavior.this.f19813b;
                    } else if (view.getTop() > BottomSheetBehavior.this.f19814c) {
                        i = BottomSheetBehavior.this.f19814c;
                        i2 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f19812a;
                        i2 = 3;
                    }
                } else if (BottomSheetBehavior.this.f19818g && BottomSheetBehavior.this.m3567a(view, f2) && (view.getTop() > BottomSheetBehavior.this.f19816e || Math.abs(f) < Math.abs(f2))) {
                    i = BottomSheetBehavior.this.f19822k;
                    i2 = 5;
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top = view.getTop();
                    if (BottomSheetBehavior.this.f19828q) {
                        if (Math.abs(top - BottomSheetBehavior.this.f19813b) < Math.abs(top - BottomSheetBehavior.this.f19816e)) {
                            i = BottomSheetBehavior.this.f19813b;
                        } else {
                            i = BottomSheetBehavior.this.f19816e;
                            i2 = 4;
                        }
                    } else if (top < BottomSheetBehavior.this.f19814c) {
                        if (top < Math.abs(top - BottomSheetBehavior.this.f19816e)) {
                            i = BottomSheetBehavior.this.f19812a;
                        } else {
                            i = BottomSheetBehavior.this.f19814c;
                            i2 = 6;
                        }
                    } else if (Math.abs(top - BottomSheetBehavior.this.f19814c) < Math.abs(top - BottomSheetBehavior.this.f19816e)) {
                        i = BottomSheetBehavior.this.f19814c;
                        i2 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f19816e;
                        i2 = 4;
                    }
                } else if (BottomSheetBehavior.this.f19828q) {
                    i = BottomSheetBehavior.this.f19816e;
                    i2 = 4;
                } else {
                    int top2 = view.getTop();
                    if (Math.abs(top2 - BottomSheetBehavior.this.f19814c) < Math.abs(top2 - BottomSheetBehavior.this.f19816e)) {
                        i = BottomSheetBehavior.this.f19814c;
                        i2 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f19816e;
                        i2 = 4;
                    }
                }
                BottomSheetBehavior.this.m3565a(view, i2, i, true);
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public void mo3526a(View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.m3535f(i2);
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: b */
            public int mo3525b(View view) {
                return BottomSheetBehavior.this.f19818g ? BottomSheetBehavior.this.f19822k : BottomSheetBehavior.this.f19816e;
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: b */
            public int mo3523b(View view, int i, int i2) {
                return C0486a.m20726a(i, BottomSheetBehavior.this.m3532h(), BottomSheetBehavior.this.f19818g ? BottomSheetBehavior.this.f19822k : BottomSheetBehavior.this.f19816e);
            }

            /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
                if (r8.canScrollVertically(-1) == false) goto L20;
             */
            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean mo3524b(android.view.View r4, int r5) {
                /*
                    r3 = this;
                    r0 = 0
                    r6 = r0
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    int r0 = r0.f19819h
                    r1 = 1
                    if (r0 != r1) goto L13
                    r0 = r6
                    r7 = r0
                L10:
                    r0 = r7
                    return r0
                L13:
                    r0 = r6
                    r7 = r0
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    boolean r0 = r0.f19826o
                    if (r0 != 0) goto L10
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    int r0 = r0.f19819h
                    r1 = 3
                    if (r0 != r1) goto L60
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    int r0 = r0.f19825n
                    r1 = r5
                    if (r0 != r1) goto L60
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    java.lang.ref.WeakReference<android.view.View> r0 = r0.f19824m
                    if (r0 == 0) goto L7e
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    java.lang.ref.WeakReference<android.view.View> r0 = r0.f19824m
                    java.lang.Object r0 = r0.get()
                    android.view.View r0 = (android.view.View) r0
                    r8 = r0
                L4f:
                    r0 = r8
                    if (r0 == 0) goto L60
                    r0 = r6
                    r7 = r0
                    r0 = r8
                    r1 = -1
                    boolean r0 = r0.canScrollVertically(r1)
                    if (r0 != 0) goto L10
                L60:
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    java.lang.ref.WeakReference<V extends android.view.View> r0 = r0.f19823l
                    if (r0 == 0) goto L84
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    java.lang.ref.WeakReference<V extends android.view.View> r0 = r0.f19823l
                    java.lang.Object r0 = r0.get()
                    r1 = r4
                    if (r0 != r1) goto L84
                    r0 = 1
                    r7 = r0
                L7b:
                    goto L10
                L7e:
                    r0 = 0
                    r8 = r0
                    goto L4f
                L84:
                    r0 = 0
                    r7 = r0
                    goto L7b
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.C45643.mo3524b(android.view.View, int):boolean");
            }
        };
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19827p = 0;
        this.f19828q = true;
        this.f19837z = null;
        this.f19815d = 0.5f;
        this.f19817f = -1.0f;
        this.f19819h = 4;
        this.f19807G = new ArrayList<>();
        this.f19811K = new C0644c.AbstractC0647a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public int mo3527a(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public void mo3529a(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.m3538e(1);
                }
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public void mo3528a(View view, float f, float f2) {
                int i;
                int i2 = 3;
                if (f2 < 0.0f) {
                    if (BottomSheetBehavior.this.f19828q) {
                        i = BottomSheetBehavior.this.f19813b;
                    } else if (view.getTop() > BottomSheetBehavior.this.f19814c) {
                        i = BottomSheetBehavior.this.f19814c;
                        i2 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f19812a;
                        i2 = 3;
                    }
                } else if (BottomSheetBehavior.this.f19818g && BottomSheetBehavior.this.m3567a(view, f2) && (view.getTop() > BottomSheetBehavior.this.f19816e || Math.abs(f) < Math.abs(f2))) {
                    i = BottomSheetBehavior.this.f19822k;
                    i2 = 5;
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top = view.getTop();
                    if (BottomSheetBehavior.this.f19828q) {
                        if (Math.abs(top - BottomSheetBehavior.this.f19813b) < Math.abs(top - BottomSheetBehavior.this.f19816e)) {
                            i = BottomSheetBehavior.this.f19813b;
                        } else {
                            i = BottomSheetBehavior.this.f19816e;
                            i2 = 4;
                        }
                    } else if (top < BottomSheetBehavior.this.f19814c) {
                        if (top < Math.abs(top - BottomSheetBehavior.this.f19816e)) {
                            i = BottomSheetBehavior.this.f19812a;
                        } else {
                            i = BottomSheetBehavior.this.f19814c;
                            i2 = 6;
                        }
                    } else if (Math.abs(top - BottomSheetBehavior.this.f19814c) < Math.abs(top - BottomSheetBehavior.this.f19816e)) {
                        i = BottomSheetBehavior.this.f19814c;
                        i2 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f19816e;
                        i2 = 4;
                    }
                } else if (BottomSheetBehavior.this.f19828q) {
                    i = BottomSheetBehavior.this.f19816e;
                    i2 = 4;
                } else {
                    int top2 = view.getTop();
                    if (Math.abs(top2 - BottomSheetBehavior.this.f19814c) < Math.abs(top2 - BottomSheetBehavior.this.f19816e)) {
                        i = BottomSheetBehavior.this.f19814c;
                        i2 = 6;
                    } else {
                        i = BottomSheetBehavior.this.f19816e;
                        i2 = 4;
                    }
                }
                BottomSheetBehavior.this.m3565a(view, i2, i, true);
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: a */
            public void mo3526a(View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.m3535f(i2);
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: b */
            public int mo3525b(View view) {
                return BottomSheetBehavior.this.f19818g ? BottomSheetBehavior.this.f19822k : BottomSheetBehavior.this.f19816e;
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: b */
            public int mo3523b(View view, int i, int i2) {
                return C0486a.m20726a(i, BottomSheetBehavior.this.m3532h(), BottomSheetBehavior.this.f19818g ? BottomSheetBehavior.this.f19822k : BottomSheetBehavior.this.f19816e);
            }

            @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean mo3524b(android.view.View r4, int r5) {
                /*
                    r3 = this;
                    r0 = 0
                    r6 = r0
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    int r0 = r0.f19819h
                    r1 = 1
                    if (r0 != r1) goto L13
                    r0 = r6
                    r7 = r0
                L10:
                    r0 = r7
                    return r0
                L13:
                    r0 = r6
                    r7 = r0
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    boolean r0 = r0.f19826o
                    if (r0 != 0) goto L10
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    int r0 = r0.f19819h
                    r1 = 3
                    if (r0 != r1) goto L60
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    int r0 = r0.f19825n
                    r1 = r5
                    if (r0 != r1) goto L60
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    java.lang.ref.WeakReference<android.view.View> r0 = r0.f19824m
                    if (r0 == 0) goto L7e
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    java.lang.ref.WeakReference<android.view.View> r0 = r0.f19824m
                    java.lang.Object r0 = r0.get()
                    android.view.View r0 = (android.view.View) r0
                    r8 = r0
                L4f:
                    r0 = r8
                    if (r0 == 0) goto L60
                    r0 = r6
                    r7 = r0
                    r0 = r8
                    r1 = -1
                    boolean r0 = r0.canScrollVertically(r1)
                    if (r0 != 0) goto L10
                L60:
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    java.lang.ref.WeakReference<V extends android.view.View> r0 = r0.f19823l
                    if (r0 == 0) goto L84
                    r0 = r3
                    com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                    java.lang.ref.WeakReference<V extends android.view.View> r0 = r0.f19823l
                    java.lang.Object r0 = r0.get()
                    r1 = r4
                    if (r0 != r1) goto L84
                    r0 = 1
                    r7 = r0
                L7b:
                    goto L10
                L7e:
                    r0 = 0
                    r8 = r0
                    goto L4f
                L84:
                    r0 = 0
                    r7 = r0
                    goto L7b
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.C45643.mo3524b(android.view.View, int):boolean");
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4492a.C4504l.BottomSheetBehavior_Layout);
        this.f19833v = obtainStyledAttributes.hasValue(C4492a.C4504l.BottomSheetBehavior_Layout_shapeAppearance);
        boolean hasValue = obtainStyledAttributes.hasValue(C4492a.C4504l.BottomSheetBehavior_Layout_backgroundTint);
        if (hasValue) {
            m3569a(context, attributeSet, hasValue, C4718c.m2784a(context, obtainStyledAttributes, C4492a.C4504l.BottomSheetBehavior_Layout_backgroundTint));
        } else {
            m3570a(context, attributeSet, hasValue);
        }
        m3536f();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f19817f = obtainStyledAttributes.getDimension(C4492a.C4504l.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(C4492a.C4504l.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue == null || peekValue.data != -1) {
            m3572a(obtainStyledAttributes.getDimensionPixelSize(C4492a.C4504l.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            m3572a(peekValue.data);
        }
        m3549b(obtainStyledAttributes.getBoolean(C4492a.C4504l.BottomSheetBehavior_Layout_behavior_hideable, false));
        m3554a(obtainStyledAttributes.getBoolean(C4492a.C4504l.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        m3545c(obtainStyledAttributes.getBoolean(C4492a.C4504l.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        m3547c(obtainStyledAttributes.getInt(C4492a.C4504l.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        m3573a(obtainStyledAttributes.getFloat(C4492a.C4504l.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        m3552b(obtainStyledAttributes.getInt(C4492a.C4504l.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        obtainStyledAttributes.recycle();
        this.f19829r = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* renamed from: a */
    private void m3570a(Context context, AttributeSet attributeSet, boolean z) {
        m3569a(context, attributeSet, z, (ColorStateList) null);
    }

    /* renamed from: a */
    private void m3569a(Context context, AttributeSet attributeSet, boolean z, ColorStateList colorStateList) {
        if (this.f19833v) {
            this.f19835x = C4743k.m2673a(context, attributeSet, C4492a.C4494b.bottomSheetStyle, f19801B).m2654a();
            this.f19834w = new C4736g(this.f19835x);
            this.f19834w.m2722a(context);
            if (z && colorStateList != null) {
                this.f19834w.m2697f(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(16842801, typedValue, true);
            this.f19834w.setTint(typedValue.data);
        }
    }

    /* renamed from: a */
    private void m3564a(V v, C0553c.C0554a c0554a, final int i) {
        C0595u.m20347a(v, c0554a, null, new AbstractC0561f() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            @Override // androidx.core.p026h.p027a.AbstractC0561f
            /* renamed from: a */
            public boolean mo3522a(View view, AbstractC0561f.AbstractC0562a abstractC0562a) {
                BottomSheetBehavior.this.m3543d(i);
                return true;
            }
        });
    }

    /* renamed from: a */
    private void m3556a(C4567b c4567b) {
        if (this.f19827p == 0) {
            return;
        }
        if (this.f19827p == -1 || (this.f19827p & 1) == 1) {
            this.f19830s = c4567b.f19846b;
        }
        if (this.f19827p == -1 || (this.f19827p & 2) == 2) {
            this.f19828q = c4567b.f19847d;
        }
        if (this.f19827p == -1 || (this.f19827p & 4) == 4) {
            this.f19818g = c4567b.f19848e;
        }
        if (this.f19827p != -1 && (this.f19827p & 8) != 8) {
            return;
        }
        this.f19803C = c4567b.f19849f;
    }

    /* renamed from: b */
    public static <V extends View> BottomSheetBehavior<V> m3551b(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.C0426e)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.AbstractC0423b m20929b = ((CoordinatorLayout.C0426e) layoutParams).m20929b();
        if (m20929b instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) m20929b;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    /* renamed from: c */
    private void m3548c() {
        int max = this.f19831t ? Math.max(this.f19832u, this.f19822k - ((this.f19821j * 9) / 16)) : this.f19830s;
        if (this.f19828q) {
            this.f19816e = Math.max(this.f19822k - max, this.f19813b);
        } else {
            this.f19816e = this.f19822k - max;
        }
    }

    /* renamed from: d */
    private void m3544d() {
        this.f19814c = (int) (this.f19822k * (1.0f - this.f19815d));
    }

    /* renamed from: d */
    private void m3540d(boolean z) {
        if (this.f19823l == null) {
            return;
        }
        ViewParent parent = this.f19823l.get().getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (Build.VERSION.SDK_INT >= 16 && z) {
            if (this.f19810J != null) {
                return;
            }
            this.f19810J = new HashMap(childCount);
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = coordinatorLayout.getChildAt(i);
            if (childAt != this.f19823l.get()) {
                if (z) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        this.f19810J.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    }
                    C0595u.m20335b(childAt, 4);
                } else if (this.f19810J != null && this.f19810J.containsKey(childAt)) {
                    C0595u.m20335b(childAt, this.f19810J.get(childAt).intValue());
                }
            }
        }
        if (z) {
            return;
        }
        this.f19810J = null;
    }

    /* renamed from: e */
    private void m3539e() {
        this.f19825n = -1;
        if (this.f19808H != null) {
            this.f19808H.recycle();
            this.f19808H = null;
        }
    }

    /* renamed from: f */
    private void m3536f() {
        this.f19802A = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f19802A.setDuration(500L);
        this.f19802A.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (BottomSheetBehavior.this.f19834w != null) {
                    BottomSheetBehavior.this.f19834w.m2689p(floatValue);
                }
            }
        });
    }

    /* renamed from: g */
    private float m3534g() {
        float yVelocity;
        if (this.f19808H == null) {
            yVelocity = 0.0f;
        } else {
            this.f19808H.computeCurrentVelocity(1000, this.f19829r);
            yVelocity = this.f19808H.getYVelocity(this.f19825n);
        }
        return yVelocity;
    }

    /* renamed from: g */
    private void m3533g(final int i) {
        final V v = this.f19823l.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent == null || !parent.isLayoutRequested() || !C0595u.m20370B(v)) {
            m3566a((View) v, i);
        } else {
            v.post(new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                @Override // java.lang.Runnable
                public void run() {
                    BottomSheetBehavior.this.m3566a(v, i);
                }
            });
        }
    }

    /* renamed from: h */
    public int m3532h() {
        return this.f19828q ? this.f19813b : this.f19812a;
    }

    /* renamed from: h */
    private void m3531h(int i) {
        if (i == 2) {
            return;
        }
        boolean z = i == 3;
        if (this.f19836y == z) {
            return;
        }
        this.f19836y = z;
        if (this.f19834w == null || this.f19802A == null) {
            return;
        }
        if (this.f19802A.isRunning()) {
            this.f19802A.reverse();
            return;
        }
        float f = z ? 0.0f : 1.0f;
        this.f19802A.setFloatValues(1.0f - f, f);
        this.f19802A.start();
    }

    /* renamed from: i */
    private void m3530i() {
        V v;
        int i = 4;
        if (this.f19823l == null || (v = this.f19823l.get()) == null) {
            return;
        }
        C0595u.m20329c(v, 524288);
        C0595u.m20329c(v, 262144);
        C0595u.m20329c(v, 1048576);
        if (this.f19818g && this.f19819h != 5) {
            m3564a((BottomSheetBehavior<V>) v, C0553c.C0554a.f2051u, 5);
        }
        switch (this.f19819h) {
            case 3:
                if (!this.f19828q) {
                    i = 6;
                }
                m3564a((BottomSheetBehavior<V>) v, C0553c.C0554a.f2050t, i);
                return;
            case 4:
                int i2 = 6;
                if (this.f19828q) {
                    i2 = 3;
                }
                m3564a((BottomSheetBehavior<V>) v, C0553c.C0554a.f2049s, i2);
                return;
            case 5:
            default:
                return;
            case 6:
                m3564a((BottomSheetBehavior<V>) v, C0553c.C0554a.f2050t, 4);
                m3564a((BottomSheetBehavior<V>) v, C0553c.C0554a.f2049s, 3);
                return;
        }
    }

    /* renamed from: a */
    View m3568a(View view) {
        if (!C0595u.m20301w(view)) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    view = m3568a(viewGroup.getChildAt(i));
                    if (view != null) {
                        break;
                    }
                }
            }
            view = null;
        }
        return view;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public void mo3574a() {
        super.mo3574a();
        this.f19823l = null;
        this.f19820i = null;
    }

    /* renamed from: a */
    public void m3573a(float f) {
        if (f <= 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f19815d = f;
    }

    /* renamed from: a */
    public void m3572a(int i) {
        m3571a(i, false);
    }

    /* renamed from: a */
    public final void m3571a(int i, boolean z) {
        boolean z2;
        V v;
        if (i == -1) {
            if (!this.f19831t) {
                this.f19831t = true;
                z2 = true;
            }
            z2 = false;
        } else {
            if (this.f19831t || this.f19830s != i) {
                this.f19831t = false;
                this.f19830s = Math.max(0, i);
                z2 = true;
            }
            z2 = false;
        }
        if (!z2 || this.f19823l == null) {
            return;
        }
        m3548c();
        if (this.f19819h != 4 || (v = this.f19823l.get()) == null) {
            return;
        }
        if (z) {
            m3533g(this.f19819h);
        } else {
            v.requestLayout();
        }
    }

    /* renamed from: a */
    void m3566a(View view, int i) {
        int i2;
        int i3;
        if (i == 4) {
            i2 = this.f19816e;
            i3 = i;
        } else if (i == 6) {
            int i4 = this.f19814c;
            i2 = i4;
            i3 = i;
            if (this.f19828q) {
                i2 = i4;
                i3 = i;
                if (i4 <= this.f19813b) {
                    i2 = this.f19813b;
                    i3 = 3;
                }
            }
        } else if (i == 3) {
            i2 = m3532h();
            i3 = i;
        } else if (!this.f19818g || i != 5) {
            throw new IllegalArgumentException("Illegal state argument: " + i);
        } else {
            i2 = this.f19822k;
            i3 = i;
        }
        m3565a(view, i3, i2, false);
    }

    /* renamed from: a */
    void m3565a(View view, int i, int i2, boolean z) {
        if (!(z ? this.f19820i.m20057a(view.getLeft(), i2) : this.f19820i.m20051a(view, view.getLeft(), i2))) {
            m3538e(i);
            return;
        }
        m3538e(2);
        m3531h(i);
        if (this.f19837z == null) {
            this.f19837z = new RunnableC4569c(view, i);
        }
        if (((RunnableC4569c) this.f19837z).f19853d) {
            this.f19837z.f19850a = i;
            return;
        }
        this.f19837z.f19850a = i;
        C0595u.m20341a(view, this.f19837z);
        ((RunnableC4569c) this.f19837z).f19853d = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public void mo2202a(CoordinatorLayout.C0426e c0426e) {
        super.mo2202a(c0426e);
        this.f19823l = null;
        this.f19820i = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public void mo3563a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        C4567b c4567b = (C4567b) parcelable;
        super.mo3563a(coordinatorLayout, (CoordinatorLayout) v, c4567b.m20121a());
        m3556a(c4567b);
        if (c4567b.f19845a == 1 || c4567b.f19845a == 2) {
            this.f19819h = 4;
        } else {
            this.f19819h = c4567b.f19845a;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public void mo3561a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        int i2;
        int i3 = 3;
        if (v.getTop() == m3532h()) {
            m3538e(3);
        } else if (this.f19824m == null || view != this.f19824m.get() || !this.f19806F) {
        } else {
            if (this.f19805E > 0) {
                i2 = m3532h();
            } else if (this.f19818g && m3567a(v, m3534g())) {
                i2 = this.f19822k;
                i3 = 5;
            } else if (this.f19805E == 0) {
                int top = v.getTop();
                if (this.f19828q) {
                    if (Math.abs(top - this.f19813b) < Math.abs(top - this.f19816e)) {
                        i2 = this.f19813b;
                    } else {
                        i2 = this.f19816e;
                        i3 = 4;
                    }
                } else if (top < this.f19814c) {
                    if (top < Math.abs(top - this.f19816e)) {
                        i2 = this.f19812a;
                    } else {
                        i2 = this.f19814c;
                        i3 = 6;
                    }
                } else if (Math.abs(top - this.f19814c) < Math.abs(top - this.f19816e)) {
                    i2 = this.f19814c;
                    i3 = 6;
                } else {
                    i2 = this.f19816e;
                    i3 = 4;
                }
            } else if (this.f19828q) {
                i2 = this.f19816e;
                i3 = 4;
            } else {
                int top2 = v.getTop();
                if (Math.abs(top2 - this.f19814c) < Math.abs(top2 - this.f19816e)) {
                    i2 = this.f19814c;
                    i3 = 6;
                } else {
                    i2 = this.f19816e;
                    i3 = 4;
                }
            }
            m3565a((View) v, i3, i2, false);
            this.f19806F = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public void mo3560a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public void mo3559a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        if (view != (this.f19824m != null ? this.f19824m.get() : null)) {
            return;
        }
        int top = v.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < m3532h()) {
                iArr[1] = top - m3532h();
                C0595u.m20323e(v, -iArr[1]);
                m3538e(3);
            } else {
                iArr[1] = i2;
                C0595u.m20323e(v, -i2);
                m3538e(1);
            }
        } else if (i2 < 0 && !view.canScrollVertically(-1)) {
            if (i4 <= this.f19816e || this.f19818g) {
                iArr[1] = i2;
                C0595u.m20323e(v, -i2);
                m3538e(1);
            } else {
                iArr[1] = top - this.f19816e;
                C0595u.m20323e(v, -iArr[1]);
                m3538e(4);
            }
        }
        m3535f(v.getTop());
        this.f19805E = i2;
        this.f19806F = true;
    }

    /* renamed from: a */
    public void m3557a(AbstractC4566a abstractC4566a) {
        if (!this.f19807G.contains(abstractC4566a)) {
            this.f19807G.add(abstractC4566a);
        }
    }

    /* renamed from: a */
    public void m3554a(boolean z) {
        if (this.f19828q == z) {
            return;
        }
        this.f19828q = z;
        if (this.f19823l != null) {
            m3548c();
        }
        m3538e((!this.f19828q || this.f19819h != 6) ? this.f19819h : 3);
        m3530i();
    }

    /* renamed from: a */
    boolean m3567a(View view, float f) {
        boolean z = true;
        if (!this.f19803C) {
            if (view.getTop() < this.f19816e) {
                z = false;
            } else if (Math.abs((view.getTop() + (0.1f * f)) - this.f19816e) / this.f19830s <= 0.5f) {
                z = false;
            }
        }
        return z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public boolean mo2219a(CoordinatorLayout coordinatorLayout, V v, int i) {
        if (C0595u.m20306r(coordinatorLayout) && !C0595u.m20306r(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.f19823l == null) {
            this.f19832u = coordinatorLayout.getResources().getDimensionPixelSize(C4492a.C4496d.design_bottom_sheet_peek_height_min);
            this.f19823l = new WeakReference<>(v);
            if (this.f19833v && this.f19834w != null) {
                C0595u.m20350a(v, this.f19834w);
            }
            if (this.f19834w != null) {
                this.f19834w.m2687r(this.f19817f == -1.0f ? C0595u.m20310n(v) : this.f19817f);
                this.f19836y = this.f19819h == 3;
                this.f19834w.m2689p(this.f19836y ? 0.0f : 1.0f);
            }
            m3530i();
            if (C0595u.m20322f(v) == 0) {
                C0595u.m20335b(v, 1);
            }
        }
        if (this.f19820i == null) {
            this.f19820i = C0644c.m20048a(coordinatorLayout, this.f19811K);
        }
        int top = v.getTop();
        coordinatorLayout.m20971b(v, i);
        this.f19821j = coordinatorLayout.getWidth();
        this.f19822k = coordinatorLayout.getHeight();
        this.f19813b = Math.max(0, this.f19822k - v.getHeight());
        m3544d();
        m3548c();
        if (this.f19819h == 3) {
            C0595u.m20323e(v, m3532h());
        } else if (this.f19819h == 6) {
            C0595u.m20323e(v, this.f19814c);
        } else if (this.f19818g && this.f19819h == 5) {
            C0595u.m20323e(v, this.f19822k);
        } else if (this.f19819h == 4) {
            C0595u.m20323e(v, this.f19816e);
        } else if (this.f19819h == 1 || this.f19819h == 2) {
            C0595u.m20323e(v, top - v.getTop());
        }
        this.f19824m = new WeakReference<>(m3568a(v));
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0176  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2508a(androidx.coordinatorlayout.widget.CoordinatorLayout r6, V r7, android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.mo2508a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
        if (super.mo3562a(r8, (androidx.coordinatorlayout.widget.CoordinatorLayout) r9, r10, r11, r12) != false) goto L10;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo3562a(androidx.coordinatorlayout.widget.CoordinatorLayout r8, V r9, android.view.View r10, float r11, float r12) {
        /*
            r7 = this;
            r0 = 0
            r13 = r0
            r0 = r13
            r14 = r0
            r0 = r7
            java.lang.ref.WeakReference<android.view.View> r0 = r0.f19824m
            if (r0 == 0) goto L3a
            r0 = r13
            r14 = r0
            r0 = r10
            r1 = r7
            java.lang.ref.WeakReference<android.view.View> r1 = r1.f19824m
            java.lang.Object r1 = r1.get()
            if (r0 != r1) goto L3a
            r0 = r7
            int r0 = r0.f19819h
            r1 = 3
            if (r0 != r1) goto L37
            r0 = r13
            r14 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            boolean r0 = super.mo3562a(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L3a
        L37:
            r0 = 1
            r14 = r0
        L3a:
            r0 = r14
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.mo3562a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, float, float):boolean");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public boolean mo3558a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        boolean z = false;
        this.f19805E = 0;
        this.f19806F = false;
        if ((i & 2) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public int m3553b() {
        return this.f19819h;
    }

    /* renamed from: b */
    public void m3552b(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.f19812a = i;
    }

    /* renamed from: b */
    public void m3549b(boolean z) {
        if (this.f19818g != z) {
            this.f19818g = z;
            if (!z && this.f19819h == 5) {
                m3543d(4);
            }
            m3530i();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
        if (r0 != 0) goto L11;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2188b(androidx.coordinatorlayout.widget.CoordinatorLayout r6, V r7, android.view.MotionEvent r8) {
        /*
            r5 = this;
            r0 = 1
            r9 = r0
            r0 = r7
            boolean r0 = r0.isShown()
            if (r0 != 0) goto L10
            r0 = 0
            r10 = r0
        Ld:
            r0 = r10
            return r0
        L10:
            r0 = r8
            int r0 = r0.getActionMasked()
            r11 = r0
            r0 = r5
            int r0 = r0.f19819h
            r1 = 1
            if (r0 != r1) goto L27
            r0 = r9
            r10 = r0
            r0 = r11
            if (r0 == 0) goto Ld
        L27:
            r0 = r5
            androidx.d.b.c r0 = r0.f19820i
            if (r0 == 0) goto L36
            r0 = r5
            androidx.d.b.c r0 = r0.f19820i
            r1 = r8
            r0.m20040b(r1)
        L36:
            r0 = r11
            if (r0 != 0) goto L3f
            r0 = r5
            r0.m3539e()
        L3f:
            r0 = r5
            android.view.VelocityTracker r0 = r0.f19808H
            if (r0 != 0) goto L4d
            r0 = r5
            android.view.VelocityTracker r1 = android.view.VelocityTracker.obtain()
            r0.f19808H = r1
        L4d:
            r0 = r5
            android.view.VelocityTracker r0 = r0.f19808H
            r1 = r8
            r0.addMovement(r1)
            r0 = r11
            r1 = 2
            if (r0 != r1) goto L8b
            r0 = r5
            boolean r0 = r0.f19804D
            if (r0 != 0) goto L8b
            r0 = r5
            int r0 = r0.f19809I
            float r0 = (float) r0
            r1 = r8
            float r1 = r1.getY()
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)
            r1 = r5
            androidx.d.b.c r1 = r1.f19820i
            int r1 = r1.m20046b()
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L8b
            r0 = r5
            androidx.d.b.c r0 = r0.f19820i
            r1 = r7
            r2 = r8
            r3 = r8
            int r3 = r3.getActionIndex()
            int r2 = r2.getPointerId(r3)
            r0.m20052a(r1, r2)
        L8b:
            r0 = r9
            r10 = r0
            r0 = r5
            boolean r0 = r0.f19804D
            if (r0 == 0) goto Ld
            r0 = 0
            r10 = r0
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.mo2188b(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: c */
    public void m3547c(int i) {
        this.f19827p = i;
    }

    /* renamed from: c */
    public void m3545c(boolean z) {
        this.f19803C = z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: d */
    public Parcelable mo3542d(CoordinatorLayout coordinatorLayout, V v) {
        return new C4567b(super.mo3542d(coordinatorLayout, v), (BottomSheetBehavior<?>) this);
    }

    /* renamed from: d */
    public void m3543d(int i) {
        if (i == this.f19819h) {
            return;
        }
        if (this.f19823l != null) {
            m3533g(i);
        } else if (i != 4 && i != 3 && i != 6 && (!this.f19818g || i != 5)) {
        } else {
            this.f19819h = i;
        }
    }

    /* renamed from: e */
    void m3538e(int i) {
        V v;
        if (this.f19819h == i) {
            return;
        }
        this.f19819h = i;
        if (this.f19823l == null || (v = this.f19823l.get()) == null) {
            return;
        }
        if (i == 6 || i == 3) {
            m3540d(true);
        } else if (i == 5 || i == 4) {
            m3540d(false);
        }
        m3531h(i);
        for (int i2 = 0; i2 < this.f19807G.size(); i2++) {
            this.f19807G.get(i2).mo3510a((View) v, i);
        }
        m3530i();
    }

    /* renamed from: f */
    void m3535f(int i) {
        V v = this.f19823l.get();
        if (v == null || this.f19807G.isEmpty()) {
            return;
        }
        float m3532h = i > this.f19816e ? (this.f19816e - i) / (this.f19822k - this.f19816e) : (this.f19816e - i) / (this.f19816e - m3532h());
        for (int i2 = 0; i2 < this.f19807G.size(); i2++) {
            this.f19807G.get(i2).mo3511a(v, m3532h);
        }
    }
}
