package p000;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: e2 */
/* loaded from: classes-dex2jar.jar:e2.class */
public final class C1339e2 {

    /* renamed from: i */
    public static C1339e2 f6226i;

    /* renamed from: a */
    public WeakHashMap<Context, i4<ColorStateList>> f6228a;

    /* renamed from: b */
    public h4<String, AbstractC1340d> f6229b;

    /* renamed from: c */
    public i4<String> f6230c;

    /* renamed from: d */
    public final WeakHashMap<Context, C1344e4<WeakReference<Drawable.ConstantState>>> f6231d = new WeakHashMap<>(0);

    /* renamed from: e */
    public TypedValue f6232e;

    /* renamed from: f */
    public boolean f6233f;

    /* renamed from: g */
    public AbstractC1341e f6234g;

    /* renamed from: h */
    public static final PorterDuff.Mode f6225h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j */
    public static final c f6227j = new c(6);

    /* renamed from: e2$d */
    /* loaded from: classes-dex2jar.jar:e2$d.class */
    public interface AbstractC1340d {
        /* renamed from: a */
        Drawable m2274a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: e2$e */
    /* loaded from: classes-dex2jar.jar:e2$e.class */
    public interface AbstractC1341e {
        /* renamed from: a */
        Drawable m2273a(C1339e2 c1339e2, Context context, int i);

        /* renamed from: b */
        ColorStateList m2272b(Context context, int i);

        /* renamed from: c */
        boolean m2271c(Context context, int i, Drawable drawable);

        /* renamed from: d */
        PorterDuff.Mode m2270d(int i);

        /* renamed from: e */
        boolean m2269e(Context context, int i, Drawable drawable);
    }

    /* renamed from: e */
    public static long m2294e(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: g */
    public static PorterDuffColorFilter m2292g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return m2287l(colorStateList.getColorForState(iArr, 0), mode);
    }

    /* renamed from: h */
    public static C1339e2 m2291h() {
        C1339e2 c1339e2;
        synchronized (C1339e2.class) {
            try {
                if (f6226i == null) {
                    C1339e2 c1339e22 = new C1339e2();
                    f6226i = c1339e22;
                    m2283p(c1339e22);
                }
                c1339e2 = f6226i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1339e2;
    }

    /* renamed from: l */
    public static PorterDuffColorFilter m2287l(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C1339e2.class) {
            try {
                c cVar = f6227j;
                PorterDuffColorFilter b = cVar.b(i, mode);
                porterDuffColorFilter = b;
                if (b == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    cVar.c(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: p */
    public static void m2283p(C1339e2 c1339e2) {
        if (Build.VERSION.SDK_INT < 24) {
            c1339e2.m2298a("vector", new f());
            c1339e2.m2298a("animated-vector", new b());
            c1339e2.m2298a("animated-selector", new a());
        }
    }

    /* renamed from: q */
    public static boolean m2282q(Drawable drawable) {
        return (drawable instanceof b40) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* renamed from: w */
    public static void m2276w(Drawable drawable, l2 l2Var, int[] iArr) {
        if (z1.a(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z = l2Var.d;
        if (z || l2Var.c) {
            drawable.setColorFilter(m2292g(z ? l2Var.a : null, l2Var.c ? l2Var.b : f6225h, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT > 23) {
            return;
        }
        drawable.invalidateSelf();
    }

    /* renamed from: a */
    public final void m2298a(String str, AbstractC1340d abstractC1340d) {
        if (this.f6229b == null) {
            this.f6229b = new h4<>();
        }
        this.f6229b.put(str, abstractC1340d);
    }

    /* renamed from: b */
    public final boolean m2297b(Context context, long j, Drawable drawable) {
        boolean z;
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                C1344e4<WeakReference<Drawable.ConstantState>> c1344e4 = this.f6231d.get(context);
                C1344e4<WeakReference<Drawable.ConstantState>> c1344e42 = c1344e4;
                if (c1344e4 == null) {
                    c1344e42 = new C1344e4<>();
                    this.f6231d.put(context, c1344e42);
                }
                c1344e42.m2251l(j, new WeakReference<>(constantState));
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    public final void m2296c(Context context, int i, ColorStateList colorStateList) {
        if (this.f6228a == null) {
            this.f6228a = new WeakHashMap<>();
        }
        i4<ColorStateList> i4Var = this.f6228a.get(context);
        i4<ColorStateList> i4Var2 = i4Var;
        if (i4Var == null) {
            i4Var2 = new i4<>();
            this.f6228a.put(context, i4Var2);
        }
        i4Var2.b(i, colorStateList);
    }

    /* renamed from: d */
    public final void m2295d(Context context) {
        if (this.f6233f) {
            return;
        }
        this.f6233f = true;
        Drawable m2289j = m2289j(context, C1390f0.abc_vector_test);
        if (m2289j != null && m2282q(m2289j)) {
            return;
        }
        this.f6233f = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
    }

    /* renamed from: f */
    public final Drawable m2293f(Context context, int i) {
        if (this.f6232e == null) {
            this.f6232e = new TypedValue();
        }
        TypedValue typedValue = this.f6232e;
        context.getResources().getValue(i, typedValue, true);
        long m2294e = m2294e(typedValue);
        Drawable m2290i = m2290i(context, m2294e);
        if (m2290i != null) {
            return m2290i;
        }
        AbstractC1341e abstractC1341e = this.f6234g;
        Drawable m2273a = abstractC1341e == null ? null : abstractC1341e.m2273a(this, context, i);
        if (m2273a != null) {
            m2273a.setChangingConfigurations(typedValue.changingConfigurations);
            m2297b(context, m2294e, m2273a);
        }
        return m2273a;
    }

    /* renamed from: i */
    public final Drawable m2290i(Context context, long j) {
        synchronized (this) {
            C1344e4<WeakReference<Drawable.ConstantState>> c1344e4 = this.f6231d.get(context);
            if (c1344e4 == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> m2255h = c1344e4.m2255h(j);
            if (m2255h != null) {
                Drawable.ConstantState constantState = m2255h.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                c1344e4.m2250m(j);
            }
            return null;
        }
    }

    /* renamed from: j */
    public Drawable m2289j(Context context, int i) {
        Drawable m2288k;
        synchronized (this) {
            m2288k = m2288k(context, i, false);
        }
        return m2288k;
    }

    /* renamed from: k */
    public Drawable m2288k(Context context, int i, boolean z) {
        Drawable drawable;
        synchronized (this) {
            m2295d(context);
            Drawable m2281r = m2281r(context, i);
            Drawable drawable2 = m2281r;
            if (m2281r == null) {
                drawable2 = m2293f(context, i);
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = g8.f(context, i);
            }
            drawable = drawable3;
            if (drawable3 != null) {
                drawable = m2277v(context, i, z, drawable3);
            }
            if (drawable != null) {
                z1.b(drawable);
            }
        }
        return drawable;
    }

    /* renamed from: m */
    public ColorStateList m2286m(Context context, int i) {
        ColorStateList colorStateList;
        synchronized (this) {
            ColorStateList m2285n = m2285n(context, i);
            colorStateList = m2285n;
            if (m2285n == null) {
                AbstractC1341e abstractC1341e = this.f6234g;
                ColorStateList m2272b = abstractC1341e == null ? null : abstractC1341e.m2272b(context, i);
                colorStateList = m2272b;
                if (m2272b != null) {
                    m2296c(context, i, m2272b);
                    colorStateList = m2272b;
                }
            }
        }
        return colorStateList;
    }

    /* renamed from: n */
    public final ColorStateList m2285n(Context context, int i) {
        WeakHashMap<Context, i4<ColorStateList>> weakHashMap = this.f6228a;
        ColorStateList colorStateList = null;
        if (weakHashMap != null) {
            i4<ColorStateList> i4Var = weakHashMap.get(context);
            colorStateList = null;
            if (i4Var != null) {
                colorStateList = (ColorStateList) i4Var.g(i);
            }
        }
        return colorStateList;
    }

    /* renamed from: o */
    public PorterDuff.Mode m2284o(int i) {
        AbstractC1341e abstractC1341e = this.f6234g;
        return abstractC1341e == null ? null : abstractC1341e.m2270d(i);
    }

    /* renamed from: r */
    public final Drawable m2281r(Context context, int i) {
        int next;
        h4<String, AbstractC1340d> h4Var = this.f6229b;
        if (h4Var == null || h4Var.isEmpty()) {
            return null;
        }
        i4<String> i4Var = this.f6230c;
        if (i4Var != null) {
            String str = (String) i4Var.g(i);
            if ("appcompat_skip_skip".equals(str)) {
                return null;
            }
            if (str != null && this.f6229b.get(str) == null) {
                return null;
            }
        } else {
            this.f6230c = new i4<>();
        }
        if (this.f6232e == null) {
            this.f6232e = new TypedValue();
        }
        TypedValue typedValue = this.f6232e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long m2294e = m2294e(typedValue);
        Drawable m2290i = m2290i(context, m2294e);
        if (m2290i != null) {
            return m2290i;
        }
        CharSequence charSequence = typedValue.string;
        Drawable drawable = m2290i;
        if (charSequence != null) {
            drawable = m2290i;
            if (charSequence.toString().endsWith(".xml")) {
                drawable = m2290i;
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
                    this.f6230c.b(i, name);
                    AbstractC1340d abstractC1340d = (AbstractC1340d) this.f6229b.get(name);
                    Drawable drawable2 = m2290i;
                    if (abstractC1340d != null) {
                        drawable2 = abstractC1340d.m2274a(context, xml, asAttributeSet, context.getTheme());
                    }
                    drawable = drawable2;
                    if (drawable2 != null) {
                        drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                        Drawable drawable3 = drawable2;
                        m2297b(context, m2294e, drawable2);
                        drawable = drawable2;
                    }
                } catch (Exception e) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
                }
            }
        }
        if (drawable == null) {
            this.f6230c.b(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    /* renamed from: s */
    public void m2280s(Context context) {
        synchronized (this) {
            C1344e4<WeakReference<Drawable.ConstantState>> c1344e4 = this.f6231d.get(context);
            if (c1344e4 != null) {
                c1344e4.m2259c();
            }
        }
    }

    /* renamed from: t */
    public Drawable m2279t(Context context, s2 s2Var, int i) {
        synchronized (this) {
            Drawable m2281r = m2281r(context, i);
            Drawable drawable = m2281r;
            if (m2281r == null) {
                drawable = s2Var.c(i);
            }
            if (drawable != null) {
                return m2277v(context, i, false, drawable);
            }
            return null;
        }
    }

    /* renamed from: u */
    public void m2278u(AbstractC1341e abstractC1341e) {
        synchronized (this) {
            this.f6234g = abstractC1341e;
        }
    }

    /* renamed from: v */
    public final Drawable m2277v(Context context, int i, boolean z, Drawable drawable) {
        Drawable drawable2;
        ColorStateList m2286m = m2286m(context, i);
        if (m2286m != null) {
            Drawable drawable3 = drawable;
            if (z1.a(drawable)) {
                drawable3 = drawable.mutate();
            }
            Drawable m2727r = C1282d9.m2727r(drawable3);
            C1282d9.m2730o(m2727r, m2286m);
            PorterDuff.Mode m2284o = m2284o(i);
            drawable2 = m2727r;
            if (m2284o != null) {
                C1282d9.m2729p(m2727r, m2284o);
                drawable2 = m2727r;
            }
        } else {
            AbstractC1341e abstractC1341e = this.f6234g;
            if (abstractC1341e == null || !abstractC1341e.m2269e(context, i, drawable)) {
                drawable2 = drawable;
                if (!m2275x(context, i, drawable)) {
                    drawable2 = drawable;
                    if (z) {
                        drawable2 = null;
                    }
                }
            } else {
                drawable2 = drawable;
            }
        }
        return drawable2;
    }

    /* renamed from: x */
    public boolean m2275x(Context context, int i, Drawable drawable) {
        AbstractC1341e abstractC1341e = this.f6234g;
        return abstractC1341e != null && abstractC1341e.m2271c(context, i, drawable);
    }
}
