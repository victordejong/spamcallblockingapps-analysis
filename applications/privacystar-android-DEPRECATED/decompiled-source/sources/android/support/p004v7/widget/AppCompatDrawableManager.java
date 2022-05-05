package android.support.p004v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.graphics.drawable.AnimatedVectorDrawableCompat;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.graphics.ColorUtils;
import android.support.p001v4.graphics.drawable.DrawableCompat;
import android.support.p001v4.util.ArrayMap;
import android.support.p001v4.util.LongSparseArray;
import android.support.p001v4.util.LruCache;
import android.support.p001v4.util.SparseArrayCompat;
import android.support.p004v7.appcompat.C0479R;
import android.support.p004v7.content.res.AppCompatResources;
import android.support.p004v7.graphics.drawable.AnimatedStateListDrawableCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.AppCompatDrawableManager */
/* loaded from: classes-dex2jar.jar:android/support/v7/widget/AppCompatDrawableManager.class */
public final class AppCompatDrawableManager {
    private static final boolean DEBUG = false;
    private static AppCompatDrawableManager INSTANCE;
    private static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    private static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    private static final String TAG = "AppCompatDrawableManag";
    private ArrayMap<String, InflateDelegate> mDelegates;
    private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap<>(0);
    private boolean mHasCheckedVectorDrawableSetup;
    private SparseArrayCompat<String> mKnownDrawableIdTags;
    private WeakHashMap<Context, SparseArrayCompat<ColorStateList>> mTintLists;
    private TypedValue mTypedValue;
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6);
    private static final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL = {C0479R.C0481drawable.abc_textfield_search_default_mtrl_alpha, C0479R.C0481drawable.abc_textfield_default_mtrl_alpha, C0479R.C0481drawable.abc_ab_share_pack_mtrl_alpha};
    private static final int[] TINT_COLOR_CONTROL_NORMAL = {C0479R.C0481drawable.abc_ic_commit_search_api_mtrl_alpha, C0479R.C0481drawable.abc_seekbar_tick_mark_material, C0479R.C0481drawable.abc_ic_menu_share_mtrl_alpha, C0479R.C0481drawable.abc_ic_menu_copy_mtrl_am_alpha, C0479R.C0481drawable.abc_ic_menu_cut_mtrl_alpha, C0479R.C0481drawable.abc_ic_menu_selectall_mtrl_alpha, C0479R.C0481drawable.abc_ic_menu_paste_mtrl_am_alpha};
    private static final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED = {C0479R.C0481drawable.abc_textfield_activated_mtrl_alpha, C0479R.C0481drawable.abc_textfield_search_activated_mtrl_alpha, C0479R.C0481drawable.abc_cab_background_top_mtrl_alpha, C0479R.C0481drawable.abc_text_cursor_material, C0479R.C0481drawable.abc_text_select_handle_left_mtrl_dark, C0479R.C0481drawable.abc_text_select_handle_middle_mtrl_dark, C0479R.C0481drawable.abc_text_select_handle_right_mtrl_dark, C0479R.C0481drawable.abc_text_select_handle_left_mtrl_light, C0479R.C0481drawable.abc_text_select_handle_middle_mtrl_light, C0479R.C0481drawable.abc_text_select_handle_right_mtrl_light};
    private static final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY = {C0479R.C0481drawable.abc_popup_background_mtrl_mult, C0479R.C0481drawable.abc_cab_background_internal_bg, C0479R.C0481drawable.abc_menu_hardkey_panel_mtrl_mult};
    private static final int[] TINT_COLOR_CONTROL_STATE_LIST = {C0479R.C0481drawable.abc_tab_indicator_material, C0479R.C0481drawable.abc_textfield_search_material};
    private static final int[] TINT_CHECKABLE_BUTTON_LIST = {C0479R.C0481drawable.abc_btn_check_material, C0479R.C0481drawable.abc_btn_radio_material};

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(11)
    /* renamed from: android.support.v7.widget.AppCompatDrawableManager$AsldcInflateDelegate */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/AppCompatDrawableManager$AsldcInflateDelegate.class */
    public static class AsldcInflateDelegate implements InflateDelegate {
        AsldcInflateDelegate() {
        }

        @Override // android.support.p004v7.widget.AppCompatDrawableManager.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v7.widget.AppCompatDrawableManager$AvdcInflateDelegate */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate.class */
    public static class AvdcInflateDelegate implements InflateDelegate {
        AvdcInflateDelegate() {
        }

        @Override // android.support.p004v7.widget.AppCompatDrawableManager.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v7.widget.AppCompatDrawableManager$ColorFilterLruCache */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache.class */
    public static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i) {
            super(i);
        }

        private static int generateCacheKey(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter get(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(generateCacheKey(i, mode)));
        }

        PorterDuffColorFilter put(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(generateCacheKey(i, mode)), porterDuffColorFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v7.widget.AppCompatDrawableManager$InflateDelegate */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/AppCompatDrawableManager$InflateDelegate.class */
    public interface InflateDelegate {
        Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v7.widget.AppCompatDrawableManager$VdcInflateDelegate */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate.class */
    public static class VdcInflateDelegate implements InflateDelegate {
        VdcInflateDelegate() {
        }

        @Override // android.support.p004v7.widget.AppCompatDrawableManager.InflateDelegate
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

    private static boolean arrayContains(int[] iArr, int i) {
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
            Drawable drawable = getDrawable(context, C0479R.C0481drawable.abc_vector_test);
            if (drawable == null || !isVectorDrawable(drawable)) {
                this.mHasCheckedVectorDrawableSetup = false;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
    }

    private ColorStateList createBorderlessButtonColorStateList(@NonNull Context context) {
        return createButtonColorStateList(context, 0);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    private ColorStateList createButtonColorStateList(@NonNull Context context, @ColorInt int i) {
        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, C0479R.C0480attr.colorControlHighlight);
        int disabledThemeAttrColor = ThemeUtils.getDisabledThemeAttrColor(context, C0479R.C0480attr.colorButtonNormal);
        int[] iArr = ThemeUtils.DISABLED_STATE_SET;
        int[] iArr2 = ThemeUtils.PRESSED_STATE_SET;
        int compositeColors = ColorUtils.compositeColors(themeAttrColor, i);
        return new ColorStateList(new int[]{iArr, iArr2, ThemeUtils.FOCUSED_STATE_SET, ThemeUtils.EMPTY_STATE_SET}, new int[]{disabledThemeAttrColor, compositeColors, ColorUtils.compositeColors(themeAttrColor, i), i});
    }

    private static long createCacheKey(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private ColorStateList createColoredButtonColorStateList(@NonNull Context context) {
        return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, C0479R.C0480attr.colorAccent));
    }

    private ColorStateList createDefaultButtonColorStateList(@NonNull Context context) {
        return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, C0479R.C0480attr.colorButtonNormal));
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
        if (i == C0479R.C0481drawable.abc_cab_background_top_material) {
            cachedDrawable = new LayerDrawable(new Drawable[]{getDrawable(context, C0479R.C0481drawable.abc_cab_background_internal_bg), getDrawable(context, C0479R.C0481drawable.abc_cab_background_top_mtrl_alpha)});
        }
        if (cachedDrawable != null) {
            cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            addDrawableToCache(context, createCacheKey, cachedDrawable);
        }
        return cachedDrawable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int[], int[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.content.res.ColorStateList createSwitchThumbColorStateList(android.content.Context r7) {
        /*
            r6 = this;
            r0 = 3
            int[] r0 = new int[r0]
            r8 = r0
            r0 = 3
            int[] r0 = new int[r0]
            r9 = r0
            r0 = r7
            int r1 = android.support.p004v7.appcompat.C0479R.C0480attr.colorSwitchThumbNormal
            android.content.res.ColorStateList r0 = android.support.p004v7.widget.ThemeUtils.getThemeAttrColorStateList(r0, r1)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0052
            r0 = r10
            boolean r0 = r0.isStateful()
            if (r0 == 0) goto L_0x0052
            r0 = r8
            r1 = 0
            int[] r2 = android.support.p004v7.widget.ThemeUtils.DISABLED_STATE_SET
            r0[r1] = r2
            r0 = r9
            r1 = 0
            r2 = r10
            r3 = r8
            r4 = 0
            r3 = r3[r4]
            r4 = 0
            int r2 = r2.getColorForState(r3, r4)
            r0[r1] = r2
            r0 = r8
            r1 = 1
            int[] r2 = android.support.p004v7.widget.ThemeUtils.CHECKED_STATE_SET
            r0[r1] = r2
            r0 = r9
            r1 = 1
            r2 = r7
            int r3 = android.support.p004v7.appcompat.C0479R.C0480attr.colorControlActivated
            int r2 = android.support.p004v7.widget.ThemeUtils.getThemeAttrColor(r2, r3)
            r0[r1] = r2
            r0 = r8
            r1 = 2
            int[] r2 = android.support.p004v7.widget.ThemeUtils.EMPTY_STATE_SET
            r0[r1] = r2
            r0 = r9
            r1 = 2
            r2 = r10
            int r2 = r2.getDefaultColor()
            r0[r1] = r2
            goto L_0x0082
        L_0x0052:
            r0 = r8
            r1 = 0
            int[] r2 = android.support.p004v7.widget.ThemeUtils.DISABLED_STATE_SET
            r0[r1] = r2
            r0 = r9
            r1 = 0
            r2 = r7
            int r3 = android.support.p004v7.appcompat.C0479R.C0480attr.colorSwitchThumbNormal
            int r2 = android.support.p004v7.widget.ThemeUtils.getDisabledThemeAttrColor(r2, r3)
            r0[r1] = r2
            r0 = r8
            r1 = 1
            int[] r2 = android.support.p004v7.widget.ThemeUtils.CHECKED_STATE_SET
            r0[r1] = r2
            r0 = r9
            r1 = 1
            r2 = r7
            int r3 = android.support.p004v7.appcompat.C0479R.C0480attr.colorControlActivated
            int r2 = android.support.p004v7.widget.ThemeUtils.getThemeAttrColor(r2, r3)
            r0[r1] = r2
            r0 = r8
            r1 = 2
            int[] r2 = android.support.p004v7.widget.ThemeUtils.EMPTY_STATE_SET
            r0[r1] = r2
            r0 = r9
            r1 = 2
            r2 = r7
            int r3 = android.support.p004v7.appcompat.C0479R.C0480attr.colorSwitchThumbNormal
            int r2 = android.support.p004v7.widget.ThemeUtils.getThemeAttrColor(r2, r3)
            r0[r1] = r2
        L_0x0082:
            android.content.res.ColorStateList r0 = new android.content.res.ColorStateList
            r1 = r0
            r2 = r8
            r3 = r9
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p004v7.widget.AppCompatDrawableManager.createSwitchThumbColorStateList(android.content.Context):android.content.res.ColorStateList");
    }

    private static PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static AppCompatDrawableManager get() {
        AppCompatDrawableManager appCompatDrawableManager;
        synchronized (AppCompatDrawableManager.class) {
            try {
                if (INSTANCE == null) {
                    INSTANCE = new AppCompatDrawableManager();
                    installDefaultInflateDelegates(INSTANCE);
                }
                appCompatDrawableManager = INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return appCompatDrawableManager;
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
        synchronized (AppCompatDrawableManager.class) {
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
        ColorStateList colorStateList = null;
        if (this.mTintLists == null) {
            return null;
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.mTintLists.get(context);
        if (sparseArrayCompat != null) {
            colorStateList = sparseArrayCompat.get(i);
        }
        return colorStateList;
    }

    static PorterDuff.Mode getTintMode(int i) {
        return i == C0479R.C0481drawable.abc_switch_thumb_material ? PorterDuff.Mode.MULTIPLY : null;
    }

    private static void installDefaultInflateDelegates(@NonNull AppCompatDrawableManager appCompatDrawableManager) {
        if (Build.VERSION.SDK_INT < 24) {
            appCompatDrawableManager.addDelegate("vector", new VdcInflateDelegate());
            appCompatDrawableManager.addDelegate("animated-vector", new AvdcInflateDelegate());
            appCompatDrawableManager.addDelegate("animated-selector", new AsldcInflateDelegate());
        }
    }

    private static boolean isVectorDrawable(@NonNull Drawable drawable) {
        return (drawable instanceof VectorDrawableCompat) || PLATFORM_VD_CLAZZ.equals(drawable.getClass().getName());
    }

    private Drawable loadDrawableFromDelegates(@NonNull Context context, @DrawableRes int i) {
        int next;
        if (this.mDelegates == null || this.mDelegates.isEmpty()) {
            return null;
        }
        if (this.mKnownDrawableIdTags != null) {
            String str = this.mKnownDrawableIdTags.get(i);
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
        Drawable drawable = cachedDrawable;
        if (typedValue.string != null) {
            drawable = cachedDrawable;
            if (typedValue.string.toString().endsWith(".xml")) {
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
                    if (next != 2) {
                        throw new XmlPullParserException("No start tag found");
                    }
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
        if (this.mDelegates != null && this.mDelegates.get(str) == inflateDelegate) {
            this.mDelegates.remove(str);
        }
    }

    private static void setPorterDuffColorFilter(Drawable drawable, int i, PorterDuff.Mode mode) {
        Drawable drawable2 = drawable;
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable2 = drawable.mutate();
        }
        PorterDuff.Mode mode2 = mode;
        if (mode == null) {
            mode2 = DEFAULT_MODE;
        }
        drawable2.setColorFilter(getPorterDuffColorFilter(i, mode2));
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
        } else if (i == C0479R.C0481drawable.abc_seekbar_track_material) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908288), ThemeUtils.getThemeAttrColor(context, C0479R.C0480attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, C0479R.C0480attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, C0479R.C0480attr.colorControlActivated), DEFAULT_MODE);
            drawable2 = drawable;
        } else if (i == C0479R.C0481drawable.abc_ratingbar_material || i == C0479R.C0481drawable.abc_ratingbar_indicator_material || i == C0479R.C0481drawable.abc_ratingbar_small_material) {
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(16908288), ThemeUtils.getDisabledThemeAttrColor(context, C0479R.C0480attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, C0479R.C0480attr.colorControlActivated), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, C0479R.C0480attr.colorControlActivated), DEFAULT_MODE);
            drawable2 = drawable;
        } else {
            drawable2 = drawable;
            if (!tintDrawableUsingColorFilter(context, i, drawable)) {
                drawable2 = drawable;
                if (z) {
                    drawable2 = null;
                }
            }
        }
        return drawable2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        if (!DrawableUtils.canSafelyMutateDrawable(drawable) || drawable.mutate() == drawable) {
            if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
                drawable.setColorFilter(createTintFilter(tintInfo.mHasTintList ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : DEFAULT_MODE, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
                return;
            }
            return;
        }
        Log.d(TAG, "Mutated drawable is not the same instance as the input.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a9 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean tintDrawableUsingColorFilter(@android.support.annotation.NonNull android.content.Context r4, @android.support.annotation.DrawableRes int r5, @android.support.annotation.NonNull android.graphics.drawable.Drawable r6) {
        /*
            android.graphics.PorterDuff$Mode r0 = android.support.p004v7.widget.AppCompatDrawableManager.DEFAULT_MODE
            r7 = r0
            int[] r0 = android.support.p004v7.widget.AppCompatDrawableManager.COLORFILTER_TINT_COLOR_CONTROL_NORMAL
            r1 = r5
            boolean r0 = arrayContains(r0, r1)
            r8 = r0
            r0 = 16842801(0x1010031, float:2.3693695E-38)
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0024
            int r0 = android.support.p004v7.appcompat.C0479R.C0480attr.colorControlNormal
            r5 = r0
        L_0x001b:
            r0 = 1
            r10 = r0
            r0 = -1
            r9 = r0
            goto L_0x0077
        L_0x0024:
            int[] r0 = android.support.p004v7.widget.AppCompatDrawableManager.COLORFILTER_COLOR_CONTROL_ACTIVATED
            r1 = r5
            boolean r0 = arrayContains(r0, r1)
            if (r0 == 0) goto L_0x0035
            int r0 = android.support.p004v7.appcompat.C0479R.C0480attr.colorControlActivated
            r5 = r0
            goto L_0x001b
        L_0x0035:
            int[] r0 = android.support.p004v7.widget.AppCompatDrawableManager.COLORFILTER_COLOR_BACKGROUND_MULTIPLY
            r1 = r5
            boolean r0 = arrayContains(r0, r1)
            if (r0 == 0) goto L_0x0049
            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            r7 = r0
            r0 = r9
            r5 = r0
            goto L_0x001b
        L_0x0049:
            r0 = r5
            int r1 = android.support.p004v7.appcompat.C0479R.C0481drawable.abc_list_divider_mtrl_alpha
            if (r0 != r1) goto L_0x0062
            r0 = 16842800(0x1010030, float:2.3693693E-38)
            r5 = r0
            r0 = 1109603123(0x42233333, float:40.8)
            int r0 = java.lang.Math.round(r0)
            r9 = r0
            r0 = 1
            r10 = r0
            goto L_0x0077
        L_0x0062:
            r0 = r5
            int r1 = android.support.p004v7.appcompat.C0479R.C0481drawable.abc_dialog_material_background
            if (r0 != r1) goto L_0x006f
            r0 = r9
            r5 = r0
            goto L_0x001b
        L_0x006f:
            r0 = 0
            r10 = r0
            r0 = -1
            r9 = r0
            r0 = 0
            r5 = r0
        L_0x0077:
            r0 = r10
            if (r0 == 0) goto L_0x00a9
            r0 = r6
            r11 = r0
            r0 = r6
            boolean r0 = android.support.p004v7.widget.DrawableUtils.canSafelyMutateDrawable(r0)
            if (r0 == 0) goto L_0x008c
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r11 = r0
        L_0x008c:
            r0 = r11
            r1 = r4
            r2 = r5
            int r1 = android.support.p004v7.widget.ThemeUtils.getThemeAttrColor(r1, r2)
            r2 = r7
            android.graphics.PorterDuffColorFilter r1 = getPorterDuffColorFilter(r1, r2)
            r0.setColorFilter(r1)
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x00a7
            r0 = r11
            r1 = r9
            r0.setAlpha(r1)
        L_0x00a7:
            r0 = 1
            return r0
        L_0x00a9:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p004v7.widget.AppCompatDrawableManager.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }

    public Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        Drawable drawable;
        synchronized (this) {
            drawable = getDrawable(context, i, false);
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getTintList(@NonNull Context context, @DrawableRes int i) {
        ColorStateList colorStateList;
        synchronized (this) {
            ColorStateList tintListFromCache = getTintListFromCache(context, i);
            colorStateList = tintListFromCache;
            if (tintListFromCache == null) {
                if (i == C0479R.C0481drawable.abc_edit_text_material) {
                    tintListFromCache = AppCompatResources.getColorStateList(context, C0479R.color.abc_tint_edittext);
                } else if (i == C0479R.C0481drawable.abc_switch_track_mtrl_alpha) {
                    tintListFromCache = AppCompatResources.getColorStateList(context, C0479R.color.abc_tint_switch_track);
                } else if (i == C0479R.C0481drawable.abc_switch_thumb_material) {
                    tintListFromCache = createSwitchThumbColorStateList(context);
                } else if (i == C0479R.C0481drawable.abc_btn_default_mtrl_shape) {
                    tintListFromCache = createDefaultButtonColorStateList(context);
                } else if (i == C0479R.C0481drawable.abc_btn_borderless_material) {
                    tintListFromCache = createBorderlessButtonColorStateList(context);
                } else if (i == C0479R.C0481drawable.abc_btn_colored_material) {
                    tintListFromCache = createColoredButtonColorStateList(context);
                } else {
                    if (!(i == C0479R.C0481drawable.abc_spinner_mtrl_am_alpha || i == C0479R.C0481drawable.abc_spinner_textfield_background_material)) {
                        if (arrayContains(TINT_COLOR_CONTROL_NORMAL, i)) {
                            tintListFromCache = ThemeUtils.getThemeAttrColorStateList(context, C0479R.C0480attr.colorControlNormal);
                        } else if (arrayContains(TINT_COLOR_CONTROL_STATE_LIST, i)) {
                            tintListFromCache = AppCompatResources.getColorStateList(context, C0479R.color.abc_tint_default);
                        } else if (arrayContains(TINT_CHECKABLE_BUTTON_LIST, i)) {
                            tintListFromCache = AppCompatResources.getColorStateList(context, C0479R.color.abc_tint_btn_checkable);
                        } else if (i == C0479R.C0481drawable.abc_seekbar_thumb_material) {
                            tintListFromCache = AppCompatResources.getColorStateList(context, C0479R.color.abc_tint_seek_thumb);
                        }
                    }
                    tintListFromCache = AppCompatResources.getColorStateList(context, C0479R.color.abc_tint_spinner);
                }
                colorStateList = tintListFromCache;
                if (tintListFromCache != null) {
                    addTintListToCache(context, i, tintListFromCache);
                    colorStateList = tintListFromCache;
                }
            }
        }
        return colorStateList;
    }

    public void onConfigurationChanged(@NonNull Context context) {
        synchronized (this) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray != null) {
                longSparseArray.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
}
