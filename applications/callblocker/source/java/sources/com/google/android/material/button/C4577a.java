package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p026h.C0595u;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4703j;
import com.google.android.material.p149g.C4680a;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p157o.C4724a;
import com.google.android.material.p157o.C4727b;
import com.google.android.material.p159q.AbstractC4758n;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4743k;
/* renamed from: com.google.android.material.button.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/button/a.class */
public class C4577a {

    /* renamed from: a */
    private static final boolean f19880a;

    /* renamed from: b */
    private final MaterialButton f19881b;

    /* renamed from: c */
    private C4743k f19882c;

    /* renamed from: d */
    private int f19883d;

    /* renamed from: e */
    private int f19884e;

    /* renamed from: f */
    private int f19885f;

    /* renamed from: g */
    private int f19886g;

    /* renamed from: h */
    private int f19887h;

    /* renamed from: i */
    private int f19888i;

    /* renamed from: j */
    private PorterDuff.Mode f19889j;

    /* renamed from: k */
    private ColorStateList f19890k;

    /* renamed from: l */
    private ColorStateList f19891l;

    /* renamed from: m */
    private ColorStateList f19892m;

    /* renamed from: n */
    private Drawable f19893n;

    /* renamed from: o */
    private boolean f19894o = false;

    /* renamed from: p */
    private boolean f19895p = false;

    /* renamed from: q */
    private boolean f19896q = false;

    /* renamed from: r */
    private boolean f19897r;

    /* renamed from: s */
    private LayerDrawable f19898s;

    static {
        f19880a = Build.VERSION.SDK_INT >= 21;
    }

    public C4577a(MaterialButton materialButton, C4743k c4743k) {
        this.f19881b = materialButton;
        this.f19882c = c4743k;
    }

    /* renamed from: a */
    private InsetDrawable m3495a(Drawable drawable) {
        return new InsetDrawable(drawable, this.f19883d, this.f19885f, this.f19884e, this.f19886g);
    }

    /* renamed from: b */
    private void m3489b(C4743k c4743k) {
        if (m3478i() != null) {
            m3478i().setShapeAppearanceModel(c4743k);
        }
        if (m3472o() != null) {
            m3472o().setShapeAppearanceModel(c4743k);
        }
        if (m3476k() != null) {
            m3476k().setShapeAppearanceModel(c4743k);
        }
    }

    /* renamed from: c */
    private C4736g m3484c(boolean z) {
        C4736g c4736g;
        int i = 0;
        if (this.f19898s == null || this.f19898s.getNumberOfLayers() <= 0) {
            c4736g = null;
        } else if (f19880a) {
            LayerDrawable layerDrawable = (LayerDrawable) ((InsetDrawable) this.f19898s.getDrawable(0)).getDrawable();
            if (!z) {
                i = 1;
            }
            c4736g = (C4736g) layerDrawable.getDrawable(i);
        } else {
            c4736g = (C4736g) this.f19898s.getDrawable(z ? 0 : 1);
        }
        return c4736g;
    }

    /* renamed from: m */
    private Drawable m3474m() {
        Drawable m3495a;
        C4736g c4736g = new C4736g(this.f19882c);
        c4736g.m2722a(this.f19881b.getContext());
        C0535a.m20595a(c4736g, this.f19890k);
        if (this.f19889j != null) {
            C0535a.m20592a(c4736g, this.f19889j);
        }
        c4736g.m2726a(this.f19888i, this.f19891l);
        C4736g c4736g2 = new C4736g(this.f19882c);
        c4736g2.setTint(0);
        c4736g2.m2727a(this.f19888i, this.f19894o ? C4680a.m2920a(this.f19881b, C4492a.C4494b.colorSurface) : 0);
        if (f19880a) {
            this.f19893n = new C4736g(this.f19882c);
            C0535a.m20597a(this.f19893n, -1);
            this.f19898s = new RippleDrawable(C4727b.m2756b(this.f19892m), m3495a(new LayerDrawable(new Drawable[]{c4736g2, c4736g})), this.f19893n);
            m3495a = this.f19898s;
        } else {
            this.f19893n = new C4724a(this.f19882c);
            C0535a.m20595a(this.f19893n, C4727b.m2756b(this.f19892m));
            this.f19898s = new LayerDrawable(new Drawable[]{c4736g2, c4736g, this.f19893n});
            m3495a = m3495a(this.f19898s);
        }
        return m3495a;
    }

    /* renamed from: n */
    private void m3473n() {
        C4736g m3478i = m3478i();
        C4736g m3472o = m3472o();
        if (m3478i != null) {
            m3478i.m2726a(this.f19888i, this.f19891l);
            if (m3472o == null) {
                return;
            }
            m3472o.m2727a(this.f19888i, this.f19894o ? C4680a.m2920a(this.f19881b, C4492a.C4494b.colorSurface) : 0);
        }
    }

    /* renamed from: o */
    private C4736g m3472o() {
        return m3484c(true);
    }

    /* renamed from: a */
    public void m3501a() {
        this.f19895p = true;
        this.f19881b.setSupportBackgroundTintList(this.f19890k);
        this.f19881b.setSupportBackgroundTintMode(this.f19889j);
    }

    /* renamed from: a */
    public void m3500a(int i) {
        if (m3478i() != null) {
            m3478i().setTint(i);
        }
    }

    /* renamed from: a */
    public void m3499a(int i, int i2) {
        if (this.f19893n != null) {
            this.f19893n.setBounds(this.f19883d, this.f19885f, i2 - this.f19884e, i - this.f19886g);
        }
    }

    /* renamed from: a */
    public void m3498a(ColorStateList colorStateList) {
        if (this.f19890k != colorStateList) {
            this.f19890k = colorStateList;
            if (m3478i() == null) {
                return;
            }
            C0535a.m20595a(m3478i(), this.f19890k);
        }
    }

    /* renamed from: a */
    public void m3497a(TypedArray typedArray) {
        this.f19883d = typedArray.getDimensionPixelOffset(C4492a.C4504l.MaterialButton_android_insetLeft, 0);
        this.f19884e = typedArray.getDimensionPixelOffset(C4492a.C4504l.MaterialButton_android_insetRight, 0);
        this.f19885f = typedArray.getDimensionPixelOffset(C4492a.C4504l.MaterialButton_android_insetTop, 0);
        this.f19886g = typedArray.getDimensionPixelOffset(C4492a.C4504l.MaterialButton_android_insetBottom, 0);
        if (typedArray.hasValue(C4492a.C4504l.MaterialButton_cornerRadius)) {
            this.f19887h = typedArray.getDimensionPixelSize(C4492a.C4504l.MaterialButton_cornerRadius, -1);
            m3494a(this.f19882c.m2677a(this.f19887h));
            this.f19896q = true;
        }
        this.f19888i = typedArray.getDimensionPixelSize(C4492a.C4504l.MaterialButton_strokeWidth, 0);
        this.f19889j = C4703j.m2816a(typedArray.getInt(C4492a.C4504l.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f19890k = C4718c.m2784a(this.f19881b.getContext(), typedArray, C4492a.C4504l.MaterialButton_backgroundTint);
        this.f19891l = C4718c.m2784a(this.f19881b.getContext(), typedArray, C4492a.C4504l.MaterialButton_strokeColor);
        this.f19892m = C4718c.m2784a(this.f19881b.getContext(), typedArray, C4492a.C4504l.MaterialButton_rippleColor);
        this.f19897r = typedArray.getBoolean(C4492a.C4504l.MaterialButton_android_checkable, false);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(C4492a.C4504l.MaterialButton_elevation, 0);
        int m20316i = C0595u.m20316i(this.f19881b);
        int paddingTop = this.f19881b.getPaddingTop();
        int m20314j = C0595u.m20314j(this.f19881b);
        int paddingBottom = this.f19881b.getPaddingBottom();
        this.f19881b.setInternalBackground(m3474m());
        C4736g m3478i = m3478i();
        if (m3478i != null) {
            m3478i.m2687r(dimensionPixelSize);
        }
        C0595u.m20355a(this.f19881b, m20316i + this.f19883d, paddingTop + this.f19885f, m20314j + this.f19884e, paddingBottom + this.f19886g);
    }

    /* renamed from: a */
    public void m3496a(PorterDuff.Mode mode) {
        if (this.f19889j != mode) {
            this.f19889j = mode;
            if (m3478i() == null || this.f19889j == null) {
                return;
            }
            C0535a.m20592a(m3478i(), this.f19889j);
        }
    }

    /* renamed from: a */
    public void m3494a(C4743k c4743k) {
        this.f19882c = c4743k;
        m3489b(c4743k);
    }

    /* renamed from: a */
    public void m3493a(boolean z) {
        this.f19894o = z;
        m3473n();
    }

    /* renamed from: b */
    public void m3491b(int i) {
        if (this.f19888i != i) {
            this.f19888i = i;
            m3473n();
        }
    }

    /* renamed from: b */
    public void m3490b(ColorStateList colorStateList) {
        if (this.f19892m != colorStateList) {
            this.f19892m = colorStateList;
            if (f19880a && (this.f19881b.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f19881b.getBackground()).setColor(C4727b.m2756b(colorStateList));
            } else if (f19880a || !(this.f19881b.getBackground() instanceof C4724a)) {
            } else {
                ((C4724a) this.f19881b.getBackground()).setTintList(C4727b.m2756b(colorStateList));
            }
        }
    }

    /* renamed from: b */
    public void m3488b(boolean z) {
        this.f19897r = z;
    }

    /* renamed from: b */
    public boolean m3492b() {
        return this.f19895p;
    }

    /* renamed from: c */
    public ColorStateList m3487c() {
        return this.f19890k;
    }

    /* renamed from: c */
    public void m3486c(int i) {
        if (!this.f19896q || this.f19887h != i) {
            this.f19887h = i;
            this.f19896q = true;
            m3494a(this.f19882c.m2677a(i));
        }
    }

    /* renamed from: c */
    public void m3485c(ColorStateList colorStateList) {
        if (this.f19891l != colorStateList) {
            this.f19891l = colorStateList;
            m3473n();
        }
    }

    /* renamed from: d */
    public PorterDuff.Mode m3483d() {
        return this.f19889j;
    }

    /* renamed from: e */
    public ColorStateList m3482e() {
        return this.f19892m;
    }

    /* renamed from: f */
    public ColorStateList m3481f() {
        return this.f19891l;
    }

    /* renamed from: g */
    public int m3480g() {
        return this.f19888i;
    }

    /* renamed from: h */
    public int m3479h() {
        return this.f19887h;
    }

    /* renamed from: i */
    public C4736g m3478i() {
        return m3484c(false);
    }

    /* renamed from: j */
    public boolean m3477j() {
        return this.f19897r;
    }

    /* renamed from: k */
    public AbstractC4758n m3476k() {
        return (this.f19898s == null || this.f19898s.getNumberOfLayers() <= 1) ? null : this.f19898s.getNumberOfLayers() > 2 ? (AbstractC4758n) this.f19898s.getDrawable(2) : (AbstractC4758n) this.f19898s.getDrawable(1);
    }

    /* renamed from: l */
    public C4743k m3475l() {
        return this.f19882c;
    }
}
