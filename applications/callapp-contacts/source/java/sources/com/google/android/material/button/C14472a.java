package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.C0926v;
import com.google.android.material.C14376a;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.p372i.C14604a;
import com.google.android.material.p372i.C14607b;
import com.google.android.material.p374k.AbstractC14695q;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14678m;
/* renamed from: com.google.android.material.button.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/button/a.class */
public final class C14472a {

    /* renamed from: a */
    static final boolean f52750a;

    /* renamed from: b */
    final MaterialButton f52751b;

    /* renamed from: c */
    C14678m f52752c;

    /* renamed from: d */
    int f52753d;

    /* renamed from: e */
    int f52754e;

    /* renamed from: f */
    int f52755f;

    /* renamed from: g */
    int f52756g;

    /* renamed from: h */
    int f52757h;

    /* renamed from: i */
    int f52758i;

    /* renamed from: j */
    PorterDuff.Mode f52759j;

    /* renamed from: k */
    ColorStateList f52760k;

    /* renamed from: l */
    ColorStateList f52761l;

    /* renamed from: m */
    ColorStateList f52762m;

    /* renamed from: n */
    Drawable f52763n;

    /* renamed from: o */
    boolean f52764o = false;

    /* renamed from: p */
    boolean f52765p = false;

    /* renamed from: q */
    boolean f52766q = false;

    /* renamed from: r */
    boolean f52767r;

    /* renamed from: s */
    int f52768s;

    /* renamed from: t */
    private LayerDrawable f52769t;

    static {
        f52750a = Build.VERSION.SDK_INT >= 21;
    }

    public C14472a(MaterialButton materialButton, C14678m c14678m) {
        this.f52751b = materialButton;
        this.f52752c = c14678m;
    }

    /* renamed from: a */
    private InsetDrawable m11025a(Drawable drawable) {
        return new InsetDrawable(drawable, this.f52753d, this.f52755f, this.f52754e, this.f52756g);
    }

    /* renamed from: b */
    private void m11021b(C14678m c14678m) {
        if (m11023a(false) != null) {
            m11023a(false).setShapeAppearanceModel(c14678m);
        }
        if (m11023a(true) != null) {
            m11023a(true).setShapeAppearanceModel(c14678m);
        }
        if (m11018e() != null) {
            m11018e().setShapeAppearanceModel(c14678m);
        }
    }

    /* renamed from: d */
    private Drawable m11019d() {
        C14670h c14670h = new C14670h(this.f52752c);
        c14670h.m10479a(this.f52751b.getContext());
        C0840a.m44355a(c14670h, this.f52760k);
        PorterDuff.Mode mode = this.f52759j;
        if (mode != null) {
            C0840a.m44352a(c14670h, mode);
        }
        c14670h.m10481a(this.f52758i, this.f52761l);
        C14670h c14670h2 = new C14670h(this.f52752c);
        c14670h2.setTint(0);
        c14670h2.m10482a(this.f52758i, this.f52764o ? C14597b.m10655a(this.f52751b, C14376a.C14378b.colorSurface) : 0);
        if (f52750a) {
            C14670h c14670h3 = new C14670h(this.f52752c);
            this.f52763n = c14670h3;
            C0840a.m44357a(c14670h3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(C14607b.m10633b(this.f52762m), m11025a(new LayerDrawable(new Drawable[]{c14670h2, c14670h})), this.f52763n);
            this.f52769t = rippleDrawable;
            return rippleDrawable;
        }
        C14604a c14604a = new C14604a(this.f52752c);
        this.f52763n = c14604a;
        C0840a.m44355a(c14604a, C14607b.m10633b(this.f52762m));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{c14670h2, c14670h, this.f52763n});
        this.f52769t = layerDrawable;
        return m11025a(layerDrawable);
    }

    /* renamed from: e */
    private AbstractC14695q m11018e() {
        LayerDrawable layerDrawable = this.f52769t;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f52769t.getNumberOfLayers() > 2 ? (AbstractC14695q) this.f52769t.getDrawable(2) : (AbstractC14695q) this.f52769t.getDrawable(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final C14670h m11023a(boolean z) {
        LayerDrawable layerDrawable = this.f52769t;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f52750a ? (C14670h) ((LayerDrawable) ((InsetDrawable) this.f52769t.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (C14670h) this.f52769t.getDrawable(!z);
    }

    /* renamed from: a */
    public final void m11027a() {
        this.f52751b.m11073a(m11019d());
        C14670h m11023a = m11023a(false);
        if (m11023a != null) {
            m11023a.m10439r(this.f52768s);
        }
    }

    /* renamed from: a */
    public final void m11026a(int i, int i2) {
        int m44091i = C0926v.m44091i(this.f52751b);
        int paddingTop = this.f52751b.getPaddingTop();
        int m44089j = C0926v.m44089j(this.f52751b);
        int paddingBottom = this.f52751b.getPaddingBottom();
        int i3 = this.f52755f;
        int i4 = this.f52756g;
        this.f52756g = i2;
        this.f52755f = i;
        if (!this.f52765p) {
            m11027a();
        }
        C0926v.m44109b(this.f52751b, m44091i, (paddingTop + i) - i3, m44089j, (paddingBottom + i2) - i4);
    }

    /* renamed from: a */
    public final void m11024a(C14678m c14678m) {
        this.f52752c = c14678m;
        m11021b(c14678m);
    }

    /* renamed from: b */
    public final void m11022b() {
        this.f52765p = true;
        this.f52751b.setSupportBackgroundTintList(this.f52760k);
        this.f52751b.setSupportBackgroundTintMode(this.f52759j);
    }

    /* renamed from: c */
    public final void m11020c() {
        int i = 0;
        C14670h m11023a = m11023a(false);
        C14670h m11023a2 = m11023a(true);
        if (m11023a != null) {
            m11023a.m10481a(this.f52758i, this.f52761l);
            if (m11023a2 == null) {
                return;
            }
            float f = this.f52758i;
            if (this.f52764o) {
                i = C14597b.m10655a(this.f52751b, C14376a.C14378b.colorSurface);
            }
            m11023a2.m10482a(f, i);
        }
    }
}
