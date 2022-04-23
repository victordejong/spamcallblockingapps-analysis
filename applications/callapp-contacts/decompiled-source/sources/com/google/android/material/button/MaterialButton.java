package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.v;
import androidx.core.widget.h;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.a;
import com.google.android.material.k.i;
import com.google.android.material.k.m;
import com.google.android.material.k.q;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButton.class */
public class MaterialButton extends AppCompatButton implements Checkable, q {
    private static final int[] f = {16842911};
    private static final int[] g = {16842912};
    private static final int h = a.k.Widget_MaterialComponents_Button;

    /* renamed from: a  reason: collision with root package name */
    final com.google.android.material.button.a f30337a;

    /* renamed from: b  reason: collision with root package name */
    final LinkedHashSet<a> f30338b;

    /* renamed from: c  reason: collision with root package name */
    b f30339c;
    public Drawable e;
    private PorterDuff.Mode i;
    private ColorStateList j;
    private int k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private int q;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButton$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.button.MaterialButton.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
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
        boolean checked;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            readFromParcel(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(Parcel parcel) {
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.checked = z;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.checked ? 1 : 0);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButton$a.class */
    public interface a {
        void a(MaterialButton materialButton, boolean z);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButton$b.class */
    interface b {
        void a();
    }

    public MaterialButton(Context context) {
        this(context, null);
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButton(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private String a() {
        return (m() ? CompoundButton.class : Button.class).getName();
    }

    private void a(int i, int i2) {
        if (this.e != null && getLayout() != null) {
            if (j() || k()) {
                this.m = 0;
                int i3 = this.q;
                boolean z = true;
                if (i3 == 1 || i3 == 3) {
                    this.l = 0;
                    a(false);
                    return;
                }
                int i4 = this.k;
                int i5 = i4;
                if (i4 == 0) {
                    i5 = this.e.getIntrinsicWidth();
                }
                int f2 = (((((i - f()) - v.j(this)) - i5) - this.n) - v.i(this)) / 2;
                boolean h2 = h();
                if (this.q != 4) {
                    z = false;
                }
                int i6 = f2;
                if (h2 != z) {
                    i6 = -f2;
                }
                if (this.l != i6) {
                    this.l = i6;
                    a(false);
                }
            } else if (l()) {
                this.l = 0;
                if (this.q == 16) {
                    this.m = 0;
                    a(false);
                    return;
                }
                int i7 = this.k;
                int i8 = i7;
                if (i7 == 0) {
                    i8 = this.e.getIntrinsicHeight();
                }
                int g2 = (((((i2 - g()) - getPaddingTop()) - i8) - this.n) - getPaddingBottom()) / 2;
                if (this.m != g2) {
                    this.m = g2;
                    a(false);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d1, code lost:
        if (r0 != r7.e) goto L_0x00d4;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(boolean r8) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.a(boolean):void");
    }

    private int f() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        String str = charSequence;
        if (getTransformationMethod() != null) {
            str = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        return Math.min((int) paint.measureText(str), getLayout().getEllipsizedWidth());
    }

    private int g() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        String str = charSequence;
        if (getTransformationMethod() != null) {
            str = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, str.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private boolean h() {
        return v.f(this) == 1;
    }

    private void i() {
        if (j()) {
            h.a(this, this.e, null, null, null);
        } else if (k()) {
            h.a(this, null, null, this.e, null);
        } else if (l()) {
            h.a(this, null, this.e, null, null);
        }
    }

    private boolean j() {
        int i = this.q;
        return i == 1 || i == 2;
    }

    private boolean k() {
        int i = this.q;
        return i == 3 || i == 4;
    }

    private boolean l() {
        int i = this.q;
        return i == 16 || i == 32;
    }

    private boolean m() {
        com.google.android.material.button.a aVar = this.f30337a;
        return aVar != null && aVar.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public final int b() {
        return this.k;
    }

    public final int c() {
        if (e()) {
            return this.f30337a.i;
        }
        return 0;
    }

    public final m d() {
        if (e()) {
            return this.f30337a.f30354c;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        com.google.android.material.button.a aVar = this.f30337a;
        return aVar != null && !aVar.p;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        return e() ? this.f30337a.k : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return e() ? this.f30337a.j : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.o;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (e()) {
            i.a(this, this.f30337a.a(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (m()) {
            mergeDrawableStates(onCreateDrawableState, f);
        }
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, g);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(a());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(a());
        accessibilityNodeInfo.setCheckable(m());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        com.google.android.material.button.a aVar;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT == 21 && (aVar = this.f30337a) != null && aVar.n != null) {
            aVar.n.setBounds(aVar.f30355d, aVar.f, (i3 - i) - aVar.e, (i4 - i2) - aVar.g);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.checked);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checked = this.o;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        a(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (e()) {
            com.google.android.material.button.a aVar = this.f30337a;
            if (aVar.a(false) != null) {
                aVar.a(false).setTint(i);
                return;
            }
            return;
        }
        super.setBackgroundColor(i);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (e()) {
            if (drawable != getBackground()) {
                Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
                this.f30337a.b();
            } else {
                getBackground().setState(drawable.getState());
                return;
            }
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? androidx.appcompat.a.a.a.b(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (e()) {
            this.f30337a.r = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (m() && isEnabled() && this.o != z) {
            this.o = z;
            refreshDrawableState();
            if (!this.p) {
                this.p = true;
                Iterator<a> it2 = this.f30338b.iterator();
                while (it2.hasNext()) {
                    it2.next().a(this, this.o);
                }
                this.p = false;
            }
        }
    }

    public void setCornerRadius(int i) {
        if (e()) {
            com.google.android.material.button.a aVar = this.f30337a;
            if (!aVar.q || aVar.h != i) {
                aVar.h = i;
                aVar.q = true;
                aVar.a(aVar.f30354c.a(i));
            }
        }
    }

    public void setCornerRadiusResource(int i) {
        if (e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        if (e()) {
            this.f30337a.a(false).r(f2);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.e != drawable) {
            this.e = drawable;
            a(true);
            a(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.q != i) {
            this.q = i;
            a(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.n != i) {
            this.n = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? androidx.appcompat.a.a.a.b(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        } else if (this.k != i) {
            this.k = i;
            a(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.j != colorStateList) {
            this.j = colorStateList;
            a(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.i != mode) {
            this.i = mode;
            a(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(androidx.appcompat.a.a.a.a(getContext(), i));
    }

    public void setInsetBottom(int i) {
        com.google.android.material.button.a aVar = this.f30337a;
        aVar.a(aVar.f, i);
    }

    public void setInsetTop(int i) {
        com.google.android.material.button.a aVar = this.f30337a;
        aVar.a(i, aVar.g);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        b bVar = this.f30339c;
        if (bVar != null) {
            bVar.a();
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (e()) {
            com.google.android.material.button.a aVar = this.f30337a;
            if (aVar.m != colorStateList) {
                aVar.m = colorStateList;
                if (com.google.android.material.button.a.f30352a && (aVar.f30353b.getBackground() instanceof RippleDrawable)) {
                    ((RippleDrawable) aVar.f30353b.getBackground()).setColor(com.google.android.material.i.b.b(colorStateList));
                } else if (!com.google.android.material.button.a.f30352a && (aVar.f30353b.getBackground() instanceof com.google.android.material.i.a)) {
                    ((com.google.android.material.i.a) aVar.f30353b.getBackground()).setTintList(com.google.android.material.i.b.b(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (e()) {
            setRippleColor(androidx.appcompat.a.a.a.a(getContext(), i));
        }
    }

    @Override // com.google.android.material.k.q
    public void setShapeAppearanceModel(m mVar) {
        if (e()) {
            this.f30337a.a(mVar);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (e()) {
            com.google.android.material.button.a aVar = this.f30337a;
            if (aVar.l != colorStateList) {
                aVar.l = colorStateList;
                aVar.c();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (e()) {
            setStrokeColor(androidx.appcompat.a.a.a.a(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (e()) {
            com.google.android.material.button.a aVar = this.f30337a;
            if (aVar.i != i) {
                aVar.i = i;
                aVar.c();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (e()) {
            com.google.android.material.button.a aVar = this.f30337a;
            if (aVar.k != colorStateList) {
                aVar.k = colorStateList;
                if (aVar.a(false) != null) {
                    androidx.core.graphics.drawable.a.a(aVar.a(false), aVar.k);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintList(colorStateList);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (e()) {
            com.google.android.material.button.a aVar = this.f30337a;
            if (aVar.j != mode) {
                aVar.j = mode;
                if (aVar.a(false) != null && aVar.j != null) {
                    androidx.core.graphics.drawable.a.a(aVar.a(false), aVar.j);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintMode(mode);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.o);
    }
}
