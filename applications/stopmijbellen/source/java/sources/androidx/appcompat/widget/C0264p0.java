package androidx.appcompat.widget;

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
import androidx.appcompat.widget.C0242j;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p029c4.C0821e;
import p098g0.C2789a;
import p108h.C2974a;
import p119i.C3054b;
import p164m1.C3616b;
import p164m1.C3624f;
import p226s.C4255d;
import p226s.C4256e;
import p226s.C4263g;
import p226s.C4264h;
/* renamed from: androidx.appcompat.widget.p0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p0.class */
public final class C0264p0 {

    /* renamed from: i */
    public static C0264p0 f1066i;

    /* renamed from: a */
    public WeakHashMap<Context, C4264h<ColorStateList>> f1068a;

    /* renamed from: b */
    public C4263g<String, AbstractC0269e> f1069b;

    /* renamed from: c */
    public C4264h<String> f1070c;

    /* renamed from: d */
    public final WeakHashMap<Context, C4255d<WeakReference<Drawable.ConstantState>>> f1071d = new WeakHashMap<>(0);

    /* renamed from: e */
    public TypedValue f1072e;

    /* renamed from: f */
    public boolean f1073f;

    /* renamed from: g */
    public AbstractC0270f f1074g;

    /* renamed from: h */
    public static final PorterDuff.Mode f1065h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j */
    public static final C0267c f1067j = new C0267c(6);

    /* renamed from: androidx.appcompat.widget.p0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p0$a.class */
    public static class C0265a implements AbstractC0269e {
        @Override // androidx.appcompat.widget.C0264p0.AbstractC0269e
        /* renamed from: a */
        public Drawable mo8436a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C2974a.m2797g(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.p0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p0$b.class */
    public static class C0266b implements AbstractC0269e {
        @Override // androidx.appcompat.widget.C0264p0.AbstractC0269e
        /* renamed from: a */
        public Drawable mo8436a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                C3616b c3616b = new C3616b(context, null, null);
                c3616b.inflate(resources, xmlPullParser, attributeSet, theme);
                return c3616b;
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.p0$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p0$c.class */
    public static class C0267c extends C4256e<Integer, PorterDuffColorFilter> {
        public C0267c(int i) {
            super(i);
        }
    }

    /* renamed from: androidx.appcompat.widget.p0$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p0$d.class */
    public static class C0268d implements AbstractC0269e {
        @Override // androidx.appcompat.widget.C0264p0.AbstractC0269e
        /* renamed from: a */
        public Drawable mo8436a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) C0268d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    C3054b.m2669c(drawable, context.getResources(), xmlPullParser, attributeSet, theme);
                    return drawable;
                } catch (Exception e) {
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.p0$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p0$e.class */
    public interface AbstractC0269e {
        /* renamed from: a */
        Drawable mo8436a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: androidx.appcompat.widget.p0$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p0$f.class */
    public interface AbstractC0270f {
    }

    /* renamed from: androidx.appcompat.widget.p0$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p0$g.class */
    public static class C0271g implements AbstractC0269e {
        @Override // androidx.appcompat.widget.C0264p0.AbstractC0269e
        /* renamed from: a */
        public Drawable mo8436a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C3624f.m1969a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* renamed from: d */
    public static C0264p0 m8446d() {
        C0264p0 c0264p0;
        synchronized (C0264p0.class) {
            try {
                if (f1066i == null) {
                    C0264p0 c0264p02 = new C0264p0();
                    f1066i = c0264p02;
                    m8440j(c0264p02);
                }
                c0264p0 = f1066i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0264p0;
    }

    /* renamed from: h */
    public static PorterDuffColorFilter m8442h(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C0264p0.class) {
            try {
                C0267c c0267c = f1067j;
                Objects.requireNonNull(c0267c);
                int i2 = (i + 31) * 31;
                PorterDuffColorFilter porterDuffColorFilter2 = c0267c.get(Integer.valueOf(mode.hashCode() + i2));
                porterDuffColorFilter = porterDuffColorFilter2;
                if (porterDuffColorFilter2 == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    Objects.requireNonNull(c0267c);
                    c0267c.put(Integer.valueOf(mode.hashCode() + i2), porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: j */
    public static void m8440j(C0264p0 c0264p0) {
        if (Build.VERSION.SDK_INT < 24) {
            c0264p0.m8449a("vector", new C0271g());
            c0264p0.m8449a("animated-vector", new C0266b());
            c0264p0.m8449a("animated-selector", new C0265a());
            c0264p0.m8449a("drawable", new C0268d());
        }
    }

    /* renamed from: a */
    public final void m8449a(String str, AbstractC0269e abstractC0269e) {
        if (this.f1069b == null) {
            this.f1069b = new C4263g<>();
        }
        this.f1069b.put(str, abstractC0269e);
    }

    /* renamed from: b */
    public final boolean m8448b(Context context, long j, Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                C4255d<WeakReference<Drawable.ConstantState>> c4255d = this.f1071d.get(context);
                C4255d<WeakReference<Drawable.ConstantState>> c4255d2 = c4255d;
                if (c4255d == null) {
                    c4255d2 = new C4255d<>();
                    this.f1071d.put(context, c4255d2);
                }
                c4255d2.m1218g(j, new WeakReference<>(constantState));
                return true;
            }
            return false;
        }
    }

    /* renamed from: c */
    public final Drawable m8447c(Context context, int i) {
        if (this.f1072e == null) {
            this.f1072e = new TypedValue();
        }
        TypedValue typedValue = this.f1072e;
        context.getResources().getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable m8445e = m8445e(context, j);
        if (m8445e != null) {
            return m8445e;
        }
        AbstractC0270f abstractC0270f = this.f1074g;
        LayerDrawable layerDrawable = null;
        if (abstractC0270f != null) {
            C0242j.C0243a c0243a = (C0242j.C0243a) abstractC0270f;
            if (i == 2131230752) {
                layerDrawable = new LayerDrawable(new Drawable[]{m8444f(context, C3681R.C3683drawable.abc_cab_background_internal_bg), m8444f(context, C3681R.C3683drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i == 2131230787) {
                layerDrawable = c0243a.m8478c(this, context, 2131165243);
            } else if (i == 2131230786) {
                layerDrawable = c0243a.m8478c(this, context, 2131165244);
            } else if (i == 2131230788) {
                layerDrawable = c0243a.m8478c(this, context, 2131165245);
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            m8448b(context, j, layerDrawable);
        }
        return layerDrawable;
    }

    /* renamed from: e */
    public final Drawable m8445e(Context context, long j) {
        synchronized (this) {
            C4255d<WeakReference<Drawable.ConstantState>> c4255d = this.f1071d.get(context);
            if (c4255d == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> m1219f = c4255d.m1219f(j, null);
            if (m1219f != null) {
                Drawable.ConstantState constantState = m1219f.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                int m7342c = C0821e.m7342c(c4255d.f13341b, c4255d.f13343d, j);
                if (m7342c >= 0) {
                    Object[] objArr = c4255d.f13342c;
                    Object obj = objArr[m7342c];
                    Object obj2 = C4255d.f13339e;
                    if (obj != obj2) {
                        objArr[m7342c] = obj2;
                        c4255d.f13340a = true;
                    }
                }
            }
            return null;
        }
    }

    /* renamed from: f */
    public Drawable m8444f(Context context, int i) {
        Drawable m8443g;
        synchronized (this) {
            m8443g = m8443g(context, i, false);
        }
        return m8443g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
        if (r12 != false) goto L20;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.drawable.Drawable m8443g(android.content.Context r7, int r8, boolean r9) {
        /*
            r6 = this;
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            boolean r0 = r0.f1073f     // Catch: java.lang.Throwable -> L9e
            if (r0 == 0) goto Lc
            goto L4d
        Lc:
            r0 = 1
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f1073f = r1     // Catch: java.lang.Throwable -> L9e
            r0 = r6
            r1 = r7
            r2 = 2131230814(0x7f08005e, float:1.8077691E38)
            android.graphics.drawable.Drawable r0 = r0.m8444f(r1, r2)     // Catch: java.lang.Throwable -> L9e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto La2
            r0 = r10
            r12 = r0
            r0 = r11
            boolean r0 = r0 instanceof p164m1.C3624f     // Catch: java.lang.Throwable -> L9e
            if (r0 != 0) goto L48
            java.lang.String r0 = "android.graphics.drawable.VectorDrawable"
            r1 = r11
            java.lang.Class r1 = r1.getClass()     // Catch: java.lang.Throwable -> L9e
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L9e
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L9e
            if (r0 == 0) goto L45
            r0 = r10
            r12 = r0
            goto L48
        L45:
            r0 = 0
            r12 = r0
        L48:
            r0 = r12
            if (r0 == 0) goto La2
        L4d:
            r0 = r6
            r1 = r7
            r2 = r8
            android.graphics.drawable.Drawable r0 = r0.m8439k(r1, r2)     // Catch: java.lang.Throwable -> L9e
            r13 = r0
            r0 = r13
            r11 = r0
            r0 = r13
            if (r0 != 0) goto L66
            r0 = r6
            r1 = r7
            r2 = r8
            android.graphics.drawable.Drawable r0 = r0.m8447c(r1, r2)     // Catch: java.lang.Throwable -> L9e
            r11 = r0
        L66:
            r0 = r11
            r13 = r0
            r0 = r11
            if (r0 != 0) goto L7b
            java.lang.Object r0 = p066d0.C2134a.f7832a     // Catch: java.lang.Throwable -> L9e
            r11 = r0
            r0 = r7
            r1 = r8
            android.graphics.drawable.Drawable r0 = p066d0.C2134a.C2136b.m3841b(r0, r1)     // Catch: java.lang.Throwable -> L9e
            r13 = r0
        L7b:
            r0 = r13
            r11 = r0
            r0 = r13
            if (r0 == 0) goto L8f
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r13
            android.graphics.drawable.Drawable r0 = r0.m8438l(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L9e
            r11 = r0
        L8f:
            r0 = r11
            if (r0 == 0) goto L99
            r0 = r11
            androidx.appcompat.widget.C0233h0.m8498b(r0)     // Catch: java.lang.Throwable -> L9e
        L99:
            r0 = r6
            monitor-exit(r0)
            r0 = r11
            return r0
        L9e:
            r7 = move-exception
            goto Lb4
        La2:
            r0 = r6
            r1 = 0
            r0.f1073f = r1     // Catch: java.lang.Throwable -> L9e
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L9e
            r7 = r0
            r0 = r7
            java.lang.String r1 = "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L9e
            r0 = r7
            throw r0     // Catch: java.lang.Throwable -> L9e
        Lb4:
            r0 = r6
            monitor-exit(r0)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0264p0.m8443g(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }

    /* renamed from: i */
    public ColorStateList m8441i(Context context, int i) {
        ColorStateList colorStateList;
        C4264h<ColorStateList> c4264h;
        synchronized (this) {
            WeakHashMap<Context, C4264h<ColorStateList>> weakHashMap = this.f1068a;
            ColorStateList m1188d = (weakHashMap == null || (c4264h = weakHashMap.get(context)) == null) ? null : c4264h.m1188d(i, null);
            colorStateList = m1188d;
            if (m1188d == null) {
                AbstractC0270f abstractC0270f = this.f1074g;
                ColorStateList m8477d = abstractC0270f == null ? null : ((C0242j.C0243a) abstractC0270f).m8477d(context, i);
                if (m8477d != null) {
                    if (this.f1068a == null) {
                        this.f1068a = new WeakHashMap<>();
                    }
                    C4264h<ColorStateList> c4264h2 = this.f1068a.get(context);
                    C4264h<ColorStateList> c4264h3 = c4264h2;
                    if (c4264h2 == null) {
                        c4264h3 = new C4264h<>();
                        this.f1068a.put(context, c4264h3);
                    }
                    c4264h3.m1191a(i, m8477d);
                }
                colorStateList = m8477d;
            }
        }
        return colorStateList;
    }

    /* renamed from: k */
    public final Drawable m8439k(Context context, int i) {
        int next;
        C4263g<String, AbstractC0269e> c4263g = this.f1069b;
        if (c4263g == null || c4263g.isEmpty()) {
            return null;
        }
        C4264h<String> c4264h = this.f1070c;
        if (c4264h != null) {
            String m1188d = c4264h.m1188d(i, null);
            if ("appcompat_skip_skip".equals(m1188d)) {
                return null;
            }
            if (m1188d != null && this.f1069b.getOrDefault(m1188d, null) == null) {
                return null;
            }
        } else {
            this.f1070c = new C4264h<>();
        }
        if (this.f1072e == null) {
            this.f1072e = new TypedValue();
        }
        TypedValue typedValue = this.f1072e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable m8445e = m8445e(context, j);
        if (m8445e != null) {
            return m8445e;
        }
        CharSequence charSequence = typedValue.string;
        Drawable drawable = m8445e;
        if (charSequence != null) {
            drawable = m8445e;
            if (charSequence.toString().endsWith(".xml")) {
                drawable = m8445e;
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
                    this.f1070c.m1191a(i, name);
                    AbstractC0269e abstractC0269e = this.f1069b.get(name);
                    Drawable drawable2 = m8445e;
                    if (abstractC0269e != null) {
                        drawable2 = abstractC0269e.mo8436a(context, xml, asAttributeSet, context.getTheme());
                    }
                    drawable = drawable2;
                    if (drawable2 != null) {
                        drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                        Drawable drawable3 = drawable2;
                        m8448b(context, j, drawable2);
                        drawable = drawable2;
                    }
                } catch (Exception e) {
                }
            }
        }
        if (drawable == null) {
            this.f1070c.m1191a(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    /* renamed from: l */
    public final Drawable m8438l(Context context, int i, boolean z, Drawable drawable) {
        Drawable drawable2;
        PorterDuff.Mode mode;
        ColorStateList m8441i = m8441i(context, i);
        if (m8441i != null) {
            Drawable drawable3 = drawable;
            if (C0233h0.m8499a(drawable)) {
                drawable3 = drawable.mutate();
            }
            Drawable m3007h = C2789a.m3007h(drawable3);
            m3007h.setTintList(m8441i);
            if (this.f1074g == null) {
                mode = null;
            } else {
                mode = null;
                if (i == 2131230801) {
                    mode = PorterDuff.Mode.MULTIPLY;
                }
            }
            drawable2 = m3007h;
            if (mode != null) {
                m3007h.setTintMode(mode);
                drawable2 = m3007h;
            }
        } else {
            AbstractC0270f abstractC0270f = this.f1074g;
            if (abstractC0270f != null) {
                C0242j.C0243a c0243a = (C0242j.C0243a) abstractC0270f;
                boolean z2 = true;
                if (i == 2131230796) {
                    LayerDrawable layerDrawable = (LayerDrawable) drawable;
                    Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(16908288);
                    int m8425c = C0283u0.m8425c(context, C3681R.attr.colorControlNormal);
                    PorterDuff.Mode mode2 = C0242j.f985b;
                    c0243a.m8476e(findDrawableByLayerId, m8425c, mode2);
                    c0243a.m8476e(layerDrawable.findDrawableByLayerId(16908303), C0283u0.m8425c(context, C3681R.attr.colorControlNormal), mode2);
                    c0243a.m8476e(layerDrawable.findDrawableByLayerId(16908301), C0283u0.m8425c(context, C3681R.attr.colorControlActivated), mode2);
                } else if (i == 2131230787 || i == 2131230786 || i == 2131230788) {
                    LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                    Drawable findDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(16908288);
                    int m8426b = C0283u0.m8426b(context, C3681R.attr.colorControlNormal);
                    PorterDuff.Mode mode3 = C0242j.f985b;
                    c0243a.m8476e(findDrawableByLayerId2, m8426b, mode3);
                    c0243a.m8476e(layerDrawable2.findDrawableByLayerId(16908303), C0283u0.m8425c(context, C3681R.attr.colorControlActivated), mode3);
                    c0243a.m8476e(layerDrawable2.findDrawableByLayerId(16908301), C0283u0.m8425c(context, C3681R.attr.colorControlActivated), mode3);
                } else {
                    z2 = false;
                }
                if (z2) {
                    drawable2 = drawable;
                }
            }
            drawable2 = drawable;
            if (!m8437m(context, i, drawable)) {
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
    public boolean m8437m(android.content.Context r5, int r6, android.graphics.drawable.Drawable r7) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0264p0.m8437m(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }
}
