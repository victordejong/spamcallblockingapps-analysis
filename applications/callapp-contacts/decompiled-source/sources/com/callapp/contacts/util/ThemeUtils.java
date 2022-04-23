package com.callapp.contacts.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.Window;
import androidx.core.content.b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.ResourceRuntimeReplace.ResourcesMapper;
import com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ThemeUtils.class */
public class ThemeUtils {

    /* renamed from: a  reason: collision with root package name */
    private static ResourcesMapper f15960a;

    /* renamed from: b  reason: collision with root package name */
    private static String f15961b;

    /* renamed from: c  reason: collision with root package name */
    private static String f15962c;

    /* renamed from: d  reason: collision with root package name */
    private static String f15963d;
    private static String e;
    private static String f;
    private static String g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.util.ThemeUtils$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ThemeUtils$3.class */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15965a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:39:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:33:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:47:0x0070). Please submit an issue!!! */
        static {
            int[] iArr = new int[THEME.values().length];
            f15965a = iArr;
            try {
                iArr[THEME.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15965a[THEME.DARK_DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f15965a[THEME.LIGHT_BLUE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f15965a[THEME.DARK_BLUE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f15965a[THEME.LIGHT_GREEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f15965a[THEME.DARK_GREEN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f15965a[THEME.LIGHT_PURPLE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f15965a[THEME.DARK_PURPLE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f15965a[THEME.LIGHT_OCHER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f15965a[THEME.DARK_OCHER.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ThemeUtils$THEME.class */
    public enum THEME {
        LIGHT,
        LIGHT_BLUE,
        LIGHT_GREEN,
        LIGHT_PURPLE,
        LIGHT_OCHER,
        DARK_DEFAULT,
        DARK_BLUE,
        DARK_GREEN,
        DARK_PURPLE,
        DARK_OCHER
    }

    public static int a(int i) {
        return (i & 16777215) - 452984832;
    }

    public static int a(Context context, int i) {
        int color;
        ResourcesMapper resourcesMapper = f15960a;
        return (resourcesMapper == null || (color = resourcesMapper.getColor(i)) == 16777216) ? b.c(context, i) : color;
    }

    public static int a(Context context, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{16842927});
        int i3 = obtainStyledAttributes.getInt(0, i2);
        obtainStyledAttributes.recycle();
        return i3;
    }

    public static SparseIntArray a(final boolean z, int... iArr) {
        if (StringUtils.b((CharSequence) Prefs.dh.get())) {
            ResourcesMapper resourcesMapper = new ResourcesMapper(new ThemeAttributes(z, isBaseTheme()) { // from class: com.callapp.contacts.util.ThemeUtils.2
                private int a(String str, String str2) {
                    if (!z) {
                        str = str2;
                    }
                    return Color.parseColor(str);
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimary() {
                    return a(ThemeUtils.getPrimaryColor(), ThemeUtils.getDarkPrimaryColor());
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimaryDark() {
                    return a(ThemeUtils.getPrimaryColorDark(), ThemeUtils.getDarkPrimaryColorDark());
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimaryLight() {
                    return a(ThemeUtils.getPrimaryColorLight(), ThemeUtils.getDarkPrimaryColorLight());
                }
            });
            SparseIntArray sparseIntArray = new SparseIntArray(iArr.length);
            for (int i : iArr) {
                sparseIntArray.put(i, resourcesMapper.getColor(i));
            }
            return sparseIntArray;
        }
        SparseIntArray sparseIntArray2 = new SparseIntArray(iArr.length);
        for (int i2 : iArr) {
            sparseIntArray2.put(i2, getColor(i2));
        }
        return sparseIntArray2;
    }

    public static void a() {
        if (StringUtils.b((CharSequence) Prefs.dh.get())) {
            f15960a = new ResourcesMapper(new ThemeAttributes(((ThemeState) Prefs.di.get()).isLightTheme(), isBaseTheme()) { // from class: com.callapp.contacts.util.ThemeUtils.1
                private int a(String str, String str2) {
                    if (!isLightTheme()) {
                        str = str2;
                    }
                    return Color.parseColor(str);
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimary() {
                    return a(ThemeUtils.getPrimaryColor(), ThemeUtils.getDarkPrimaryColor());
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimaryDark() {
                    return a(ThemeUtils.getPrimaryColorDark(), ThemeUtils.getDarkPrimaryColorDark());
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimaryLight() {
                    return a(ThemeUtils.getPrimaryColorLight(), ThemeUtils.getDarkPrimaryColorLight());
                }
            });
        }
    }

    public static void a(Activity activity) {
        f15961b = null;
        f15962c = null;
        f15963d = null;
        e = null;
        f = null;
        g = null;
        a();
        EventBusManager.f14368a.a((EventType<L, EventType<ThemeChangedListener, EventBusManager.CallAppDataType>>) ThemeChangedListener.i, (EventType<ThemeChangedListener, EventBusManager.CallAppDataType>) null, false);
        if (activity != null) {
            activity.finish();
        }
    }

    public static void a(Window window, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            window.setStatusBarColor(i);
        }
    }

    public static void a(ThemeState themeState, boolean z) {
        setIsLight((themeState == ThemeState.DARK || themeState == ThemeState.PRIMARYDARK) ? false : true);
        if (z) {
            Prefs.di.set(themeState);
        }
    }

    public static void a(JSONStoreItem jSONStoreItem, boolean z) {
        if (jSONStoreItem != null) {
            Prefs.dh.set(jSONStoreItem.getSku());
            Prefs.di.set(z ? ThemeState.WHITE : ThemeState.DARK);
            JSONStoreItemTheme jSONStoreItemTheme = (JSONStoreItemTheme) jSONStoreItem;
            StoreUtils.setThemeColors(jSONStoreItemTheme.getColorMap());
            a(jSONStoreItemTheme, z);
        }
    }

    public static void a(JSONStoreItemTheme jSONStoreItemTheme, boolean z) {
        if (jSONStoreItemTheme != null) {
            Map<String, String> colorMap = jSONStoreItemTheme.getColorMap();
            if (CollectionUtils.b(colorMap)) {
                String str = colorMap.get(z ? JSONStoreItemTheme.KEY_OVERLAY_COLOR_LIGHT : JSONStoreItemTheme.KEY_OVERLAY_COLOR_DARK);
                if (StringUtils.b((CharSequence) str)) {
                    Prefs.dp.set(str);
                }
            }
        }
    }

    public static boolean a(String str) {
        return StringUtils.b(str, "default_1");
    }

    public static int b(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue.resourceId;
        }
        return 0;
    }

    public static void b() {
        THEME theme = getTheme();
        switch (AnonymousClass3.f15965a[theme.ordinal()]) {
            case 1:
            case 2:
                Prefs.di.set(theme == THEME.LIGHT ? ThemeState.WHITE : ThemeState.DARK);
                Prefs.dh.set("default_1");
                Prefs.dj.set("#0288D1");
                Prefs.dk.set("#98e3f4");
                Prefs.dl.set("#016CA6");
                Prefs.dm.set("#5791aa");
                Prefs.dn.set("#72b0c1");
                Prefs.f364do.set("#325061");
                break;
            case 3:
            case 4:
                Prefs.di.set(theme == THEME.LIGHT_BLUE ? ThemeState.WHITE : ThemeState.DARK);
                Prefs.dh.set("default_2");
                Prefs.dj.set("#0288D1");
                Prefs.dk.set("#98e3f4");
                Prefs.dl.set("#016CA6");
                Prefs.dm.set("#115580");
                Prefs.dn.set("#0288D1");
                Prefs.f364do.set("#016CA6");
                break;
            case 5:
            case 6:
                Prefs.di.set(theme == THEME.LIGHT_GREEN ? ThemeState.WHITE : ThemeState.DARK);
                Prefs.dh.set("default_3");
                Prefs.dj.set("#22B573");
                Prefs.dk.set("#64CB9D");
                Prefs.dl.set("#1C915C");
                Prefs.dm.set("#1C915C");
                Prefs.dn.set("#22B573");
                Prefs.f364do.set("#146E46");
                break;
            case 7:
            case 8:
                Prefs.di.set(theme == THEME.LIGHT_PURPLE ? ThemeState.WHITE : ThemeState.DARK);
                Prefs.dh.set("default_4");
                Prefs.dj.set("#93278F");
                Prefs.dk.set("#BE7DBC");
                Prefs.dl.set("#781F74");
                Prefs.dm.set("#781F74");
                Prefs.dn.set("#93278F");
                Prefs.f364do.set("#571754");
                break;
            case 9:
            case 10:
                Prefs.di.set(theme == THEME.LIGHT_OCHER ? ThemeState.WHITE : ThemeState.DARK);
                Prefs.dh.set("default_5");
                Prefs.dj.set("#F7931E");
                Prefs.dk.set("#FABE78");
                Prefs.dl.set("#C9771B");
                Prefs.dm.set("#C9771B");
                Prefs.dn.set("#F7931E");
                Prefs.f364do.set("#945818");
                break;
        }
        f15961b = null;
        f15962c = null;
        f15963d = null;
        e = null;
        f = null;
        g = null;
    }

    public static boolean b(String str) {
        if (str == null) {
            return false;
        }
        for (Enum r0 : (Enum[]) THEME.class.getEnumConstants()) {
            if (r0.name().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static int c(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{16842901});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static boolean d(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{16843660});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    public static int getCallScreenTransparentTheme() {
        return 2131951883;
    }

    public static int getColor(int i) {
        return a(CallAppApplication.get(), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getDarkPrimaryColor() {
        if (e == null) {
            e = Prefs.dm.get();
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getDarkPrimaryColorDark() {
        if (g == null) {
            g = Prefs.f364do.get();
        }
        return g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getDarkPrimaryColorLight() {
        if (f == null) {
            f = Prefs.dn.get();
        }
        return f;
    }

    public static Drawable getDialogInsetBackgroundDrawable() {
        return getDrawable(2131230989);
    }

    public static Drawable getDialogRoundedBackgroundDrawable() {
        return getDrawable(2131230998);
    }

    public static Drawable getDialogRoundedCenterBackgroundDrawable() {
        return getDrawable(isThemeLight() ? 2131230992 : 2131230991);
    }

    public static Drawable getDrawable(int i) {
        ResourcesMapper resourcesMapper = f15960a;
        int i2 = i;
        if (resourcesMapper != null) {
            int innerDrawableResId = resourcesMapper.getInnerDrawableResId(i);
            i2 = i;
            if (innerDrawableResId != 0) {
                i2 = innerDrawableResId;
            }
        }
        return ViewUtils.getDrawable(i2);
    }

    public static float getFloatValue(int i) {
        TypedValue typedValue = new TypedValue();
        CallAppApplication.get().getResources().getValue(i, typedValue, true);
        return typedValue.getFloat();
    }

    public static int getNoTitleTheme() {
        return 2131951879;
    }

    public static int getNoTitleThemeNoTransitions() {
        return 2131951880;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getPrimaryColor() {
        if (f15961b == null) {
            f15961b = Prefs.dj.get();
        }
        return f15961b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getPrimaryColorDark() {
        if (f15963d == null) {
            f15963d = Prefs.dl.get();
        }
        return f15963d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getPrimaryColorLight() {
        if (f15962c == null) {
            f15962c = Prefs.dk.get();
        }
        return f15962c;
    }

    public static THEME getTheme() {
        return THEME.valueOf(Prefs.dg.get());
    }

    public static String getThemeName() {
        return Prefs.dh.get();
    }

    public static int getThemeStyleResource() {
        return 2131951878;
    }

    public static int getTransparentTheme() {
        return 2131951882;
    }

    private static boolean isBaseTheme() {
        return StringUtils.b(Prefs.dh.get(), "default_1");
    }

    public static boolean isCurrentDefaultTheme() {
        String str = Prefs.dh.get();
        return StringUtils.b(str, "default_1") || StringUtils.a((CharSequence) str);
    }

    public static boolean isThemeLight() {
        ResourcesMapper resourcesMapper = f15960a;
        return resourcesMapper == null || resourcesMapper.isThemeLight();
    }

    public static void setDefaultTheme(JSONStoreItemTheme jSONStoreItemTheme) {
        if (jSONStoreItemTheme != null && CollectionUtils.b(jSONStoreItemTheme.getColorMap())) {
            f15960a = null;
            Prefs.dh.set("default_1");
            Prefs.di.set(ThemeState.WHITE);
            Prefs.dp.set(null);
            StoreUtils.setThemeColors(jSONStoreItemTheme.getColorMap());
            a();
        }
    }

    public static void setIsLight(boolean z) {
        f15960a.setIsLight(z);
    }
}
