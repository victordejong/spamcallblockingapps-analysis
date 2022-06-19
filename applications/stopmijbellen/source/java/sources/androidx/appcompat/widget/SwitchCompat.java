package androidx.appcompat.widget;

import android.animation.ObjectAnimator;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.Property;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.emoji2.text.C0354d;
import com.applovin.mediation.C1564R;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p097g.C2788a;
import p098g0.C2789a;
import p163m0.C3587t;
import p163m0.C3589v;
import p163m0.C3611y;
import p196p0.C3992g;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {

    /* renamed from: R */
    public static final Property<SwitchCompat, Float> f705R = new C0183a(Float.class, "thumbPos");

    /* renamed from: S */
    public static final int[] f706S = {16842912};

    /* renamed from: A */
    public int f707A;

    /* renamed from: B */
    public int f708B;

    /* renamed from: C */
    public int f709C;

    /* renamed from: D */
    public int f710D;

    /* renamed from: E */
    public int f711E;

    /* renamed from: F */
    public int f712F;

    /* renamed from: G */
    public int f713G;

    /* renamed from: H */
    public final TextPaint f714H;

    /* renamed from: I */
    public ColorStateList f715I;

    /* renamed from: J */
    public Layout f716J;

    /* renamed from: K */
    public Layout f717K;

    /* renamed from: L */
    public TransformationMethod f718L;

    /* renamed from: M */
    public ObjectAnimator f719M;

    /* renamed from: N */
    public C0251m f720N;

    /* renamed from: O */
    public C0184b f721O;

    /* renamed from: a */
    public Drawable f723a;

    /* renamed from: b */
    public ColorStateList f724b;

    /* renamed from: c */
    public PorterDuff.Mode f725c;

    /* renamed from: d */
    public boolean f726d;

    /* renamed from: e */
    public boolean f727e;

    /* renamed from: f */
    public Drawable f728f;

    /* renamed from: g */
    public ColorStateList f729g;

    /* renamed from: h */
    public PorterDuff.Mode f730h;

    /* renamed from: i */
    public boolean f731i;

    /* renamed from: j */
    public boolean f732j;

    /* renamed from: k */
    public int f733k;

    /* renamed from: l */
    public int f734l;

    /* renamed from: m */
    public int f735m;

    /* renamed from: n */
    public boolean f736n;

    /* renamed from: o */
    public CharSequence f737o;

    /* renamed from: p */
    public CharSequence f738p;

    /* renamed from: q */
    public CharSequence f739q;

    /* renamed from: r */
    public CharSequence f740r;

    /* renamed from: s */
    public boolean f741s;

    /* renamed from: t */
    public int f742t;

    /* renamed from: u */
    public int f743u;

    /* renamed from: v */
    public float f744v;

    /* renamed from: w */
    public float f745w;

    /* renamed from: y */
    public int f747y;

    /* renamed from: z */
    public float f748z;

    /* renamed from: x */
    public VelocityTracker f746x = VelocityTracker.obtain();

    /* renamed from: P */
    public final Rect f722P = new Rect();

    /* renamed from: androidx.appcompat.widget.SwitchCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat$a.class */
    public class C0183a extends Property<SwitchCompat, Float> {
        public C0183a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f748z);
        }

        @Override // android.util.Property
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    }

    /* renamed from: androidx.appcompat.widget.SwitchCompat$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat$b.class */
    public static class C0184b extends C0354d.AbstractC0360e {

        /* renamed from: a */
        public final Reference<SwitchCompat> f749a;

        public C0184b(SwitchCompat switchCompat) {
            this.f749a = new WeakReference(switchCompat);
        }

        @Override // androidx.emoji2.text.C0354d.AbstractC0360e
        /* renamed from: a */
        public void mo8242a(Throwable th) {
            SwitchCompat switchCompat = this.f749a.get();
            if (switchCompat != null) {
                switchCompat.m8621e();
            }
        }

        @Override // androidx.emoji2.text.C0354d.AbstractC0360e
        /* renamed from: b */
        public void mo538b() {
            SwitchCompat switchCompat = this.f749a.get();
            if (switchCompat != null) {
                switchCompat.m8621e();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x01ea, code lost:
        if (r15 != null) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SwitchCompat(android.content.Context r9, android.util.AttributeSet r10) {
        /*
            Method dump skipped, instructions count: 871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private C0251m getEmojiTextViewHelper() {
        if (this.f720N == null) {
            this.f720N = new C0251m(this);
        }
        return this.f720N;
    }

    private boolean getTargetCheckedState() {
        return this.f748z > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((C0236h1.m8493a(this) ? 1.0f - this.f748z : this.f748z) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f728f;
        if (drawable != null) {
            Rect rect = this.f722P;
            drawable.getPadding(rect);
            Drawable drawable2 = this.f723a;
            Rect m8496d = drawable2 != null ? C0233h0.m8496d(drawable2) : C0233h0.f956c;
            return ((((this.f707A - this.f709C) - rect.left) - rect.right) - m8496d.left) - m8496d.right;
        }
        return 0;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f739q = charSequence;
        this.f740r = m8623c(charSequence);
        this.f717K = null;
        if (this.f741s) {
            m8618h();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f737o = charSequence;
        this.f738p = m8623c(charSequence);
        this.f716J = null;
        if (this.f741s) {
            m8618h();
        }
    }

    /* renamed from: a */
    public final void m8625a() {
        Drawable drawable = this.f723a;
        if (drawable != null) {
            if (!this.f726d && !this.f727e) {
                return;
            }
            Drawable mutate = C2789a.m3007h(drawable).mutate();
            this.f723a = mutate;
            if (this.f726d) {
                mutate.setTintList(this.f724b);
            }
            if (this.f727e) {
                this.f723a.setTintMode(this.f725c);
            }
            if (!this.f723a.isStateful()) {
                return;
            }
            this.f723a.setState(getDrawableState());
        }
    }

    /* renamed from: b */
    public final void m8624b() {
        Drawable drawable = this.f728f;
        if (drawable != null) {
            if (!this.f731i && !this.f732j) {
                return;
            }
            Drawable mutate = C2789a.m3007h(drawable).mutate();
            this.f728f = mutate;
            if (this.f731i) {
                mutate.setTintList(this.f729g);
            }
            if (this.f732j) {
                this.f728f.setTintMode(this.f730h);
            }
            if (!this.f728f.isStateful()) {
                return;
            }
            this.f728f.setState(getDrawableState());
        }
    }

    /* renamed from: c */
    public final CharSequence m8623c(CharSequence charSequence) {
        C0251m emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod mo541e = emojiTextViewHelper.f1015b.f14578a.mo541e(this.f718L);
        CharSequence charSequence2 = charSequence;
        if (mo541e != null) {
            charSequence2 = mo541e.getTransformation(charSequence, this);
        }
        return charSequence2;
    }

    /* renamed from: d */
    public final Layout m8622d(CharSequence charSequence) {
        TextPaint textPaint = this.f714H;
        return new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        Rect rect = this.f722P;
        int i5 = this.f710D;
        int i6 = this.f711E;
        int i7 = this.f712F;
        int i8 = this.f713G;
        int thumbOffset = getThumbOffset() + i5;
        Drawable drawable = this.f723a;
        Rect m8496d = drawable != null ? C0233h0.m8496d(drawable) : C0233h0.f956c;
        Drawable drawable2 = this.f728f;
        int i9 = thumbOffset;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i10 = rect.left;
            int i11 = thumbOffset + i10;
            if (m8496d != null) {
                int i12 = m8496d.left;
                int i13 = i5;
                if (i12 > i10) {
                    i13 = i5 + (i12 - i10);
                }
                int i14 = m8496d.top;
                int i15 = rect.top;
                i3 = i14 > i15 ? (i14 - i15) + i6 : i6;
                int i16 = m8496d.right;
                int i17 = rect.right;
                i = i7;
                if (i16 > i17) {
                    i = i7 - (i16 - i17);
                }
                int i18 = m8496d.bottom;
                int i19 = rect.bottom;
                i5 = i13;
                i7 = i;
                i4 = i3;
                if (i18 > i19) {
                    i5 = i13;
                    i2 = i8 - (i18 - i19);
                    this.f728f.setBounds(i5, i3, i, i2);
                    i9 = i11;
                }
            } else {
                i4 = i6;
            }
            i2 = i8;
            i3 = i4;
            i = i7;
            this.f728f.setBounds(i5, i3, i, i2);
            i9 = i11;
        }
        Drawable drawable3 = this.f723a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i20 = i9 - rect.left;
            int i21 = i9 + this.f709C + rect.right;
            this.f723a.setBounds(i20, i6, i21, i8);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i20, i6, i21, i8);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f723a;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
        Drawable drawable2 = this.f728f;
        if (drawable2 != null) {
            drawable2.setHotspot(f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f723a;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f728f;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: e */
    public void m8621e() {
        setTextOnInternal(this.f737o);
        setTextOffInternal(this.f739q);
        requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.CharSequence] */
    /* renamed from: f */
    public final void m8620f() {
        if (Build.VERSION.SDK_INT >= 30) {
            ?? r0 = this.f739q;
            String str = r0;
            if (r0 == 0) {
                str = getResources().getString(C3681R.string.abc_capital_off);
            }
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            new C3587t(C1564R.C1567id.tag_state_description, CharSequence.class, 64, 30).m2096e(this, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.CharSequence] */
    /* renamed from: g */
    public final void m8619g() {
        if (Build.VERSION.SDK_INT >= 30) {
            ?? r0 = this.f737o;
            String str = r0;
            if (r0 == 0) {
                str = getResources().getString(C3681R.string.abc_capital_on);
            }
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            new C3587t(C1564R.C1567id.tag_state_description, CharSequence.class, 64, 30).m2096e(this, str);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!C0236h1.m8493a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f707A;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.f735m;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C0236h1.m8493a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f707A;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.f735m;
        }
        return i;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return C3992g.m1555g(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f741s;
    }

    public boolean getSplitTrack() {
        return this.f736n;
    }

    public int getSwitchMinWidth() {
        return this.f734l;
    }

    public int getSwitchPadding() {
        return this.f735m;
    }

    public CharSequence getTextOff() {
        return this.f739q;
    }

    public CharSequence getTextOn() {
        return this.f737o;
    }

    public Drawable getThumbDrawable() {
        return this.f723a;
    }

    public int getThumbTextPadding() {
        return this.f733k;
    }

    public ColorStateList getThumbTintList() {
        return this.f724b;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f725c;
    }

    public Drawable getTrackDrawable() {
        return this.f728f;
    }

    public ColorStateList getTrackTintList() {
        return this.f729g;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f730h;
    }

    /* renamed from: h */
    public final void m8618h() {
        if (this.f721O != null || !this.f720N.f1015b.f14578a.mo544b() || !C0354d.m8253c()) {
            return;
        }
        C0354d m8255a = C0354d.m8255a();
        int m8254b = m8255a.m8254b();
        if (m8254b != 3 && m8254b != 0) {
            return;
        }
        C0184b c0184b = new C0184b(this);
        this.f721O = c0184b;
        m8255a.m8246j(c0184b);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f723a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f728f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f719M;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f719M.end();
        this.f719M = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, f706S);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.f722P;
        Drawable drawable = this.f728f;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f711E;
        int i3 = this.f713G;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f723a;
        if (drawable != null) {
            if (!this.f736n || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect m8496d = C0233h0.m8496d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += m8496d.left;
                rect.right -= m8496d.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.f716J : this.f717K;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f715I;
            if (colorStateList != null) {
                this.f714H.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f714H.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                i = bounds.left + bounds.right;
            } else {
                i = getWidth();
            }
            canvas.translate((i / 2) - (layout.getWidth() / 2), (((i2 + i4) + (i3 - i5)) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f737o : this.f739q;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        super.onLayout(z, i, i2, i3, i4);
        int i10 = 0;
        if (this.f723a != null) {
            Rect rect = this.f722P;
            Drawable drawable = this.f728f;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect m8496d = C0233h0.m8496d(this.f723a);
            i5 = Math.max(0, m8496d.left - rect.left);
            i10 = Math.max(0, m8496d.right - rect.right);
        } else {
            i5 = 0;
        }
        if (C0236h1.m8493a(this)) {
            i6 = getPaddingLeft() + i5;
            i7 = ((this.f707A + i6) - i5) - i10;
        } else {
            i7 = (getWidth() - getPaddingRight()) - i10;
            i6 = (i7 - this.f707A) + i5 + i10;
        }
        int gravity = getGravity() & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
        if (gravity == 16) {
            int height = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i11 = this.f708B;
            i9 = height - (i11 / 2);
            i8 = i11 + i9;
        } else if (gravity != 80) {
            i9 = getPaddingTop();
            i8 = this.f708B + i9;
        } else {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.f708B;
        }
        this.f710D = i6;
        this.f711E = i9;
        this.f713G = i8;
        this.f712F = i7;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.f741s) {
            if (this.f716J == null) {
                this.f716J = m8622d(this.f738p);
            }
            if (this.f717K == null) {
                this.f717K = m8622d(this.f740r);
            }
        }
        Rect rect = this.f722P;
        Drawable drawable = this.f723a;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f723a.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f723a.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        if (this.f741s) {
            i5 = (this.f733k * 2) + Math.max(this.f716J.getWidth(), this.f717K.getWidth());
        } else {
            i5 = 0;
        }
        this.f709C = Math.max(i5, i4);
        Drawable drawable2 = this.f728f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i6 = this.f728f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
            i6 = 0;
        }
        int i7 = rect.left;
        int i8 = rect.right;
        Drawable drawable3 = this.f723a;
        int i9 = i8;
        int i10 = i7;
        if (drawable3 != null) {
            Rect m8496d = C0233h0.m8496d(drawable3);
            i10 = Math.max(i7, m8496d.left);
            i9 = Math.max(i8, m8496d.right);
        }
        int max = Math.max(this.f734l, (this.f709C * 2) + i10 + i9);
        int max2 = Math.max(i6, i3);
        this.f707A = max;
        this.f708B = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f737o : this.f739q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (r0 != 3) goto L85;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f1015b.f14578a.mo543c(z);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (isChecked) {
            m8619g();
        } else {
            m8620f();
        }
        float f = 1.0f;
        if (getWindowToken() != null) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3596g.m2058c(this)) {
                if (!isChecked) {
                    f = 0.0f;
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f705R, f);
                this.f719M = ofFloat;
                ofFloat.setDuration(250L);
                this.f719M.setAutoCancel(true);
                this.f719M.start();
                return;
            }
        }
        ObjectAnimator objectAnimator = this.f719M;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        if (!isChecked) {
            f = 0.0f;
        }
        setThumbPosition(f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C3992g.m1554h(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().f1015b.f14578a.mo542d(z);
        setTextOnInternal(this.f737o);
        setTextOffInternal(this.f739q);
        requestLayout();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().f1015b.f14578a.mo545a(inputFilterArr));
    }

    public void setShowText(boolean z) {
        if (this.f741s != z) {
            this.f741s = z;
            requestLayout();
            if (!z) {
                return;
            }
            m8618h();
        }
    }

    public void setSplitTrack(boolean z) {
        this.f736n = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f734l = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f735m = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f714H.getTypeface() == null || this.f714H.getTypeface().equals(typeface)) && (this.f714H.getTypeface() != null || typeface == null)) {
            return;
        }
        this.f714H.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (!isChecked()) {
            m8620f();
        }
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            m8619g();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f723a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f723a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.f748z = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(C2788a.m3015b(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f733k = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f724b = colorStateList;
        this.f726d = true;
        m8625a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f725c = mode;
        this.f727e = true;
        m8625a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f728f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f728f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(C2788a.m3015b(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f729g = colorStateList;
        this.f731i = true;
        m8624b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f730h = mode;
        this.f732j = true;
        m8624b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f723a || drawable == this.f728f;
    }
}
