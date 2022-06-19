package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.C0032R;
import p1727n3.p1734b.p1743f.C25499c;
import p1727n3.p1734b.p1743f.C25529m0;
import p1727n3.p1734b.p1743f.C25533o0;
import p1727n3.p1734b.p1743f.C25535p0;
import p1727n3.p1734b.p1743f.C25536q;
import p1727n3.p1807k.p1824j.AbstractC26635f;
import p1727n3.p1807k.p1824j.AbstractC26639j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatButton.class */
public class AppCompatButton extends Button implements AbstractC26635f, AbstractC26639j {

    /* renamed from: a */
    public final C25499c f256a;

    /* renamed from: b */
    public final C25536q f257b;

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0032R.attr.buttonStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C25533o0.m3337a(context);
        C25529m0.m3344a(this, getContext());
        C25499c c25499c = new C25499c(this);
        this.f256a = c25499c;
        c25499c.m3390d(attributeSet, i);
        C25536q c25536q = new C25536q(this);
        this.f257b = c25536q;
        c25536q.m3331e(attributeSet, i);
        c25536q.m3334b();
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C25499c c25499c = this.f256a;
        if (c25499c != null) {
            c25499c.m3393a();
        }
        C25536q c25536q = this.f257b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (AbstractC26635f.f74562F) {
            return super.getAutoSizeMaxTextSize();
        }
        C25536q c25536q = this.f257b;
        if (c25536q == null) {
            return -1;
        }
        return Math.round(c25536q.f71453i.f71475e);
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (AbstractC26635f.f74562F) {
            return super.getAutoSizeMinTextSize();
        }
        C25536q c25536q = this.f257b;
        if (c25536q == null) {
            return -1;
        }
        return Math.round(c25536q.f71453i.f71474d);
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (AbstractC26635f.f74562F) {
            return super.getAutoSizeStepGranularity();
        }
        C25536q c25536q = this.f257b;
        if (c25536q == null) {
            return -1;
        }
        return Math.round(c25536q.f71453i.f71473c);
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (AbstractC26635f.f74562F) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C25536q c25536q = this.f257b;
        return c25536q != null ? c25536q.f71453i.f71476f : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        int i = 0;
        if (AbstractC26635f.f74562F) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        C25536q c25536q = this.f257b;
        if (c25536q == null) {
            return 0;
        }
        return c25536q.f71453i.f71471a;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C25499c c25499c = this.f256a;
        return c25499c != null ? c25499c.m3392b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C25499c c25499c = this.f256a;
        return c25499c != null ? c25499c.m3391c() : null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        C25535p0 c25535p0 = this.f257b.f71452h;
        return c25535p0 != null ? c25535p0.f71441a : null;
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        C25535p0 c25535p0 = this.f257b.f71452h;
        return c25535p0 != null ? c25535p0.f71442b : null;
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
        C25536q c25536q = this.f257b;
        if (c25536q == null || AbstractC26635f.f74562F) {
            return;
        }
        c25536q.f71453i.m3305a();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C25536q c25536q = this.f257b;
        if (c25536q == null || AbstractC26635f.f74562F || !c25536q.m3332d()) {
            return;
        }
        this.f257b.f71453i.m3305a();
    }

    @Override // android.widget.TextView, p1727n3.p1807k.p1824j.AbstractC26635f
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (AbstractC26635f.f74562F) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C25536q c25536q = this.f257b;
        if (c25536q == null) {
            return;
        }
        c25536q.m3328h(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (AbstractC26635f.f74562F) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C25536q c25536q = this.f257b;
        if (c25536q == null) {
            return;
        }
        c25536q.m3327i(iArr, i);
    }

    @Override // android.widget.TextView, p1727n3.p1807k.p1824j.AbstractC26635f
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (AbstractC26635f.f74562F) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C25536q c25536q = this.f257b;
        if (c25536q == null) {
            return;
        }
        c25536q.m3326j(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C25499c c25499c = this.f256a;
        if (c25499c != null) {
            c25499c.m3389e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C25499c c25499c = this.f256a;
        if (c25499c != null) {
            c25499c.m3388f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(MediaSessionCompat.m43281N1(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        C25536q c25536q = this.f257b;
        if (c25536q != null) {
            c25536q.f71445a.setAllCaps(z);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C25499c c25499c = this.f256a;
        if (c25499c != null) {
            c25499c.m3386h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C25499c c25499c = this.f256a;
        if (c25499c != null) {
            c25499c.m3385i(mode);
        }
    }

    @Override // p1727n3.p1807k.p1824j.AbstractC26639j
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f257b.m3325k(colorStateList);
        this.f257b.m3334b();
    }

    @Override // p1727n3.p1807k.p1824j.AbstractC26639j
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f257b.m3324l(mode);
        this.f257b.m3334b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C25536q c25536q = this.f257b;
        if (c25536q != null) {
            c25536q.m3330f(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        boolean z = AbstractC26635f.f74562F;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        C25536q c25536q = this.f257b;
        if (c25536q == null || z || c25536q.m3332d()) {
            return;
        }
        c25536q.f71453i.m3300f(i, f);
    }
}
