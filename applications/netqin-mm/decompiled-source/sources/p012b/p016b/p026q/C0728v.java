package p012b.p016b.p026q;

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
import p012b.p016b.p020m.p021a.C0603a;
import p012b.p016b.p022n.C0618a;
import p012b.p035f.C0785d;
import p012b.p035f.C0786e;
import p012b.p035f.C0793g;
import p012b.p035f.C0794h;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p046j.p047m.C0907a;
import p012b.p127y.p128a.p129a.C1956c;
import p012b.p127y.p128a.p129a.C1966i;
/* renamed from: b.b.q.v */
/* loaded from: classes-dex2jar.jar:b/b/q/v.class */
public final class C0728v {

    /* renamed from: i */
    public static C0728v f3543i;

    /* renamed from: a */
    public WeakHashMap<Context, C0794h<ColorStateList>> f3545a;

    /* renamed from: b */
    public C0793g<String, AbstractC0732d> f3546b;

    /* renamed from: c */
    public C0794h<String> f3547c;

    /* renamed from: d */
    public final WeakHashMap<Context, C0785d<WeakReference<Drawable.ConstantState>>> f3548d = new WeakHashMap<>(0);

    /* renamed from: e */
    public TypedValue f3549e;

    /* renamed from: f */
    public boolean f3550f;

    /* renamed from: g */
    public AbstractC0733e f3551g;

    /* renamed from: h */
    public static final PorterDuff.Mode f3542h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j */
    public static final C0731c f3544j = new C0731c(6);

    /* renamed from: b.b.q.v$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/v$a.class */
    public static class C0729a implements AbstractC0732d {
        @Override // p012b.p016b.p026q.C0728v.AbstractC0732d
        /* renamed from: a */
        public Drawable mo36183a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0603a.m36767e(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* renamed from: b.b.q.v$b */
    /* loaded from: classes-dex2jar.jar:b/b/q/v$b.class */
    public static class C0730b implements AbstractC0732d {
        @Override // p012b.p016b.p026q.C0728v.AbstractC0732d
        /* renamed from: a */
        public Drawable mo36183a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C1956c.m31460a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* renamed from: b.b.q.v$c */
    /* loaded from: classes-dex2jar.jar:b/b/q/v$c.class */
    public static class C0731c extends C0786e<Integer, PorterDuffColorFilter> {
        public C0731c(int i) {
            super(i);
        }

        /* renamed from: b */
        public static int m36189b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* renamed from: a */
        public PorterDuffColorFilter m36191a(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(m36189b(i, mode)));
        }

        /* renamed from: a */
        public PorterDuffColorFilter m36190a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(m36189b(i, mode)), porterDuffColorFilter);
        }
    }

    /* renamed from: b.b.q.v$d */
    /* loaded from: classes-dex2jar.jar:b/b/q/v$d.class */
    public interface AbstractC0732d {
        /* renamed from: a */
        Drawable mo36183a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: b.b.q.v$e */
    /* loaded from: classes-dex2jar.jar:b/b/q/v$e.class */
    public interface AbstractC0733e {
        /* renamed from: a */
        ColorStateList mo36187a(Context context, int i);

        /* renamed from: a */
        PorterDuff.Mode mo36188a(int i);

        /* renamed from: a */
        Drawable mo36185a(C0728v vVar, Context context, int i);

        /* renamed from: a */
        boolean mo36186a(Context context, int i, Drawable drawable);

        /* renamed from: b */
        boolean mo36184b(Context context, int i, Drawable drawable);
    }

    /* renamed from: b.b.q.v$f */
    /* loaded from: classes-dex2jar.jar:b/b/q/v$f.class */
    public static class C0734f implements AbstractC0732d {
        @Override // p012b.p016b.p026q.C0728v.AbstractC0732d
        /* renamed from: a */
        public Drawable mo36183a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C1966i.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* renamed from: a */
    public static long m36200a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: a */
    public static PorterDuffColorFilter m36213a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C0728v.class) {
            try {
                PorterDuffColorFilter a = f3544j.m36191a(i, mode);
                porterDuffColorFilter = a;
                if (a == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    f3544j.m36190a(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: a */
    public static PorterDuffColorFilter m36203a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return m36213a(colorStateList.getColorForState(iArr, 0), mode);
    }

    /* renamed from: a */
    public static C0728v m36215a() {
        C0728v vVar;
        synchronized (C0728v.class) {
            try {
                if (f3543i == null) {
                    C0728v vVar2 = new C0728v();
                    f3543i = vVar2;
                    m36198a(vVar2);
                }
                vVar = f3543i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return vVar;
    }

    /* renamed from: a */
    public static void m36201a(Drawable drawable, C0686d0 d0Var, int[] iArr) {
        if (!C0716p.m36251a(drawable) || drawable.mutate() == drawable) {
            if (d0Var.f3394d || d0Var.f3393c) {
                drawable.setColorFilter(m36203a(d0Var.f3394d ? d0Var.f3391a : null, d0Var.f3393c ? d0Var.f3392b : f3542h, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
                return;
            }
            return;
        }
        Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
    }

    /* renamed from: a */
    public static void m36198a(C0728v vVar) {
        if (Build.VERSION.SDK_INT < 24) {
            vVar.m36197a("vector", new C0734f());
            vVar.m36197a("animated-vector", new C0730b());
            vVar.m36197a("animated-selector", new C0729a());
        }
    }

    /* renamed from: a */
    public static boolean m36202a(Drawable drawable) {
        return (drawable instanceof C1966i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* renamed from: a */
    public PorterDuff.Mode m36214a(int i) {
        AbstractC0733e eVar = this.f3551g;
        return eVar == null ? null : eVar.mo36188a(i);
    }

    /* renamed from: a */
    public final Drawable m36211a(Context context, int i) {
        if (this.f3549e == null) {
            this.f3549e = new TypedValue();
        }
        TypedValue typedValue = this.f3549e;
        context.getResources().getValue(i, typedValue, true);
        long a = m36200a(typedValue);
        Drawable a2 = m36206a(context, a);
        if (a2 != null) {
            return a2;
        }
        AbstractC0733e eVar = this.f3551g;
        Drawable a3 = eVar == null ? null : eVar.mo36185a(this, context, i);
        if (a3 != null) {
            a3.setChangingConfigurations(typedValue.changingConfigurations);
            m36205a(context, a, a3);
        }
        return a3;
    }

    /* renamed from: a */
    public Drawable m36208a(Context context, int i, boolean z) {
        Drawable drawable;
        synchronized (this) {
            m36212a(context);
            Drawable e = m36192e(context, i);
            Drawable drawable2 = e;
            if (e == null) {
                drawable2 = m36211a(context, i);
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = C0869a.m35684c(context, i);
            }
            drawable = drawable3;
            if (drawable3 != null) {
                drawable = m36207a(context, i, z, drawable3);
            }
            if (drawable != null) {
                C0716p.m36250b(drawable);
            }
        }
        return drawable;
    }

    /* renamed from: a */
    public final Drawable m36207a(Context context, int i, boolean z, Drawable drawable) {
        Drawable drawable2;
        ColorStateList c = m36194c(context, i);
        if (c != null) {
            Drawable drawable3 = drawable;
            if (C0716p.m36251a(drawable)) {
                drawable3 = drawable.mutate();
            }
            Drawable h = C0907a.m35514h(drawable3);
            C0907a.m35526a(h, c);
            PorterDuff.Mode a = m36214a(i);
            drawable2 = h;
            if (a != null) {
                C0907a.m35523a(h, a);
                drawable2 = h;
            }
        } else {
            AbstractC0733e eVar = this.f3551g;
            if (eVar == null || !eVar.mo36184b(context, i, drawable)) {
                drawable2 = drawable;
                if (!m36209a(context, i, drawable)) {
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
    public final Drawable m36206a(Context context, long j) {
        synchronized (this) {
            C0785d<WeakReference<Drawable.ConstantState>> dVar = this.f3548d.get(context);
            if (dVar == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> a = dVar.m36055a(j);
            if (a != null) {
                Drawable.ConstantState constantState = a.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                dVar.m36052b(j);
            }
            return null;
        }
    }

    /* renamed from: a */
    public Drawable m36204a(Context context, C0705k0 k0Var, int i) {
        synchronized (this) {
            Drawable e = m36192e(context, i);
            Drawable drawable = e;
            if (e == null) {
                drawable = k0Var.m36349a(i);
            }
            if (drawable == null) {
                return null;
            }
            return m36207a(context, i, false, drawable);
        }
    }

    /* renamed from: a */
    public final void m36212a(Context context) {
        if (!this.f3550f) {
            this.f3550f = true;
            Drawable b = m36195b(context, C0618a.abc_vector_test);
            if (b == null || !m36202a(b)) {
                this.f3550f = false;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
    }

    /* renamed from: a */
    public final void m36210a(Context context, int i, ColorStateList colorStateList) {
        if (this.f3545a == null) {
            this.f3545a = new WeakHashMap<>();
        }
        C0794h<ColorStateList> hVar = this.f3545a.get(context);
        C0794h<ColorStateList> hVar2 = hVar;
        if (hVar == null) {
            hVar2 = new C0794h<>();
            this.f3545a.put(context, hVar2);
        }
        hVar2.m36009a(i, colorStateList);
    }

    /* renamed from: a */
    public void m36199a(AbstractC0733e eVar) {
        synchronized (this) {
            this.f3551g = eVar;
        }
    }

    /* renamed from: a */
    public final void m36197a(String str, AbstractC0732d dVar) {
        if (this.f3546b == null) {
            this.f3546b = new C0793g<>();
        }
        this.f3546b.put(str, dVar);
    }

    /* renamed from: a */
    public boolean m36209a(Context context, int i, Drawable drawable) {
        AbstractC0733e eVar = this.f3551g;
        return eVar != null && eVar.mo36186a(context, i, drawable);
    }

    /* renamed from: a */
    public final boolean m36205a(Context context, long j, Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return false;
            }
            C0785d<WeakReference<Drawable.ConstantState>> dVar = this.f3548d.get(context);
            C0785d<WeakReference<Drawable.ConstantState>> dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new C0785d<>();
                this.f3548d.put(context, dVar2);
            }
            dVar2.m36048c(j, new WeakReference<>(constantState));
            return true;
        }
    }

    /* renamed from: b */
    public Drawable m36195b(Context context, int i) {
        Drawable a;
        synchronized (this) {
            a = m36208a(context, i, false);
        }
        return a;
    }

    /* renamed from: b */
    public void m36196b(Context context) {
        synchronized (this) {
            C0785d<WeakReference<Drawable.ConstantState>> dVar = this.f3548d.get(context);
            if (dVar != null) {
                dVar.m36050c();
            }
        }
    }

    /* renamed from: c */
    public ColorStateList m36194c(Context context, int i) {
        ColorStateList colorStateList;
        synchronized (this) {
            ColorStateList d = m36193d(context, i);
            colorStateList = d;
            if (d == null) {
                ColorStateList a = this.f3551g == null ? null : this.f3551g.mo36187a(context, i);
                colorStateList = a;
                if (a != null) {
                    m36210a(context, i, a);
                    colorStateList = a;
                }
            }
        }
        return colorStateList;
    }

    /* renamed from: d */
    public final ColorStateList m36193d(Context context, int i) {
        WeakHashMap<Context, C0794h<ColorStateList>> weakHashMap = this.f3545a;
        ColorStateList colorStateList = null;
        if (weakHashMap != null) {
            C0794h<ColorStateList> hVar = weakHashMap.get(context);
            colorStateList = null;
            if (hVar != null) {
                colorStateList = hVar.m36010a(i);
            }
        }
        return colorStateList;
    }

    /* renamed from: e */
    public final Drawable m36192e(Context context, int i) {
        int next;
        C0793g<String, AbstractC0732d> gVar = this.f3546b;
        if (gVar == null || gVar.isEmpty()) {
            return null;
        }
        C0794h<String> hVar = this.f3547c;
        if (hVar != null) {
            String a = hVar.m36010a(i);
            if ("appcompat_skip_skip".equals(a)) {
                return null;
            }
            if (a != null && this.f3546b.get(a) == null) {
                return null;
            }
        } else {
            this.f3547c = new C0794h<>();
        }
        if (this.f3549e == null) {
            this.f3549e = new TypedValue();
        }
        TypedValue typedValue = this.f3549e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long a2 = m36200a(typedValue);
        Drawable a3 = m36206a(context, a2);
        if (a3 != null) {
            return a3;
        }
        CharSequence charSequence = typedValue.string;
        Drawable drawable = a3;
        if (charSequence != null) {
            drawable = a3;
            if (charSequence.toString().endsWith(".xml")) {
                drawable = a3;
                try {
                    XmlResourceParser xml = resources.getXml(i);
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                    do {
                        next = xml.next();
                        if (next == 2) {
                            break;
                        }
                    } while (next != 1);
                    if (next == 2) {
                        String name = xml.getName();
                        this.f3547c.m36009a(i, name);
                        AbstractC0732d dVar = this.f3546b.get(name);
                        Drawable drawable2 = a3;
                        if (dVar != null) {
                            drawable2 = dVar.mo36183a(context, xml, asAttributeSet, context.getTheme());
                        }
                        drawable = drawable2;
                        if (drawable2 != null) {
                            drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                            m36205a(context, a2, drawable2);
                            drawable = drawable2;
                        }
                    } else {
                        throw new XmlPullParserException("No start tag found");
                    }
                } catch (Exception e) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
                }
            }
        }
        if (drawable == null) {
            this.f3547c.m36009a(i, "appcompat_skip_skip");
        }
        return drawable;
    }
}
