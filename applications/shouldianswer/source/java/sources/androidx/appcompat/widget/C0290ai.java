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
import androidx.appcompat.p008b.p009a.C0134a;
import androidx.appcompat.p010c.C0150a;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p015a.C0409a;
import androidx.p014c.C0374a;
import androidx.p014c.C0379d;
import androidx.p014c.C0380e;
import androidx.p014c.C0388h;
import androidx.p046k.p047a.p048a.C0865c;
import androidx.p046k.p047a.p048a.C0875i;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.widget.ai */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai.class */
public final class C0290ai {

    /* renamed from: b */
    private static C0290ai f1204b;

    /* renamed from: d */
    private WeakHashMap<Context, C0388h<ColorStateList>> f1206d;

    /* renamed from: e */
    private C0374a<String, AbstractC0294d> f1207e;

    /* renamed from: f */
    private C0388h<String> f1208f;

    /* renamed from: g */
    private final WeakHashMap<Context, C0379d<WeakReference<Drawable.ConstantState>>> f1209g = new WeakHashMap<>(0);

    /* renamed from: h */
    private TypedValue f1210h;

    /* renamed from: i */
    private boolean f1211i;

    /* renamed from: j */
    private AbstractC0295e f1212j;

    /* renamed from: a */
    private static final PorterDuff.Mode f1203a = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    private static final C0293c f1205c = new C0293c(6);

    /* renamed from: androidx.appcompat.widget.ai$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$a.class */
    public static class C0291a implements AbstractC0294d {
        C0291a() {
        }

        @Override // androidx.appcompat.widget.C0290ai.AbstractC0294d
        /* renamed from: a */
        public Drawable mo7209a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0134a.m7735a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ai$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$b.class */
    public static class C0292b implements AbstractC0294d {
        C0292b() {
        }

        @Override // androidx.appcompat.widget.C0290ai.AbstractC0294d
        /* renamed from: a */
        public Drawable mo7209a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0865c.m5209a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ai$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$c.class */
    public static class C0293c extends C0380e<Integer, PorterDuffColorFilter> {
        public C0293c(int i) {
            super(i);
        }

        /* renamed from: b */
        private static int m7210b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* renamed from: a */
        PorterDuffColorFilter m7212a(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(m7210b(i, mode)));
        }

        /* renamed from: a */
        PorterDuffColorFilter m7211a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(m7210b(i, mode)), porterDuffColorFilter);
        }
    }

    /* renamed from: androidx.appcompat.widget.ai$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$d.class */
    public interface AbstractC0294d {
        /* renamed from: a */
        Drawable mo7209a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: androidx.appcompat.widget.ai$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$e.class */
    public interface AbstractC0295e {
        /* renamed from: a */
        ColorStateList mo7063a(Context context, int i);

        /* renamed from: a */
        PorterDuff.Mode mo7065a(int i);

        /* renamed from: a */
        Drawable mo7060a(C0290ai c0290ai, Context context, int i);

        /* renamed from: a */
        boolean mo7062a(Context context, int i, Drawable drawable);

        /* renamed from: b */
        boolean mo7056b(Context context, int i, Drawable drawable);
    }

    /* renamed from: androidx.appcompat.widget.ai$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$f.class */
    public static class C0296f implements AbstractC0294d {
        C0296f() {
        }

        @Override // androidx.appcompat.widget.C0290ai.AbstractC0294d
        /* renamed from: a */
        public Drawable mo7209a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0875i.m5175a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* renamed from: a */
    private static long m7221a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: a */
    public static PorterDuffColorFilter m7234a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C0290ai.class) {
            try {
                PorterDuffColorFilter m7212a = f1205c.m7212a(i, mode);
                porterDuffColorFilter = m7212a;
                if (m7212a == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    f1205c.m7211a(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: a */
    private static PorterDuffColorFilter m7224a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return m7234a(colorStateList.getColorForState(iArr, 0), mode);
    }

    /* renamed from: a */
    private Drawable m7228a(Context context, int i, boolean z, Drawable drawable) {
        Drawable drawable2;
        ColorStateList m7216b = m7216b(context, i);
        if (m7216b != null) {
            Drawable drawable3 = drawable;
            if (C0268aa.m7303c(drawable)) {
                drawable3 = drawable.mutate();
            }
            Drawable m6122g = C0575a.m6122g(drawable3);
            C0575a.m6133a(m6122g, m7216b);
            PorterDuff.Mode m7235a = m7235a(i);
            drawable2 = m6122g;
            if (m7235a != null) {
                C0575a.m6130a(m6122g, m7235a);
                drawable2 = m6122g;
            }
        } else {
            AbstractC0295e abstractC0295e = this.f1212j;
            if (abstractC0295e == null || !abstractC0295e.mo7062a(context, i, drawable)) {
                drawable2 = drawable;
                if (!m7230a(context, i, drawable)) {
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

    /* renamed from: a */
    private Drawable m7227a(Context context, long j) {
        synchronized (this) {
            C0379d<WeakReference<Drawable.ConstantState>> c0379d = this.f1209g.get(context);
            if (c0379d == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> m6852a = c0379d.m6852a(j);
            if (m6852a != null) {
                Drawable.ConstantState constantState = m6852a.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                c0379d.m6848b(j);
            }
            return null;
        }
    }

    /* renamed from: a */
    public static C0290ai m7236a() {
        C0290ai c0290ai;
        synchronized (C0290ai.class) {
            try {
                if (f1204b == null) {
                    f1204b = new C0290ai();
                    m7219a(f1204b);
                }
                c0290ai = f1204b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0290ai;
    }

    /* renamed from: a */
    private void m7231a(Context context, int i, ColorStateList colorStateList) {
        if (this.f1206d == null) {
            this.f1206d = new WeakHashMap<>();
        }
        C0388h<ColorStateList> c0388h = this.f1206d.get(context);
        C0388h<ColorStateList> c0388h2 = c0388h;
        if (c0388h == null) {
            c0388h2 = new C0388h<>();
            this.f1206d.put(context, c0388h2);
        }
        c0388h2.m6797c(i, colorStateList);
    }

    /* renamed from: a */
    public static void m7222a(Drawable drawable, C0309aq c0309aq, int[] iArr) {
        if (C0268aa.m7303c(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (c0309aq.f1279d || c0309aq.f1278c) {
            drawable.setColorFilter(m7224a(c0309aq.f1279d ? c0309aq.f1276a : null, c0309aq.f1278c ? c0309aq.f1277b : f1203a, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT > 23) {
            return;
        }
        drawable.invalidateSelf();
    }

    /* renamed from: a */
    private static void m7219a(C0290ai c0290ai) {
        if (Build.VERSION.SDK_INT < 24) {
            c0290ai.m7218a("vector", new C0296f());
            c0290ai.m7218a("animated-vector", new C0292b());
            c0290ai.m7218a("animated-selector", new C0291a());
        }
    }

    /* renamed from: a */
    private void m7218a(String str, AbstractC0294d abstractC0294d) {
        if (this.f1207e == null) {
            this.f1207e = new C0374a<>();
        }
        this.f1207e.put(str, abstractC0294d);
    }

    /* renamed from: a */
    private boolean m7226a(Context context, long j, Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                C0379d<WeakReference<Drawable.ConstantState>> c0379d = this.f1209g.get(context);
                C0379d<WeakReference<Drawable.ConstantState>> c0379d2 = c0379d;
                if (c0379d == null) {
                    c0379d2 = new C0379d<>();
                    this.f1209g.put(context, c0379d2);
                }
                c0379d2.m6847b(j, new WeakReference<>(constantState));
                return true;
            }
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m7223a(Drawable drawable) {
        return (drawable instanceof C0875i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* renamed from: b */
    private void m7217b(Context context) {
        if (this.f1211i) {
            return;
        }
        this.f1211i = true;
        Drawable m7232a = m7232a(context, C0150a.C0151a.abc_vector_test);
        if (m7232a != null && m7223a(m7232a)) {
            return;
        }
        this.f1211i = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
    }

    /* renamed from: c */
    private Drawable m7215c(Context context, int i) {
        if (this.f1210h == null) {
            this.f1210h = new TypedValue();
        }
        TypedValue typedValue = this.f1210h;
        context.getResources().getValue(i, typedValue, true);
        long m7221a = m7221a(typedValue);
        Drawable m7227a = m7227a(context, m7221a);
        if (m7227a != null) {
            return m7227a;
        }
        AbstractC0295e abstractC0295e = this.f1212j;
        Drawable mo7060a = abstractC0295e == null ? null : abstractC0295e.mo7060a(this, context, i);
        if (mo7060a != null) {
            mo7060a.setChangingConfigurations(typedValue.changingConfigurations);
            m7226a(context, m7221a, mo7060a);
        }
        return mo7060a;
    }

    /* renamed from: d */
    private Drawable m7214d(Context context, int i) {
        int next;
        C0374a<String, AbstractC0294d> c0374a = this.f1207e;
        if (c0374a == null || c0374a.isEmpty()) {
            return null;
        }
        C0388h<String> c0388h = this.f1208f;
        if (c0388h != null) {
            String m6805a = c0388h.m6805a(i);
            if ("appcompat_skip_skip".equals(m6805a)) {
                return null;
            }
            if (m6805a != null && this.f1207e.get(m6805a) == null) {
                return null;
            }
        } else {
            this.f1208f = new C0388h<>();
        }
        if (this.f1210h == null) {
            this.f1210h = new TypedValue();
        }
        TypedValue typedValue = this.f1210h;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long m7221a = m7221a(typedValue);
        Drawable m7227a = m7227a(context, m7221a);
        if (m7227a != null) {
            return m7227a;
        }
        Drawable drawable = m7227a;
        if (typedValue.string != null) {
            drawable = m7227a;
            if (typedValue.string.toString().endsWith(".xml")) {
                drawable = m7227a;
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
                    this.f1208f.m6797c(i, name);
                    AbstractC0294d abstractC0294d = this.f1207e.get(name);
                    Drawable drawable2 = m7227a;
                    if (abstractC0294d != null) {
                        drawable2 = abstractC0294d.mo7209a(context, xml, asAttributeSet, context.getTheme());
                    }
                    drawable = drawable2;
                    if (drawable2 != null) {
                        drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                        Drawable drawable3 = drawable2;
                        m7226a(context, m7221a, drawable2);
                        drawable = drawable2;
                    }
                } catch (Exception e) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
                }
            }
        }
        if (drawable == null) {
            this.f1208f.m6797c(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    /* renamed from: e */
    private ColorStateList m7213e(Context context, int i) {
        WeakHashMap<Context, C0388h<ColorStateList>> weakHashMap = this.f1206d;
        ColorStateList colorStateList = null;
        if (weakHashMap != null) {
            C0388h<ColorStateList> c0388h = weakHashMap.get(context);
            colorStateList = null;
            if (c0388h != null) {
                colorStateList = c0388h.m6805a(i);
            }
        }
        return colorStateList;
    }

    /* renamed from: a */
    PorterDuff.Mode m7235a(int i) {
        AbstractC0295e abstractC0295e = this.f1212j;
        return abstractC0295e == null ? null : abstractC0295e.mo7065a(i);
    }

    /* renamed from: a */
    public Drawable m7232a(Context context, int i) {
        Drawable m7229a;
        synchronized (this) {
            m7229a = m7229a(context, i, false);
        }
        return m7229a;
    }

    /* renamed from: a */
    public Drawable m7229a(Context context, int i, boolean z) {
        Drawable drawable;
        synchronized (this) {
            m7217b(context);
            Drawable m7214d = m7214d(context, i);
            Drawable drawable2 = m7214d;
            if (m7214d == null) {
                drawable2 = m7215c(context, i);
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = C0409a.m6753a(context, i);
            }
            drawable = drawable3;
            if (drawable3 != null) {
                drawable = m7228a(context, i, z, drawable3);
            }
            if (drawable != null) {
                C0268aa.m7304b(drawable);
            }
        }
        return drawable;
    }

    /* renamed from: a */
    public Drawable m7225a(Context context, C0320ax c0320ax, int i) {
        synchronized (this) {
            Drawable m7214d = m7214d(context, i);
            Drawable drawable = m7214d;
            if (m7214d == null) {
                drawable = c0320ax.m7117a(i);
            }
            if (drawable != null) {
                return m7228a(context, i, false, drawable);
            }
            return null;
        }
    }

    /* renamed from: a */
    public void m7233a(Context context) {
        synchronized (this) {
            C0379d<WeakReference<Drawable.ConstantState>> c0379d = this.f1209g.get(context);
            if (c0379d != null) {
                c0379d.m6846c();
            }
        }
    }

    /* renamed from: a */
    public void m7220a(AbstractC0295e abstractC0295e) {
        synchronized (this) {
            this.f1212j = abstractC0295e;
        }
    }

    /* renamed from: a */
    public boolean m7230a(Context context, int i, Drawable drawable) {
        AbstractC0295e abstractC0295e = this.f1212j;
        return abstractC0295e != null && abstractC0295e.mo7056b(context, i, drawable);
    }

    /* renamed from: b */
    public ColorStateList m7216b(Context context, int i) {
        ColorStateList colorStateList;
        synchronized (this) {
            ColorStateList m7213e = m7213e(context, i);
            colorStateList = m7213e;
            if (m7213e == null) {
                ColorStateList mo7063a = this.f1212j == null ? null : this.f1212j.mo7063a(context, i);
                colorStateList = mo7063a;
                if (mo7063a != null) {
                    m7231a(context, i, mo7063a);
                    colorStateList = mo7063a;
                }
            }
        }
        return colorStateList;
    }
}
