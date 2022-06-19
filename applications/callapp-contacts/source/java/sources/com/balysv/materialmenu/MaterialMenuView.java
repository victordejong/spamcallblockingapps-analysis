package com.balysv.materialmenu;

import android.animation.Animator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import com.balysv.materialmenu.C3521a;
import com.balysv.materialmenu.C3529b;
/* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/MaterialMenuView.class */
public class MaterialMenuView extends View {

    /* renamed from: a */
    public C3521a f13390a;

    /* renamed from: b */
    public C3521a.EnumC3526b f13391b;

    /* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/MaterialMenuView$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.balysv.materialmenu.MaterialMenuView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        protected C3521a.EnumC3526b state;
        protected boolean visible;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.state = C3521a.EnumC3526b.values()[parcel.readInt()];
            this.visible = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state.ordinal());
            parcel.writeByte(this.visible ? (byte) 1 : (byte) 0);
        }
    }

    public MaterialMenuView(Context context) {
        this(context, null);
    }

    public MaterialMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public MaterialMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f13391b = C3521a.EnumC3526b.BURGER;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3529b.C3530a.MaterialMenuView, 0, 0);
        try {
            int color = obtainStyledAttributes.getColor(C3529b.C3530a.MaterialMenuView_mm_color, -1);
            boolean z = obtainStyledAttributes.getBoolean(C3529b.C3530a.MaterialMenuView_mm_visible, true);
            int integer = obtainStyledAttributes.getInteger(C3529b.C3530a.MaterialMenuView_mm_scale, 1);
            int integer2 = obtainStyledAttributes.getInteger(C3529b.C3530a.MaterialMenuView_mm_transformDuration, 800);
            C3521a.EnumC3528d valueOf = C3521a.EnumC3528d.valueOf(obtainStyledAttributes.getInteger(C3529b.C3530a.MaterialMenuView_mm_strokeWidth, 0));
            boolean z2 = obtainStyledAttributes.getBoolean(C3529b.C3530a.MaterialMenuView_mm_rtlEnabled, false);
            int i2 = obtainStyledAttributes.getInt(C3529b.C3530a.MaterialMenuView_mm_iconState, 0);
            if (i2 == 0) {
                this.f13391b = C3521a.EnumC3526b.BURGER;
            } else if (i2 == 1) {
                this.f13391b = C3521a.EnumC3526b.ARROW;
            } else if (i2 == 2) {
                this.f13391b = C3521a.EnumC3526b.X;
            } else if (i2 == 3) {
                this.f13391b = C3521a.EnumC3526b.CHECK;
            }
            C3521a c3521a = new C3521a(context, color, valueOf, integer, integer2);
            this.f13390a = c3521a;
            c3521a.m37821a(this.f13391b);
            this.f13390a.m37819a(z);
            this.f13390a.m37816b(z2);
            obtainStyledAttributes.recycle();
            this.f13390a.setCallback(this);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    private void m37826a() {
        C3521a c3521a = this.f13390a;
        if (c3521a != null) {
            c3521a.setBounds(0, 0, c3521a.getIntrinsicWidth() + getPaddingLeft() + getPaddingRight(), this.f13390a.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom());
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (getPaddingLeft() == 0 && getPaddingTop() == 0) {
            this.f13390a.draw(canvas);
            return;
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        this.f13390a.draw(canvas);
        canvas.restoreToCount(saveCount);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (Build.VERSION.SDK_INT >= 11) {
            setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(this.f13390a.getIntrinsicWidth() + paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f13390a.getIntrinsicHeight() + paddingTop, 1073741824));
        } else {
            setMeasuredDimension(this.f13390a.getIntrinsicWidth() + paddingLeft, this.f13390a.getIntrinsicHeight() + paddingTop);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setIconState(savedState.state);
        setVisible(savedState.visible);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.state = this.f13391b;
        C3521a c3521a = this.f13390a;
        savedState.visible = c3521a != null && c3521a.f13401h;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m37826a();
    }

    public void setAnimationListener(Animator.AnimatorListener animatorListener) {
        C3521a c3521a = this.f13390a;
        if (c3521a.f13403j != null) {
            c3521a.f13402i.removeListener(c3521a.f13403j);
        }
        if (animatorListener != null) {
            c3521a.f13402i.addListener(animatorListener);
        }
        c3521a.f13403j = animatorListener;
    }

    public void setColor(int i) {
        C3521a c3521a = this.f13390a;
        c3521a.f13395b.setColor(i);
        c3521a.f13396c.setColor(i);
        c3521a.invalidateSelf();
    }

    public void setIconState(C3521a.EnumC3526b enumC3526b) {
        this.f13391b = enumC3526b;
        this.f13390a.m37821a(enumC3526b);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f13390a.f13402i.setInterpolator(interpolator);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        m37826a();
    }

    public void setRTLEnabled(boolean z) {
        this.f13390a.m37816b(z);
    }

    public void setTransformationDuration(int i) {
        this.f13390a.f13402i.setDuration(i);
    }

    public void setVisible(boolean z) {
        this.f13390a.m37819a(z);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.f13390a || super.verifyDrawable(drawable);
    }
}
