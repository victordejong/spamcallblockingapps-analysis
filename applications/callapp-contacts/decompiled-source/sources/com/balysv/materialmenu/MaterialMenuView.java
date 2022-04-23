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
import com.balysv.materialmenu.a;
import com.balysv.materialmenu.b;
/* loaded from: classes-dex2jar.jar:com/balysv/materialmenu/MaterialMenuView.class */
public class MaterialMenuView extends View {

    /* renamed from: a  reason: collision with root package name */
    public a f7174a;

    /* renamed from: b  reason: collision with root package name */
    public a.b f7175b;

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
        protected a.b state;
        protected boolean visible;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.state = a.b.values()[parcel.readInt()];
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
        this.f7175b = a.b.BURGER;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.a.MaterialMenuView, 0, 0);
        try {
            int color = obtainStyledAttributes.getColor(b.a.MaterialMenuView_mm_color, -1);
            boolean z = obtainStyledAttributes.getBoolean(b.a.MaterialMenuView_mm_visible, true);
            int integer = obtainStyledAttributes.getInteger(b.a.MaterialMenuView_mm_scale, 1);
            int integer2 = obtainStyledAttributes.getInteger(b.a.MaterialMenuView_mm_transformDuration, 800);
            a.d valueOf = a.d.valueOf(obtainStyledAttributes.getInteger(b.a.MaterialMenuView_mm_strokeWidth, 0));
            boolean z2 = obtainStyledAttributes.getBoolean(b.a.MaterialMenuView_mm_rtlEnabled, false);
            int i2 = obtainStyledAttributes.getInt(b.a.MaterialMenuView_mm_iconState, 0);
            if (i2 == 0) {
                this.f7175b = a.b.BURGER;
            } else if (i2 == 1) {
                this.f7175b = a.b.ARROW;
            } else if (i2 == 2) {
                this.f7175b = a.b.X;
            } else if (i2 == 3) {
                this.f7175b = a.b.CHECK;
            }
            a aVar = new a(context, color, valueOf, integer, integer2);
            this.f7174a = aVar;
            aVar.a(this.f7175b);
            this.f7174a.a(z);
            this.f7174a.b(z2);
            obtainStyledAttributes.recycle();
            this.f7174a.setCallback(this);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void a() {
        a aVar = this.f7174a;
        if (aVar != null) {
            aVar.setBounds(0, 0, aVar.getIntrinsicWidth() + getPaddingLeft() + getPaddingRight(), this.f7174a.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom());
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (getPaddingLeft() == 0 && getPaddingTop() == 0) {
            this.f7174a.draw(canvas);
            return;
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        this.f7174a.draw(canvas);
        canvas.restoreToCount(saveCount);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (Build.VERSION.SDK_INT >= 11) {
            setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(this.f7174a.getIntrinsicWidth() + paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f7174a.getIntrinsicHeight() + paddingTop, 1073741824));
        } else {
            setMeasuredDimension(this.f7174a.getIntrinsicWidth() + paddingLeft, this.f7174a.getIntrinsicHeight() + paddingTop);
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
        savedState.state = this.f7175b;
        a aVar = this.f7174a;
        savedState.visible = aVar != null && aVar.h;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a();
    }

    public void setAnimationListener(Animator.AnimatorListener animatorListener) {
        a aVar = this.f7174a;
        if (aVar.j != null) {
            aVar.i.removeListener(aVar.j);
        }
        if (animatorListener != null) {
            aVar.i.addListener(animatorListener);
        }
        aVar.j = animatorListener;
    }

    public void setColor(int i) {
        a aVar = this.f7174a;
        aVar.f7177b.setColor(i);
        aVar.f7178c.setColor(i);
        aVar.invalidateSelf();
    }

    public void setIconState(a.b bVar) {
        this.f7175b = bVar;
        this.f7174a.a(bVar);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f7174a.i.setInterpolator(interpolator);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        a();
    }

    public void setRTLEnabled(boolean z) {
        this.f7174a.b(z);
    }

    public void setTransformationDuration(int i) {
        this.f7174a.i.setDuration(i);
    }

    public void setVisible(boolean z) {
        this.f7174a.a(z);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.f7174a || super.verifyDrawable(drawable);
    }
}
