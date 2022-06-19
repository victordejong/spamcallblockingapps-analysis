package com.rey.material.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.callerid.block.R$styleable;
import com.rey.material.app.b;
import com.rey.material.app.b$b;
import com.rey.material.app.b$c;
import p092e.p107g.p108a.p109a.C3107c;
import p092e.p107g.p108a.p109a.C3111d;
import p092e.p107g.p108a.p109a.View$OnTouchListenerC3116f;
import p092e.p107g.p108a.p110b.C3122b;
import p092e.p107g.p108a.p110b.C3124d;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/FloatingActionButton.class */
public class FloatingActionButton extends View implements b$c {

    /* renamed from: b */
    private C3111d f11759b;

    /* renamed from: c */
    private Drawable f11760c;

    /* renamed from: d */
    private Drawable f11761d;

    /* renamed from: f */
    private Interpolator f11763f;

    /* renamed from: g */
    private RunnableC2829b f11764g;

    /* renamed from: i */
    private View$OnClickListenerC2847a f11766i;

    /* renamed from: j */
    protected int f11767j;

    /* renamed from: e */
    private int f11762e = -1;

    /* renamed from: h */
    private int f11765h = -1;

    /* renamed from: k */
    protected int f11768k = Integer.MIN_VALUE;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/FloatingActionButton$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C2827a();

        /* renamed from: b */
        int f11769b;

        /* renamed from: com.rey.material.widget.FloatingActionButton$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/FloatingActionButton$SavedState$a.class */
        static final class C2827a implements Parcelable.Creator<SavedState> {
            C2827a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f11769b = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FloatingActionButton.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " state=" + this.f11769b + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11769b);
        }
    }

    /* renamed from: com.rey.material.widget.FloatingActionButton$b */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/FloatingActionButton$b.class */
    public class RunnableC2829b implements Runnable {

        /* renamed from: b */
        boolean f11770b = false;

        /* renamed from: c */
        long f11771c;

        RunnableC2829b() {
            FloatingActionButton.this = r4;
        }

        /* renamed from: a */
        public void m1438a() {
            this.f11771c = SystemClock.uptimeMillis();
            FloatingActionButton.this.f11760c.setAlpha(0);
            FloatingActionButton.this.f11761d.setAlpha(255);
        }

        /* renamed from: b */
        public boolean m1437b(Drawable drawable) {
            if (FloatingActionButton.this.f11760c == drawable) {
                return false;
            }
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.f11761d = floatingActionButton.f11760c;
            FloatingActionButton.this.f11760c = drawable;
            float f = FloatingActionButton.this.f11765h / 2.0f;
            FloatingActionButton.this.f11760c.setBounds((int) (FloatingActionButton.this.f11759b.m168c() - f), (int) (FloatingActionButton.this.f11759b.m167d() - f), (int) (FloatingActionButton.this.f11759b.m168c() + f), (int) (FloatingActionButton.this.f11759b.m167d() + f));
            FloatingActionButton.this.f11760c.setCallback(FloatingActionButton.this);
            if (FloatingActionButton.this.getHandler() != null) {
                m1438a();
                this.f11770b = true;
                FloatingActionButton.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
            } else {
                FloatingActionButton.this.f11761d.setCallback(null);
                FloatingActionButton floatingActionButton2 = FloatingActionButton.this;
                floatingActionButton2.unscheduleDrawable(floatingActionButton2.f11761d);
                FloatingActionButton.this.f11761d = null;
            }
            FloatingActionButton.this.invalidate();
            return true;
        }

        /* renamed from: c */
        public void m1436c() {
            this.f11770b = false;
            FloatingActionButton.this.f11761d.setCallback(null);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.unscheduleDrawable(floatingActionButton.f11761d);
            FloatingActionButton.this.f11761d = null;
            FloatingActionButton.this.f11760c.setAlpha(255);
            if (FloatingActionButton.this.getHandler() != null) {
                FloatingActionButton.this.getHandler().removeCallbacks(this);
            }
            FloatingActionButton.this.invalidate();
        }

        @Override // java.lang.Runnable
        public void run() {
            float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f11771c)) / FloatingActionButton.this.f11762e);
            float interpolation = FloatingActionButton.this.f11763f.getInterpolation(min);
            FloatingActionButton.this.f11760c.setAlpha(Math.round(interpolation * 255.0f));
            FloatingActionButton.this.f11761d.setAlpha(Math.round((1.0f - interpolation) * 255.0f));
            if (min == 1.0f) {
                m1436c();
            }
            if (this.f11770b) {
                if (FloatingActionButton.this.getHandler() != null) {
                    FloatingActionButton.this.getHandler().postAtTime(this, SystemClock.uptimeMillis() + 16);
                } else {
                    m1436c();
                }
            }
            FloatingActionButton.this.invalidate();
        }
    }

    public FloatingActionButton(Context context) {
        super(context);
        m1441l(context, null, 0, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m1441l(context, attributeSet, 0, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m1441l(context, attributeSet, i, 0);
    }

    /* renamed from: l */
    private void m1441l(Context context, AttributeSet attributeSet, int i, int i2) {
        setClickable(true);
        this.f11764g = new RunnableC2829b();
        m1442k(context, attributeSet, i, i2);
        this.f11767j = b.f(context, attributeSet, i, i2);
    }

    @Override // com.rey.material.app.b$c
    /* renamed from: d */
    public void mo1341d(b$b b_b) {
        int b = b.c().b(this.f11767j);
        if (this.f11768k != b) {
            this.f11768k = b;
            m1443j(b);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.f11759b.draw(canvas);
        super.draw(canvas);
        Drawable drawable = this.f11761d;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f11760c;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C3111d c3111d = this.f11759b;
        if (c3111d != null) {
            c3111d.setState(getDrawableState());
        }
        Drawable drawable = this.f11760c;
        if (drawable != null) {
            drawable.setState(getDrawableState());
        }
        Drawable drawable2 = this.f11761d;
        if (drawable2 != null) {
            drawable2.setState(getDrawableState());
        }
    }

    public ColorStateList getBackgroundColor() {
        return this.f11759b.m166e();
    }

    @Override // android.view.View
    @TargetApi(21)
    public float getElevation() {
        return Build.VERSION.SDK_INT >= 21 ? super.getElevation() : this.f11759b.m160k();
    }

    public Drawable getIcon() {
        return this.f11760c;
    }

    public int getLineMorphingState() {
        Drawable drawable = this.f11760c;
        if (drawable == null || !(drawable instanceof C3107c)) {
            return -1;
        }
        return ((C3107c) drawable).m197b();
    }

    public int getRadius() {
        return this.f11759b.m161j();
    }

    protected View$OnClickListenerC2847a getRippleManager() {
        if (this.f11766i == null) {
            synchronized (View$OnClickListenerC2847a.class) {
                try {
                    if (this.f11766i == null) {
                        this.f11766i = new View$OnClickListenerC2847a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f11766i;
    }

    /* renamed from: j */
    public void m1443j(int i) {
        C3124d.m75b(this, i);
        m1442k(getContext(), null, 0, i);
    }

    /* renamed from: k */
    protected void m1442k(Context context, AttributeSet attributeSet, int i, int i2) {
        int i3;
        Drawable background;
        C3107c drawable;
        int i4;
        int i5;
        ColorStateList colorStateList;
        int i6;
        int i7;
        int i8;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionButton, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        ColorStateList colorStateList2 = null;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            i3 = i14;
            if (i12 >= indexCount) {
                break;
            }
            int index = obtainStyledAttributes.getIndex(i12);
            if (index == 16) {
                i8 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i7 = i10;
                i6 = i11;
                colorStateList = colorStateList2;
                i5 = i13;
                i4 = i3;
            } else if (index == 11) {
                i7 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i8 = i9;
                i6 = i11;
                colorStateList = colorStateList2;
                i5 = i13;
                i4 = i3;
            } else if (index == 10) {
                colorStateList = obtainStyledAttributes.getColorStateList(index);
                i8 = i9;
                i7 = i10;
                i6 = i11;
                i5 = i13;
                i4 = i3;
            } else if (index == 9) {
                i6 = obtainStyledAttributes.getInteger(index, 0);
                i8 = i9;
                i7 = i10;
                colorStateList = colorStateList2;
                i5 = i13;
                i4 = i3;
            } else if (index == 14) {
                i4 = obtainStyledAttributes.getResourceId(index, 0);
                i8 = i9;
                i7 = i10;
                i6 = i11;
                colorStateList = colorStateList2;
                i5 = i13;
            } else if (index == 12) {
                i5 = obtainStyledAttributes.getResourceId(index, 0);
                i8 = i9;
                i7 = i10;
                i6 = i11;
                colorStateList = colorStateList2;
                i4 = i3;
            } else if (index == 13) {
                this.f11765h = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i8 = i9;
                i7 = i10;
                i6 = i11;
                colorStateList = colorStateList2;
                i5 = i13;
                i4 = i3;
            } else if (index == 8) {
                this.f11762e = obtainStyledAttributes.getInteger(index, 0);
                i8 = i9;
                i7 = i10;
                i6 = i11;
                colorStateList = colorStateList2;
                i5 = i13;
                i4 = i3;
            } else {
                i8 = i9;
                i7 = i10;
                i6 = i11;
                colorStateList = colorStateList2;
                i5 = i13;
                i4 = i3;
                if (index == 15) {
                    int resourceId = obtainStyledAttributes.getResourceId(15, 0);
                    i8 = i9;
                    i7 = i10;
                    i6 = i11;
                    colorStateList = colorStateList2;
                    i5 = i13;
                    i4 = i3;
                    if (resourceId != 0) {
                        this.f11763f = AnimationUtils.loadInterpolator(context, resourceId);
                        i4 = i3;
                        i5 = i13;
                        colorStateList = colorStateList2;
                        i6 = i11;
                        i7 = i10;
                        i8 = i9;
                    }
                }
            }
            i12++;
            i9 = i8;
            i10 = i7;
            i11 = i6;
            colorStateList2 = colorStateList;
            i13 = i5;
            i14 = i4;
        }
        obtainStyledAttributes.recycle();
        if (this.f11765h < 0) {
            this.f11765h = C3122b.m81e(context, 24);
        }
        if (this.f11762e < 0) {
            this.f11762e = context.getResources().getInteger(17694721);
        }
        if (this.f11763f == null) {
            this.f11763f = new DecelerateInterpolator();
        }
        C3111d c3111d = this.f11759b;
        if (c3111d == null) {
            int i15 = i9;
            if (i9 < 0) {
                i15 = C3122b.m81e(context, 28);
            }
            int i16 = i10;
            if (i10 < 0) {
                i16 = C3122b.m81e(context, 4);
            }
            ColorStateList colorStateList3 = colorStateList2;
            if (colorStateList2 == null) {
                colorStateList3 = ColorStateList.valueOf(C3122b.m85a(context, 0));
            }
            if (i11 < 0) {
                i11 = 0;
            }
            float f = i16;
            C3111d c3111d2 = new C3111d(i15, colorStateList3, f, f, i11);
            this.f11759b = c3111d2;
            c3111d2.m154q(isInEditMode());
            this.f11759b.setBounds(0, 0, getWidth(), getHeight());
            this.f11759b.setCallback(this);
        } else {
            if (i9 >= 0) {
                c3111d.m153r(i9);
            }
            if (colorStateList2 != null) {
                this.f11759b.m155p(colorStateList2);
            }
            if (i10 >= 0) {
                float f2 = i10;
                this.f11759b.m152s(f2, f2);
            }
            if (i11 >= 0) {
                this.f11759b.m157n(i11);
            }
        }
        if (i13 == 0) {
            if (i3 != 0) {
                drawable = context.getResources().getDrawable(i3);
            }
            getRippleManager().m1337c(this, context, attributeSet, i, i2);
            background = getBackground();
            if (background != null || !(background instanceof View$OnTouchListenerC3116f)) {
            }
            View$OnTouchListenerC3116f view$OnTouchListenerC3116f = (View$OnTouchListenerC3116f) background;
            view$OnTouchListenerC3116f.m125r(null);
            view$OnTouchListenerC3116f.m123t(1, 0, 0, 0, 0, (int) this.f11759b.m164g(), (int) this.f11759b.m162i(), (int) this.f11759b.m163h(), (int) this.f11759b.m165f());
            return;
        }
        drawable = new C3107c.C3109b(context, i13).m186b();
        setIcon(drawable, false);
        getRippleManager().m1337c(this, context, attributeSet, i, i2);
        background = getBackground();
        if (background != null) {
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11767j == 0 || isInEditMode()) {
            return;
        }
        b.c().j(this);
        mo1341d(null);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        View$OnClickListenerC2847a.m1339a(this);
        if (this.f11767j != 0) {
            b.c().m(this);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.f11759b.getIntrinsicWidth(), this.f11759b.getIntrinsicHeight());
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i = savedState.f11769b;
        if (i >= 0) {
            setLineMorphingState(i, false);
        }
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f11769b = getLineMorphingState();
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f11759b.setBounds(0, 0, i, i2);
        Drawable drawable = this.f11760c;
        if (drawable != null) {
            float f = this.f11765h / 2.0f;
            drawable.setBounds((int) (this.f11759b.m168c() - f), (int) (this.f11759b.m167d() - f), (int) (this.f11759b.m168c() + f), (int) (this.f11759b.m167d() + f));
        }
        Drawable drawable2 = this.f11761d;
        if (drawable2 != null) {
            float f2 = this.f11765h / 2.0f;
            drawable2.setBounds((int) (this.f11759b.m168c() - f2), (int) (this.f11759b.m167d() - f2), (int) (this.f11759b.m168c() + f2), (int) (this.f11759b.m167d() + f2));
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (motionEvent.getActionMasked() != 0 || this.f11759b.m159l(motionEvent.getX(), motionEvent.getY())) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (getRippleManager().m1336d(motionEvent) || onTouchEvent) {
                z = true;
            }
            return z;
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f11759b.m156o(i);
        invalidate();
    }

    public void setBackgroundColor(ColorStateList colorStateList) {
        this.f11759b.m155p(colorStateList);
        invalidate();
    }

    @Override // android.view.View
    @TargetApi(21)
    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        } else if (!this.f11759b.m152s(f, f)) {
        } else {
            requestLayout();
        }
    }

    public void setHideAnimation(Animation animation) {
    }

    public void setIcon(Drawable drawable, boolean z) {
        if (drawable == null) {
            return;
        }
        if (z) {
            this.f11764g.m1437b(drawable);
        } else {
            Drawable drawable2 = this.f11760c;
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f11760c);
            }
            this.f11760c = drawable;
            float f = this.f11765h / 2.0f;
            drawable.setBounds((int) (this.f11759b.m168c() - f), (int) (this.f11759b.m167d() - f), (int) (this.f11759b.m168c() + f), (int) (this.f11759b.m167d() + f));
            this.f11760c.setCallback(this);
        }
        invalidate();
    }

    public void setLineMorphingState(int i, boolean z) {
        Drawable drawable = this.f11760c;
        if (drawable == null || !(drawable instanceof C3107c)) {
            return;
        }
        ((C3107c) drawable).m192g(i, z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        View$OnClickListenerC2847a rippleManager = getRippleManager();
        if (onClickListener == rippleManager) {
            super.setOnClickListener(onClickListener);
            return;
        }
        rippleManager.m1335f(onClickListener);
        setOnClickListener(rippleManager);
    }

    public void setRadius(int i) {
        if (this.f11759b.m153r(i)) {
            requestLayout();
        }
    }

    public void setShowAnimation(Animation animation) {
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || this.f11759b == drawable || this.f11760c == drawable || this.f11761d == drawable;
    }
}
