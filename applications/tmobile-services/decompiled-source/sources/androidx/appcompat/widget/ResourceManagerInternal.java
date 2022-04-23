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
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.appcompat.resources.C0076R;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal.class */
public final class ResourceManagerInternal {

    /* renamed from: i */
    private static ResourceManagerInternal f1156i;

    /* renamed from: a */
    private WeakHashMap<Context, SparseArrayCompat<ColorStateList>> f1158a;

    /* renamed from: b */
    private SimpleArrayMap<String, InflateDelegate> f1159b;

    /* renamed from: c */
    private SparseArrayCompat<String> f1160c;

    /* renamed from: d */
    private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> f1161d = new WeakHashMap<>(0);

    /* renamed from: e */
    private TypedValue f1162e;

    /* renamed from: f */
    private boolean f1163f;

    /* renamed from: g */
    private ResourceManagerHooks f1164g;

    /* renamed from: h */
    private static final PorterDuff.Mode f1155h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j */
    private static final ColorFilterLruCache f1157j = new ColorFilterLruCache(6);

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate.class */
    public static class AsldcInflateDelegate implements InflateDelegate {
        AsldcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        /* renamed from: a */
        public Drawable mo21375a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.m22064m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate.class */
    public static class AvdcInflateDelegate implements InflateDelegate {
        AvdcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        /* renamed from: a */
        public Drawable mo21375a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.m16649a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache.class */
    public static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i) {
            super(i);
        }

        /* renamed from: a */
        private static int m21383a(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* renamed from: b */
        PorterDuffColorFilter m21382b(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(m21383a(i, mode)));
        }

        /* renamed from: c */
        PorterDuffColorFilter m21381c(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(m21383a(i, mode)), porterDuffColorFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$InflateDelegate.class */
    public interface InflateDelegate {
        /* renamed from: a */
        Drawable mo21375a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks.class */
    public interface ResourceManagerHooks {
        /* renamed from: a */
        boolean mo21380a(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable);

        /* renamed from: b */
        PorterDuff.Mode mo21379b(int i);

        /* renamed from: c */
        Drawable mo21378c(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, @DrawableRes int i);

        /* renamed from: d */
        ColorStateList mo21377d(@NonNull Context context, @DrawableRes int i);

        /* renamed from: e */
        boolean mo21376e(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate.class */
    public static class VdcInflateDelegate implements InflateDelegate {
        VdcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        /* renamed from: a */
        public Drawable mo21375a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return VectorDrawableCompat.m16616c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* renamed from: a */
    private void m21407a(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.f1159b == null) {
            this.f1159b = new SimpleArrayMap<>();
        }
        this.f1159b.put(str, inflateDelegate);
    }

    /* renamed from: b */
    private boolean m21406b(@NonNull Context context, long j, @NonNull Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return false;
            }
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f1161d.get(context);
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray2 = longSparseArray;
            if (longSparseArray == null) {
                longSparseArray2 = new LongSparseArray<>();
                this.f1161d.put(context, longSparseArray2);
            }
            longSparseArray2.m21040n(j, new WeakReference<>(constantState));
            return true;
        }
    }

    /* renamed from: c */
    private void m21405c(@NonNull Context context, @DrawableRes int i, @NonNull ColorStateList colorStateList) {
        if (this.f1158a == null) {
            this.f1158a = new WeakHashMap<>();
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.f1158a.get(context);
        SparseArrayCompat<ColorStateList> sparseArrayCompat2 = sparseArrayCompat;
        if (sparseArrayCompat == null) {
            sparseArrayCompat2 = new SparseArrayCompat<>();
            this.f1158a.put(context, sparseArrayCompat2);
        }
        sparseArrayCompat2.m21004a(i, colorStateList);
    }

    /* renamed from: d */
    private void m21404d(@NonNull Context context) {
        if (!this.f1163f) {
            this.f1163f = true;
            Drawable j = m21398j(context, C0076R.C0078drawable.abc_vector_test);
            if (j == null || !m21391q(j)) {
                this.f1163f = false;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
    }

    /* renamed from: e */
    private static long m21403e(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: f */
    private Drawable m21402f(@NonNull Context context, @DrawableRes int i) {
        if (this.f1162e == null) {
            this.f1162e = new TypedValue();
        }
        TypedValue typedValue = this.f1162e;
        context.getResources().getValue(i, typedValue, true);
        long e = m21403e(typedValue);
        Drawable i2 = m21399i(context, e);
        if (i2 != null) {
            return i2;
        }
        ResourceManagerHooks resourceManagerHooks = this.f1164g;
        Drawable c = resourceManagerHooks == null ? null : resourceManagerHooks.mo21378c(this, context, i);
        if (c != null) {
            c.setChangingConfigurations(typedValue.changingConfigurations);
            m21406b(context, e, c);
        }
        return c;
    }

    /* renamed from: g */
    private static PorterDuffColorFilter m21401g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return m21396l(colorStateList.getColorForState(iArr, 0), mode);
    }

    /* renamed from: h */
    public static ResourceManagerInternal m21400h() {
        ResourceManagerInternal resourceManagerInternal;
        synchronized (ResourceManagerInternal.class) {
            try {
                if (f1156i == null) {
                    ResourceManagerInternal resourceManagerInternal2 = new ResourceManagerInternal();
                    f1156i = resourceManagerInternal2;
                    m21392p(resourceManagerInternal2);
                }
                resourceManagerInternal = f1156i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return resourceManagerInternal;
    }

    /* renamed from: i */
    private Drawable m21399i(@NonNull Context context, long j) {
        synchronized (this) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f1161d.get(context);
            if (longSparseArray == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> g = longSparseArray.m21045g(j);
            if (g != null) {
                Drawable.ConstantState constantState = g.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                longSparseArray.m21039o(j);
            }
            return null;
        }
    }

    /* renamed from: l */
    public static PorterDuffColorFilter m21396l(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (ResourceManagerInternal.class) {
            try {
                PorterDuffColorFilter b = f1157j.m21382b(i, mode);
                porterDuffColorFilter = b;
                if (b == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    f1157j.m21381c(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: n */
    private ColorStateList m21394n(@NonNull Context context, @DrawableRes int i) {
        WeakHashMap<Context, SparseArrayCompat<ColorStateList>> weakHashMap = this.f1158a;
        ColorStateList colorStateList = null;
        if (weakHashMap != null) {
            SparseArrayCompat<ColorStateList> sparseArrayCompat = weakHashMap.get(context);
            colorStateList = null;
            if (sparseArrayCompat != null) {
                colorStateList = sparseArrayCompat.m21000f(i);
            }
        }
        return colorStateList;
    }

    /* renamed from: p */
    private static void m21392p(@NonNull ResourceManagerInternal resourceManagerInternal) {
        if (Build.VERSION.SDK_INT < 24) {
            resourceManagerInternal.m21407a("vector", new VdcInflateDelegate());
            resourceManagerInternal.m21407a("animated-vector", new AvdcInflateDelegate());
            resourceManagerInternal.m21407a("animated-selector", new AsldcInflateDelegate());
        }
    }

    /* renamed from: q */
    private static boolean m21391q(@NonNull Drawable drawable) {
        return (drawable instanceof VectorDrawableCompat) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* renamed from: r */
    private Drawable m21390r(@NonNull Context context, @DrawableRes int i) {
        int next;
        SimpleArrayMap<String, InflateDelegate> simpleArrayMap = this.f1159b;
        if (simpleArrayMap == null || simpleArrayMap.isEmpty()) {
            return null;
        }
        SparseArrayCompat<String> sparseArrayCompat = this.f1160c;
        if (sparseArrayCompat != null) {
            String f = sparseArrayCompat.m21000f(i);
            if ("appcompat_skip_skip".equals(f)) {
                return null;
            }
            if (f != null && this.f1159b.get(f) == null) {
                return null;
            }
        } else {
            this.f1160c = new SparseArrayCompat<>();
        }
        if (this.f1162e == null) {
            this.f1162e = new TypedValue();
        }
        TypedValue typedValue = this.f1162e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long e = m21403e(typedValue);
        Drawable i2 = m21399i(context, e);
        if (i2 != null) {
            return i2;
        }
        CharSequence charSequence = typedValue.string;
        Drawable drawable = i2;
        if (charSequence != null) {
            drawable = i2;
            if (charSequence.toString().endsWith(".xml")) {
                drawable = i2;
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
                        this.f1160c.m21004a(i, name);
                        InflateDelegate inflateDelegate = this.f1159b.get(name);
                        Drawable drawable2 = i2;
                        if (inflateDelegate != null) {
                            drawable2 = inflateDelegate.mo21375a(context, xml, asAttributeSet, context.getTheme());
                        }
                        drawable = drawable2;
                        if (drawable2 != null) {
                            drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                            m21406b(context, e, drawable2);
                            drawable = drawable2;
                        }
                    } else {
                        throw new XmlPullParserException("No start tag found");
                    }
                } catch (Exception e2) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e2);
                }
            }
        }
        if (drawable == null) {
            this.f1160c.m21004a(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    /* renamed from: v */
    private Drawable m21386v(@NonNull Context context, @DrawableRes int i, boolean z, @NonNull Drawable drawable) {
        Drawable drawable2;
        ColorStateList m = m21395m(context, i);
        if (m != null) {
            Drawable drawable3 = drawable;
            if (DrawableUtils.m21505a(drawable)) {
                drawable3 = drawable.mutate();
            }
            Drawable r = DrawableCompat.m19495r(drawable3);
            DrawableCompat.m19498o(r, m);
            PorterDuff.Mode o = m21393o(i);
            drawable2 = r;
            if (o != null) {
                DrawableCompat.m19497p(r, o);
                drawable2 = r;
            }
        } else {
            ResourceManagerHooks resourceManagerHooks = this.f1164g;
            if (resourceManagerHooks == null || !resourceManagerHooks.mo21376e(context, i, drawable)) {
                drawable2 = drawable;
                if (!m21384x(context, i, drawable)) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public static void m21385w(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        if (!DrawableUtils.m21505a(drawable) || drawable.mutate() == drawable) {
            if (tintInfo.f1354d || tintInfo.f1353c) {
                drawable.setColorFilter(m21401g(tintInfo.f1354d ? tintInfo.f1351a : null, tintInfo.f1353c ? tintInfo.f1352b : f1155h, iArr));
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

    /* renamed from: j */
    public Drawable m21398j(@NonNull Context context, @DrawableRes int i) {
        Drawable k;
        synchronized (this) {
            k = m21397k(context, i, false);
        }
        return k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public Drawable m21397k(@NonNull Context context, @DrawableRes int i, boolean z) {
        Drawable drawable;
        synchronized (this) {
            m21404d(context);
            Drawable r = m21390r(context, i);
            Drawable drawable2 = r;
            if (r == null) {
                drawable2 = m21402f(context, i);
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = ContextCompat.m19673f(context, i);
            }
            drawable = drawable3;
            if (drawable3 != null) {
                drawable = m21386v(context, i, z, drawable3);
            }
            if (drawable != null) {
                DrawableUtils.m21504b(drawable);
            }
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public ColorStateList m21395m(@NonNull Context context, @DrawableRes int i) {
        ColorStateList colorStateList;
        synchronized (this) {
            ColorStateList n = m21394n(context, i);
            colorStateList = n;
            if (n == null) {
                ColorStateList d = this.f1164g == null ? null : this.f1164g.mo21377d(context, i);
                colorStateList = d;
                if (d != null) {
                    m21405c(context, i, d);
                    colorStateList = d;
                }
            }
        }
        return colorStateList;
    }

    /* renamed from: o */
    PorterDuff.Mode m21393o(int i) {
        ResourceManagerHooks resourceManagerHooks = this.f1164g;
        return resourceManagerHooks == null ? null : resourceManagerHooks.mo21379b(i);
    }

    /* renamed from: s */
    public void m21389s(@NonNull Context context) {
        synchronized (this) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f1161d.get(context);
            if (longSparseArray != null) {
                longSparseArray.m21049b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public Drawable m21388t(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int i) {
        synchronized (this) {
            Drawable r = m21390r(context, i);
            Drawable drawable = r;
            if (r == null) {
                drawable = vectorEnabledTintResources.m21153d(i);
            }
            if (drawable == null) {
                return null;
            }
            return m21386v(context, i, false, drawable);
        }
    }

    /* renamed from: u */
    public void m21387u(ResourceManagerHooks resourceManagerHooks) {
        synchronized (this) {
            this.f1164g = resourceManagerHooks;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public boolean m21384x(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable) {
        ResourceManagerHooks resourceManagerHooks = this.f1164g;
        return resourceManagerHooks != null && resourceManagerHooks.mo21380a(context, i, drawable);
    }
}
