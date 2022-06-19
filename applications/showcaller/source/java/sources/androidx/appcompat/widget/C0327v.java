package androidx.appcompat.widget;

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
import androidx.core.content.C0586a;
import androidx.core.graphics.drawable.C0615a;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p021a.p024l.p025a.C1435a;
import p020b.p021a.p026m.C1451a;
import p020b.p036e.C1494d;
import p020b.p036e.C1495e;
import p020b.p036e.C1502g;
import p020b.p036e.C1503h;
import p020b.p074t.p075a.p076a.C1794c;
import p020b.p074t.p075a.p076a.C1804i;
/* renamed from: androidx.appcompat.widget.v */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v.class */
public final class C0327v {

    /* renamed from: b */
    private static C0327v f1393b;

    /* renamed from: d */
    private WeakHashMap<Context, C1503h<ColorStateList>> f1395d;

    /* renamed from: e */
    private C1502g<String, AbstractC0332e> f1396e;

    /* renamed from: f */
    private C1503h<String> f1397f;

    /* renamed from: g */
    private final WeakHashMap<Context, C1494d<WeakReference<Drawable.ConstantState>>> f1398g = new WeakHashMap<>(0);

    /* renamed from: h */
    private TypedValue f1399h;

    /* renamed from: i */
    private boolean f1400i;

    /* renamed from: j */
    private AbstractC0333f f1401j;

    /* renamed from: a */
    private static final PorterDuff.Mode f1392a = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    private static final C0330c f1394c = new C0330c(6);

    /* renamed from: androidx.appcompat.widget.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$a.class */
    public static class C0328a implements AbstractC0332e {
        C0328a() {
        }

        @Override // androidx.appcompat.widget.C0327v.AbstractC0332e
        /* renamed from: a */
        public Drawable mo34713a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C1435a.m30121m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.v$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$b.class */
    public static class C0329b implements AbstractC0332e {
        C0329b() {
        }

        @Override // androidx.appcompat.widget.C0327v.AbstractC0332e
        /* renamed from: a */
        public Drawable mo34713a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C1794c.m28886a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.v$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$c.class */
    public static class C0330c extends C1495e<Integer, PorterDuffColorFilter> {
        public C0330c(int i) {
            super(i);
        }

        /* renamed from: h */
        private static int m34721h(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* renamed from: i */
        PorterDuffColorFilter m34720i(int i, PorterDuff.Mode mode) {
            return m29943c(Integer.valueOf(m34721h(i, mode)));
        }

        /* renamed from: j */
        PorterDuffColorFilter m34719j(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return m29942d(Integer.valueOf(m34721h(i, mode)), porterDuffColorFilter);
        }
    }

    /* renamed from: androidx.appcompat.widget.v$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$d.class */
    public static class C0331d implements AbstractC0332e {
        C0331d() {
        }

        @Override // androidx.appcompat.widget.C0327v.AbstractC0332e
        /* renamed from: a */
        public Drawable mo34713a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) C0331d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    if (Build.VERSION.SDK_INT >= 21) {
                        drawable.inflate(context.getResources(), xmlPullParser, attributeSet, theme);
                    } else {
                        drawable.inflate(context.getResources(), xmlPullParser, attributeSet);
                    }
                    return drawable;
                } catch (Exception e) {
                    Log.e("DrawableDelegate", "Exception while inflating <drawable>", e);
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.v$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$e.class */
    public interface AbstractC0332e {
        /* renamed from: a */
        Drawable mo34713a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: androidx.appcompat.widget.v$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$f.class */
    public interface AbstractC0333f {
        /* renamed from: a */
        boolean mo34718a(Context context, int i, Drawable drawable);

        /* renamed from: b */
        PorterDuff.Mode mo34717b(int i);

        /* renamed from: c */
        Drawable mo34716c(C0327v c0327v, Context context, int i);

        /* renamed from: d */
        ColorStateList mo34715d(Context context, int i);

        /* renamed from: e */
        boolean mo34714e(Context context, int i, Drawable drawable);
    }

    /* renamed from: androidx.appcompat.widget.v$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$g.class */
    public static class C0334g implements AbstractC0332e {
        C0334g() {
        }

        @Override // androidx.appcompat.widget.C0327v.AbstractC0332e
        /* renamed from: a */
        public Drawable mo34713a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C1804i.m28853c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* renamed from: a */
    private void m34745a(String str, AbstractC0332e abstractC0332e) {
        if (this.f1396e == null) {
            this.f1396e = new C1502g<>();
        }
        this.f1396e.put(str, abstractC0332e);
    }

    /* renamed from: b */
    private boolean m34744b(Context context, long j, Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                C1494d<WeakReference<Drawable.ConstantState>> c1494d = this.f1398g.get(context);
                C1494d<WeakReference<Drawable.ConstantState>> c1494d2 = c1494d;
                if (c1494d == null) {
                    c1494d2 = new C1494d<>();
                    this.f1398g.put(context, c1494d2);
                }
                c1494d2.m29950l(j, new WeakReference<>(constantState));
                return true;
            }
            return false;
        }
    }

    /* renamed from: c */
    private void m34743c(Context context, int i, ColorStateList colorStateList) {
        if (this.f1395d == null) {
            this.f1395d = new WeakHashMap<>();
        }
        C1503h<ColorStateList> c1503h = this.f1395d.get(context);
        C1503h<ColorStateList> c1503h2 = c1503h;
        if (c1503h == null) {
            c1503h2 = new C1503h<>();
            this.f1395d.put(context, c1503h2);
        }
        c1503h2.m29908a(i, colorStateList);
    }

    /* renamed from: d */
    private void m34742d(Context context) {
        if (this.f1400i) {
            return;
        }
        this.f1400i = true;
        Drawable m34736j = m34736j(context, C1451a.abc_vector_test);
        if (m34736j != null && m34729q(m34736j)) {
            return;
        }
        this.f1400i = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
    }

    /* renamed from: e */
    private static long m34741e(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: f */
    private Drawable m34740f(Context context, int i) {
        if (this.f1399h == null) {
            this.f1399h = new TypedValue();
        }
        TypedValue typedValue = this.f1399h;
        context.getResources().getValue(i, typedValue, true);
        long m34741e = m34741e(typedValue);
        Drawable m34737i = m34737i(context, m34741e);
        if (m34737i != null) {
            return m34737i;
        }
        AbstractC0333f abstractC0333f = this.f1401j;
        Drawable mo34716c = abstractC0333f == null ? null : abstractC0333f.mo34716c(this, context, i);
        if (mo34716c != null) {
            mo34716c.setChangingConfigurations(typedValue.changingConfigurations);
            m34744b(context, m34741e, mo34716c);
        }
        return mo34716c;
    }

    /* renamed from: g */
    private static PorterDuffColorFilter m34739g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return m34734l(colorStateList.getColorForState(iArr, 0), mode);
    }

    /* renamed from: h */
    public static C0327v m34738h() {
        C0327v c0327v;
        synchronized (C0327v.class) {
            try {
                if (f1393b == null) {
                    C0327v c0327v2 = new C0327v();
                    f1393b = c0327v2;
                    m34730p(c0327v2);
                }
                c0327v = f1393b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0327v;
    }

    /* renamed from: i */
    private Drawable m34737i(Context context, long j) {
        synchronized (this) {
            C1494d<WeakReference<Drawable.ConstantState>> c1494d = this.f1398g.get(context);
            if (c1494d == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> m29954g = c1494d.m29954g(j);
            if (m29954g != null) {
                Drawable.ConstantState constantState = m29954g.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                c1494d.m29949m(j);
            }
            return null;
        }
    }

    /* renamed from: l */
    public static PorterDuffColorFilter m34734l(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C0327v.class) {
            try {
                C0330c c0330c = f1394c;
                PorterDuffColorFilter m34720i = c0330c.m34720i(i, mode);
                porterDuffColorFilter = m34720i;
                if (m34720i == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    c0330c.m34719j(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: n */
    private ColorStateList m34732n(Context context, int i) {
        WeakHashMap<Context, C1503h<ColorStateList>> weakHashMap = this.f1395d;
        ColorStateList colorStateList = null;
        if (weakHashMap != null) {
            C1503h<ColorStateList> c1503h = weakHashMap.get(context);
            colorStateList = null;
            if (c1503h != null) {
                colorStateList = c1503h.m29904g(i);
            }
        }
        return colorStateList;
    }

    /* renamed from: p */
    private static void m34730p(C0327v c0327v) {
        if (Build.VERSION.SDK_INT < 24) {
            c0327v.m34745a("vector", new C0334g());
            c0327v.m34745a("animated-vector", new C0329b());
            c0327v.m34745a("animated-selector", new C0328a());
            c0327v.m34745a("drawable", new C0331d());
        }
    }

    /* renamed from: q */
    private static boolean m34729q(Drawable drawable) {
        return (drawable instanceof C1804i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* renamed from: r */
    private Drawable m34728r(Context context, int i) {
        int next;
        C1502g<String, AbstractC0332e> c1502g = this.f1396e;
        if (c1502g == null || c1502g.isEmpty()) {
            return null;
        }
        C1503h<String> c1503h = this.f1397f;
        if (c1503h != null) {
            String m29904g = c1503h.m29904g(i);
            if ("appcompat_skip_skip".equals(m29904g)) {
                return null;
            }
            if (m29904g != null && this.f1396e.get(m29904g) == null) {
                return null;
            }
        } else {
            this.f1397f = new C1503h<>();
        }
        if (this.f1399h == null) {
            this.f1399h = new TypedValue();
        }
        TypedValue typedValue = this.f1399h;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long m34741e = m34741e(typedValue);
        Drawable m34737i = m34737i(context, m34741e);
        if (m34737i != null) {
            return m34737i;
        }
        CharSequence charSequence = typedValue.string;
        Drawable drawable = m34737i;
        if (charSequence != null) {
            drawable = m34737i;
            if (charSequence.toString().endsWith(".xml")) {
                drawable = m34737i;
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
                    this.f1397f.m29908a(i, name);
                    AbstractC0332e abstractC0332e = this.f1396e.get(name);
                    Drawable drawable2 = m34737i;
                    if (abstractC0332e != null) {
                        drawable2 = abstractC0332e.mo34713a(context, xml, asAttributeSet, context.getTheme());
                    }
                    drawable = drawable2;
                    if (drawable2 != null) {
                        drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                        Drawable drawable3 = drawable2;
                        m34744b(context, m34741e, drawable2);
                        drawable = drawable2;
                    }
                } catch (Exception e) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
                }
            }
        }
        if (drawable == null) {
            this.f1397f.m29908a(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    /* renamed from: v */
    private Drawable m34724v(Context context, int i, boolean z, Drawable drawable) {
        Drawable drawable2;
        ColorStateList m34733m = m34733m(context, i);
        if (m34733m != null) {
            Drawable drawable3 = drawable;
            if (C0317q.m34777a(drawable)) {
                drawable3 = drawable.mutate();
            }
            Drawable m33212r = C0615a.m33212r(drawable3);
            C0615a.m33215o(m33212r, m34733m);
            PorterDuff.Mode m34731o = m34731o(i);
            drawable2 = m33212r;
            if (m34731o != null) {
                C0615a.m33214p(m33212r, m34731o);
                drawable2 = m33212r;
            }
        } else {
            AbstractC0333f abstractC0333f = this.f1401j;
            if (abstractC0333f == null || !abstractC0333f.mo34714e(context, i, drawable)) {
                drawable2 = drawable;
                if (!m34722x(context, i, drawable)) {
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

    /* renamed from: w */
    public static void m34723w(Drawable drawable, C0282c0 c0282c0, int[] iArr) {
        if (C0317q.m34777a(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z = c0282c0.f1239d;
        if (z || c0282c0.f1238c) {
            drawable.setColorFilter(m34739g(z ? c0282c0.f1236a : null, c0282c0.f1238c ? c0282c0.f1237b : f1392a, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT > 23) {
            return;
        }
        drawable.invalidateSelf();
    }

    /* renamed from: j */
    public Drawable m34736j(Context context, int i) {
        Drawable m34735k;
        synchronized (this) {
            m34735k = m34735k(context, i, false);
        }
        return m34735k;
    }

    /* renamed from: k */
    public Drawable m34735k(Context context, int i, boolean z) {
        Drawable drawable;
        synchronized (this) {
            m34742d(context);
            Drawable m34728r = m34728r(context, i);
            Drawable drawable2 = m34728r;
            if (m34728r == null) {
                drawable2 = m34740f(context, i);
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = C0586a.m33348f(context, i);
            }
            drawable = drawable3;
            if (drawable3 != null) {
                drawable = m34724v(context, i, z, drawable3);
            }
            if (drawable != null) {
                C0317q.m34776b(drawable);
            }
        }
        return drawable;
    }

    /* renamed from: m */
    public ColorStateList m34733m(Context context, int i) {
        ColorStateList colorStateList;
        synchronized (this) {
            ColorStateList m34732n = m34732n(context, i);
            colorStateList = m34732n;
            if (m34732n == null) {
                AbstractC0333f abstractC0333f = this.f1401j;
                ColorStateList mo34715d = abstractC0333f == null ? null : abstractC0333f.mo34715d(context, i);
                colorStateList = mo34715d;
                if (mo34715d != null) {
                    m34743c(context, i, mo34715d);
                    colorStateList = mo34715d;
                }
            }
        }
        return colorStateList;
    }

    /* renamed from: o */
    PorterDuff.Mode m34731o(int i) {
        AbstractC0333f abstractC0333f = this.f1401j;
        return abstractC0333f == null ? null : abstractC0333f.mo34717b(i);
    }

    /* renamed from: s */
    public void m34727s(Context context) {
        synchronized (this) {
            C1494d<WeakReference<Drawable.ConstantState>> c1494d = this.f1398g.get(context);
            if (c1494d != null) {
                c1494d.m29957b();
            }
        }
    }

    /* renamed from: t */
    public Drawable m34726t(Context context, C0303j0 c0303j0, int i) {
        synchronized (this) {
            Drawable m34728r = m34728r(context, i);
            Drawable drawable = m34728r;
            if (m34728r == null) {
                drawable = c0303j0.m34877c(i);
            }
            if (drawable != null) {
                return m34724v(context, i, false, drawable);
            }
            return null;
        }
    }

    /* renamed from: u */
    public void m34725u(AbstractC0333f abstractC0333f) {
        synchronized (this) {
            this.f1401j = abstractC0333f;
        }
    }

    /* renamed from: x */
    public boolean m34722x(Context context, int i, Drawable drawable) {
        AbstractC0333f abstractC0333f = this.f1401j;
        return abstractC0333f != null && abstractC0333f.mo34718a(context, i, drawable);
    }
}
