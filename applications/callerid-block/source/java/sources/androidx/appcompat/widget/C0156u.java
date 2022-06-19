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
import androidx.core.content.C0265a;
import androidx.core.graphics.drawable.C0283a;
import d.a.m.a;
import d.e.d;
import d.e.g;
import d.e.h;
import d.s.a.a.i;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.widget.u */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/u.class */
public final class C0156u {

    /* renamed from: i */
    private static C0156u f697i;

    /* renamed from: a */
    private WeakHashMap<Context, h<ColorStateList>> f699a;

    /* renamed from: b */
    private g<String, AbstractC0157d> f700b;

    /* renamed from: c */
    private h<String> f701c;

    /* renamed from: d */
    private final WeakHashMap<Context, d<WeakReference<Drawable.ConstantState>>> f702d = new WeakHashMap<>(0);

    /* renamed from: e */
    private TypedValue f703e;

    /* renamed from: f */
    private boolean f704f;

    /* renamed from: g */
    private AbstractC0158e f705g;

    /* renamed from: h */
    private static final PorterDuff.Mode f696h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j */
    private static final c f698j = new c(6);

    /* renamed from: androidx.appcompat.widget.u$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/u$d.class */
    public interface AbstractC0157d {
        /* renamed from: a */
        Drawable m14419a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: androidx.appcompat.widget.u$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/u$e.class */
    public interface AbstractC0158e {
        /* renamed from: a */
        boolean m14418a(Context context, int i, Drawable drawable);

        /* renamed from: b */
        PorterDuff.Mode m14417b(int i);

        /* renamed from: c */
        Drawable m14416c(C0156u c0156u, Context context, int i);

        /* renamed from: d */
        ColorStateList m14415d(Context context, int i);

        /* renamed from: e */
        boolean m14414e(Context context, int i, Drawable drawable);
    }

    /* renamed from: a */
    private void m14443a(String str, AbstractC0157d abstractC0157d) {
        if (this.f700b == null) {
            this.f700b = new g<>();
        }
        this.f700b.put(str, abstractC0157d);
    }

    /* renamed from: b */
    private boolean m14442b(Context context, long j, Drawable drawable) {
        boolean z;
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                d<WeakReference<Drawable.ConstantState>> dVar = this.f702d.get(context);
                d<WeakReference<Drawable.ConstantState>> dVar2 = dVar;
                if (dVar == null) {
                    dVar2 = new d<>();
                    this.f702d.put(context, dVar2);
                }
                dVar2.j(j, new WeakReference(constantState));
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    private void m14441c(Context context, int i, ColorStateList colorStateList) {
        if (this.f699a == null) {
            this.f699a = new WeakHashMap<>();
        }
        h<ColorStateList> hVar = this.f699a.get(context);
        h<ColorStateList> hVar2 = hVar;
        if (hVar == null) {
            hVar2 = new h<>();
            this.f699a.put(context, hVar2);
        }
        hVar2.b(i, colorStateList);
    }

    /* renamed from: d */
    private void m14440d(Context context) {
        if (this.f704f) {
            return;
        }
        this.f704f = true;
        Drawable m14434j = m14434j(context, a.abc_vector_test);
        if (m14434j != null && m14427q(m14434j)) {
            return;
        }
        this.f704f = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
    }

    /* renamed from: e */
    private static long m14439e(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: f */
    private Drawable m14438f(Context context, int i) {
        if (this.f703e == null) {
            this.f703e = new TypedValue();
        }
        TypedValue typedValue = this.f703e;
        context.getResources().getValue(i, typedValue, true);
        long m14439e = m14439e(typedValue);
        Drawable m14435i = m14435i(context, m14439e);
        if (m14435i != null) {
            return m14435i;
        }
        AbstractC0158e abstractC0158e = this.f705g;
        Drawable m14416c = abstractC0158e == null ? null : abstractC0158e.m14416c(this, context, i);
        if (m14416c != null) {
            m14416c.setChangingConfigurations(typedValue.changingConfigurations);
            m14442b(context, m14439e, m14416c);
        }
        return m14416c;
    }

    /* renamed from: g */
    private static PorterDuffColorFilter m14437g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return m14432l(colorStateList.getColorForState(iArr, 0), mode);
    }

    /* renamed from: h */
    public static C0156u m14436h() {
        C0156u c0156u;
        synchronized (C0156u.class) {
            try {
                if (f697i == null) {
                    C0156u c0156u2 = new C0156u();
                    f697i = c0156u2;
                    m14428p(c0156u2);
                }
                c0156u = f697i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0156u;
    }

    /* renamed from: i */
    private Drawable m14435i(Context context, long j) {
        synchronized (this) {
            d<WeakReference<Drawable.ConstantState>> dVar = this.f702d.get(context);
            if (dVar == null) {
                return null;
            }
            WeakReference weakReference = (WeakReference) dVar.f(j);
            if (weakReference != null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                dVar.k(j);
            }
            return null;
        }
    }

    /* renamed from: l */
    public static PorterDuffColorFilter m14432l(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C0156u.class) {
            try {
                c cVar = f698j;
                PorterDuffColorFilter i2 = cVar.i(i, mode);
                porterDuffColorFilter = i2;
                if (i2 == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    cVar.j(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: n */
    private ColorStateList m14430n(Context context, int i) {
        WeakHashMap<Context, h<ColorStateList>> weakHashMap = this.f699a;
        ColorStateList colorStateList = null;
        if (weakHashMap != null) {
            h<ColorStateList> hVar = weakHashMap.get(context);
            colorStateList = null;
            if (hVar != null) {
                colorStateList = (ColorStateList) hVar.f(i);
            }
        }
        return colorStateList;
    }

    /* renamed from: p */
    private static void m14428p(C0156u c0156u) {
        if (Build.VERSION.SDK_INT < 24) {
            c0156u.m14443a("vector", new f());
            c0156u.m14443a("animated-vector", new b());
            c0156u.m14443a("animated-selector", new a());
        }
    }

    /* renamed from: q */
    private static boolean m14427q(Drawable drawable) {
        return (drawable instanceof i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* renamed from: r */
    private Drawable m14426r(Context context, int i) {
        int next;
        g<String, AbstractC0157d> gVar = this.f700b;
        if (gVar == null || gVar.isEmpty()) {
            return null;
        }
        h<String> hVar = this.f701c;
        if (hVar != null) {
            String str = (String) hVar.f(i);
            if ("appcompat_skip_skip".equals(str)) {
                return null;
            }
            if (str != null && this.f700b.get(str) == null) {
                return null;
            }
        } else {
            this.f701c = new h<>();
        }
        if (this.f703e == null) {
            this.f703e = new TypedValue();
        }
        TypedValue typedValue = this.f703e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long m14439e = m14439e(typedValue);
        Drawable m14435i = m14435i(context, m14439e);
        if (m14435i != null) {
            return m14435i;
        }
        CharSequence charSequence = typedValue.string;
        Drawable drawable = m14435i;
        if (charSequence != null) {
            drawable = m14435i;
            if (charSequence.toString().endsWith(".xml")) {
                drawable = m14435i;
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
                    this.f701c.b(i, name);
                    AbstractC0157d abstractC0157d = (AbstractC0157d) this.f700b.get(name);
                    Drawable drawable2 = m14435i;
                    if (abstractC0157d != null) {
                        drawable2 = abstractC0157d.m14419a(context, xml, asAttributeSet, context.getTheme());
                    }
                    drawable = drawable2;
                    if (drawable2 != null) {
                        drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                        Drawable drawable3 = drawable2;
                        m14442b(context, m14439e, drawable2);
                        drawable = drawable2;
                    }
                } catch (Exception e) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
                }
            }
        }
        if (drawable == null) {
            this.f701c.b(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    /* renamed from: v */
    private Drawable m14422v(Context context, int i, boolean z, Drawable drawable) {
        Drawable drawable2;
        ColorStateList m14431m = m14431m(context, i);
        if (m14431m != null) {
            Drawable drawable3 = drawable;
            if (C0147p.m14474a(drawable)) {
                drawable3 = drawable.mutate();
            }
            Drawable m13461r = C0283a.m13461r(drawable3);
            C0283a.m13464o(m13461r, m14431m);
            PorterDuff.Mode m14429o = m14429o(i);
            drawable2 = m13461r;
            if (m14429o != null) {
                C0283a.m13463p(m13461r, m14429o);
                drawable2 = m13461r;
            }
        } else {
            AbstractC0158e abstractC0158e = this.f705g;
            if (abstractC0158e == null || !abstractC0158e.m14414e(context, i, drawable)) {
                drawable2 = drawable;
                if (!m14420x(context, i, drawable)) {
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
    public static void m14421w(Drawable drawable, C0124b0 c0124b0, int[] iArr) {
        if (C0147p.m14474a(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z = c0124b0.f586d;
        if (z || c0124b0.f585c) {
            drawable.setColorFilter(m14437g(z ? c0124b0.f583a : null, c0124b0.f585c ? c0124b0.f584b : f696h, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT > 23) {
            return;
        }
        drawable.invalidateSelf();
    }

    /* renamed from: j */
    public Drawable m14434j(Context context, int i) {
        Drawable m14433k;
        synchronized (this) {
            m14433k = m14433k(context, i, false);
        }
        return m14433k;
    }

    /* renamed from: k */
    public Drawable m14433k(Context context, int i, boolean z) {
        Drawable drawable;
        synchronized (this) {
            m14440d(context);
            Drawable m14426r = m14426r(context, i);
            Drawable drawable2 = m14426r;
            if (m14426r == null) {
                drawable2 = m14438f(context, i);
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = C0265a.m13551f(context, i);
            }
            drawable = drawable3;
            if (drawable3 != null) {
                drawable = m14422v(context, i, z, drawable3);
            }
            if (drawable != null) {
                C0147p.m14473b(drawable);
            }
        }
        return drawable;
    }

    /* renamed from: m */
    public ColorStateList m14431m(Context context, int i) {
        ColorStateList colorStateList;
        synchronized (this) {
            ColorStateList m14430n = m14430n(context, i);
            colorStateList = m14430n;
            if (m14430n == null) {
                AbstractC0158e abstractC0158e = this.f705g;
                ColorStateList m14415d = abstractC0158e == null ? null : abstractC0158e.m14415d(context, i);
                colorStateList = m14415d;
                if (m14415d != null) {
                    m14441c(context, i, m14415d);
                    colorStateList = m14415d;
                }
            }
        }
        return colorStateList;
    }

    /* renamed from: o */
    PorterDuff.Mode m14429o(int i) {
        AbstractC0158e abstractC0158e = this.f705g;
        return abstractC0158e == null ? null : abstractC0158e.m14417b(i);
    }

    /* renamed from: s */
    public void m14425s(Context context) {
        synchronized (this) {
            d<WeakReference<Drawable.ConstantState>> dVar = this.f702d.get(context);
            if (dVar != null) {
                dVar.c();
            }
        }
    }

    /* renamed from: t */
    public Drawable m14424t(Context context, C0138i0 c0138i0, int i) {
        synchronized (this) {
            Drawable m14426r = m14426r(context, i);
            Drawable drawable = m14426r;
            if (m14426r == null) {
                drawable = c0138i0.m14567c(i);
            }
            if (drawable != null) {
                return m14422v(context, i, false, drawable);
            }
            return null;
        }
    }

    /* renamed from: u */
    public void m14423u(AbstractC0158e abstractC0158e) {
        synchronized (this) {
            this.f705g = abstractC0158e;
        }
    }

    /* renamed from: x */
    boolean m14420x(Context context, int i, Drawable drawable) {
        AbstractC0158e abstractC0158e = this.f705g;
        return abstractC0158e != null && abstractC0158e.m14418a(context, i, drawable);
    }
}
