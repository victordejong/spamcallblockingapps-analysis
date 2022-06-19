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
import androidx.core.content.C0790b;
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

    /* renamed from: a */
    private static ResourcesMapper f27860a;

    /* renamed from: b */
    private static String f27861b;

    /* renamed from: c */
    private static String f27862c;

    /* renamed from: d */
    private static String f27863d;

    /* renamed from: e */
    private static String f27864e;

    /* renamed from: f */
    private static String f27865f;

    /* renamed from: g */
    private static String f27866g;

    /* renamed from: com.callapp.contacts.util.ThemeUtils$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ThemeUtils$3.class */
    public static /* synthetic */ class C78383 {

        /* renamed from: a */
        static final /* synthetic */ int[] f27868a;

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
            f27868a = iArr;
            try {
                iArr[THEME.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f27868a[THEME.DARK_DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f27868a[THEME.LIGHT_BLUE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f27868a[THEME.DARK_BLUE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f27868a[THEME.LIGHT_GREEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f27868a[THEME.DARK_GREEN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f27868a[THEME.LIGHT_PURPLE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f27868a[THEME.DARK_PURPLE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f27868a[THEME.LIGHT_OCHER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f27868a[THEME.DARK_OCHER.ordinal()] = 10;
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

    /* renamed from: a */
    public static int m27388a(int i) {
        return (i & 16777215) - 452984832;
    }

    /* renamed from: a */
    public static int m27386a(Context context, int i) {
        int color;
        ResourcesMapper resourcesMapper = f27860a;
        return (resourcesMapper == null || (color = resourcesMapper.getColor(i)) == 16777216) ? C0790b.m44492c(context, i) : color;
    }

    /* renamed from: a */
    public static int m27385a(Context context, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{16842927});
        int i3 = obtainStyledAttributes.getInt(0, i2);
        obtainStyledAttributes.recycle();
        return i3;
    }

    /* renamed from: a */
    public static SparseIntArray m27379a(final boolean z, int... iArr) {
        if (StringUtils.m26045b((CharSequence) Prefs.f26416dh.get())) {
            ResourcesMapper resourcesMapper = new ResourcesMapper(new ThemeAttributes(z, isBaseTheme()) { // from class: com.callapp.contacts.util.ThemeUtils.2
                /* renamed from: a */
                private int m27366a(String str, String str2) {
                    if (!z) {
                        str = str2;
                    }
                    return Color.parseColor(str);
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimary() {
                    return m27366a(ThemeUtils.getPrimaryColor(), ThemeUtils.getDarkPrimaryColor());
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimaryDark() {
                    return m27366a(ThemeUtils.getPrimaryColorDark(), ThemeUtils.getDarkPrimaryColorDark());
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimaryLight() {
                    return m27366a(ThemeUtils.getPrimaryColorLight(), ThemeUtils.getDarkPrimaryColorLight());
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

    /* renamed from: a */
    public static void m27389a() {
        if (StringUtils.m26045b((CharSequence) Prefs.f26416dh.get())) {
            f27860a = new ResourcesMapper(new ThemeAttributes(((ThemeState) Prefs.f26417di.get()).isLightTheme(), isBaseTheme()) { // from class: com.callapp.contacts.util.ThemeUtils.1
                /* renamed from: a */
                private int m27367a(String str, String str2) {
                    if (!isLightTheme()) {
                        str = str2;
                    }
                    return Color.parseColor(str);
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimary() {
                    return m27367a(ThemeUtils.getPrimaryColor(), ThemeUtils.getDarkPrimaryColor());
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimaryDark() {
                    return m27367a(ThemeUtils.getPrimaryColorDark(), ThemeUtils.getDarkPrimaryColorDark());
                }

                @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
                public final int getColorPrimaryLight() {
                    return m27367a(ThemeUtils.getPrimaryColorLight(), ThemeUtils.getDarkPrimaryColorLight());
                }
            });
        }
    }

    /* renamed from: a */
    public static void m27387a(Activity activity) {
        f27861b = null;
        f27862c = null;
        f27863d = null;
        f27864e = null;
        f27865f = null;
        f27866g = null;
        m27389a();
        EventBusManager.f25138a.m29046a((EventType<L, EventType<ThemeChangedListener, EventBusManager.CallAppDataType>>) ThemeChangedListener.f23141i, (EventType<ThemeChangedListener, EventBusManager.CallAppDataType>) null, false);
        if (activity != null) {
            activity.finish();
        }
    }

    /* renamed from: a */
    public static void m27384a(Window window, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            window.setStatusBarColor(i);
        }
    }

    /* renamed from: a */
    public static void m27383a(ThemeState themeState, boolean z) {
        setIsLight((themeState == ThemeState.DARK || themeState == ThemeState.PRIMARYDARK) ? false : true);
        if (z) {
            Prefs.f26417di.set(themeState);
        }
    }

    /* renamed from: a */
    public static void m27382a(JSONStoreItem jSONStoreItem, boolean z) {
        if (jSONStoreItem != null) {
            Prefs.f26416dh.set(jSONStoreItem.getSku());
            Prefs.f26417di.set(z ? ThemeState.WHITE : ThemeState.DARK);
            JSONStoreItemTheme jSONStoreItemTheme = (JSONStoreItemTheme) jSONStoreItem;
            StoreUtils.setThemeColors(jSONStoreItemTheme.getColorMap());
            m27381a(jSONStoreItemTheme, z);
        }
    }

    /* renamed from: a */
    public static void m27381a(JSONStoreItemTheme jSONStoreItemTheme, boolean z) {
        if (jSONStoreItemTheme != null) {
            Map<String, String> colorMap = jSONStoreItemTheme.getColorMap();
            if (!CollectionUtils.m26067b(colorMap)) {
                return;
            }
            String str = colorMap.get(z ? JSONStoreItemTheme.KEY_OVERLAY_COLOR_LIGHT : JSONStoreItemTheme.KEY_OVERLAY_COLOR_DARK);
            if (!StringUtils.m26045b((CharSequence) str)) {
                return;
            }
            Prefs.f26424dp.set(str);
        }
    }

    /* renamed from: a */
    public static boolean m27380a(String str) {
        return StringUtils.m26042b(str, "default_1");
    }

    /* renamed from: b */
    public static int m27377b(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue.resourceId;
        }
        return 0;
    }

    /* renamed from: b */
    public static void m27378b() {
        THEME theme = getTheme();
        switch (C78383.f27868a[theme.ordinal()]) {
            case 1:
            case 2:
                Prefs.f26417di.set(theme == THEME.LIGHT ? ThemeState.WHITE : ThemeState.DARK);
                Prefs.f26416dh.set("default_1");
                Prefs.f26418dj.set("#0288D1");
                Prefs.f26419dk.set("#98e3f4");
                Prefs.f26420dl.set("#016CA6");
                Prefs.f26421dm.set("#5791aa");
                Prefs.f26422dn.set("#72b0c1");
                Prefs.f26423do.set("#325061");
                break;
            case 3:
            case 4:
                Prefs.f26417di.set(theme == THEME.LIGHT_BLUE ? ThemeState.WHITE : ThemeState.DARK);
                Prefs.f26416dh.set("default_2");
                Prefs.f26418dj.set("#0288D1");
                Prefs.f26419dk.set("#98e3f4");
                Prefs.f26420dl.set("#016CA6");
                Prefs.f26421dm.set("#115580");
                Prefs.f26422dn.set("#0288D1");
                Prefs.f26423do.set("#016CA6");
                break;
            case 5:
            case 6:
                Prefs.f26417di.set(theme == THEME.LIGHT_GREEN ? ThemeState.WHITE : ThemeState.DARK);
                Prefs.f26416dh.set("default_3");
                Prefs.f26418dj.set("#22B573");
                Prefs.f26419dk.set("#64CB9D");
                Prefs.f26420dl.set("#1C915C");
                Prefs.f26421dm.set("#1C915C");
                Prefs.f26422dn.set("#22B573");
                Prefs.f26423do.set("#146E46");
                break;
            case 7:
            case 8:
                Prefs.f26417di.set(theme == THEME.LIGHT_PURPLE ? ThemeState.WHITE : ThemeState.DARK);
                Prefs.f26416dh.set("default_4");
                Prefs.f26418dj.set("#93278F");
                Prefs.f26419dk.set("#BE7DBC");
                Prefs.f26420dl.set("#781F74");
                Prefs.f26421dm.set("#781F74");
                Prefs.f26422dn.set("#93278F");
                Prefs.f26423do.set("#571754");
                break;
            case 9:
            case 10:
                Prefs.f26417di.set(theme == THEME.LIGHT_OCHER ? ThemeState.WHITE : ThemeState.DARK);
                Prefs.f26416dh.set("default_5");
                Prefs.f26418dj.set("#F7931E");
                Prefs.f26419dk.set("#FABE78");
                Prefs.f26420dl.set("#C9771B");
                Prefs.f26421dm.set("#C9771B");
                Prefs.f26422dn.set("#F7931E");
                Prefs.f26423do.set("#945818");
                break;
        }
        f27861b = null;
        f27862c = null;
        f27863d = null;
        f27864e = null;
        f27865f = null;
        f27866g = null;
    }

    /* renamed from: b */
    public static boolean m27376b(String str) {
        if (str != null) {
            for (Enum r0 : (Enum[]) THEME.class.getEnumConstants()) {
                if (r0.name().equals(str)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: c */
    public static int m27374c(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{16842901});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    /* renamed from: d */
    public static boolean m27372d(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{16843660});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    public static int getCallScreenTransparentTheme() {
        return 2131951883;
    }

    public static int getColor(int i) {
        return m27386a(CallAppApplication.get(), i);
    }

    public static String getDarkPrimaryColor() {
        if (f27864e == null) {
            f27864e = Prefs.f26421dm.get();
        }
        return f27864e;
    }

    public static String getDarkPrimaryColorDark() {
        if (f27866g == null) {
            f27866g = Prefs.f26423do.get();
        }
        return f27866g;
    }

    public static String getDarkPrimaryColorLight() {
        if (f27865f == null) {
            f27865f = Prefs.f26422dn.get();
        }
        return f27865f;
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
        ResourcesMapper resourcesMapper = f27860a;
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

    public static String getPrimaryColor() {
        if (f27861b == null) {
            f27861b = Prefs.f26418dj.get();
        }
        return f27861b;
    }

    public static String getPrimaryColorDark() {
        if (f27863d == null) {
            f27863d = Prefs.f26420dl.get();
        }
        return f27863d;
    }

    public static String getPrimaryColorLight() {
        if (f27862c == null) {
            f27862c = Prefs.f26419dk.get();
        }
        return f27862c;
    }

    public static THEME getTheme() {
        return THEME.valueOf(Prefs.f26415dg.get());
    }

    public static String getThemeName() {
        return Prefs.f26416dh.get();
    }

    public static int getThemeStyleResource() {
        return 2131951878;
    }

    public static int getTransparentTheme() {
        return 2131951882;
    }

    private static boolean isBaseTheme() {
        return StringUtils.m26042b(Prefs.f26416dh.get(), "default_1");
    }

    public static boolean isCurrentDefaultTheme() {
        String str = Prefs.f26416dh.get();
        return StringUtils.m26042b(str, "default_1") || StringUtils.m26059a((CharSequence) str);
    }

    public static boolean isThemeLight() {
        ResourcesMapper resourcesMapper = f27860a;
        return resourcesMapper == null || resourcesMapper.isThemeLight();
    }

    public static void setDefaultTheme(JSONStoreItemTheme jSONStoreItemTheme) {
        if (jSONStoreItemTheme == null || !CollectionUtils.m26067b(jSONStoreItemTheme.getColorMap())) {
            return;
        }
        f27860a = null;
        Prefs.f26416dh.set("default_1");
        Prefs.f26417di.set(ThemeState.WHITE);
        Prefs.f26424dp.set(null);
        StoreUtils.setThemeColors(jSONStoreItemTheme.getColorMap());
        m27389a();
    }

    public static void setIsLight(boolean z) {
        f27860a.setIsLight(z);
    }
}
