package com.google.android.material.floatingactionbutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.appcompat.widget.C0392f;
import androidx.appcompat.widget.C0395h;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.p036e.C0833d;
import androidx.core.view.AbstractC0925u;
import androidx.core.view.C0926v;
import androidx.core.widget.AbstractC0963k;
import androidx.p023b.C0441g;
import com.google.android.material.C14376a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.C14578d;
import com.google.android.material.internal.C14619b;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.p364a.AbstractC14399k;
import com.google.android.material.p364a.C14396h;
import com.google.android.material.p369f.AbstractC14553a;
import com.google.android.material.p369f.C14555c;
import com.google.android.material.p373j.AbstractC14662b;
import com.google.android.material.p374k.AbstractC14695q;
import com.google.android.material.p374k.C14674i;
import com.google.android.material.p374k.C14678m;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton.class */
public class FloatingActionButton extends VisibilityAwareImageButton implements CoordinatorLayout.AbstractC0699a, AbstractC0925u, AbstractC0963k, AbstractC14553a, AbstractC14695q {

    /* renamed from: e */
    private static final int f53111e = C14376a.C14387k.Widget_Design_FloatingActionButton;

    /* renamed from: a */
    boolean f53112a;

    /* renamed from: b */
    final Rect f53113b;

    /* renamed from: c */
    public final C14555c f53114c;

    /* renamed from: f */
    private ColorStateList f53115f;

    /* renamed from: g */
    private PorterDuff.Mode f53116g;

    /* renamed from: h */
    private ColorStateList f53117h;

    /* renamed from: i */
    private PorterDuff.Mode f53118i;

    /* renamed from: j */
    private ColorStateList f53119j;

    /* renamed from: k */
    private int f53120k;

    /* renamed from: l */
    private int f53121l;

    /* renamed from: m */
    private int f53122m;

    /* renamed from: n */
    private int f53123n;

    /* renamed from: o */
    private int f53124o;

    /* renamed from: p */
    private final Rect f53125p;

    /* renamed from: q */
    private final C0395h f53126q;

    /* renamed from: r */
    private C14578d f53127r;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior.class */
    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a */
        private Rect f53130a;

        /* renamed from: b */
        private AbstractC14569a f53131b;

        /* renamed from: c */
        private boolean f53132c;

        public BaseBehavior() {
            this.f53132c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.FloatingActionButton_Behavior_Layout);
            this.f53132c = obtainStyledAttributes.getBoolean(C14376a.C14388l.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        private static boolean m10733a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0702d) {
                return ((CoordinatorLayout.C0702d) layoutParams).f3200a instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* renamed from: a */
        private boolean m10732a(View view, FloatingActionButton floatingActionButton) {
            return this.f53132c && ((CoordinatorLayout.C0702d) floatingActionButton.getLayoutParams()).f3205f == view.getId() && floatingActionButton.f53314d == 0;
        }

        /* renamed from: a */
        private boolean m10730a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!m10732a((View) appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f53130a == null) {
                this.f53130a = new Rect();
            }
            Rect rect = this.f53130a;
            C14619b.m10556b(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.m11308f()) {
                floatingActionButton.m10738b(this.f53131b, false);
                return true;
            }
            floatingActionButton.m10743a(this.f53131b, false);
            return true;
        }

        /* renamed from: b */
        private boolean m10729b(View view, FloatingActionButton floatingActionButton) {
            if (!m10732a(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((CoordinatorLayout.C0702d) floatingActionButton.getLayoutParams()).topMargin) {
                floatingActionButton.m10738b(this.f53131b, false);
                return true;
            }
            floatingActionButton.m10743a(this.f53131b, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public void mo9842a(CoordinatorLayout.C0702d c0702d) {
            if (c0702d.f3207h == 0) {
                c0702d.f3207h = 80;
            }
        }

        /* renamed from: a */
        public boolean mo9852a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            int i2;
            List<View> m44656b = coordinatorLayout.m44656b(floatingActionButton);
            int size = m44656b.size();
            for (int i3 = 0; i3 < size; i3++) {
                View view = m44656b.get(i3);
                if (!(view instanceof AppBarLayout)) {
                    if (m10733a(view) && m10729b(view, floatingActionButton)) {
                        break;
                    }
                } else if (m10730a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.m44655b(floatingActionButton, i);
            Rect rect = floatingActionButton.f53113b;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.C0702d c0702d = (CoordinatorLayout.C0702d) floatingActionButton.getLayoutParams();
            int i4 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - c0702d.rightMargin ? rect.right : floatingActionButton.getLeft() <= c0702d.leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - c0702d.bottomMargin) {
                i2 = rect.bottom;
            } else {
                i2 = 0;
                if (floatingActionButton.getTop() <= c0702d.topMargin) {
                    i2 = -rect.top;
                }
            }
            if (i2 != 0) {
                C0926v.m44098e(floatingActionButton, i2);
            }
            if (i4 == 0) {
                return true;
            }
            C0926v.m44096f(floatingActionButton, i4);
            return true;
        }

        /* renamed from: a */
        public boolean mo10731a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f53113b;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        /* renamed from: a */
        public boolean mo9851a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m10730a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            } else if (!m10733a(view)) {
                return false;
            } else {
                m10729b(view, floatingActionButton);
                return false;
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$Behavior.class */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo9842a(CoordinatorLayout.C0702d c0702d) {
            super.mo9842a(c0702d);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo10728a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            return super.mo9852a(coordinatorLayout, floatingActionButton, i);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo10727a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            return super.mo10731a(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo10726a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.mo9851a(coordinatorLayout, floatingActionButton, view);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$a.class */
    public static abstract class AbstractC14569a {
        /* renamed from: a */
        public void mo10725a(FloatingActionButton floatingActionButton) {
        }

        /* renamed from: b */
        public void mo10724b(FloatingActionButton floatingActionButton) {
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$b.class */
    public final class C14570b implements AbstractC14662b {
        C14570b() {
            FloatingActionButton.this = r4;
        }

        @Override // com.google.android.material.p373j.AbstractC14662b
        /* renamed from: a */
        public final void mo10486a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f53113b.set(i, i2, i3, i4);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i + floatingActionButton.f53123n, i2 + FloatingActionButton.this.f53123n, i3 + FloatingActionButton.this.f53123n, i4 + FloatingActionButton.this.f53123n);
        }

        @Override // com.google.android.material.p373j.AbstractC14662b
        /* renamed from: a */
        public final void mo10485a(Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // com.google.android.material.p373j.AbstractC14662b
        /* renamed from: a */
        public final boolean mo10487a() {
            return FloatingActionButton.this.f53112a;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$c.class */
    public final class C14571c<T extends FloatingActionButton> implements C14578d.AbstractC14587d {

        /* renamed from: b */
        private final AbstractC14399k<T> f53135b;

        public C14571c(AbstractC14399k<T> abstractC14399k) {
            FloatingActionButton.this = r4;
            this.f53135b = abstractC14399k;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.C14578d.AbstractC14587d
        /* renamed from: a */
        public final void mo10691a() {
            this.f53135b.mo11163a(FloatingActionButton.this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.C14578d.AbstractC14587d
        /* renamed from: b */
        public final void mo10690b() {
            this.f53135b.mo11162b(FloatingActionButton.this);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof C14571c) && ((C14571c) obj).f53135b.equals(this.f53135b);
        }

        public final int hashCode() {
            return this.f53135b.hashCode();
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.floatingActionButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FloatingActionButton(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.FloatingActionButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    private int m10747a(int i) {
        while (true) {
            int i2 = this.f53122m;
            if (i2 != 0) {
                return i2;
            }
            Resources resources = getResources();
            if (i != -1) {
                return i != 1 ? resources.getDimensionPixelSize(C14376a.C14380d.design_fab_size_normal) : resources.getDimensionPixelSize(C14376a.C14380d.design_fab_size_mini);
            }
            i = Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? 1 : 0;
        }
    }

    /* renamed from: a */
    private static int m10746a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            i = Math.min(i, size);
        } else if (mode != 0) {
            if (mode != 1073741824) {
                throw new IllegalArgumentException();
            }
            i = size;
        }
        return i;
    }

    /* renamed from: a */
    private C14578d.AbstractC14588e m10744a(final AbstractC14569a abstractC14569a) {
        if (abstractC14569a == null) {
            return null;
        }
        return new C14578d.AbstractC14588e() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButton.1
            @Override // com.google.android.material.floatingactionbutton.C14578d.AbstractC14588e
            /* renamed from: a */
            public final void mo10689a() {
                abstractC14569a.mo10725a(FloatingActionButton.this);
            }

            @Override // com.google.android.material.floatingactionbutton.C14578d.AbstractC14588e
            /* renamed from: b */
            public final void mo10688b() {
                abstractC14569a.mo10724b(FloatingActionButton.this);
            }
        };
    }

    /* renamed from: e */
    private void m10735e() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f53117h;
        if (colorStateList == null) {
            C0840a.m44346e(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f53118i;
        PorterDuff.Mode mode2 = mode;
        if (mode == null) {
            mode2 = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(C0392f.m45731a(colorForState, mode2));
    }

    /* renamed from: f */
    private C14578d m10734f() {
        return Build.VERSION.SDK_INT >= 21 ? new C14591e(this, new C14570b()) : new C14578d(this, new C14570b());
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0699a
    /* renamed from: a */
    public final CoordinatorLayout.Behavior<FloatingActionButton> mo10748a() {
        return new Behavior();
    }

    /* renamed from: a */
    public final void m10743a(AbstractC14569a abstractC14569a, boolean z) {
        m10736d().m10705b(m10744a(abstractC14569a), z);
    }

    @Deprecated
    /* renamed from: a */
    public final boolean m10745a(Rect rect) {
        if (C0926v.m44157B(this)) {
            rect.set(0, 0, getWidth(), getHeight());
            m10739b(rect);
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final void m10739b(Rect rect) {
        rect.left += this.f53113b.left;
        rect.top += this.f53113b.top;
        rect.right -= this.f53113b.right;
        rect.bottom -= this.f53113b.bottom;
    }

    /* renamed from: b */
    public final void m10738b(AbstractC14569a abstractC14569a, boolean z) {
        m10736d().m10714a(m10744a(abstractC14569a), z);
    }

    @Override // com.google.android.material.p369f.AbstractC14554b
    /* renamed from: b */
    public final boolean mo10740b() {
        return this.f53114c.f53073b;
    }

    /* renamed from: c */
    public final int m10737c() {
        return m10747a(this.f53121l);
    }

    /* renamed from: d */
    public final C14578d m10736d() {
        if (this.f53127r == null) {
            this.f53127r = m10734f();
        }
        return this.f53127r;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        m10736d().mo10680a(getDrawableState());
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f53115f;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f53116g;
    }

    @Override // androidx.core.view.AbstractC0925u
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.AbstractC0925u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.AbstractC0963k
    public ColorStateList getSupportImageTintList() {
        return this.f53117h;
    }

    @Override // androidx.core.widget.AbstractC0963k
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f53118i;
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        m10736d().mo10679d();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        final C14578d m10736d = m10736d();
        if (m10736d.f53181c != null) {
            C14674i.m10435a(m10736d.f53198z, m10736d.f53181c);
        }
        if (m10736d.mo10676j()) {
            ViewTreeObserver viewTreeObserver = m10736d.f53198z.getViewTreeObserver();
            if (m10736d.f53169B == null) {
                m10736d.f53169B = new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.floatingactionbutton.d.5
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public final boolean onPreDraw() {
                        C14578d c14578d = C14578d.this;
                        float rotation = c14578d.f53198z.getRotation();
                        if (c14578d.f53193o != rotation) {
                            c14578d.f53193o = rotation;
                            c14578d.mo10674n();
                            return true;
                        }
                        return true;
                    }
                };
            }
            viewTreeObserver.addOnPreDrawListener(m10736d.f53169B);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C14578d m10736d = m10736d();
        ViewTreeObserver viewTreeObserver = m10736d.f53198z.getViewTreeObserver();
        if (m10736d.f53169B != null) {
            viewTreeObserver.removeOnPreDrawListener(m10736d.f53169B);
            m10736d.f53169B = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int m10737c = m10737c();
        this.f53123n = (m10737c - this.f53124o) / 2;
        m10736d().m10698h();
        int min = Math.min(m10746a(m10737c, i), m10746a(m10737c, i2));
        setMeasuredDimension(this.f53113b.left + min + this.f53113b.right, min + this.f53113b.top + this.f53113b.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        C14555c c14555c = this.f53114c;
        Bundle bundle = (Bundle) C0833d.m44410a(extendableSavedState.extendableStates.get("expandableWidgetHelper"));
        c14555c.f53073b = bundle.getBoolean("expanded", false);
        c14555c.f53074c = bundle.getInt("expandedComponentIdHint", 0);
        if (!c14555c.f53073b) {
            return;
        }
        ViewParent parent = c14555c.f53072a.getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        ((CoordinatorLayout) parent).m44664a(c14555c.f53072a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = onSaveInstanceState;
        if (onSaveInstanceState == null) {
            bundle = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(bundle);
        C0441g<String, Bundle> c0441g = extendableSavedState.extendableStates;
        C14555c c14555c = this.f53114c;
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("expanded", c14555c.f53073b);
        bundle2.putInt("expandedComponentIdHint", c14555c.f53074c);
        c0441g.put("expandableWidgetHelper", bundle2);
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !m10745a(this.f53125p) || this.f53125p.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f53115f != colorStateList) {
            this.f53115f = colorStateList;
            C14578d m10736d = m10736d();
            if (m10736d.f53181c != null) {
                m10736d.f53181c.setTintList(colorStateList);
            }
            if (m10736d.f53183e == null) {
                return;
            }
            m10736d.f53183e.m10720a(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f53116g != mode) {
            this.f53116g = mode;
            C14578d m10736d = m10736d();
            if (m10736d.f53181c == null) {
                return;
            }
            m10736d.f53181c.setTintMode(mode);
        }
    }

    public void setCompatElevation(float f) {
        m10736d().m10718a(f);
    }

    public void setCompatElevationResource(int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        m10736d().m10707b(f);
    }

    public void setCompatHoveredFocusedTranslationZResource(int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        m10736d().m10703c(f);
    }

    public void setCompatPressedTranslationZResource(int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(int i) {
        if (i >= 0) {
            if (i == this.f53122m) {
                return;
            }
            this.f53122m = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Custom size must be non-negative");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m10736d().m10702d(f);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != m10736d().f53185g) {
            m10736d().f53185g = z;
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i) {
        this.f53114c.f53074c = i;
    }

    public void setHideMotionSpec(C14396h c14396h) {
        m10736d().f53192n = c14396h;
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C14396h.m11333a(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            m10736d().m10708b();
            if (this.f53117h == null) {
                return;
            }
            m10735e();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.f53126q.m45718a(i);
        m10735e();
    }

    public void setRippleColor(int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f53119j != colorStateList) {
            this.f53119j = colorStateList;
            m10736d().mo10683a(this.f53119j);
        }
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        m10736d().m10699f();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        m10736d().m10699f();
    }

    public void setShadowPaddingEnabled(boolean z) {
        C14578d m10736d = m10736d();
        m10736d.f53186h = z;
        m10736d.m10698h();
    }

    @Override // com.google.android.material.p374k.AbstractC14695q
    public void setShapeAppearanceModel(C14678m c14678m) {
        m10736d().m10709a(c14678m);
    }

    public void setShowMotionSpec(C14396h c14396h) {
        m10736d().f53191m = c14396h;
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C14396h.m11333a(getContext(), i));
    }

    public void setSize(int i) {
        this.f53122m = 0;
        if (i != this.f53121l) {
            this.f53121l = i;
            requestLayout();
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.AbstractC0963k
    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f53117h != colorStateList) {
            this.f53117h = colorStateList;
            m10735e();
        }
    }

    @Override // androidx.core.widget.AbstractC0963k
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f53118i != mode) {
            this.f53118i = mode;
            m10735e();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        m10736d().m10701e();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        m10736d().m10701e();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        m10736d().m10701e();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f53112a != z) {
            this.f53112a = z;
            m10736d().mo10678g();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }
}
