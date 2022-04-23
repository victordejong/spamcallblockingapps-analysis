package com.google.android.material.chip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.a.c;
import androidx.core.view.v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.facebook.ads.AdError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.chip.a;
import com.google.android.material.h.d;
import com.google.android.material.h.f;
import com.google.android.material.k.i;
import com.google.android.material.k.m;
import com.google.android.material.k.q;
import com.google.api.client.googleapis.notifications.b;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/Chip.class */
public class Chip extends AppCompatCheckBox implements a.AbstractC0486a, q {

    /* renamed from: c  reason: collision with root package name */
    private static final int f30369c = a.k.Widget_MaterialComponents_Chip_Action;

    /* renamed from: d  reason: collision with root package name */
    private static final Rect f30370d = new Rect();
    private static final int[] e = {16842913};
    private static final int[] f = {16842911};

    /* renamed from: a  reason: collision with root package name */
    com.google.android.material.chip.a f30371a;

    /* renamed from: b  reason: collision with root package name */
    CompoundButton.OnCheckedChangeListener f30372b;
    private InsetDrawable g;
    private RippleDrawable h;
    private View.OnClickListener i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private final a q;
    private final Rect r;
    private final RectF s;
    private final f t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/Chip$a.class */
    public final class a extends androidx.customview.a.a {
        a(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.a.a
        public final int a(float f, float f2) {
            return (!Chip.this.k() || !Chip.this.l().contains(f, f2)) ? 0 : 1;
        }

        @Override // androidx.customview.a.a
        public final void a(int i, c cVar) {
            CharSequence charSequence = "";
            if (i == 1) {
                Chip chip = Chip.this;
                CharSequence charSequence2 = chip.f30371a != null ? chip.f30371a.f : null;
                if (charSequence2 != null) {
                    cVar.e(charSequence2);
                } else {
                    CharSequence text = Chip.this.getText();
                    Context context = Chip.this.getContext();
                    int i2 = a.j.mtrl_chip_close_icon_content_description;
                    if (!TextUtils.isEmpty(text)) {
                        charSequence = text;
                    }
                    cVar.e(context.getString(i2, charSequence).trim());
                }
                cVar.b(Chip.this.m());
                cVar.a(c.a.e);
                cVar.i(Chip.this.isEnabled());
                return;
            }
            cVar.e("");
            cVar.b(Chip.f30370d);
        }

        @Override // androidx.customview.a.a
        public final void a(int i, boolean z) {
            if (i == 1) {
                Chip.this.m = z;
                Chip.this.refreshDrawableState();
            }
        }

        @Override // androidx.customview.a.a
        public final void a(c cVar) {
            cVar.a(Chip.this.d());
            cVar.g(Chip.this.isClickable());
            if (Chip.this.d() || Chip.this.isClickable()) {
                cVar.b((CharSequence) (Chip.this.d() ? "android.widget.CompoundButton" : "android.widget.Button"));
            } else {
                cVar.b("android.view.View");
            }
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                cVar.c(text);
            } else {
                cVar.e(text);
            }
        }

        @Override // androidx.customview.a.a
        public final void a(List<Integer> list) {
            list.add(0);
            if (Chip.this.k() && Chip.this.c() && Chip.this.i != null) {
                list.add(1);
            }
        }

        @Override // androidx.customview.a.a
        public final boolean b(int i, int i2, Bundle bundle) {
            if (i2 != 16) {
                return false;
            }
            if (i == 0) {
                return Chip.this.performClick();
            }
            if (i == 1) {
                return Chip.this.b();
            }
            return false;
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.chipStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Chip(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private void a(int i, int i2, int i3, int i4) {
        this.g = new InsetDrawable((Drawable) this.f30371a, i, i2, i3, i4);
    }

    private void a(boolean z) {
        if (this.k != z) {
            this.k = z;
            refreshDrawableState();
        }
    }

    private boolean a(int i) {
        this.p = i;
        int i2 = 0;
        if (this.n) {
            int max = Math.max(0, i - this.f30371a.getIntrinsicHeight());
            int max2 = Math.max(0, i - this.f30371a.getIntrinsicWidth());
            if (max2 > 0 || max > 0) {
                int i3 = max2 > 0 ? max2 / 2 : 0;
                if (max > 0) {
                    i2 = max / 2;
                }
                if (this.g != null) {
                    Rect rect = new Rect();
                    this.g.getPadding(rect);
                    if (rect.top == i2 && rect.bottom == i2 && rect.left == i3 && rect.right == i3) {
                        h();
                        return true;
                    }
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    if (getMinHeight() != i) {
                        setMinHeight(i);
                    }
                    if (getMinWidth() != i) {
                        setMinWidth(i);
                    }
                } else {
                    setMinHeight(i);
                    setMinWidth(i);
                }
                a(i3, i2, i3, i2);
                h();
                return true;
            } else if (this.g != null) {
                q();
                return false;
            } else {
                h();
                return false;
            }
        } else if (this.g != null) {
            q();
            return false;
        } else {
            h();
            return false;
        }
    }

    private boolean a(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 10) {
            return false;
        }
        try {
            Field declaredField = androidx.customview.a.a.class.getDeclaredField("d");
            declaredField.setAccessible(true);
            if (((Integer) declaredField.get(this.q)).intValue() == Integer.MIN_VALUE) {
                return false;
            }
            Method declaredMethod = androidx.customview.a.a.class.getDeclaredMethod(b.f31754a, Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.q, Integer.valueOf((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW));
            return true;
        } catch (IllegalAccessException e2) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e2);
            return false;
        } catch (NoSuchFieldException e3) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e3);
            return false;
        } catch (NoSuchMethodException e4) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e4);
            return false;
        } catch (InvocationTargetException e5) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e5);
            return false;
        }
    }

    private void b(boolean z) {
        if (this.l != z) {
            this.l = z;
            refreshDrawableState();
        }
    }

    private void f() {
        if (!k() || !c() || this.i == null) {
            v.a(this, (androidx.core.view.a) null);
        } else {
            v.a(this, this.q);
        }
    }

    private void g() {
        com.google.android.material.chip.a aVar;
        if (!TextUtils.isEmpty(getText()) && (aVar = this.f30371a) != null) {
            int c2 = (int) (aVar.m + this.f30371a.l + this.f30371a.c());
            int a2 = (int) (this.f30371a.j + this.f30371a.k + this.f30371a.a());
            int i = c2;
            int i2 = a2;
            if (this.g != null) {
                Rect rect = new Rect();
                this.g.getPadding(rect);
                i2 = a2 + rect.left;
                i = c2 + rect.right;
            }
            v.b(this, i2, getPaddingTop(), i, getPaddingBottom());
        }
    }

    private void h() {
        if (com.google.android.material.i.b.f30575a) {
            j();
            return;
        }
        this.f30371a.a(true);
        v.a(this, i());
        g();
        if (i() == this.g && this.f30371a.getCallback() == null) {
            this.f30371a.setCallback(this.g);
        }
    }

    private Drawable i() {
        InsetDrawable insetDrawable = this.g;
        Drawable drawable = insetDrawable;
        if (insetDrawable == null) {
            drawable = this.f30371a;
        }
        return drawable;
    }

    private void j() {
        this.h = new RippleDrawable(com.google.android.material.i.b.b(this.f30371a.f30383b), i(), null);
        this.f30371a.a(false);
        v.a(this, this.h);
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k() {
        com.google.android.material.chip.a aVar = this.f30371a;
        return (aVar == null || aVar.d() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF l() {
        this.s.setEmpty();
        if (k() && this.i != null) {
            this.f30371a.a(this.s);
        }
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect m() {
        RectF l = l();
        this.r.set((int) l.left, (int) l.top, (int) l.right, (int) l.bottom);
        return this.r;
    }

    private float n() {
        com.google.android.material.chip.a aVar = this.f30371a;
        return aVar != null ? aVar.f30382a : BitmapDescriptorFactory.HUE_RED;
    }

    private void o() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            paint.drawableState = aVar.getState();
        }
        d p = p();
        if (p != null) {
            p.a(getContext(), paint, this.t);
        }
    }

    private d p() {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            return aVar.o.f30644d;
        }
        return null;
    }

    private void q() {
        if (this.g != null) {
            this.g = null;
            setMinWidth(0);
            setMinHeight((int) n());
            h();
        }
    }

    @Override // com.google.android.material.chip.a.AbstractC0486a
    public final void a() {
        a(this.p);
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public final boolean b() {
        boolean z = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.i;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        }
        this.q.a(1, 1);
        return z;
    }

    public final boolean c() {
        com.google.android.material.chip.a aVar = this.f30371a;
        return aVar != null && aVar.f30385d;
    }

    public final boolean d() {
        com.google.android.material.chip.a aVar = this.f30371a;
        return aVar != null && aVar.g;
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return a(motionEvent) || this.q.a(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.q.a(keyEvent) || ((androidx.customview.a.a) this.q).f2075c == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.chip.a aVar = this.f30371a;
        int i = 0;
        boolean z = false;
        if (aVar != null) {
            z = false;
            if (com.google.android.material.chip.a.a(aVar.e)) {
                com.google.android.material.chip.a aVar2 = this.f30371a;
                int i2 = isEnabled() ? 1 : 0;
                int i3 = i2;
                if (this.m) {
                    i3 = i2 + 1;
                }
                int i4 = i3;
                if (this.l) {
                    i4 = i3 + 1;
                }
                int i5 = i4;
                if (this.k) {
                    i5 = i4 + 1;
                }
                int i6 = i5;
                if (isChecked()) {
                    i6 = i5 + 1;
                }
                int[] iArr = new int[i6];
                if (isEnabled()) {
                    iArr[0] = 16842910;
                    i = 1;
                }
                int i7 = i;
                if (this.m) {
                    iArr[i] = 16842908;
                    i7 = i + 1;
                }
                int i8 = i7;
                if (this.l) {
                    iArr[i7] = 16843623;
                    i8 = i7 + 1;
                }
                int i9 = i8;
                if (this.k) {
                    iArr[i8] = 16842919;
                    i9 = i8 + 1;
                }
                if (isChecked()) {
                    iArr[i9] = 16842913;
                }
                z = aVar2.a(iArr);
            }
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            return aVar.q;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (((androidx.customview.a.a) this.q).f2075c == 1 || this.q.f2074b == 1) {
            rect.set(m());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.a(this, this.f30371a);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, e);
        }
        if (d()) {
            mergeDrawableStates(onCreateDrawableState, f);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        this.q.a(z, i, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            b(l().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            b(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (d() || isClickable()) {
            accessibilityNodeInfo.setClassName(d() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(d());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            c a2 = c.a(accessibilityNodeInfo);
            int i = -1;
            if (chipGroup.a()) {
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    i = -1;
                    if (i2 >= chipGroup.getChildCount()) {
                        break;
                    }
                    i3 = i3;
                    if (chipGroup.getChildAt(i2) instanceof Chip) {
                        if (((Chip) chipGroup.getChildAt(i2)) == this) {
                            i = i3;
                            break;
                        }
                        i3++;
                    }
                    i2++;
                }
            }
            a2.b(c.C0052c.a(ChipGroup.a(this), 1, i, 1, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (!l().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.o != i) {
            this.o = i;
            g();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if (r0 != 3) goto L_0x0067;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r0 = r5
            int r0 = r0.getActionMasked()
            r6 = r0
            r0 = r4
            android.graphics.RectF r0 = r0.l()
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.contains(r1, r2)
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0059
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L_0x003e
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L_0x002b
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L_0x004f
            goto L_0x0067
        L_0x002b:
            r0 = r4
            boolean r0 = r0.k
            if (r0 == 0) goto L_0x0067
            r0 = r7
            if (r0 != 0) goto L_0x0062
            r0 = r4
            r1 = 0
            r0.a(r1)
            goto L_0x0062
        L_0x003e:
            r0 = r4
            boolean r0 = r0.k
            if (r0 == 0) goto L_0x004f
            r0 = r4
            boolean r0 = r0.b()
            r0 = 1
            r6 = r0
            goto L_0x0051
        L_0x004f:
            r0 = 0
            r6 = r0
        L_0x0051:
            r0 = r4
            r1 = 0
            r0.a(r1)
            goto L_0x0069
        L_0x0059:
            r0 = r7
            if (r0 == 0) goto L_0x0067
            r0 = r4
            r1 = 1
            r0.a(r1)
        L_0x0062:
            r0 = 1
            r6 = r0
            goto L_0x0069
        L_0x0067:
            r0 = 0
            r6 = r0
        L_0x0069:
            r0 = r6
            if (r0 != 0) goto L_0x007a
            r0 = r4
            r1 = r5
            boolean r0 = super.onTouchEvent(r1)
            if (r0 == 0) goto L_0x0078
            goto L_0x007a
        L_0x0078:
            r0 = 0
            return r0
        L_0x007a:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == i() || drawable == this.h) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == i() || drawable == this.h) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.d(z);
        }
    }

    public void setCheckableResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.d(aVar.n.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar == null) {
            this.j = z;
        } else if (aVar.g) {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked != z && (onCheckedChangeListener = this.f30372b) != null) {
                onCheckedChangeListener.onCheckedChanged(this, z);
            }
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.d(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.d(androidx.appcompat.a.a.a.b(aVar.n, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.f(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.f(androidx.appcompat.a.a.a.a(aVar.n, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.e(aVar.n.getResources().getBoolean(i));
        }
    }

    public void setCheckedIconVisible(boolean z) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.e(z);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.a(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.a(androidx.appcompat.a.a.a.a(aVar.n, i));
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.b(f2);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.b(aVar.n.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(com.google.android.material.chip.a aVar) {
        com.google.android.material.chip.a aVar2 = this.f30371a;
        if (aVar2 != aVar) {
            if (aVar2 != null) {
                aVar2.a((a.AbstractC0486a) null);
            }
            this.f30371a = aVar;
            aVar.r = false;
            this.f30371a.a(this);
            a(this.p);
        }
    }

    public void setChipEndPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.m(f2);
        }
    }

    public void setChipEndPaddingResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.m(aVar.n.getResources().getDimension(i));
        }
    }

    public void setChipIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.b(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.b(androidx.appcompat.a.a.a.b(aVar.n, i));
        }
    }

    public void setChipIconSize(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.d(f2);
        }
    }

    public void setChipIconSizeResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.d(aVar.n.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.d(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.d(androidx.appcompat.a.a.a.a(aVar.n, i));
        }
    }

    public void setChipIconVisible(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.b(aVar.n.getResources().getBoolean(i));
        }
    }

    public void setChipIconVisible(boolean z) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.b(z);
        }
    }

    public void setChipMinHeight(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.a(f2);
        }
    }

    public void setChipMinHeightResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.a(aVar.n.getResources().getDimension(i));
        }
    }

    public void setChipStartPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.f(f2);
        }
    }

    public void setChipStartPaddingResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.f(aVar.n.getResources().getDimension(i));
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.b(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.b(androidx.appcompat.a.a.a.a(aVar.n, i));
        }
    }

    public void setChipStrokeWidth(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.c(f2);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.c(aVar.n.getResources().getDimension(i));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.c(drawable);
        }
        f();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null && aVar.f != charSequence) {
            aVar.f = androidx.core.d.a.a().a(charSequence);
            aVar.invalidateSelf();
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.l(f2);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.l(aVar.n.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.c(androidx.appcompat.a.a.a.b(aVar.n, i));
        }
        f();
    }

    public void setCloseIconSize(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.e(f2);
        }
    }

    public void setCloseIconSizeResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.e(aVar.n.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.k(f2);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.k(aVar.n.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.e(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.e(androidx.appcompat.a.a.a.a(aVar.n, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.c(z);
        }
        f();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.r(f2);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f30371a != null) {
            if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
                super.setEllipsize(truncateAt);
                com.google.android.material.chip.a aVar = this.f30371a;
                if (aVar != null) {
                    aVar.q = truncateAt;
                    return;
                }
                return;
            }
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.n = z;
        a(this.p);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(h hVar) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.i = hVar;
        }
    }

    public void setHideMotionSpecResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.i = h.a(aVar.n, i);
        }
    }

    public void setIconEndPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.h(f2);
        }
    }

    public void setIconEndPaddingResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.h(aVar.n.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.g(f2);
        }
    }

    public void setIconStartPaddingResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.g(aVar.n.getResources().getDimension(i));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.f30371a != null && Build.VERSION.SDK_INT >= 17) {
            super.setLayoutDirection(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.s = i;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.i = onClickListener;
        f();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.c(colorStateList);
        }
        if (!this.f30371a.p) {
            j();
        }
    }

    public void setRippleColorResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.c(androidx.appcompat.a.a.a.a(aVar.n, i));
            if (!this.f30371a.p) {
                j();
            }
        }
    }

    @Override // com.google.android.material.k.q
    public void setShapeAppearanceModel(m mVar) {
        this.f30371a.setShapeAppearanceModel(mVar);
    }

    public void setShowMotionSpec(h hVar) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.h = hVar;
        }
    }

    public void setShowMotionSpecResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.h = h.a(aVar.n, i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            super.setText(aVar.r ? null : charSequence2, bufferType);
            com.google.android.material.chip.a aVar2 = this.f30371a;
            if (aVar2 != null) {
                aVar2.a(charSequence2);
            }
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.a(i);
        }
        o();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.a(i);
        }
        o();
    }

    public void setTextAppearance(d dVar) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.a(dVar);
        }
        o();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.j(f2);
        }
    }

    public void setTextEndPaddingResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.j(aVar.n.getResources().getDimension(i));
        }
    }

    public void setTextStartPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.i(f2);
        }
    }

    public void setTextStartPaddingResource(int i) {
        com.google.android.material.chip.a aVar = this.f30371a;
        if (aVar != null) {
            aVar.i(aVar.n.getResources().getDimension(i));
        }
    }
}
