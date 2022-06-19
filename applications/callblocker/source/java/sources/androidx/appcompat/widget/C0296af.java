package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import androidx.appcompat.p010b.p011a.C0153a;
import androidx.appcompat.p012c.C0168a;
import androidx.core.p017a.C0438a;
import androidx.p013b.C0373a;
import androidx.p013b.C0378d;
import androidx.p013b.C0379e;
import androidx.p013b.C0387h;
import androidx.p046k.p047a.p048a.C0835c;
import androidx.p046k.p047a.p048a.C0845i;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.appcompat.widget.af */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af.class */
public final class C0296af {

    /* renamed from: b */
    private static C0296af f1261b;

    /* renamed from: d */
    private WeakHashMap<Context, C0387h<ColorStateList>> f1263d;

    /* renamed from: e */
    private C0373a<String, AbstractC0300d> f1264e;

    /* renamed from: f */
    private C0387h<String> f1265f;

    /* renamed from: g */
    private final WeakHashMap<Context, C0378d<WeakReference<Drawable.ConstantState>>> f1266g = new WeakHashMap<>(0);

    /* renamed from: h */
    private TypedValue f1267h;

    /* renamed from: i */
    private boolean f1268i;

    /* renamed from: j */
    private AbstractC0301e f1269j;

    /* renamed from: a */
    private static final PorterDuff.Mode f1260a = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    private static final C0299c f1262c = new C0299c(6);

    /* renamed from: androidx.appcompat.widget.af$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$a.class */
    public static class C0297a implements AbstractC0300d {
        C0297a() {
        }

        @Override // androidx.appcompat.widget.C0296af.AbstractC0300d
        /* renamed from: a */
        public Drawable mo21486a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            C0153a c0153a;
            try {
                c0153a = C0153a.m22061a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                c0153a = null;
            }
            return c0153a;
        }
    }

    /* renamed from: androidx.appcompat.widget.af$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$b.class */
    public static class C0298b implements AbstractC0300d {
        C0298b() {
        }

        @Override // androidx.appcompat.widget.C0296af.AbstractC0300d
        /* renamed from: a */
        public Drawable mo21486a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            C0835c c0835c;
            try {
                c0835c = C0835c.m19322a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                c0835c = null;
            }
            return c0835c;
        }
    }

    /* renamed from: androidx.appcompat.widget.af$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$c.class */
    public static class C0299c extends C0379e<Integer, PorterDuffColorFilter> {
        public C0299c(int i) {
            super(i);
        }

        /* renamed from: b */
        private static int m21487b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* renamed from: a */
        PorterDuffColorFilter m21489a(int i, PorterDuff.Mode mode) {
            return m21117a((C0299c) Integer.valueOf(m21487b(i, mode)));
        }

        /* renamed from: a */
        PorterDuffColorFilter m21488a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return m21116a((C0299c) Integer.valueOf(m21487b(i, mode)), (Integer) porterDuffColorFilter);
        }
    }

    /* renamed from: androidx.appcompat.widget.af$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$d.class */
    public interface AbstractC0300d {
        /* renamed from: a */
        Drawable mo21486a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: androidx.appcompat.widget.af$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$e.class */
    public interface AbstractC0301e {
        /* renamed from: a */
        ColorStateList mo21302a(Context context, int i);

        /* renamed from: a */
        PorterDuff.Mode mo21304a(int i);

        /* renamed from: a */
        Drawable mo21299a(C0296af c0296af, Context context, int i);

        /* renamed from: a */
        boolean mo21301a(Context context, int i, Drawable drawable);

        /* renamed from: b */
        boolean mo21295b(Context context, int i, Drawable drawable);
    }

    /* renamed from: androidx.appcompat.widget.af$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$f.class */
    public static class C0302f implements AbstractC0300d {
        C0302f() {
        }

        @Override // androidx.appcompat.widget.C0296af.AbstractC0300d
        /* renamed from: a */
        public Drawable mo21486a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            C0845i c0845i;
            try {
                c0845i = C0845i.m19288a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                c0845i = null;
            }
            return c0845i;
        }
    }

    /* renamed from: a */
    private static long m21498a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: a */
    public static PorterDuffColorFilter m21511a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C0296af.class) {
            try {
                PorterDuffColorFilter m21489a = f1262c.m21489a(i, mode);
                porterDuffColorFilter = m21489a;
                if (m21489a == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    f1262c.m21488a(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: a */
    private static PorterDuffColorFilter m21501a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        return (colorStateList == null || mode == null) ? null : m21511a(colorStateList.getColorForState(iArr, 0), mode);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005c, code lost:
        if (r5.f1269j.mo21301a(r6, r7, r9) == false) goto L16;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable m21505a(android.content.Context r6, int r7, boolean r8, android.graphics.drawable.Drawable r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            android.content.res.ColorStateList r0 = r0.m21493b(r1, r2)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L44
            r0 = r9
            r6 = r0
            r0 = r9
            boolean r0 = androidx.appcompat.widget.C0369y.m21166b(r0)
            if (r0 == 0) goto L1e
            r0 = r9
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r6 = r0
        L1e:
            r0 = r6
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0535a.m20584g(r0)
            r6 = r0
            r0 = r6
            r1 = r10
            androidx.core.graphics.drawable.C0535a.m20595a(r0, r1)
            r0 = r5
            r1 = r7
            android.graphics.PorterDuff$Mode r0 = r0.m21512a(r1)
            r9 = r0
            r0 = r6
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L41
            r0 = r6
            r1 = r9
            androidx.core.graphics.drawable.C0535a.m20592a(r0, r1)
            r0 = r6
            r10 = r0
        L41:
            r0 = r10
            return r0
        L44:
            r0 = r5
            androidx.appcompat.widget.af$e r0 = r0.f1269j
            if (r0 == 0) goto L5f
            r0 = r9
            r10 = r0
            r0 = r5
            androidx.appcompat.widget.af$e r0 = r0.f1269j
            r1 = r6
            r2 = r7
            r3 = r9
            boolean r0 = r0.mo21301a(r1, r2, r3)
            if (r0 != 0) goto L41
        L5f:
            r0 = r9
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r9
            boolean r0 = r0.m21507a(r1, r2, r3)
            if (r0 != 0) goto L41
            r0 = r9
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L41
            r0 = 0
            r10 = r0
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0296af.m21505a(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* renamed from: a */
    private Drawable m21504a(Context context, long j) {
        Drawable drawable;
        synchronized (this) {
            C0378d<WeakReference<Drawable.ConstantState>> c0378d = this.f1266g.get(context);
            if (c0378d == null) {
                drawable = null;
            } else {
                WeakReference<Drawable.ConstantState> m21131a = c0378d.m21131a(j);
                if (m21131a != null) {
                    Drawable.ConstantState constantState = m21131a.get();
                    if (constantState != null) {
                        drawable = constantState.newDrawable(context.getResources());
                    } else {
                        c0378d.m21127b(j);
                    }
                }
                drawable = null;
            }
        }
        return drawable;
    }

    /* renamed from: a */
    public static C0296af m21513a() {
        C0296af c0296af;
        synchronized (C0296af.class) {
            try {
                if (f1261b == null) {
                    f1261b = new C0296af();
                    m21496a(f1261b);
                }
                c0296af = f1261b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0296af;
    }

    /* renamed from: a */
    private void m21508a(Context context, int i, ColorStateList colorStateList) {
        if (this.f1263d == null) {
            this.f1263d = new WeakHashMap<>();
        }
        C0387h<ColorStateList> c0387h = this.f1263d.get(context);
        C0387h<ColorStateList> c0387h2 = c0387h;
        if (c0387h == null) {
            c0387h2 = new C0387h<>();
            this.f1263d.put(context, c0387h2);
        }
        c0387h2.m21072c(i, colorStateList);
    }

    /* renamed from: a */
    public static void m21499a(Drawable drawable, C0315an c0315an, int[] iArr) {
        if (C0369y.m21166b(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (c0315an.f1336d || c0315an.f1335c) {
            drawable.setColorFilter(m21501a(c0315an.f1336d ? c0315an.f1333a : null, c0315an.f1335c ? c0315an.f1334b : f1260a, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT > 23) {
            return;
        }
        drawable.invalidateSelf();
    }

    /* renamed from: a */
    private static void m21496a(C0296af c0296af) {
        if (Build.VERSION.SDK_INT < 24) {
            c0296af.m21495a("vector", new C0302f());
            c0296af.m21495a("animated-vector", new C0298b());
            c0296af.m21495a("animated-selector", new C0297a());
        }
    }

    /* renamed from: a */
    private void m21495a(String str, AbstractC0300d abstractC0300d) {
        if (this.f1264e == null) {
            this.f1264e = new C0373a<>();
        }
        this.f1264e.put(str, abstractC0300d);
    }

    /* renamed from: a */
    private boolean m21503a(Context context, long j, Drawable drawable) {
        boolean z;
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                C0378d<WeakReference<Drawable.ConstantState>> c0378d = this.f1266g.get(context);
                C0378d<WeakReference<Drawable.ConstantState>> c0378d2 = c0378d;
                if (c0378d == null) {
                    c0378d2 = new C0378d<>();
                    this.f1266g.put(context, c0378d2);
                }
                c0378d2.m21126b(j, new WeakReference<>(constantState));
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m21500a(Drawable drawable) {
        return (drawable instanceof C0845i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* renamed from: b */
    private void m21494b(Context context) {
        if (this.f1268i) {
            return;
        }
        this.f1268i = true;
        Drawable m21509a = m21509a(context, C0168a.C0169a.abc_vector_test);
        if (m21509a != null && m21500a(m21509a)) {
            return;
        }
        this.f1268i = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
    }

    /* renamed from: c */
    private Drawable m21492c(Context context, int i) {
        if (this.f1267h == null) {
            this.f1267h = new TypedValue();
        }
        TypedValue typedValue = this.f1267h;
        context.getResources().getValue(i, typedValue, true);
        long m21498a = m21498a(typedValue);
        Drawable m21504a = m21504a(context, m21498a);
        if (m21504a == null) {
            Drawable mo21299a = this.f1269j == null ? null : this.f1269j.mo21299a(this, context, i);
            m21504a = mo21299a;
            if (mo21299a != null) {
                mo21299a.setChangingConfigurations(typedValue.changingConfigurations);
                m21503a(context, m21498a, mo21299a);
                m21504a = mo21299a;
            }
        }
        return m21504a;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0109  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable m21491d(android.content.Context r7, int r8) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0296af.m21491d(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    /* renamed from: e */
    private ColorStateList m21490e(Context context, int i) {
        ColorStateList colorStateList;
        if (this.f1263d != null) {
            C0387h<ColorStateList> c0387h = this.f1263d.get(context);
            colorStateList = c0387h != null ? c0387h.m21080a(i) : null;
        } else {
            colorStateList = null;
        }
        return colorStateList;
    }

    /* renamed from: a */
    PorterDuff.Mode m21512a(int i) {
        return this.f1269j == null ? null : this.f1269j.mo21304a(i);
    }

    /* renamed from: a */
    public Drawable m21509a(Context context, int i) {
        Drawable m21506a;
        synchronized (this) {
            m21506a = m21506a(context, i, false);
        }
        return m21506a;
    }

    /* renamed from: a */
    public Drawable m21506a(Context context, int i, boolean z) {
        Drawable drawable;
        synchronized (this) {
            m21494b(context);
            Drawable m21491d = m21491d(context, i);
            Drawable drawable2 = m21491d;
            if (m21491d == null) {
                drawable2 = m21492c(context, i);
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = C0438a.m20900a(context, i);
            }
            drawable = drawable3;
            if (drawable3 != null) {
                drawable = m21505a(context, i, z, drawable3);
            }
            if (drawable != null) {
                C0369y.m21167a(drawable);
            }
        }
        return drawable;
    }

    /* renamed from: a */
    public Drawable m21502a(Context context, C0326au c0326au, int i) {
        Drawable m21505a;
        synchronized (this) {
            Drawable m21491d = m21491d(context, i);
            Drawable drawable = m21491d;
            if (m21491d == null) {
                drawable = c0326au.m21391a(i);
            }
            m21505a = drawable != null ? m21505a(context, i, false, drawable) : null;
        }
        return m21505a;
    }

    /* renamed from: a */
    public void m21510a(Context context) {
        synchronized (this) {
            C0378d<WeakReference<Drawable.ConstantState>> c0378d = this.f1266g.get(context);
            if (c0378d != null) {
                c0378d.m21121d();
            }
        }
    }

    /* renamed from: a */
    public void m21497a(AbstractC0301e abstractC0301e) {
        synchronized (this) {
            this.f1269j = abstractC0301e;
        }
    }

    /* renamed from: a */
    public boolean m21507a(Context context, int i, Drawable drawable) {
        return this.f1269j != null && this.f1269j.mo21295b(context, i, drawable);
    }

    /* renamed from: b */
    public ColorStateList m21493b(Context context, int i) {
        ColorStateList colorStateList;
        synchronized (this) {
            ColorStateList m21490e = m21490e(context, i);
            colorStateList = m21490e;
            if (m21490e == null) {
                ColorStateList mo21302a = this.f1269j == null ? null : this.f1269j.mo21302a(context, i);
                colorStateList = mo21302a;
                if (mo21302a != null) {
                    m21508a(context, i, mo21302a);
                    colorStateList = mo21302a;
                }
            }
        }
        return colorStateList;
    }
}
