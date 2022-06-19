package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0309b;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Objects;
import p015b0.C0713a;
/* renamed from: androidx.constraintlayout.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c.class */
public class C0316c extends ViewGroup {

    /* renamed from: a */
    public C0309b f1415a;

    /* renamed from: androidx.constraintlayout.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$a.class */
    public static class C0317a extends ConstraintLayout.C0305a {

        /* renamed from: A0 */
        public float f1416A0;

        /* renamed from: B0 */
        public float f1417B0;

        /* renamed from: C0 */
        public float f1418C0;

        /* renamed from: D0 */
        public float f1419D0;

        /* renamed from: r0 */
        public float f1420r0;

        /* renamed from: s0 */
        public boolean f1421s0;

        /* renamed from: t0 */
        public float f1422t0;

        /* renamed from: u0 */
        public float f1423u0;

        /* renamed from: v0 */
        public float f1424v0;

        /* renamed from: w0 */
        public float f1425w0;

        /* renamed from: x0 */
        public float f1426x0;

        /* renamed from: y0 */
        public float f1427y0;

        /* renamed from: z0 */
        public float f1428z0;

        public C0317a(int i, int i2) {
            super(i, i2);
            this.f1420r0 = 1.0f;
            this.f1421s0 = false;
            this.f1422t0 = 0.0f;
            this.f1423u0 = 0.0f;
            this.f1424v0 = 0.0f;
            this.f1425w0 = 0.0f;
            this.f1426x0 = 1.0f;
            this.f1427y0 = 1.0f;
            this.f1428z0 = 0.0f;
            this.f1416A0 = 0.0f;
            this.f1417B0 = 0.0f;
            this.f1418C0 = 0.0f;
            this.f1419D0 = 0.0f;
        }

        public C0317a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1420r0 = 1.0f;
            this.f1421s0 = false;
            this.f1422t0 = 0.0f;
            this.f1423u0 = 0.0f;
            this.f1424v0 = 0.0f;
            this.f1425w0 = 0.0f;
            this.f1426x0 = 1.0f;
            this.f1427y0 = 1.0f;
            this.f1428z0 = 0.0f;
            this.f1416A0 = 0.0f;
            this.f1417B0 = 0.0f;
            this.f1418C0 = 0.0f;
            this.f1419D0 = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0713a.f2756h);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 15) {
                    this.f1420r0 = obtainStyledAttributes.getFloat(index, this.f1420r0);
                } else if (index == 28) {
                    this.f1422t0 = obtainStyledAttributes.getFloat(index, this.f1422t0);
                    this.f1421s0 = true;
                } else if (index == 23) {
                    this.f1424v0 = obtainStyledAttributes.getFloat(index, this.f1424v0);
                } else if (index == 24) {
                    this.f1425w0 = obtainStyledAttributes.getFloat(index, this.f1425w0);
                } else if (index == 22) {
                    this.f1423u0 = obtainStyledAttributes.getFloat(index, this.f1423u0);
                } else if (index == 20) {
                    this.f1426x0 = obtainStyledAttributes.getFloat(index, this.f1426x0);
                } else if (index == 21) {
                    this.f1427y0 = obtainStyledAttributes.getFloat(index, this.f1427y0);
                } else if (index == 16) {
                    this.f1428z0 = obtainStyledAttributes.getFloat(index, this.f1428z0);
                } else if (index == 17) {
                    this.f1416A0 = obtainStyledAttributes.getFloat(index, this.f1416A0);
                } else if (index == 18) {
                    this.f1417B0 = obtainStyledAttributes.getFloat(index, this.f1417B0);
                } else if (index == 19) {
                    this.f1418C0 = obtainStyledAttributes.getFloat(index, this.f1418C0);
                } else if (index == 27) {
                    this.f1419D0 = obtainStyledAttributes.getFloat(index, this.f1419D0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0317a(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0317a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.C0305a(layoutParams);
    }

    public C0309b getConstraintSet() {
        if (this.f1415a == null) {
            this.f1415a = new C0309b();
        }
        C0309b c0309b = this.f1415a;
        Objects.requireNonNull(c0309b);
        int childCount = getChildCount();
        c0309b.f1291c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C0317a c0317a = (C0317a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (c0309b.f1290b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!c0309b.f1291c.containsKey(Integer.valueOf(id))) {
                c0309b.f1291c.put(Integer.valueOf(id), new C0309b.C0310a());
            }
            C0309b.C0310a c0310a = c0309b.f1291c.get(Integer.valueOf(id));
            if (c0310a != null) {
                if (childAt instanceof AbstractC0308a) {
                    AbstractC0308a abstractC0308a = (AbstractC0308a) childAt;
                    c0310a.m8349c(id, c0317a);
                    if (abstractC0308a instanceof Barrier) {
                        C0309b.C0312b c0312b = c0310a.f1295d;
                        c0312b.f1355i0 = 1;
                        Barrier barrier = (Barrier) abstractC0308a;
                        c0312b.f1351g0 = barrier.getType();
                        c0310a.f1295d.f1357j0 = barrier.getReferencedIds();
                        c0310a.f1295d.f1353h0 = barrier.getMargin();
                    }
                }
                c0310a.m8349c(id, c0317a);
            }
        }
        return this.f1415a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
