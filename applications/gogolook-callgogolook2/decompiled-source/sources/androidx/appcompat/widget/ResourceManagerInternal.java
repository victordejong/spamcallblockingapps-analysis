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
import androidx.appcompat.resources.C0088R;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal.class */
public final class ResourceManagerInternal {
    public static final boolean DEBUG = false;
    public static ResourceManagerInternal INSTANCE;
    public static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    public static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    public static final String TAG = "ResourceManagerInternal";
    public ArrayMap<String, InflateDelegate> mDelegates;
    public final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap<>(0);
    public boolean mHasCheckedVectorDrawableSetup;
    public ResourceManagerHooks mHooks;
    public SparseArrayCompat<String> mKnownDrawableIdTags;
    public WeakHashMap<Context, SparseArrayCompat<ColorStateList>> mTintLists;
    public TypedValue mTypedValue;
    public static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    public static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6);

    @RequiresApi(11)
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate.class */
    public static class AsldcInflateDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate.class */
    public static class AvdcInflateDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache.class */
    public static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i) {
            super(i);
        }

        public static int generateCacheKey(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        public PorterDuffColorFilter get(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(generateCacheKey(i, mode)));
        }

        public PorterDuffColorFilter put(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(generateCacheKey(i, mode)), porterDuffColorFilter);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$InflateDelegate.class */
    public interface InflateDelegate {
        Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks.class */
    public interface ResourceManagerHooks {
        Drawable createDrawableFor(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, @DrawableRes int i);

        ColorStateList getTintListForDrawableRes(@NonNull Context context, @DrawableRes int i);

        PorterDuff.Mode getTintModeForDrawableRes(int i);

        boolean tintDrawable(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable);

        boolean tintDrawableUsingColorFilter(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate.class */
    public static class VdcInflateDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    private void addDelegate(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates == null) {
            this.mDelegates = new ArrayMap<>();
        }
        this.mDelegates.put(str, inflateDelegate);
    }

    private boolean addDrawableToCache(@NonNull Context context, long j, @NonNull Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return false;
            }
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray2 = longSparseArray;
            if (longSparseArray == null) {
                longSparseArray2 = new LongSparseArray<>();
                this.mDrawableCaches.put(context, longSparseArray2);
            }
            longSparseArray2.put(j, new WeakReference<>(constantState));
            return true;
        }
    }

    private void addTintListToCache(@NonNull Context context, @DrawableRes int i, @NonNull ColorStateList colorStateList) {
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap<>();
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.mTintLists.get(context);
        SparseArrayCompat<ColorStateList> sparseArrayCompat2 = sparseArrayCompat;
        if (sparseArrayCompat == null) {
            sparseArrayCompat2 = new SparseArrayCompat<>();
            this.mTintLists.put(context, sparseArrayCompat2);
        }
        sparseArrayCompat2.append(i, colorStateList);
    }

    public static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private void checkVectorDrawableSetup(@NonNull Context context) {
        if (!this.mHasCheckedVectorDrawableSetup) {
            this.mHasCheckedVectorDrawableSetup = true;
            Drawable drawable = getDrawable(context, C0088R.C0089drawable.abc_vector_test);
            if (drawable == null || !isVectorDrawable(drawable)) {
                this.mHasCheckedVectorDrawableSetup = false;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
    }

    public static long createCacheKey(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private Drawable createDrawableIfNeeded(@NonNull Context context, @DrawableRes int i) {
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        context.getResources().getValue(i, typedValue, true);
        long createCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, createCacheKey);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        Drawable createDrawableFor = resourceManagerHooks == null ? null : resourceManagerHooks.createDrawableFor(this, context, i);
        if (createDrawableFor != null) {
            createDrawableFor.setChangingConfigurations(typedValue.changingConfigurations);
            addDrawableToCache(context, createCacheKey, createDrawableFor);
        }
        return createDrawableFor;
    }

    public static PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static ResourceManagerInternal get() {
        ResourceManagerInternal resourceManagerInternal;
        synchronized (ResourceManagerInternal.class) {
            try {
                if (INSTANCE == null) {
                    INSTANCE = new ResourceManagerInternal();
                    installDefaultInflateDelegates(INSTANCE);
                }
                resourceManagerInternal = INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return resourceManagerInternal;
    }

    private Drawable getCachedDrawable(@NonNull Context context, long j) {
        synchronized (this) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> weakReference = longSparseArray.get(j);
            if (weakReference != null) {
                Drawable.ConstantState constantState = weakReference.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                longSparseArray.delete(j);
            }
            return null;
        }
    }

    public static PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (ResourceManagerInternal.class) {
            try {
                PorterDuffColorFilter porterDuffColorFilter2 = COLOR_FILTER_CACHE.get(i, mode);
                porterDuffColorFilter = porterDuffColorFilter2;
                if (porterDuffColorFilter2 == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    COLOR_FILTER_CACHE.put(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    private ColorStateList getTintListFromCache(@NonNull Context context, @DrawableRes int i) {
        WeakHashMap<Context, SparseArrayCompat<ColorStateList>> weakHashMap = this.mTintLists;
        ColorStateList colorStateList = null;
        if (weakHashMap != null) {
            SparseArrayCompat<ColorStateList> sparseArrayCompat = weakHashMap.get(context);
            colorStateList = null;
            if (sparseArrayCompat != null) {
                colorStateList = sparseArrayCompat.get(i);
            }
        }
        return colorStateList;
    }

    public static void installDefaultInflateDelegates(@NonNull ResourceManagerInternal resourceManagerInternal) {
        if (Build.VERSION.SDK_INT < 24) {
            resourceManagerInternal.addDelegate(VectorDrawableCompat.SHAPE_VECTOR, new VdcInflateDelegate());
            resourceManagerInternal.addDelegate(AnimatedVectorDrawableCompat.ANIMATED_VECTOR, new AvdcInflateDelegate());
            resourceManagerInternal.addDelegate("animated-selector", new AsldcInflateDelegate());
        }
    }

    public static boolean isVectorDrawable(@NonNull Drawable drawable) {
        return (drawable instanceof VectorDrawableCompat) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private Drawable loadDrawableFromDelegates(@NonNull Context context, @DrawableRes int i) {
        int next;
        ArrayMap<String, InflateDelegate> arrayMap = this.mDelegates;
        if (arrayMap == null || arrayMap.isEmpty()) {
            return null;
        }
        SparseArrayCompat<String> sparseArrayCompat = this.mKnownDrawableIdTags;
        if (sparseArrayCompat != null) {
            String str = sparseArrayCompat.get(i);
            if (SKIP_DRAWABLE_TAG.equals(str)) {
                return null;
            }
            if (str != null && this.mDelegates.get(str) == null) {
                return null;
            }
        } else {
            this.mKnownDrawableIdTags = new SparseArrayCompat<>();
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long createCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, createCacheKey);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        CharSequence charSequence = typedValue.string;
        Drawable drawable = cachedDrawable;
        if (charSequence != null) {
            drawable = cachedDrawable;
            if (charSequence.toString().endsWith(ActivityChooserModel.HISTORY_FILE_EXTENSION)) {
                drawable = cachedDrawable;
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
                        this.mKnownDrawableIdTags.append(i, name);
                        InflateDelegate inflateDelegate = this.mDelegates.get(name);
                        Drawable drawable2 = cachedDrawable;
                        if (inflateDelegate != null) {
                            drawable2 = inflateDelegate.createFromXmlInner(context, xml, asAttributeSet, context.getTheme());
                        }
                        drawable = drawable2;
                        if (drawable2 != null) {
                            drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                            addDrawableToCache(context, createCacheKey, drawable2);
                            drawable = drawable2;
                        }
                    } else {
                        throw new XmlPullParserException("No start tag found");
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Exception while inflating drawable", e);
                }
            }
        }
        if (drawable == null) {
            this.mKnownDrawableIdTags.append(i, SKIP_DRAWABLE_TAG);
        }
        return drawable;
    }

    private void removeDelegate(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        ArrayMap<String, InflateDelegate> arrayMap = this.mDelegates;
        if (arrayMap != null && arrayMap.get(str) == inflateDelegate) {
            this.mDelegates.remove(str);
        }
    }

    private Drawable tintDrawable(@NonNull Context context, @DrawableRes int i, boolean z, @NonNull Drawable drawable) {
        Drawable drawable2;
        ColorStateList tintList = getTintList(context, i);
        if (tintList != null) {
            Drawable drawable3 = drawable;
            if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                drawable3 = drawable.mutate();
            }
            Drawable wrap = DrawableCompat.wrap(drawable3);
            DrawableCompat.setTintList(wrap, tintList);
            PorterDuff.Mode tintMode = getTintMode(i);
            drawable2 = wrap;
            if (tintMode != null) {
                DrawableCompat.setTintMode(wrap, tintMode);
                drawable2 = wrap;
            }
        } else {
            ResourceManagerHooks resourceManagerHooks = this.mHooks;
            if (resourceManagerHooks == null || !resourceManagerHooks.tintDrawable(context, i, drawable)) {
                drawable2 = drawable;
                if (!tintDrawableUsingColorFilter(context, i, drawable)) {
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

    public static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        if (!DrawableUtils.canSafelyMutateDrawable(drawable) || drawable.mutate() == drawable) {
            if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
                drawable.setColorFilter(createTintFilter(tintInfo.mHasTintList ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : DEFAULT_MODE, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    public Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        Drawable drawable;
        synchronized (this) {
            drawable = getDrawable(context, i, false);
        }
        return drawable;
    }

    public Drawable getDrawable(@NonNull Context context, @DrawableRes int i, boolean z) {
        Drawable drawable;
        synchronized (this) {
            checkVectorDrawableSetup(context);
            Drawable loadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
            Drawable drawable2 = loadDrawableFromDelegates;
            if (loadDrawableFromDelegates == null) {
                drawable2 = createDrawableIfNeeded(context, i);
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = ContextCompat.getDrawable(context, i);
            }
            drawable = drawable3;
            if (drawable3 != null) {
                drawable = tintDrawable(context, i, z, drawable3);
            }
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
        }
        return drawable;
    }

    public ColorStateList getTintList(@NonNull Context context, @DrawableRes int i) {
        ColorStateList colorStateList;
        synchronized (this) {
            ColorStateList tintListFromCache = getTintListFromCache(context, i);
            colorStateList = tintListFromCache;
            if (tintListFromCache == null) {
                ColorStateList tintListForDrawableRes = this.mHooks == null ? null : this.mHooks.getTintListForDrawableRes(context, i);
                colorStateList = tintListForDrawableRes;
                if (tintListForDrawableRes != null) {
                    addTintListToCache(context, i, tintListForDrawableRes);
                    colorStateList = tintListForDrawableRes;
                }
            }
        }
        return colorStateList;
    }

    public PorterDuff.Mode getTintMode(int i) {
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        return resourceManagerHooks == null ? null : resourceManagerHooks.getTintModeForDrawableRes(i);
    }

    public void onConfigurationChanged(@NonNull Context context) {
        synchronized (this) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray != null) {
                longSparseArray.clear();
            }
        }
    }

    public Drawable onDrawableLoadedFromResources(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int i) {
        synchronized (this) {
            Drawable loadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
            Drawable drawable = loadDrawableFromDelegates;
            if (loadDrawableFromDelegates == null) {
                drawable = vectorEnabledTintResources.superGetDrawable(i);
            }
            if (drawable == null) {
                return null;
            }
            return tintDrawable(context, i, false, drawable);
        }
    }

    public void setHooks(ResourceManagerHooks resourceManagerHooks) {
        synchronized (this) {
            this.mHooks = resourceManagerHooks;
        }
    }

    public boolean tintDrawableUsingColorFilter(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable) {
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        return resourceManagerHooks != null && resourceManagerHooks.tintDrawableUsingColorFilter(context, i, drawable);
    }
}
