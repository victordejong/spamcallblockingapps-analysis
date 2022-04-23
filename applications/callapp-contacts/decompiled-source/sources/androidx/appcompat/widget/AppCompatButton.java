package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.a;
import androidx.core.view.u;
import androidx.core.widget.b;
import androidx.core.widget.h;
import androidx.core.widget.j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatButton.class */
public class AppCompatButton extends Button implements u, b, j {

    /* renamed from: a  reason: collision with root package name */
    private final d f893a;

    /* renamed from: b  reason: collision with root package name */
    private final l f894b;

    public AppCompatButton(Context context) {
        this(context, null);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(y.a(context), attributeSet, i);
        x.a(this, getContext());
        d dVar = new d(this);
        this.f893a = dVar;
        dVar.a(attributeSet, i);
        l lVar = new l(this);
        this.f894b = lVar;
        lVar.a(attributeSet, i);
        lVar.a();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f893a;
        if (dVar != null) {
            dVar.d();
        }
        l lVar = this.f894b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (f2058d) {
            return super.getAutoSizeMaxTextSize();
        }
        l lVar = this.f894b;
        if (lVar != null) {
            return Math.round(lVar.f1108a.f1119d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (f2058d) {
            return super.getAutoSizeMinTextSize();
        }
        l lVar = this.f894b;
        if (lVar != null) {
            return Math.round(lVar.f1108a.f1118c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (f2058d) {
            return super.getAutoSizeStepGranularity();
        }
        l lVar = this.f894b;
        if (lVar != null) {
            return Math.round(lVar.f1108a.f1117b);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (f2058d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        l lVar = this.f894b;
        return lVar != null ? lVar.f1108a.e : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (f2058d) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        l lVar = this.f894b;
        if (lVar != null) {
            return lVar.f1108a.f1116a;
        }
        return 0;
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f893a;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f893a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        l lVar = this.f894b;
        if (lVar != null) {
            lVar.b();
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f894b != null && !f2058d && this.f894b.f1108a.b()) {
            this.f894b.f1108a.a();
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (f2058d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        l lVar = this.f894b;
        if (lVar != null) {
            lVar.a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (f2058d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        l lVar = this.f894b;
        if (lVar != null) {
            lVar.a(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f2058d) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        l lVar = this.f894b;
        if (lVar != null) {
            lVar.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f893a;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d dVar = this.f893a;
        if (dVar != null) {
            dVar.a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(h.a(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        l lVar = this.f894b;
        if (lVar != null) {
            lVar.a(z);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.f893a;
        if (dVar != null) {
            dVar.a(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f893a;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // androidx.core.widget.j
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f894b.a(colorStateList);
        this.f894b.a();
    }

    @Override // androidx.core.widget.j
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f894b.a(mode);
        this.f894b.a();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        l lVar = this.f894b;
        if (lVar != null) {
            lVar.a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f2058d) {
            super.setTextSize(i, f);
            return;
        }
        l lVar = this.f894b;
        if (lVar != null) {
            lVar.a(i, f);
        }
    }
}
