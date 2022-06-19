package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.C0032R;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.WeakHashMap;
import n3.b.c.a.a;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p1727n3.p1734b.p1743f.C25502e;
import p1727n3.p1788g.C26179e;
import p1727n3.p1788g.C26180f;
import p1727n3.p1788g.C26187h;
import p1727n3.p1788g.C26188i;
import p1727n3.p1792h0.p1793a.p1794a.C26253c;
import p1727n3.p1792h0.p1793a.p1794a.C26261g;
/* renamed from: n3.b.f.h0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/h0.class */
public final class C25512h0 {

    /* renamed from: i */
    public static C25512h0 f71386i;

    /* renamed from: a */
    public WeakHashMap<Context, C26188i<ColorStateList>> f71388a;

    /* renamed from: b */
    public C26187h<String, AbstractC25517e> f71389b;

    /* renamed from: c */
    public C26188i<String> f71390c;

    /* renamed from: d */
    public final WeakHashMap<Context, C26179e<WeakReference<Drawable.ConstantState>>> f71391d = new WeakHashMap<>(0);

    /* renamed from: e */
    public TypedValue f71392e;

    /* renamed from: f */
    public boolean f71393f;

    /* renamed from: g */
    public AbstractC25518f f71394g;

    /* renamed from: h */
    public static final PorterDuff.Mode f71385h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j */
    public static final C25515c f71387j = new C25515c(6);

    /* renamed from: n3.b.f.h0$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/h0$a.class */
    public static class C25513a implements AbstractC25517e {
        @Override // p1727n3.p1734b.p1743f.C25512h0.AbstractC25517e
        /* renamed from: a */
        public Drawable mo3347a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return a.g(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* renamed from: n3.b.f.h0$b */
    /* loaded from: classes-dex2jar.jar:n3/b/f/h0$b.class */
    public static class C25514b implements AbstractC25517e {
        @Override // p1727n3.p1734b.p1743f.C25512h0.AbstractC25517e
        /* renamed from: a */
        public Drawable mo3347a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                C26253c c26253c = new C26253c(context, null, null);
                c26253c.inflate(resources, xmlPullParser, attributeSet, theme);
                return c26253c;
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* renamed from: n3.b.f.h0$c */
    /* loaded from: classes-dex2jar.jar:n3/b/f/h0$c.class */
    public static class C25515c extends C26180f<Integer, PorterDuffColorFilter> {
        public C25515c(int i) {
            super(i);
        }
    }

    /* renamed from: n3.b.f.h0$d */
    /* loaded from: classes-dex2jar.jar:n3/b/f/h0$d.class */
    public static class C25516d implements AbstractC25517e {
        @Override // p1727n3.p1734b.p1743f.C25512h0.AbstractC25517e
        /* renamed from: a */
        public Drawable mo3347a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) C25516d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    drawable.inflate(context.getResources(), xmlPullParser, attributeSet, theme);
                    return drawable;
                } catch (Exception e) {
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: n3.b.f.h0$e */
    /* loaded from: classes-dex2jar.jar:n3/b/f/h0$e.class */
    public interface AbstractC25517e {
        /* renamed from: a */
        Drawable mo3347a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: n3.b.f.h0$f */
    /* loaded from: classes-dex2jar.jar:n3/b/f/h0$f.class */
    public interface AbstractC25518f {
    }

    /* renamed from: n3.b.f.h0$g */
    /* loaded from: classes-dex2jar.jar:n3/b/f/h0$g.class */
    public static class C25519g implements AbstractC25517e {
        @Override // p1727n3.p1734b.p1743f.C25512h0.AbstractC25517e
        /* renamed from: a */
        public Drawable mo3347a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C26261g.m2248a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* renamed from: d */
    public static C25512h0 m3357d() {
        C25512h0 c25512h0;
        synchronized (C25512h0.class) {
            try {
                if (f71386i == null) {
                    C25512h0 c25512h02 = new C25512h0();
                    f71386i = c25512h02;
                    m3351j(c25512h02);
                }
                c25512h0 = f71386i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c25512h0;
    }

    /* renamed from: h */
    public static PorterDuffColorFilter m3353h(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C25512h0.class) {
            try {
                C25515c c25515c = f71387j;
                Objects.requireNonNull(c25515c);
                int i2 = (i + 31) * 31;
                PorterDuffColorFilter porterDuffColorFilter2 = c25515c.get(Integer.valueOf(mode.hashCode() + i2));
                porterDuffColorFilter = porterDuffColorFilter2;
                if (porterDuffColorFilter2 == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    Objects.requireNonNull(c25515c);
                    c25515c.put(Integer.valueOf(mode.hashCode() + i2), porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: j */
    public static void m3351j(C25512h0 c25512h0) {
        if (Build.VERSION.SDK_INT < 24) {
            c25512h0.m3360a("vector", new C25519g());
            c25512h0.m3360a("animated-vector", new C25514b());
            c25512h0.m3360a("animated-selector", new C25513a());
            c25512h0.m3360a("drawable", new C25516d());
        }
    }

    /* renamed from: a */
    public final void m3360a(String str, AbstractC25517e abstractC25517e) {
        if (this.f71389b == null) {
            this.f71389b = new C26187h<>();
        }
        this.f71389b.put(str, abstractC25517e);
    }

    /* renamed from: b */
    public final boolean m3359b(Context context, long j, Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                C26179e<WeakReference<Drawable.ConstantState>> c26179e = this.f71391d.get(context);
                C26179e<WeakReference<Drawable.ConstantState>> c26179e2 = c26179e;
                if (c26179e == null) {
                    c26179e2 = new C26179e<>(10);
                    this.f71391d.put(context, c26179e2);
                }
                c26179e2.m2600k(j, new WeakReference<>(constantState));
                return true;
            }
            return false;
        }
    }

    /* renamed from: c */
    public final Drawable m3358c(Context context, int i) {
        if (this.f71392e == null) {
            this.f71392e = new TypedValue();
        }
        TypedValue typedValue = this.f71392e;
        context.getResources().getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable m3356e = m3356e(context, j);
        if (m3356e != null) {
            return m3356e;
        }
        AbstractC25518f abstractC25518f = this.f71394g;
        LayerDrawable layerDrawable = null;
        if (abstractC25518f != null) {
            C25502e.C25503a c25503a = (C25502e.C25503a) abstractC25518f;
            if (i == C0032R.C0033drawable.abc_cab_background_top_material) {
                layerDrawable = new LayerDrawable(new Drawable[]{m3355f(context, C0032R.C0033drawable.abc_cab_background_internal_bg), m3355f(context, C0032R.C0033drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i == C0032R.C0033drawable.abc_ratingbar_material) {
                layerDrawable = c25503a.m3372c(this, context, C0032R.dimen.abc_star_big);
            } else if (i == C0032R.C0033drawable.abc_ratingbar_indicator_material) {
                layerDrawable = c25503a.m3372c(this, context, C0032R.dimen.abc_star_medium);
            } else if (i == C0032R.C0033drawable.abc_ratingbar_small_material) {
                layerDrawable = c25503a.m3372c(this, context, C0032R.dimen.abc_star_small);
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            m3359b(context, j, layerDrawable);
        }
        return layerDrawable;
    }

    /* renamed from: e */
    public final Drawable m3356e(Context context, long j) {
        synchronized (this) {
            C26179e<WeakReference<Drawable.ConstantState>> c26179e = this.f71391d.get(context);
            if (c26179e == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> m2603h = c26179e.m2603h(j, null);
            if (m2603h != null) {
                Drawable.ConstantState constantState = m2603h.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                c26179e.m2599l(j);
            }
            return null;
        }
    }

    /* renamed from: f */
    public Drawable m3355f(Context context, int i) {
        Drawable m3354g;
        synchronized (this) {
            m3354g = m3354g(context, i, false);
        }
        return m3354g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        if (r12 != false) goto L20;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.drawable.Drawable m3354g(android.content.Context r7, int r8, boolean r9) {
        /*
            r6 = this;
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            boolean r0 = r0.f71393f     // Catch: java.lang.Throwable -> L9f
            if (r0 == 0) goto Lc
            goto L4f
        Lc:
            r0 = 1
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f71393f = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r6
            r1 = r7
            int r2 = androidx.appcompat.resources.C0040R.C0041drawable.abc_vector_test     // Catch: java.lang.Throwable -> L9f
            android.graphics.drawable.Drawable r0 = r0.m3355f(r1, r2)     // Catch: java.lang.Throwable -> L9f
            r11 = r0
            r0 = r11
            if (r0 == 0) goto La3
            r0 = r10
            r12 = r0
            r0 = r11
            boolean r0 = r0 instanceof p1727n3.p1792h0.p1793a.p1794a.C26261g     // Catch: java.lang.Throwable -> L9f
            if (r0 != 0) goto L4a
            java.lang.String r0 = "android.graphics.drawable.VectorDrawable"
            r1 = r11
            java.lang.Class r1 = r1.getClass()     // Catch: java.lang.Throwable -> L9f
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L9f
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L9f
            if (r0 == 0) goto L47
            r0 = r10
            r12 = r0
            goto L4a
        L47:
            r0 = 0
            r12 = r0
        L4a:
            r0 = r12
            if (r0 == 0) goto La3
        L4f:
            r0 = r6
            r1 = r7
            r2 = r8
            android.graphics.drawable.Drawable r0 = r0.m3350k(r1, r2)     // Catch: java.lang.Throwable -> L9f
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r11
            if (r0 != 0) goto L68
            r0 = r6
            r1 = r7
            r2 = r8
            android.graphics.drawable.Drawable r0 = r0.m3358c(r1, r2)     // Catch: java.lang.Throwable -> L9f
            r13 = r0
        L68:
            r0 = r13
            r11 = r0
            r0 = r13
            if (r0 != 0) goto L7d
            java.lang.Object r0 = p1727n3.p1807k.p1809b.C26467a.f74235a     // Catch: java.lang.Throwable -> L9f
            r11 = r0
            r0 = r7
            r1 = r8
            android.graphics.drawable.Drawable r0 = p1727n3.p1807k.p1809b.C26467a.C26470c.m1789b(r0, r1)     // Catch: java.lang.Throwable -> L9f
            r11 = r0
        L7d:
            r0 = r11
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L91
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            android.graphics.drawable.Drawable r0 = r0.m3349l(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L9f
            r13 = r0
        L91:
            r0 = r13
            if (r0 == 0) goto L9a
            int[] r0 = p1727n3.p1734b.p1743f.C25553w.f71522a     // Catch: java.lang.Throwable -> L9f
            r7 = r0
        L9a:
            r0 = r6
            monitor-exit(r0)
            r0 = r13
            return r0
        L9f:
            r7 = move-exception
            goto Lb5
        La3:
            r0 = r6
            r1 = 0
            r0.f71393f = r1     // Catch: java.lang.Throwable -> L9f
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L9f
            r7 = r0
            r0 = r7
            java.lang.String r1 = "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L9f
            r0 = r7
            throw r0     // Catch: java.lang.Throwable -> L9f
        Lb5:
            r0 = r6
            monitor-exit(r0)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.C25512h0.m3354g(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }

    /* renamed from: i */
    public ColorStateList m3352i(Context context, int i) {
        ColorStateList colorStateList;
        C26188i<ColorStateList> c26188i;
        synchronized (this) {
            WeakHashMap<Context, C26188i<ColorStateList>> weakHashMap = this.f71388a;
            ColorStateList m2566g = (weakHashMap == null || (c26188i = weakHashMap.get(context)) == null) ? null : c26188i.m2566g(i, null);
            colorStateList = m2566g;
            if (m2566g == null) {
                AbstractC25518f abstractC25518f = this.f71394g;
                ColorStateList m3371d = abstractC25518f == null ? null : ((C25502e.C25503a) abstractC25518f).m3371d(context, i);
                if (m3371d != null) {
                    if (this.f71388a == null) {
                        this.f71388a = new WeakHashMap<>();
                    }
                    C26188i<ColorStateList> c26188i2 = this.f71388a.get(context);
                    C26188i<ColorStateList> c26188i3 = c26188i2;
                    if (c26188i2 == null) {
                        c26188i3 = new C26188i<>();
                        this.f71388a.put(context, c26188i3);
                    }
                    c26188i3.m2571a(i, m3371d);
                }
                colorStateList = m3371d;
            }
        }
        return colorStateList;
    }

    /* renamed from: k */
    public final Drawable m3350k(Context context, int i) {
        int next;
        C26187h<String, AbstractC25517e> c26187h = this.f71389b;
        if (c26187h == null || c26187h.isEmpty()) {
            return null;
        }
        C26188i<String> c26188i = this.f71390c;
        if (c26188i != null) {
            String m2566g = c26188i.m2566g(i, null);
            if ("appcompat_skip_skip".equals(m2566g)) {
                return null;
            }
            if (m2566g != null && this.f71389b.getOrDefault(m2566g, null) == null) {
                return null;
            }
        } else {
            this.f71390c = new C26188i<>();
        }
        if (this.f71392e == null) {
            this.f71392e = new TypedValue();
        }
        TypedValue typedValue = this.f71392e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable m3356e = m3356e(context, j);
        if (m3356e != null) {
            return m3356e;
        }
        CharSequence charSequence = typedValue.string;
        Drawable drawable = m3356e;
        if (charSequence != null) {
            drawable = m3356e;
            if (charSequence.toString().endsWith(".xml")) {
                drawable = m3356e;
                try {
                    XmlResourceParser xml = resources.getXml(i);
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                    do {
                        next = xml.next();
                        if (next == 2) {
                            break;
                        }
                    } while (next != 1);
                    if (next != 2) {
                        throw new XmlPullParserException("No start tag found");
                    }
                    String name = xml.getName();
                    this.f71390c.m2571a(i, name);
                    AbstractC25517e abstractC25517e = this.f71389b.get(name);
                    Drawable drawable2 = m3356e;
                    if (abstractC25517e != null) {
                        drawable2 = abstractC25517e.mo3347a(context, xml, asAttributeSet, context.getTheme());
                    }
                    drawable = drawable2;
                    if (drawable2 != null) {
                        drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                        Drawable drawable3 = drawable2;
                        m3359b(context, j, drawable2);
                        drawable = drawable2;
                    }
                } catch (Exception e) {
                }
            }
        }
        if (drawable == null) {
            this.f71390c.m2571a(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    /* renamed from: l */
    public final Drawable m3349l(Context context, int i, boolean z, Drawable drawable) {
        Drawable drawable2;
        PorterDuff.Mode mode;
        ColorStateList m3352i = m3352i(context, i);
        if (m3352i != null) {
            Drawable drawable3 = drawable;
            if (C25553w.m3250a(drawable)) {
                drawable3 = drawable.mutate();
            }
            drawable3.setTintList(m3352i);
            AbstractC25518f abstractC25518f = this.f71394g;
            if (abstractC25518f == null) {
                mode = null;
            } else {
                C25502e.C25503a c25503a = (C25502e.C25503a) abstractC25518f;
                mode = null;
                if (i == C0032R.C0033drawable.abc_switch_thumb_material) {
                    mode = PorterDuff.Mode.MULTIPLY;
                }
            }
            drawable2 = drawable3;
            if (mode != null) {
                drawable3.setTintMode(mode);
                drawable2 = drawable3;
            }
        } else {
            AbstractC25518f abstractC25518f2 = this.f71394g;
            if (abstractC25518f2 != null) {
                C25502e.C25503a c25503a2 = (C25502e.C25503a) abstractC25518f2;
                Objects.requireNonNull(c25503a2);
                boolean z2 = true;
                if (i == C0032R.C0033drawable.abc_seekbar_track_material) {
                    LayerDrawable layerDrawable = (LayerDrawable) drawable;
                    Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(16908288);
                    int i2 = C0032R.attr.colorControlNormal;
                    int m3342c = C25529m0.m3342c(context, i2);
                    PorterDuff.Mode mode2 = C25502e.f71363b;
                    c25503a2.m3370e(findDrawableByLayerId, m3342c, mode2);
                    c25503a2.m3370e(layerDrawable.findDrawableByLayerId(16908303), C25529m0.m3342c(context, i2), mode2);
                    c25503a2.m3370e(layerDrawable.findDrawableByLayerId(16908301), C25529m0.m3342c(context, C0032R.attr.colorControlActivated), mode2);
                } else if (i == C0032R.C0033drawable.abc_ratingbar_material || i == C0032R.C0033drawable.abc_ratingbar_indicator_material || i == C0032R.C0033drawable.abc_ratingbar_small_material) {
                    LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                    Drawable findDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(16908288);
                    int m3343b = C25529m0.m3343b(context, C0032R.attr.colorControlNormal);
                    PorterDuff.Mode mode3 = C25502e.f71363b;
                    c25503a2.m3370e(findDrawableByLayerId2, m3343b, mode3);
                    Drawable findDrawableByLayerId3 = layerDrawable2.findDrawableByLayerId(16908303);
                    int i3 = C0032R.attr.colorControlActivated;
                    c25503a2.m3370e(findDrawableByLayerId3, C25529m0.m3342c(context, i3), mode3);
                    c25503a2.m3370e(layerDrawable2.findDrawableByLayerId(16908301), C25529m0.m3342c(context, i3), mode3);
                } else {
                    z2 = false;
                }
                if (z2) {
                    drawable2 = drawable;
                }
            }
            drawable2 = drawable;
            if (!m3348m(context, i, drawable)) {
                drawable2 = drawable;
                if (z) {
                    drawable2 = null;
                }
            }
        }
        return drawable2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00de, code lost:
        if (r6 != false) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00db  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m3348m(android.content.Context r5, int r6, android.graphics.drawable.Drawable r7) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.C25512h0.m3348m(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }
}
