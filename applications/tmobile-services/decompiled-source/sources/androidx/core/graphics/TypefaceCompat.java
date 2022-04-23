package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.provider.FontsContractCompat;
import org.apache.commons.cli.HelpFormatter;
@SuppressLint({"NewApi"})
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/TypefaceCompat.class */
public class TypefaceCompat {

    /* renamed from: a */
    private static final TypefaceCompatBaseImpl f3028a;

    /* renamed from: b */
    private static final LruCache<String, Typeface> f3029b;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f3028a = new TypefaceCompatApi29Impl();
        } else if (i >= 28) {
            f3028a = new TypefaceCompatApi28Impl();
        } else if (i >= 26) {
            f3028a = new TypefaceCompatApi26Impl();
        } else if (i >= 24 && TypefaceCompatApi24Impl.m19551m()) {
            f3028a = new TypefaceCompatApi24Impl();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f3028a = new TypefaceCompatApi21Impl();
        } else {
            f3028a = new TypefaceCompatBaseImpl();
        }
        f3029b = new LruCache<>(16);
    }

    private TypefaceCompat() {
    }

    @NonNull
    /* renamed from: a */
    public static Typeface m19565a(@NonNull Context context, @Nullable Typeface typeface, int i) {
        Typeface g;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (g = m19559g(context, typeface, i)) == null) ? Typeface.create(typeface, i) : g;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    @Nullable
    @RestrictTo
    /* renamed from: b */
    public static Typeface m19564b(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        return f3028a.mo19533c(context, cancellationSignal, fontInfoArr, i);
    }

    @Nullable
    @RestrictTo
    /* renamed from: c */
    public static Typeface m19563c(@NonNull Context context, @NonNull FontResourcesParserCompat.FamilyResourceEntry familyResourceEntry, @NonNull Resources resources, int i, int i2, @Nullable ResourcesCompat.FontCallback fontCallback, @Nullable Handler handler, boolean z) {
        Typeface typeface;
        if (familyResourceEntry instanceof FontResourcesParserCompat.ProviderResourceEntry) {
            FontResourcesParserCompat.ProviderResourceEntry providerResourceEntry = (FontResourcesParserCompat.ProviderResourceEntry) familyResourceEntry;
            boolean z2 = false;
            if (!z ? fontCallback == null : providerResourceEntry.m19623a() == 0) {
                z2 = true;
            }
            typeface = FontsContractCompat.m19422h(context, providerResourceEntry.m19622b(), fontCallback, handler, z2, z ? providerResourceEntry.m19621c() : -1, i2);
        } else {
            Typeface b = f3028a.mo19534b(context, (FontResourcesParserCompat.FontFamilyFilesResourceEntry) familyResourceEntry, resources, i2);
            typeface = b;
            if (fontCallback != null) {
                if (b != null) {
                    fontCallback.m19606b(b, handler);
                    typeface = b;
                } else {
                    fontCallback.m19607a(-3, handler);
                    typeface = b;
                }
            }
        }
        if (typeface != null) {
            f3029b.put(m19561e(resources, i, i2), typeface);
        }
        return typeface;
    }

    @Nullable
    @RestrictTo
    /* renamed from: d */
    public static Typeface m19562d(@NonNull Context context, @NonNull Resources resources, int i, String str, int i2) {
        Typeface e = f3028a.mo19531e(context, resources, i, str, i2);
        if (e != null) {
            f3029b.put(m19561e(resources, i, i2), e);
        }
        return e;
    }

    /* renamed from: e */
    private static String m19561e(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + HelpFormatter.DEFAULT_OPT_PREFIX + i + HelpFormatter.DEFAULT_OPT_PREFIX + i2;
    }

    @Nullable
    @RestrictTo
    /* renamed from: f */
    public static Typeface m19560f(@NonNull Resources resources, int i, int i2) {
        return f3029b.get(m19561e(resources, i, i2));
    }

    @Nullable
    /* renamed from: g */
    private static Typeface m19559g(Context context, Typeface typeface, int i) {
        FontResourcesParserCompat.FontFamilyFilesResourceEntry i2 = f3028a.m19527i(typeface);
        if (i2 == null) {
            return null;
        }
        return f3028a.mo19534b(context, i2, context.getResources(), i);
    }
}
