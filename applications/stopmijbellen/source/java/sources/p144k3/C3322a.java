package p144k3;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import com.google.android.material.button.MaterialButton;
import java.util.WeakHashMap;
import p005a4.C0013a;
import p005a4.C0016b;
import p029c4.AbstractC0841m;
import p029c4.C0822f;
import p029c4.C0827i;
import p124i4.C3102d;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: k3.a */
/* loaded from: classes-dex2jar.jar:k3/a.class */
public class C3322a {

    /* renamed from: t */
    public static final boolean f11253t = true;

    /* renamed from: u */
    public static final boolean f11254u;

    /* renamed from: a */
    public final MaterialButton f11255a;

    /* renamed from: b */
    public C0827i f11256b;

    /* renamed from: c */
    public int f11257c;

    /* renamed from: d */
    public int f11258d;

    /* renamed from: e */
    public int f11259e;

    /* renamed from: f */
    public int f11260f;

    /* renamed from: g */
    public int f11261g;

    /* renamed from: h */
    public int f11262h;

    /* renamed from: i */
    public PorterDuff.Mode f11263i;

    /* renamed from: j */
    public ColorStateList f11264j;

    /* renamed from: k */
    public ColorStateList f11265k;

    /* renamed from: l */
    public ColorStateList f11266l;

    /* renamed from: m */
    public Drawable f11267m;

    /* renamed from: n */
    public boolean f11268n = false;

    /* renamed from: o */
    public boolean f11269o = false;

    /* renamed from: p */
    public boolean f11270p = false;

    /* renamed from: q */
    public boolean f11271q;

    /* renamed from: r */
    public LayerDrawable f11272r;

    /* renamed from: s */
    public int f11273s;

    static {
        boolean z = true;
        if (Build.VERSION.SDK_INT > 22) {
            z = false;
        }
        f11254u = z;
    }

    public C3322a(MaterialButton materialButton, C0827i c0827i) {
        this.f11255a = materialButton;
        this.f11256b = c0827i;
    }

    /* renamed from: a */
    public AbstractC0841m m2385a() {
        LayerDrawable layerDrawable = this.f11272r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f11272r.getNumberOfLayers() > 2 ? (AbstractC0841m) this.f11272r.getDrawable(2) : (AbstractC0841m) this.f11272r.getDrawable(1);
    }

    /* renamed from: b */
    public C0822f m2384b() {
        return m2383c(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public final C0822f m2383c(boolean z) {
        LayerDrawable layerDrawable = this.f11272r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f11253t ? (C0822f) ((LayerDrawable) ((InsetDrawable) this.f11272r.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (C0822f) this.f11272r.getDrawable(!z);
    }

    /* renamed from: d */
    public final C0822f m2382d() {
        return m2383c(true);
    }

    /* renamed from: e */
    public void m2381e(C0827i c0827i) {
        this.f11256b = c0827i;
        if (f11254u && !this.f11269o) {
            MaterialButton materialButton = this.f11255a;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            int m2069f = C3589v.C3594e.m2069f(materialButton);
            int paddingTop = this.f11255a.getPaddingTop();
            int m2070e = C3589v.C3594e.m2070e(this.f11255a);
            int paddingBottom = this.f11255a.getPaddingBottom();
            m2379g();
            C3589v.C3594e.m2064k(this.f11255a, m2069f, paddingTop, m2070e, paddingBottom);
            return;
        }
        if (m2384b() != null) {
            C0822f m2384b = m2384b();
            m2384b.f3010a.f3034a = c0827i;
            m2384b.invalidateSelf();
        }
        if (m2382d() != null) {
            C0822f m2382d = m2382d();
            m2382d.f3010a.f3034a = c0827i;
            m2382d.invalidateSelf();
        }
        if (m2385a() == null) {
            return;
        }
        m2385a().setShapeAppearanceModel(c0827i);
    }

    /* renamed from: f */
    public final void m2380f(int i, int i2) {
        MaterialButton materialButton = this.f11255a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int m2069f = C3589v.C3594e.m2069f(materialButton);
        int paddingTop = this.f11255a.getPaddingTop();
        int m2070e = C3589v.C3594e.m2070e(this.f11255a);
        int paddingBottom = this.f11255a.getPaddingBottom();
        int i3 = this.f11259e;
        int i4 = this.f11260f;
        this.f11260f = i2;
        this.f11259e = i;
        if (!this.f11269o) {
            m2379g();
        }
        C3589v.C3594e.m2064k(this.f11255a, m2069f, (paddingTop + i) - i3, m2070e, (paddingBottom + i2) - i4);
    }

    /* renamed from: g */
    public final void m2379g() {
        RippleDrawable rippleDrawable;
        MaterialButton materialButton = this.f11255a;
        C0822f c0822f = new C0822f(this.f11256b);
        c0822f.m7316o(this.f11255a.getContext());
        c0822f.setTintList(this.f11264j);
        PorterDuff.Mode mode = this.f11263i;
        if (mode != null) {
            c0822f.setTintMode(mode);
        }
        c0822f.m7311t(this.f11262h, this.f11265k);
        C0822f c0822f2 = new C0822f(this.f11256b);
        c0822f2.setTint(0);
        c0822f2.m7312s(this.f11262h, this.f11268n ? C3102d.m2619t(this.f11255a, 2130968849) : 0);
        if (f11253t) {
            C0822f c0822f3 = new C0822f(this.f11256b);
            this.f11267m = c0822f3;
            c0822f3.setTint(-1);
            RippleDrawable rippleDrawable2 = new RippleDrawable(C0016b.m8930a(this.f11266l), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{c0822f2, c0822f}), this.f11257c, this.f11259e, this.f11258d, this.f11260f), this.f11267m);
            this.f11272r = rippleDrawable2;
            rippleDrawable = rippleDrawable2;
        } else {
            C0013a c0013a = new C0013a(this.f11256b);
            this.f11267m = c0013a;
            c0013a.setTintList(C0016b.m8930a(this.f11266l));
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{c0822f2, c0822f, this.f11267m});
            this.f11272r = layerDrawable;
            rippleDrawable = new InsetDrawable((Drawable) layerDrawable, this.f11257c, this.f11259e, this.f11258d, this.f11260f);
        }
        materialButton.setInternalBackground(rippleDrawable);
        C0822f m2384b = m2384b();
        if (m2384b != null) {
            m2384b.m7315p(this.f11273s);
        }
    }

    /* renamed from: h */
    public final void m2378h() {
        C0822f m2384b = m2384b();
        C0822f m2382d = m2382d();
        if (m2384b != null) {
            m2384b.m7311t(this.f11262h, this.f11265k);
            if (m2382d == null) {
                return;
            }
            m2382d.m7312s(this.f11262h, this.f11268n ? C3102d.m2619t(this.f11255a, 2130968849) : 0);
        }
    }
}
