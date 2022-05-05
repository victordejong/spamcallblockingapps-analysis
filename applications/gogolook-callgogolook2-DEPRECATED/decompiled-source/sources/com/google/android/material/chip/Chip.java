package com.google.android.material.chip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
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
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AbstractC0053Px;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.app.NotificationCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.text.BidiFormatter;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R$attr;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import p081h.p203i.p204a.p294f.p303i.C9190a;
import p081h.p203i.p204a.p294f.p308n.C9246l;
import p081h.p203i.p204a.p294f.p310p.C9249b;
import p081h.p203i.p204a.p294f.p311q.C9252a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/Chip.class */
public class Chip extends AppCompatCheckBox implements C9190a.AbstractC9192b {

    /* renamed from: n */
    public static final Rect f7433n = new Rect();

    /* renamed from: o */
    public static final int[] f7434o = {16842913};
    @Nullable

    /* renamed from: a */
    public C9190a f7435a;
    @Nullable

    /* renamed from: b */
    public RippleDrawable f7436b;
    @Nullable

    /* renamed from: c */
    public View.OnClickListener f7437c;
    @Nullable

    /* renamed from: d */
    public CompoundButton.OnCheckedChangeListener f7438d;

    /* renamed from: e */
    public boolean f7439e;

    /* renamed from: f */
    public int f7440f;

    /* renamed from: g */
    public boolean f7441g;

    /* renamed from: h */
    public boolean f7442h;

    /* renamed from: i */
    public boolean f7443i;

    /* renamed from: j */
    public final C3622c f7444j;

    /* renamed from: k */
    public final Rect f7445k;

    /* renamed from: l */
    public final RectF f7446l;

    /* renamed from: m */
    public final ResourcesCompat.FontCallback f7447m;

    /* renamed from: com.google.android.material.chip.Chip$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/Chip$a.class */
    public class C3620a extends ResourcesCompat.FontCallback {
        public C3620a() {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i) {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            Chip chip = Chip.this;
            chip.setText(chip.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    /* renamed from: com.google.android.material.chip.Chip$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/Chip$b.class */
    public class C3621b extends ViewOutlineProvider {
        public C3621b() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, Outline outline) {
            if (Chip.this.f7435a != null) {
                Chip.this.f7435a.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    /* renamed from: com.google.android.material.chip.Chip$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/Chip$c.class */
    public class C3622c extends ExploreByTouchHelper {
        public C3622c(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            return (!Chip.this.m31396j() || !Chip.this.m31400f().contains(f, f2)) ? -1 : 0;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(List<Integer> list) {
            if (Chip.this.m31396j()) {
                list.add(0);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 == 16 && i == 0) {
                return Chip.this.m31394l();
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.f7435a != null && Chip.this.f7435a.m15813z());
            accessibilityNodeInfoCompat.setClassName(Chip.class.getName());
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.setText(text);
            } else {
                accessibilityNodeInfoCompat.setContentDescription(text);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (Chip.this.m31396j()) {
                CharSequence e = Chip.this.m31401e();
                if (e != null) {
                    accessibilityNodeInfoCompat.setContentDescription(e);
                } else {
                    CharSequence text = Chip.this.getText();
                    Context context = Chip.this.getContext();
                    int i2 = R$string.mtrl_chip_close_icon_content_description;
                    if (TextUtils.isEmpty(text)) {
                        text = "";
                    }
                    accessibilityNodeInfoCompat.setContentDescription(context.getString(i2, text).trim());
                }
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.m31399g());
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
                accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
                return;
            }
            accessibilityNodeInfoCompat.setContentDescription("");
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.f7433n);
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.chipStyle);
    }

    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7440f = Integer.MIN_VALUE;
        this.f7445k = new Rect();
        this.f7446l = new RectF();
        this.f7447m = new C3620a();
        m31420a(attributeSet);
        C9190a a = C9190a.m15897a(context, attributeSet, i, R$style.Widget_MaterialComponents_Chip_Action);
        m31407c(a);
        this.f7444j = new C3622c(this);
        ViewCompat.setAccessibilityDelegate(this, this.f7444j);
        m31395k();
        setChecked(this.f7439e);
        a.m15848e(false);
        setText(a.m15819t());
        setEllipsize(a.m15823p());
        setIncludeFontPadding(false);
        if (m31398h() != null) {
            m31415a(m31398h());
        }
        setSingleLine();
        setGravity(8388627);
        m31393m();
    }

    @Override // p081h.p203i.p204a.p294f.p303i.C9190a.AbstractC9192b
    /* renamed from: a */
    public void mo15812a() {
        m31393m();
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* renamed from: a */
    public final void m31421a(int i) {
        int i2 = this.f7440f;
        if (i2 != i) {
            if (i2 == 0) {
                m31410b(false);
            }
            this.f7440f = i;
            if (i == 0) {
                m31410b(true);
            }
        }
    }

    /* renamed from: a */
    public final void m31420a(@Nullable AttributeSet attributeSet) {
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue(TypedArrayUtils.NAMESPACE, NotificationCompat.WearableExtender.KEY_BACKGROUND) != null) {
                throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
            } else if (attributeSet.getAttributeValue(TypedArrayUtils.NAMESPACE, "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue(TypedArrayUtils.NAMESPACE, "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue(TypedArrayUtils.NAMESPACE, "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (attributeSet.getAttributeValue(TypedArrayUtils.NAMESPACE, "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (attributeSet.getAttributeBooleanValue(TypedArrayUtils.NAMESPACE, "singleLine", true) && attributeSet.getAttributeIntValue(TypedArrayUtils.NAMESPACE, "lines", 1) == 1 && attributeSet.getAttributeIntValue(TypedArrayUtils.NAMESPACE, "minLines", 1) == 1 && attributeSet.getAttributeIntValue(TypedArrayUtils.NAMESPACE, "maxLines", 1) == 1) {
                attributeSet.getAttributeIntValue(TypedArrayUtils.NAMESPACE, NotificationCompat.WearableExtender.KEY_GRAVITY, 8388627);
            } else {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
        }
    }

    /* renamed from: a */
    public void m31418a(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f7438d = onCheckedChangeListener;
    }

    /* renamed from: a */
    public final void m31416a(@NonNull C9190a aVar) {
        aVar.m15887a(this);
    }

    /* renamed from: a */
    public final void m31415a(C9249b bVar) {
        TextPaint paint = getPaint();
        paint.drawableState = this.f7435a.getState();
        bVar.m15617b(getContext(), paint, this.f7447m);
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: a */
    public final boolean m31419a(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 10) {
            return false;
        }
        try {
            Field declaredField = ExploreByTouchHelper.class.getDeclaredField("mHoveredVirtualViewId");
            declaredField.setAccessible(true);
            if (((Integer) declaredField.get(this.f7444j)).intValue() == Integer.MIN_VALUE) {
                return false;
            }
            Method declaredMethod = ExploreByTouchHelper.class.getDeclaredMethod("updateHoveredVirtualView", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.f7444j, Integer.MIN_VALUE);
            return true;
        } catch (IllegalAccessException e) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e);
            return false;
        } catch (NoSuchFieldException e2) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e2);
            return false;
        } catch (NoSuchMethodException e3) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e3);
            return false;
        } catch (InvocationTargetException e4) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e4);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m31414a(boolean z) {
        boolean z2;
        m31409c();
        if (z) {
            if (this.f7440f == -1) {
                m31421a(0);
                z2 = true;
            }
            z2 = false;
        } else {
            if (this.f7440f == 0) {
                m31421a(-1);
                z2 = true;
            }
            z2 = false;
        }
        return z2;
    }

    /* renamed from: b */
    public final float m31411b(@NonNull C9190a aVar) {
        float d = m31405d() + aVar.m15900a() + m31397i();
        return ViewCompat.getLayoutDirection(this) == 0 ? d : -d;
    }

    /* renamed from: b */
    public final void m31410b(boolean z) {
        if (this.f7443i != z) {
            this.f7443i = z;
            refreshDrawableState();
        }
    }

    /* renamed from: b */
    public final int[] m31413b() {
        int i = 0;
        int i2 = isEnabled() ? 1 : 0;
        int i3 = i2;
        if (this.f7443i) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (this.f7442h) {
            i4 = i3 + 1;
        }
        int i5 = i4;
        if (this.f7441g) {
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
        if (this.f7443i) {
            iArr[i] = 16842908;
            i7 = i + 1;
        }
        int i8 = i7;
        if (this.f7442h) {
            iArr[i7] = 16843623;
            i8 = i7 + 1;
        }
        int i9 = i8;
        if (this.f7441g) {
            iArr[i8] = 16842919;
            i9 = i8 + 1;
        }
        if (isChecked()) {
            iArr[i9] = 16842913;
        }
        return iArr;
    }

    /* renamed from: c */
    public final void m31409c() {
        if (this.f7440f == Integer.MIN_VALUE) {
            m31421a(-1);
        }
    }

    /* renamed from: c */
    public void m31407c(@NonNull C9190a aVar) {
        C9190a aVar2 = this.f7435a;
        if (aVar2 != aVar) {
            m31403d(aVar2);
            this.f7435a = aVar;
            m31416a(this.f7435a);
            if (C9252a.f21193a) {
                this.f7436b = new RippleDrawable(C9252a.m15613a(this.f7435a.m15820s()), this.f7435a, null);
                this.f7435a.m15842f(false);
                ViewCompat.setBackground(this, this.f7436b);
                return;
            }
            this.f7435a.m15842f(true);
            ViewCompat.setBackground(this, this.f7435a);
        }
    }

    /* renamed from: c */
    public final void m31406c(boolean z) {
        if (this.f7442h != z) {
            this.f7442h = z;
            refreshDrawableState();
        }
    }

    /* renamed from: d */
    public float m31405d() {
        C9190a aVar = this.f7435a;
        return aVar != null ? aVar.m15835i() : 0.0f;
    }

    /* renamed from: d */
    public final void m31403d(@Nullable C9190a aVar) {
        if (aVar != null) {
            aVar.m15887a((C9190a.AbstractC9192b) null);
        }
    }

    /* renamed from: d */
    public final void m31402d(boolean z) {
        if (this.f7441g != z) {
            this.f7441g = z;
            refreshDrawableState();
        }
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return m31419a(motionEvent) || this.f7444j.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f7444j.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C9190a aVar = this.f7435a;
        if ((aVar == null || !aVar.m15908C()) ? false : this.f7435a.m15882a(m31413b())) {
            invalidate();
        }
    }

    @Nullable
    /* renamed from: e */
    public CharSequence m31401e() {
        C9190a aVar = this.f7435a;
        return aVar != null ? aVar.m15831k() : null;
    }

    /* renamed from: f */
    public final RectF m31400f() {
        this.f7446l.setEmpty();
        if (m31396j()) {
            this.f7435a.m15892a(this.f7446l);
        }
        return this.f7446l;
    }

    /* renamed from: g */
    public final Rect m31399g() {
        RectF f = m31400f();
        this.f7445k.set((int) f.left, (int) f.top, (int) f.right, (int) f.bottom);
        return this.f7445k;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        C9190a aVar = this.f7435a;
        return aVar != null ? aVar.m15823p() : null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.f7440f == 0) {
            rect.set(m31399g());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        C9190a aVar = this.f7435a;
        return aVar != null ? aVar.m15819t() : "";
    }

    @Nullable
    /* renamed from: h */
    public final C9249b m31398h() {
        C9190a aVar = this.f7435a;
        return aVar != null ? aVar.m15818u() : null;
    }

    /* renamed from: i */
    public float m31397i() {
        C9190a aVar = this.f7435a;
        return aVar != null ? aVar.m15816w() : 0.0f;
    }

    /* renamed from: j */
    public final boolean m31396j() {
        C9190a aVar = this.f7435a;
        return (aVar == null || aVar.m15833j() == null) ? false : true;
    }

    /* renamed from: k */
    public final void m31395k() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new C3621b());
        }
    }

    @CallSuper
    /* renamed from: l */
    public boolean m31394l() {
        boolean z;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f7437c;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        } else {
            z = false;
        }
        this.f7444j.sendEventForVirtualView(0, 1);
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0065, code lost:
        if (isChecked() != false) goto L_0x0068;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m31393m() {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.m31393m():void");
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f7434o);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        C9190a aVar;
        if (TextUtils.isEmpty(getText()) || (aVar = this.f7435a) == null || aVar.m15905F()) {
            super.onDraw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.translate(m31411b(this.f7435a), 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            m31421a(-1);
        } else {
            m31421a(Integer.MIN_VALUE);
        }
        invalidate();
        super.onFocusChanged(z, i, rect);
        this.f7444j.onFocusChanged(z, i, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            m31406c(m31400f().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            m31406c(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        View focusSearch;
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 61) {
            if (keyCode != 66) {
                switch (keyCode) {
                    case 21:
                        z = false;
                        if (keyEvent.hasNoModifiers()) {
                            z = m31414a(C9246l.m15634a(this));
                            break;
                        }
                        break;
                    case 22:
                        z = false;
                        if (keyEvent.hasNoModifiers()) {
                            z = m31414a(!C9246l.m15634a(this));
                            break;
                        }
                        break;
                    case 23:
                        break;
                    default:
                        z = false;
                        break;
                }
            }
            int i2 = this.f7440f;
            if (i2 == -1) {
                performClick();
                return true;
            } else if (i2 != 0) {
                z = false;
            } else {
                m31394l();
                return true;
            }
        } else {
            int i3 = keyEvent.hasNoModifiers() ? 2 : keyEvent.hasModifiers(1) ? 1 : 0;
            z = false;
            if (i3 != 0) {
                ViewParent parent = getParent();
                Chip chip = this;
                do {
                    focusSearch = chip.focusSearch(i3);
                    if (focusSearch == null || focusSearch == this) {
                        break;
                    }
                    chip = focusSearch;
                } while (focusSearch.getParent() == parent);
                z = false;
                if (focusSearch != null) {
                    focusSearch.requestFocus();
                    return true;
                }
            }
        }
        if (!z) {
            return super.onKeyDown(i, keyEvent);
        }
        invalidate();
        return true;
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (!m31400f().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), 1002);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (r0 != 3) goto L_0x006a;
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
            android.graphics.RectF r0 = r0.m31400f()
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.contains(r1, r2)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x005c
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L_0x0041
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L_0x002e
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L_0x0052
            goto L_0x006a
        L_0x002e:
            r0 = r4
            boolean r0 = r0.f7441g
            if (r0 == 0) goto L_0x006a
            r0 = r7
            if (r0 != 0) goto L_0x0065
            r0 = r4
            r1 = 0
            r0.m31402d(r1)
            goto L_0x0065
        L_0x0041:
            r0 = r4
            boolean r0 = r0.f7441g
            if (r0 == 0) goto L_0x0052
            r0 = r4
            boolean r0 = r0.m31394l()
            r0 = 1
            r6 = r0
            goto L_0x0054
        L_0x0052:
            r0 = 0
            r6 = r0
        L_0x0054:
            r0 = r4
            r1 = 0
            r0.m31402d(r1)
            goto L_0x006c
        L_0x005c:
            r0 = r7
            if (r0 == 0) goto L_0x006a
            r0 = r4
            r1 = 1
            r0.m31402d(r1)
        L_0x0065:
            r0 = 1
            r6 = r0
            goto L_0x006c
        L_0x006a:
            r0 = 0
            r6 = r0
        L_0x006c:
            r0 = r6
            if (r0 != 0) goto L_0x0078
            r0 = r4
            r1 = r5
            boolean r0 = super.onTouchEvent(r1)
            if (r0 == 0) goto L_0x007b
        L_0x0078:
            r0 = 1
            r8 = r0
        L_0x007b:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == this.f7435a || drawable == this.f7436b) {
            super.setBackground(drawable);
            return;
        }
        throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        throw new UnsupportedOperationException("Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == this.f7435a || drawable == this.f7436b) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        throw new UnsupportedOperationException("Do not set the background drawable; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        throw new UnsupportedOperationException("Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        throw new UnsupportedOperationException("Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        throw new UnsupportedOperationException("Do not set the background tint mode; Chip manages its own background drawable.");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        C9190a aVar = this.f7435a;
        if (aVar == null) {
            this.f7439e = z;
        } else if (aVar.m15813z()) {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked != z && (onCheckedChangeListener = this.f7438d) != null) {
                onCheckedChangeListener.onCheckedChanged(this, z);
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
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
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
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
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f7435a != null) {
            if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
                super.setEllipsize(truncateAt);
                C9190a aVar = this.f7435a;
                if (aVar != null) {
                    aVar.m15890a(truncateAt);
                    return;
                }
                return;
            }
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i == 8388627) {
            super.setGravity(i);
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
    public void setMaxWidth(@AbstractC0053Px int i) {
        super.setMaxWidth(i);
        C9190a aVar = this.f7435a;
        if (aVar != null) {
            aVar.m15898a(i);
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
        if (this.f7435a != null) {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            CharSequence unicodeWrap = BidiFormatter.getInstance().unicodeWrap(charSequence2);
            if (this.f7435a.m15905F()) {
                unicodeWrap = null;
            }
            super.setText(unicodeWrap, bufferType);
            C9190a aVar = this.f7435a;
            if (aVar != null) {
                aVar.m15870b(charSequence2);
            }
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        C9190a aVar = this.f7435a;
        if (aVar != null) {
            aVar.m15877b(i);
        }
        if (m31398h() != null) {
            m31398h().m15616c(getContext(), getPaint(), this.f7447m);
            m31415a(m31398h());
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C9190a aVar = this.f7435a;
        if (aVar != null) {
            aVar.m15877b(i);
        }
        if (m31398h() != null) {
            m31398h().m15616c(context, getPaint(), this.f7447m);
            m31415a(m31398h());
        }
    }
}
