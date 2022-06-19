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
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.p035d.C0811a;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.customview.p039a.AbstractC0964a;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.facebook.ads.AdError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.chip.C14484a;
import com.google.android.material.p364a.C14396h;
import com.google.android.material.p371h.AbstractC14603f;
import com.google.android.material.p371h.C14599d;
import com.google.android.material.p372i.C14607b;
import com.google.android.material.p374k.AbstractC14695q;
import com.google.android.material.p374k.C14674i;
import com.google.android.material.p374k.C14678m;
import com.google.api.client.googleapis.notifications.C15291b;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/Chip.class */
public class Chip extends AppCompatCheckBox implements C14484a.AbstractC14485a, AbstractC14695q {

    /* renamed from: c */
    private static final int f52809c = C14376a.C14387k.Widget_MaterialComponents_Chip_Action;

    /* renamed from: d */
    private static final Rect f52810d = new Rect();

    /* renamed from: e */
    private static final int[] f52811e = {16842913};

    /* renamed from: f */
    private static final int[] f52812f = {16842911};

    /* renamed from: a */
    C14484a f52813a;

    /* renamed from: b */
    CompoundButton.OnCheckedChangeListener f52814b;

    /* renamed from: g */
    private InsetDrawable f52815g;

    /* renamed from: h */
    private RippleDrawable f52816h;

    /* renamed from: i */
    private View.OnClickListener f52817i;

    /* renamed from: j */
    private boolean f52818j;

    /* renamed from: k */
    private boolean f52819k;

    /* renamed from: l */
    private boolean f52820l;

    /* renamed from: m */
    private boolean f52821m;

    /* renamed from: n */
    private boolean f52822n;

    /* renamed from: o */
    private int f52823o;

    /* renamed from: p */
    private int f52824p;

    /* renamed from: q */
    private final C14479a f52825q;

    /* renamed from: r */
    private final Rect f52826r;

    /* renamed from: s */
    private final RectF f52827s;

    /* renamed from: t */
    private final AbstractC14603f f52828t;

    /* renamed from: com.google.android.material.chip.Chip$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/Chip$a.class */
    public final class C14479a extends AbstractC0964a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14479a(Chip chip) {
            super(chip);
            Chip.this = r4;
        }

        @Override // androidx.customview.p039a.AbstractC0964a
        /* renamed from: a */
        public final int mo10225a(float f, float f2) {
            return (!Chip.this.m10966k() || !Chip.this.m10965l().contains(f, f2)) ? 0 : 1;
        }

        @Override // androidx.customview.p039a.AbstractC0964a
        /* renamed from: a */
        public final void mo10224a(int i, C0869c c0869c) {
            if (i != 1) {
                c0869c.m44250e("");
                c0869c.m44269b(Chip.f52810d);
                return;
            }
            Chip chip = Chip.this;
            CharSequence charSequence = chip.f52813a != null ? chip.f52813a.f52892f : null;
            if (charSequence != null) {
                c0869c.m44250e(charSequence);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i2 = C14376a.C14386j.mtrl_chip_close_icon_content_description;
                CharSequence charSequence2 = "";
                if (!TextUtils.isEmpty(text)) {
                    charSequence2 = text;
                }
                c0869c.m44250e(context.getString(i2, charSequence2).trim());
            }
            c0869c.m44269b(Chip.this.m10964m());
            c0869c.m44277a(C0869c.C0870a.f3662e);
            c0869c.m44241i(Chip.this.isEnabled());
        }

        @Override // androidx.customview.p039a.AbstractC0964a
        /* renamed from: a */
        public final void mo10959a(int i, boolean z) {
            if (i == 1) {
                Chip.this.f52821m = z;
                Chip.this.refreshDrawableState();
            }
        }

        @Override // androidx.customview.p039a.AbstractC0964a
        /* renamed from: a */
        public final void mo10958a(C0869c c0869c) {
            c0869c.m44272a(Chip.this.m10975d());
            c0869c.m44243g(Chip.this.isClickable());
            if (Chip.this.m10975d() || Chip.this.isClickable()) {
                c0869c.m44265b(Chip.this.m10975d() ? "android.widget.CompoundButton" : "android.widget.Button");
            } else {
                c0869c.m44265b("android.view.View");
            }
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                c0869c.m44259c(text);
            } else {
                c0869c.m44250e(text);
            }
        }

        @Override // androidx.customview.p039a.AbstractC0964a
        /* renamed from: a */
        public final void mo10223a(List<Integer> list) {
            list.add(0);
            if (!Chip.this.m10966k() || !Chip.this.m10977c() || Chip.this.f52817i == null) {
                return;
            }
            list.add(1);
        }

        @Override // androidx.customview.p039a.AbstractC0964a
        /* renamed from: b */
        public final boolean mo10222b(int i, int i2, Bundle bundle) {
            if (i2 == 16) {
                if (i == 0) {
                    return Chip.this.performClick();
                }
                if (i != 1) {
                    return false;
                }
                return Chip.this.m10980b();
            }
            return false;
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.chipStyle);
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

    /* renamed from: a */
    private void m10985a(int i, int i2, int i3, int i4) {
        this.f52815g = new InsetDrawable((Drawable) this.f52813a, i, i2, i3, i4);
    }

    /* renamed from: a */
    private void m10981a(boolean z) {
        if (this.f52819k != z) {
            this.f52819k = z;
            refreshDrawableState();
        }
    }

    /* renamed from: a */
    private boolean m10986a(int i) {
        this.f52824p = i;
        int i2 = 0;
        if (!this.f52822n) {
            if (this.f52815g != null) {
                m10960q();
                return false;
            }
            m10969h();
            return false;
        }
        int max = Math.max(0, i - this.f52813a.getIntrinsicHeight());
        int max2 = Math.max(0, i - this.f52813a.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            if (this.f52815g != null) {
                m10960q();
                return false;
            }
            m10969h();
            return false;
        }
        int i3 = max2 > 0 ? max2 / 2 : 0;
        if (max > 0) {
            i2 = max / 2;
        }
        if (this.f52815g != null) {
            Rect rect = new Rect();
            this.f52815g.getPadding(rect);
            if (rect.top == i2 && rect.bottom == i2 && rect.left == i3 && rect.right == i3) {
                m10969h();
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
        m10985a(i3, i2, i3, i2);
        m10969h();
        return true;
    }

    /* renamed from: a */
    private boolean m10984a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = AbstractC0964a.class.getDeclaredField("d");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.f52825q)).intValue() == Integer.MIN_VALUE) {
                    return false;
                }
                Method declaredMethod = AbstractC0964a.class.getDeclaredMethod(C15291b.f55271a, Integer.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(this.f52825q, Integer.valueOf((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW));
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
        return false;
    }

    /* renamed from: b */
    private void m10978b(boolean z) {
        if (this.f52820l != z) {
            this.f52820l = z;
            refreshDrawableState();
        }
    }

    /* renamed from: f */
    private void m10971f() {
        if (!m10966k() || !m10977c() || this.f52817i == null) {
            C0926v.m44123a(this, (C0865a) null);
        } else {
            C0926v.m44123a(this, this.f52825q);
        }
    }

    /* renamed from: g */
    private void m10970g() {
        C14484a c14484a;
        if (TextUtils.isEmpty(getText()) || (c14484a = this.f52813a) == null) {
            return;
        }
        int m10926c = (int) (c14484a.f52899m + this.f52813a.f52898l + this.f52813a.m10926c());
        int m10946a = (int) (this.f52813a.f52896j + this.f52813a.f52897k + this.f52813a.m10946a());
        int i = m10926c;
        int i2 = m10946a;
        if (this.f52815g != null) {
            Rect rect = new Rect();
            this.f52815g.getPadding(rect);
            i2 = m10946a + rect.left;
            i = m10926c + rect.right;
        }
        C0926v.m44109b(this, i2, getPaddingTop(), i, getPaddingBottom());
    }

    /* renamed from: h */
    private void m10969h() {
        if (C14607b.f53247a) {
            m10967j();
            return;
        }
        this.f52813a.m10935a(true);
        C0926v.m44128a(this, m10968i());
        m10970g();
        if (m10968i() != this.f52815g || this.f52813a.getCallback() != null) {
            return;
        }
        this.f52813a.setCallback(this.f52815g);
    }

    /* renamed from: i */
    private Drawable m10968i() {
        Drawable drawable = this.f52815g;
        Drawable drawable2 = drawable;
        if (drawable == null) {
            drawable2 = this.f52813a;
        }
        return drawable2;
    }

    /* renamed from: j */
    private void m10967j() {
        this.f52816h = new RippleDrawable(C14607b.m10633b(this.f52813a.f52888b), m10968i(), null);
        this.f52813a.m10935a(false);
        C0926v.m44128a(this, this.f52816h);
        m10970g();
    }

    /* renamed from: k */
    public boolean m10966k() {
        C14484a c14484a = this.f52813a;
        return (c14484a == null || c14484a.m10920d() == null) ? false : true;
    }

    /* renamed from: l */
    public RectF m10965l() {
        this.f52827s.setEmpty();
        if (m10966k() && this.f52817i != null) {
            this.f52813a.m10940a(this.f52827s);
        }
        return this.f52827s;
    }

    /* renamed from: m */
    public Rect m10964m() {
        RectF m10965l = m10965l();
        this.f52826r.set((int) m10965l.left, (int) m10965l.top, (int) m10965l.right, (int) m10965l.bottom);
        return this.f52826r;
    }

    /* renamed from: n */
    private float m10963n() {
        C14484a c14484a = this.f52813a;
        return c14484a != null ? c14484a.f52873a : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: o */
    private void m10962o() {
        TextPaint paint = getPaint();
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            paint.drawableState = c14484a.getState();
        }
        C14599d m10961p = m10961p();
        if (m10961p != null) {
            m10961p.m10645a(getContext(), paint, this.f52828t);
        }
    }

    /* renamed from: p */
    private C14599d m10961p() {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            return c14484a.f52901o.f53429d;
        }
        return null;
    }

    /* renamed from: q */
    private void m10960q() {
        if (this.f52815g != null) {
            this.f52815g = null;
            setMinWidth(0);
            setMinHeight((int) m10963n());
            m10969h();
        }
    }

    @Override // com.google.android.material.chip.C14484a.AbstractC14485a
    /* renamed from: a */
    public final void mo10889a() {
        m10986a(this.f52824p);
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* renamed from: b */
    public final boolean m10980b() {
        boolean z = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f52817i;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        }
        this.f52825q.m43949a(1, 1);
        return z;
    }

    /* renamed from: c */
    public final boolean m10977c() {
        C14484a c14484a = this.f52813a;
        return c14484a != null && c14484a.f52890d;
    }

    /* renamed from: d */
    public final boolean m10975d() {
        C14484a c14484a = this.f52813a;
        return c14484a != null && c14484a.f52893g;
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return m10984a(motionEvent) || this.f52825q.m43944a(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f52825q.m43945a(keyEvent) || ((AbstractC0964a) this.f52825q).f3882c == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C14484a c14484a = this.f52813a;
        boolean z = false;
        if (c14484a != null) {
            z = false;
            if (C14484a.m10939a(c14484a.f52891e)) {
                C14484a c14484a2 = this.f52813a;
                int i = isEnabled() ? 1 : 0;
                int i2 = i;
                if (this.f52821m) {
                    i2 = i + 1;
                }
                int i3 = i2;
                if (this.f52820l) {
                    i3 = i2 + 1;
                }
                int i4 = i3;
                if (this.f52819k) {
                    i4 = i3 + 1;
                }
                int i5 = i4;
                if (isChecked()) {
                    i5 = i4 + 1;
                }
                int[] iArr = new int[i5];
                int i6 = 0;
                if (isEnabled()) {
                    iArr[0] = 16842910;
                    i6 = 1;
                }
                int i7 = i6;
                if (this.f52821m) {
                    iArr[i6] = 16842908;
                    i7 = i6 + 1;
                }
                int i8 = i7;
                if (this.f52820l) {
                    iArr[i7] = 16843623;
                    i8 = i7 + 1;
                }
                int i9 = i8;
                if (this.f52819k) {
                    iArr[i8] = 16842919;
                    i9 = i8 + 1;
                }
                if (isChecked()) {
                    iArr[i9] = 16842913;
                }
                z = c14484a2.m10934a(iArr);
            }
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            return c14484a.f52903q;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (((AbstractC0964a) this.f52825q).f3882c == 1 || this.f52825q.f3881b == 1) {
            rect.set(m10964m());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C14674i.m10435a(this, this.f52813a);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f52811e);
        }
        if (m10975d()) {
            mergeDrawableStates(onCreateDrawableState, f52812f);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        this.f52825q.m43942a(z, i, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            m10978b(m10965l().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            m10978b(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (m10975d() || isClickable()) {
            accessibilityNodeInfo.setClassName(m10975d() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(m10975d());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            C0869c m44278a = C0869c.m44278a(accessibilityNodeInfo);
            int i = -1;
            if (chipGroup.mo10620a()) {
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    i = -1;
                    if (i2 >= chipGroup.getChildCount()) {
                        break;
                    }
                    int i5 = i4;
                    if (chipGroup.getChildAt(i2) instanceof Chip) {
                        if (((Chip) chipGroup.getChildAt(i2)) == this) {
                            i = i4;
                            break;
                        }
                        i5 = i4 + 1;
                    }
                    i2++;
                    i3 = i5;
                }
            }
            m44278a.m44264b(C0869c.C0872c.m44234a(ChipGroup.m10616a(this), 1, i, 1, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (!m10965l().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f52823o != i) {
            this.f52823o = i;
            m10970g();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if (r0 != 3) goto L24;
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
            android.graphics.RectF r0 = r0.m10965l()
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.contains(r1, r2)
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L59
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L3e
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L2b
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L4f
            goto L67
        L2b:
            r0 = r4
            boolean r0 = r0.f52819k
            if (r0 == 0) goto L67
            r0 = r7
            if (r0 != 0) goto L62
            r0 = r4
            r1 = 0
            r0.m10981a(r1)
            goto L62
        L3e:
            r0 = r4
            boolean r0 = r0.f52819k
            if (r0 == 0) goto L4f
            r0 = r4
            boolean r0 = r0.m10980b()
            r0 = 1
            r6 = r0
            goto L51
        L4f:
            r0 = 0
            r6 = r0
        L51:
            r0 = r4
            r1 = 0
            r0.m10981a(r1)
            goto L69
        L59:
            r0 = r7
            if (r0 == 0) goto L67
            r0 = r4
            r1 = 1
            r0.m10981a(r1)
        L62:
            r0 = 1
            r6 = r0
            goto L69
        L67:
            r0 = 0
            r6 = r0
        L69:
            r0 = r6
            if (r0 != 0) goto L7a
            r0 = r4
            r1 = r5
            boolean r0 = super.onTouchEvent(r1)
            if (r0 == 0) goto L78
            goto L7a
        L78:
            r0 = 0
            return r0
        L7a:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == m10968i() || drawable == this.f52816h) {
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
        if (drawable == m10968i() || drawable == this.f52816h) {
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
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10916d(z);
        }
    }

    public void setCheckableResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10916d(c14484a.f52900n.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        C14484a c14484a = this.f52813a;
        if (c14484a == null) {
            this.f52818j = z;
        } else if (!c14484a.f52893g) {
        } else {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked == z || (onCheckedChangeListener = this.f52814b) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10917d(drawable);
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
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10917d(C0153a.m46374b(c14484a.f52900n, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10910f(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10910f(C0153a.m46375a(c14484a.f52900n, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10912e(c14484a.f52900n.getResources().getBoolean(i));
        }
    }

    public void setCheckedIconVisible(boolean z) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10912e(z);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10942a(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10942a(C0153a.m46375a(c14484a.f52900n, i));
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10932b(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10932b(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(C14484a c14484a) {
        C14484a c14484a2 = this.f52813a;
        if (c14484a2 != c14484a) {
            if (c14484a2 != null) {
                c14484a2.m10938a((C14484a.AbstractC14485a) null);
            }
            this.f52813a = c14484a;
            c14484a.f52904r = false;
            this.f52813a.m10938a(this);
            m10986a(this.f52824p);
        }
    }

    public void setChipEndPadding(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10901m(f);
        }
    }

    public void setChipEndPaddingResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10901m(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    public void setChipIcon(Drawable drawable) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10929b(drawable);
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
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10929b(C0153a.m46374b(c14484a.f52900n, i));
        }
    }

    public void setChipIconSize(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10919d(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10919d(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10918d(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10918d(C0153a.m46375a(c14484a.f52900n, i));
        }
    }

    public void setChipIconVisible(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10928b(c14484a.f52900n.getResources().getBoolean(i));
        }
    }

    public void setChipIconVisible(boolean z) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10928b(z);
        }
    }

    public void setChipMinHeight(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10945a(f);
        }
    }

    public void setChipMinHeightResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10945a(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    public void setChipStartPadding(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10911f(f);
        }
    }

    public void setChipStartPaddingResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10911f(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10931b(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10931b(C0153a.m46375a(c14484a.f52900n, i));
        }
    }

    public void setChipStrokeWidth(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10925c(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10925c(c14484a.f52900n.getResources().getDimension(i));
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
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10922c(drawable);
        }
        m10971f();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        C14484a c14484a = this.f52813a;
        if (c14484a == null || c14484a.f52892f == charSequence) {
            return;
        }
        c14484a.f52892f = C0811a.m44449a().m44448a(charSequence);
        c14484a.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10902l(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10902l(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10922c(C0153a.m46374b(c14484a.f52900n, i));
        }
        m10971f();
    }

    public void setCloseIconSize(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10915e(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10915e(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10903k(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10903k(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10914e(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10914e(C0153a.m46375a(c14484a.f52900n, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10921c(z);
        }
        m10971f();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i == 0) {
            if (i3 != 0) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i == 0) {
            if (i3 != 0) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 != null) {
                throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
            }
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10439r(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f52813a == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        C14484a c14484a = this.f52813a;
        if (c14484a == null) {
            return;
        }
        c14484a.f52903q = truncateAt;
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.f52822n = z;
        m10986a(this.f52824p);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(C14396h c14396h) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.f52895i = c14396h;
        }
    }

    public void setHideMotionSpecResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.f52895i = C14396h.m11333a(c14484a.f52900n, i);
        }
    }

    public void setIconEndPadding(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10907h(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10907h(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10908g(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10908g(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.f52813a != null && Build.VERSION.SDK_INT >= 17) {
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
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.f52905s = i;
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
        this.f52817i = onClickListener;
        m10971f();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10924c(colorStateList);
        }
        if (!this.f52813a.f52902p) {
            m10967j();
        }
    }

    public void setRippleColorResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10924c(C0153a.m46375a(c14484a.f52900n, i));
            if (this.f52813a.f52902p) {
                return;
            }
            m10967j();
        }
    }

    @Override // com.google.android.material.p374k.AbstractC14695q
    public void setShapeAppearanceModel(C14678m c14678m) {
        this.f52813a.setShapeAppearanceModel(c14678m);
    }

    public void setShowMotionSpec(C14396h c14396h) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.f52894h = c14396h;
        }
    }

    public void setShowMotionSpecResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.f52894h = C14396h.m11333a(c14484a.f52900n, i);
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
        C14484a c14484a = this.f52813a;
        if (c14484a == null) {
            return;
        }
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        super.setText(c14484a.f52904r ? null : charSequence2, bufferType);
        C14484a c14484a2 = this.f52813a;
        if (c14484a2 == null) {
            return;
        }
        c14484a2.m10936a(charSequence2);
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10944a(i);
        }
        m10962o();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10944a(i);
        }
        m10962o();
    }

    public void setTextAppearance(C14599d c14599d) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10937a(c14599d);
        }
        m10962o();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10904j(f);
        }
    }

    public void setTextEndPaddingResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10904j(c14484a.f52900n.getResources().getDimension(i));
        }
    }

    public void setTextStartPadding(float f) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10906i(f);
        }
    }

    public void setTextStartPaddingResource(int i) {
        C14484a c14484a = this.f52813a;
        if (c14484a != null) {
            c14484a.m10906i(c14484a.f52900n.getResources().getDimension(i));
        }
    }
}
