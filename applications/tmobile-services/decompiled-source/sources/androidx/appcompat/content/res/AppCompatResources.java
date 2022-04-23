package androidx.appcompat.content.res;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ColorStateListInflaterCompat;
import java.util.WeakHashMap;
@SuppressLint({"RestrictedAPI"})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/content/res/AppCompatResources.class */
public final class AppCompatResources {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f355a = new ThreadLocal<>();

    /* renamed from: b */
    private static final WeakHashMap<Context, SparseArray<ColorStateListCacheEntry>> f356b = new WeakHashMap<>(0);

    /* renamed from: c */
    private static final Object f357c = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry.class */
    public static class ColorStateListCacheEntry {

        /* renamed from: a */
        final ColorStateList f358a;

        /* renamed from: b */
        final Configuration f359b;

        ColorStateListCacheEntry(@NonNull ColorStateList colorStateList, @NonNull Configuration configuration) {
            this.f358a = colorStateList;
            this.f359b = configuration;
        }
    }

    private AppCompatResources() {
    }

    /* renamed from: a */
    private static void m22072a(@NonNull Context context, @ColorRes int i, @NonNull ColorStateList colorStateList) {
        synchronized (f357c) {
            SparseArray<ColorStateListCacheEntry> sparseArray = f356b.get(context);
            SparseArray<ColorStateListCacheEntry> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
                f356b.put(context, sparseArray2);
            }
            sparseArray2.append(i, new ColorStateListCacheEntry(colorStateList, context.getResources().getConfiguration()));
        }
    }

    @Nullable
    /* renamed from: b */
    private static ColorStateList m22071b(@NonNull Context context, @ColorRes int i) {
        ColorStateListCacheEntry colorStateListCacheEntry;
        synchronized (f357c) {
            SparseArray<ColorStateListCacheEntry> sparseArray = f356b.get(context);
            if (!(sparseArray == null || sparseArray.size() <= 0 || (colorStateListCacheEntry = sparseArray.get(i)) == null)) {
                if (colorStateListCacheEntry.f359b.equals(context.getResources().getConfiguration())) {
                    return colorStateListCacheEntry.f358a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    /* renamed from: c */
    public static ColorStateList m22070c(@NonNull Context context, @ColorRes int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList b = m22071b(context, i);
        if (b != null) {
            return b;
        }
        ColorStateList f = m22067f(context, i);
        if (f == null) {
            return ContextCompat.m19674e(context, i);
        }
        m22072a(context, i, f);
        return f;
    }

    @Nullable
    /* renamed from: d */
    public static Drawable m22069d(@NonNull Context context, @DrawableRes int i) {
        return ResourceManagerInternal.m21400h().m21398j(context, i);
    }

    @NonNull
    /* renamed from: e */
    private static TypedValue m22068e() {
        TypedValue typedValue = f355a.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            f355a.set(typedValue2);
        }
        return typedValue2;
    }

    @Nullable
    /* renamed from: f */
    private static ColorStateList m22067f(Context context, int i) {
        if (m22066g(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return ColorStateListInflaterCompat.m19656a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* renamed from: g */
    private static boolean m22066g(@NonNull Context context, @ColorRes int i) {
        Resources resources = context.getResources();
        TypedValue e = m22068e();
        boolean z = true;
        resources.getValue(i, e, true);
        int i2 = e.type;
        if (i2 < 28 || i2 > 31) {
            z = false;
        }
        return z;
    }
}
