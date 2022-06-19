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
import androidx.appcompat.p019b.p020a.C0220a;
import androidx.p023b.C0433d;
import androidx.p023b.C0434e;
import androidx.p023b.C0441g;
import androidx.p023b.C0442h;
import androidx.p057l.p058a.p059a.C1198c;
import androidx.p057l.p058a.p059a.C1208i;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t.class */
public final class C0414t {

    /* renamed from: b */
    private static C0414t f1646b;

    /* renamed from: d */
    private WeakHashMap<Context, C0442h<ColorStateList>> f1648d;

    /* renamed from: e */
    private C0441g<String, AbstractC0418d> f1649e;

    /* renamed from: f */
    private C0442h<String> f1650f;

    /* renamed from: g */
    private final WeakHashMap<Context, C0433d<WeakReference<Drawable.ConstantState>>> f1651g = new WeakHashMap<>(0);

    /* renamed from: h */
    private TypedValue f1652h;

    /* renamed from: i */
    private boolean f1653i;

    /* renamed from: j */
    private AbstractC0419e f1654j;

    /* renamed from: a */
    private static final PorterDuff.Mode f1645a = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    private static final C0417c f1647c = new C0417c(6);

    /* renamed from: androidx.appcompat.widget.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$a.class */
    public static final class C0415a implements AbstractC0418d {
        C0415a() {
        }

        @Override // androidx.appcompat.widget.C0414t.AbstractC0418d
        /* renamed from: a */
        public final Drawable mo45587a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0220a.m46211a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.t$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$b.class */
    public static final class C0416b implements AbstractC0418d {
        C0416b() {
        }

        @Override // androidx.appcompat.widget.C0414t.AbstractC0418d
        /* renamed from: a */
        public final Drawable mo45587a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C1198c.m43373a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.t$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$c.class */
    public static final class C0417c extends C0434e<Integer, PorterDuffColorFilter> {
        public C0417c(int i) {
            super(i);
        }

        /* renamed from: a */
        static int m45593a(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    /* renamed from: androidx.appcompat.widget.t$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$d.class */
    public interface AbstractC0418d {
        /* renamed from: a */
        Drawable mo45587a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: androidx.appcompat.widget.t$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$e.class */
    public interface AbstractC0419e {
        /* renamed from: a */
        ColorStateList mo45591a(Context context, int i);

        /* renamed from: a */
        PorterDuff.Mode mo45592a(int i);

        /* renamed from: a */
        Drawable mo45589a(C0414t c0414t, Context context, int i);

        /* renamed from: a */
        boolean mo45590a(Context context, int i, Drawable drawable);

        /* renamed from: b */
        boolean mo45588b(Context context, int i, Drawable drawable);
    }

    /* renamed from: androidx.appcompat.widget.t$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$f.class */
    public static final class C0420f implements AbstractC0418d {
        C0420f() {
        }

        @Override // androidx.appcompat.widget.C0414t.AbstractC0418d
        /* renamed from: a */
        public final Drawable mo45587a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C1208i.m43354a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* renamed from: a */
    private static long m45598a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: a */
    private PorterDuff.Mode m45609a(int i) {
        AbstractC0419e abstractC0419e = this.f1654j;
        if (abstractC0419e == null) {
            return null;
        }
        return abstractC0419e.mo45592a(i);
    }

    /* renamed from: a */
    public static PorterDuffColorFilter m45608a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C0414t.class) {
            try {
                C0417c c0417c = f1647c;
                PorterDuffColorFilter porterDuffColorFilter2 = c0417c.get(Integer.valueOf(C0417c.m45593a(i, mode)));
                porterDuffColorFilter = porterDuffColorFilter2;
                if (porterDuffColorFilter2 == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    c0417c.put(Integer.valueOf(C0417c.m45593a(i, mode)), porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005e, code lost:
        if (r0.mo45590a(r6, r7, r9) == false) goto L14;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable m45603a(android.content.Context r6, int r7, boolean r8, android.graphics.drawable.Drawable r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            android.content.res.ColorStateList r0 = r0.m45595b(r1, r2)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L44
            r0 = r9
            r6 = r0
            r0 = r9
            boolean r0 = androidx.appcompat.widget.C0407p.m45619c(r0)
            if (r0 == 0) goto L1e
            r0 = r9
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r6 = r0
        L1e:
            r0 = r6
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0840a.m44345f(r0)
            r6 = r0
            r0 = r6
            r1 = r10
            androidx.core.graphics.drawable.C0840a.m44355a(r0, r1)
            r0 = r5
            r1 = r7
            android.graphics.PorterDuff$Mode r0 = r0.m45609a(r1)
            r9 = r0
            r0 = r6
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L7b
            r0 = r6
            r1 = r9
            androidx.core.graphics.drawable.C0840a.m44352a(r0, r1)
            r0 = r6
            r10 = r0
            goto L7b
        L44:
            r0 = r5
            androidx.appcompat.widget.t$e r0 = r0.f1654j
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L61
            r0 = r9
            r10 = r0
            r0 = r11
            r1 = r6
            r2 = r7
            r3 = r9
            boolean r0 = r0.mo45590a(r1, r2, r3)
            if (r0 != 0) goto L7b
        L61:
            r0 = r9
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r9
            boolean r0 = r0.m45605a(r1, r2, r3)
            if (r0 != 0) goto L7b
            r0 = r9
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L7b
            r0 = 0
            r10 = r0
        L7b:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0414t.m45603a(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* renamed from: a */
    private Drawable m45602a(Context context, long j) {
        synchronized (this) {
            C0433d<WeakReference<Drawable.ConstantState>> c0433d = this.f1651g.get(context);
            if (c0433d == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> m45549a = c0433d.m45549a(j, null);
            if (m45549a != null) {
                Drawable.ConstantState constantState = m45549a.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                c0433d.m45550a(j);
            }
            return null;
        }
    }

    /* renamed from: a */
    public static C0414t m45610a() {
        C0414t c0414t;
        synchronized (C0414t.class) {
            try {
                if (f1646b == null) {
                    C0414t c0414t2 = new C0414t();
                    f1646b = c0414t2;
                    if (Build.VERSION.SDK_INT < 24) {
                        c0414t2.m45596a("vector", new C0420f());
                        c0414t2.m45596a("animated-vector", new C0416b());
                        c0414t2.m45596a("animated-selector", new C0415a());
                    }
                }
                c0414t = f1646b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0414t;
    }

    /* renamed from: a */
    public static void m45599a(Drawable drawable, C0427z c0427z, int[] iArr) {
        if (!C0407p.m45619c(drawable) || drawable.mutate() == drawable) {
            if (c0427z.f1700d || c0427z.f1699c) {
                ColorStateList colorStateList = c0427z.f1700d ? c0427z.f1697a : null;
                PorterDuff.Mode mode = c0427z.f1699c ? c0427z.f1698b : f1645a;
                PorterDuffColorFilter porterDuffColorFilter = null;
                if (colorStateList != null) {
                    porterDuffColorFilter = mode == null ? null : m45608a(colorStateList.getColorForState(iArr, 0), mode);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT > 23) {
                return;
            }
            drawable.invalidateSelf();
        }
    }

    /* renamed from: a */
    private void m45596a(String str, AbstractC0418d abstractC0418d) {
        if (this.f1649e == null) {
            this.f1649e = new C0441g<>();
        }
        this.f1649e.put(str, abstractC0418d);
    }

    /* renamed from: a */
    private boolean m45601a(Context context, long j, Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                C0433d<WeakReference<Drawable.ConstantState>> c0433d = this.f1651g.get(context);
                C0433d<WeakReference<Drawable.ConstantState>> c0433d2 = c0433d;
                if (c0433d == null) {
                    c0433d2 = new C0433d<>();
                    this.f1651g.put(context, c0433d2);
                }
                c0433d2.m45545b(j, new WeakReference<>(constantState));
                return true;
            }
            return false;
        }
    }

    /* renamed from: c */
    private Drawable m45594c(Context context, int i) {
        int next;
        C0441g<String, AbstractC0418d> c0441g = this.f1649e;
        if (c0441g == null || c0441g.isEmpty()) {
            return null;
        }
        C0442h<String> c0442h = this.f1650f;
        if (c0442h != null) {
            String m45511a = c0442h.m45511a(i, null);
            if ("appcompat_skip_skip".equals(m45511a)) {
                return null;
            }
            if (m45511a != null && this.f1649e.get(m45511a) == null) {
                return null;
            }
        } else {
            this.f1650f = new C0442h<>();
        }
        if (this.f1652h == null) {
            this.f1652h = new TypedValue();
        }
        TypedValue typedValue = this.f1652h;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long m45598a = m45598a(typedValue);
        Drawable m45602a = m45602a(context, m45598a);
        if (m45602a != null) {
            return m45602a;
        }
        Drawable drawable = m45602a;
        if (typedValue.string != null) {
            drawable = m45602a;
            if (typedValue.string.toString().endsWith(".xml")) {
                drawable = m45602a;
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
                    this.f1650f.m45505c(i, name);
                    AbstractC0418d abstractC0418d = this.f1649e.get(name);
                    Drawable drawable2 = m45602a;
                    if (abstractC0418d != null) {
                        drawable2 = abstractC0418d.mo45587a(context, xml, asAttributeSet, context.getTheme());
                    }
                    drawable = drawable2;
                    if (drawable2 != null) {
                        drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                        Drawable drawable3 = drawable2;
                        m45601a(context, m45598a, drawable2);
                        drawable = drawable2;
                    }
                } catch (Exception e) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
                }
            }
        }
        if (drawable == null) {
            this.f1650f.m45505c(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    /* renamed from: a */
    public final Drawable m45606a(Context context, int i) {
        Drawable m45604a;
        synchronized (this) {
            m45604a = m45604a(context, i, false);
        }
        return m45604a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
        if (r11 == false) goto L17;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable m45604a(android.content.Context r7, int r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0414t.m45604a(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }

    /* renamed from: a */
    public final Drawable m45600a(Context context, C0379ag c0379ag, int i) {
        synchronized (this) {
            Drawable m45594c = m45594c(context, i);
            Drawable drawable = m45594c;
            if (m45594c == null) {
                drawable = c0379ag.m45771a(i);
            }
            if (drawable != null) {
                return m45603a(context, i, false, drawable);
            }
            return null;
        }
    }

    /* renamed from: a */
    public final void m45607a(Context context) {
        synchronized (this) {
            C0433d<WeakReference<Drawable.ConstantState>> c0433d = this.f1651g.get(context);
            if (c0433d != null) {
                c0433d.m45540d();
            }
        }
    }

    /* renamed from: a */
    public final void m45597a(AbstractC0419e abstractC0419e) {
        synchronized (this) {
            this.f1654j = abstractC0419e;
        }
    }

    /* renamed from: a */
    public final boolean m45605a(Context context, int i, Drawable drawable) {
        AbstractC0419e abstractC0419e = this.f1654j;
        return abstractC0419e != null && abstractC0419e.mo45588b(context, i, drawable);
    }

    /* renamed from: b */
    public final ColorStateList m45595b(Context context, int i) {
        ColorStateList colorStateList;
        C0442h<ColorStateList> c0442h;
        synchronized (this) {
            WeakHashMap<Context, C0442h<ColorStateList>> weakHashMap = this.f1648d;
            ColorStateList m45511a = (weakHashMap == null || (c0442h = weakHashMap.get(context)) == null) ? null : c0442h.m45511a(i, null);
            colorStateList = m45511a;
            if (m45511a == null) {
                AbstractC0419e abstractC0419e = this.f1654j;
                ColorStateList mo45591a = abstractC0419e == null ? null : abstractC0419e.mo45591a(context, i);
                if (mo45591a != null) {
                    if (this.f1648d == null) {
                        this.f1648d = new WeakHashMap<>();
                    }
                    C0442h<ColorStateList> c0442h2 = this.f1648d.get(context);
                    C0442h<ColorStateList> c0442h3 = c0442h2;
                    if (c0442h2 == null) {
                        c0442h3 = new C0442h<>();
                        this.f1648d.put(context, c0442h3);
                    }
                    c0442h3.m45505c(i, mo45591a);
                }
                colorStateList = mo45591a;
            }
        }
        return colorStateList;
    }
}
