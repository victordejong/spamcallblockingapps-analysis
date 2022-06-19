package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.core.graphics.drawable.C0615a;
import com.google.android.material.internal.C8209q;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p099o.C1909a;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p106v.C1925a;
import p078c.p084c.p085a.p096b.p106v.C1928b;
import p078c.p084c.p085a.p096b.p108x.AbstractC1962p;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* renamed from: com.google.android.material.button.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/button/a.class */
public class C8050a {

    /* renamed from: a */
    private static final boolean f36366a;

    /* renamed from: b */
    private final MaterialButton f36367b;

    /* renamed from: c */
    private C1946m f36368c;

    /* renamed from: d */
    private int f36369d;

    /* renamed from: e */
    private int f36370e;

    /* renamed from: f */
    private int f36371f;

    /* renamed from: g */
    private int f36372g;

    /* renamed from: h */
    private int f36373h;

    /* renamed from: i */
    private int f36374i;

    /* renamed from: j */
    private PorterDuff.Mode f36375j;

    /* renamed from: k */
    private ColorStateList f36376k;

    /* renamed from: l */
    private ColorStateList f36377l;

    /* renamed from: m */
    private ColorStateList f36378m;

    /* renamed from: n */
    private Drawable f36379n;

    /* renamed from: o */
    private boolean f36380o = false;

    /* renamed from: p */
    private boolean f36381p = false;

    /* renamed from: q */
    private boolean f36382q = false;

    /* renamed from: r */
    private boolean f36383r;

    /* renamed from: s */
    private LayerDrawable f36384s;

    /* renamed from: t */
    private int f36385t;

    static {
        f36366a = Build.VERSION.SDK_INT >= 21;
    }

    public C8050a(MaterialButton materialButton, C1946m c1946m) {
        this.f36367b = materialButton;
        this.f36368c = c1946m;
    }

    /* renamed from: E */
    private void m5343E(int i, int i2) {
        int m29334I = C1679w.m29334I(this.f36367b);
        int paddingTop = this.f36367b.getPaddingTop();
        int m29336H = C1679w.m29336H(this.f36367b);
        int paddingBottom = this.f36367b.getPaddingBottom();
        int i3 = this.f36371f;
        int i4 = this.f36372g;
        this.f36372g = i2;
        this.f36371f = i;
        if (!this.f36381p) {
            m5342F();
        }
        C1679w.m29339F0(this.f36367b, m29334I, (paddingTop + i) - i3, m29336H, (paddingBottom + i2) - i4);
    }

    /* renamed from: F */
    private void m5342F() {
        this.f36367b.setInternalBackground(m5337a());
        C1938h m5332f = m5332f();
        if (m5332f != null) {
            m5332f.m28626Z(this.f36385t);
        }
    }

    /* renamed from: G */
    private void m5341G(C1946m c1946m) {
        if (m5332f() != null) {
            m5332f().setShapeAppearanceModel(c1946m);
        }
        if (m5324n() != null) {
            m5324n().setShapeAppearanceModel(c1946m);
        }
        if (m5333e() != null) {
            m5333e().setShapeAppearanceModel(c1946m);
        }
    }

    /* renamed from: I */
    private void m5339I() {
        C1938h m5332f = m5332f();
        C1938h m5324n = m5324n();
        if (m5332f != null) {
            m5332f.m28605k0(this.f36374i, this.f36377l);
            if (m5324n == null) {
                return;
            }
            m5324n.m28607j0(this.f36374i, this.f36380o ? C1909a.m28715d(this.f36367b, C1886b.colorSurface) : 0);
        }
    }

    /* renamed from: J */
    private InsetDrawable m5338J(Drawable drawable) {
        return new InsetDrawable(drawable, this.f36369d, this.f36371f, this.f36370e, this.f36372g);
    }

    /* renamed from: a */
    private Drawable m5337a() {
        C1938h c1938h = new C1938h(this.f36368c);
        c1938h.m28636P(this.f36367b.getContext());
        C0615a.m33215o(c1938h, this.f36376k);
        PorterDuff.Mode mode = this.f36375j;
        if (mode != null) {
            C0615a.m33214p(c1938h, mode);
        }
        c1938h.m28605k0(this.f36374i, this.f36377l);
        C1938h c1938h2 = new C1938h(this.f36368c);
        c1938h2.setTint(0);
        c1938h2.m28607j0(this.f36374i, this.f36380o ? C1909a.m28715d(this.f36367b, C1886b.colorSurface) : 0);
        if (f36366a) {
            C1938h c1938h3 = new C1938h(this.f36368c);
            this.f36379n = c1938h3;
            C0615a.m33216n(c1938h3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(C1928b.m28658d(this.f36378m), m5338J(new LayerDrawable(new Drawable[]{c1938h2, c1938h})), this.f36379n);
            this.f36384s = rippleDrawable;
            return rippleDrawable;
        }
        C1925a c1925a = new C1925a(this.f36368c);
        this.f36379n = c1925a;
        C0615a.m33215o(c1925a, C1928b.m28658d(this.f36378m));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{c1938h2, c1938h, this.f36379n});
        this.f36384s = layerDrawable;
        return m5338J(layerDrawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    private C1938h m5331g(boolean z) {
        LayerDrawable layerDrawable = this.f36384s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f36366a ? (C1938h) ((LayerDrawable) ((InsetDrawable) this.f36384s.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (C1938h) this.f36384s.getDrawable(!z);
    }

    /* renamed from: n */
    private C1938h m5324n() {
        return m5331g(true);
    }

    /* renamed from: A */
    public void m5347A(ColorStateList colorStateList) {
        if (this.f36377l != colorStateList) {
            this.f36377l = colorStateList;
            m5339I();
        }
    }

    /* renamed from: B */
    public void m5346B(int i) {
        if (this.f36374i != i) {
            this.f36374i = i;
            m5339I();
        }
    }

    /* renamed from: C */
    public void m5345C(ColorStateList colorStateList) {
        if (this.f36376k != colorStateList) {
            this.f36376k = colorStateList;
            if (m5332f() == null) {
                return;
            }
            C0615a.m33215o(m5332f(), this.f36376k);
        }
    }

    /* renamed from: D */
    public void m5344D(PorterDuff.Mode mode) {
        if (this.f36375j != mode) {
            this.f36375j = mode;
            if (m5332f() == null || this.f36375j == null) {
                return;
            }
            C0615a.m33214p(m5332f(), this.f36375j);
        }
    }

    /* renamed from: H */
    public void m5340H(int i, int i2) {
        Drawable drawable = this.f36379n;
        if (drawable != null) {
            drawable.setBounds(this.f36369d, this.f36371f, i2 - this.f36370e, i - this.f36372g);
        }
    }

    /* renamed from: b */
    public int m5336b() {
        return this.f36373h;
    }

    /* renamed from: c */
    public int m5335c() {
        return this.f36372g;
    }

    /* renamed from: d */
    public int m5334d() {
        return this.f36371f;
    }

    /* renamed from: e */
    public AbstractC1962p m5333e() {
        LayerDrawable layerDrawable = this.f36384s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f36384s.getNumberOfLayers() > 2 ? (AbstractC1962p) this.f36384s.getDrawable(2) : (AbstractC1962p) this.f36384s.getDrawable(1);
    }

    /* renamed from: f */
    public C1938h m5332f() {
        return m5331g(false);
    }

    /* renamed from: h */
    public ColorStateList m5330h() {
        return this.f36378m;
    }

    /* renamed from: i */
    public C1946m m5329i() {
        return this.f36368c;
    }

    /* renamed from: j */
    public ColorStateList m5328j() {
        return this.f36377l;
    }

    /* renamed from: k */
    public int m5327k() {
        return this.f36374i;
    }

    /* renamed from: l */
    public ColorStateList m5326l() {
        return this.f36376k;
    }

    /* renamed from: m */
    public PorterDuff.Mode m5325m() {
        return this.f36375j;
    }

    /* renamed from: o */
    public boolean m5323o() {
        return this.f36381p;
    }

    /* renamed from: p */
    public boolean m5322p() {
        return this.f36383r;
    }

    /* renamed from: q */
    public void m5321q(TypedArray typedArray) {
        this.f36369d = typedArray.getDimensionPixelOffset(C1896l.MaterialButton_android_insetLeft, 0);
        this.f36370e = typedArray.getDimensionPixelOffset(C1896l.MaterialButton_android_insetRight, 0);
        this.f36371f = typedArray.getDimensionPixelOffset(C1896l.MaterialButton_android_insetTop, 0);
        this.f36372g = typedArray.getDimensionPixelOffset(C1896l.MaterialButton_android_insetBottom, 0);
        int i = C1896l.MaterialButton_cornerRadius;
        if (typedArray.hasValue(i)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(i, -1);
            this.f36373h = dimensionPixelSize;
            m5313y(this.f36368c.m28553w(dimensionPixelSize));
            this.f36382q = true;
        }
        this.f36374i = typedArray.getDimensionPixelSize(C1896l.MaterialButton_strokeWidth, 0);
        this.f36375j = C8209q.m4444i(typedArray.getInt(C1896l.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f36376k = C1919c.m28686a(this.f36367b.getContext(), typedArray, C1896l.MaterialButton_backgroundTint);
        this.f36377l = C1919c.m28686a(this.f36367b.getContext(), typedArray, C1896l.MaterialButton_strokeColor);
        this.f36378m = C1919c.m28686a(this.f36367b.getContext(), typedArray, C1896l.MaterialButton_rippleColor);
        this.f36383r = typedArray.getBoolean(C1896l.MaterialButton_android_checkable, false);
        this.f36385t = typedArray.getDimensionPixelSize(C1896l.MaterialButton_elevation, 0);
        int m29334I = C1679w.m29334I(this.f36367b);
        int paddingTop = this.f36367b.getPaddingTop();
        int m29336H = C1679w.m29336H(this.f36367b);
        int paddingBottom = this.f36367b.getPaddingBottom();
        if (typedArray.hasValue(C1896l.MaterialButton_android_background)) {
            m5319s();
        } else {
            m5342F();
        }
        C1679w.m29339F0(this.f36367b, m29334I + this.f36369d, paddingTop + this.f36371f, m29336H + this.f36370e, paddingBottom + this.f36372g);
    }

    /* renamed from: r */
    public void m5320r(int i) {
        if (m5332f() != null) {
            m5332f().setTint(i);
        }
    }

    /* renamed from: s */
    public void m5319s() {
        this.f36381p = true;
        this.f36367b.setSupportBackgroundTintList(this.f36376k);
        this.f36367b.setSupportBackgroundTintMode(this.f36375j);
    }

    /* renamed from: t */
    public void m5318t(boolean z) {
        this.f36383r = z;
    }

    /* renamed from: u */
    public void m5317u(int i) {
        if (!this.f36382q || this.f36373h != i) {
            this.f36373h = i;
            this.f36382q = true;
            m5313y(this.f36368c.m28553w(i));
        }
    }

    /* renamed from: v */
    public void m5316v(int i) {
        m5343E(this.f36371f, i);
    }

    /* renamed from: w */
    public void m5315w(int i) {
        m5343E(i, this.f36372g);
    }

    /* renamed from: x */
    public void m5314x(ColorStateList colorStateList) {
        if (this.f36378m != colorStateList) {
            this.f36378m = colorStateList;
            boolean z = f36366a;
            if (z && (this.f36367b.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f36367b.getBackground()).setColor(C1928b.m28658d(colorStateList));
            } else if (z || !(this.f36367b.getBackground() instanceof C1925a)) {
            } else {
                ((C1925a) this.f36367b.getBackground()).setTintList(C1928b.m28658d(colorStateList));
            }
        }
    }

    /* renamed from: y */
    public void m5313y(C1946m c1946m) {
        this.f36368c = c1946m;
        m5341G(c1946m);
    }

    /* renamed from: z */
    public void m5312z(boolean z) {
        this.f36380o = z;
        m5339I();
    }
}
