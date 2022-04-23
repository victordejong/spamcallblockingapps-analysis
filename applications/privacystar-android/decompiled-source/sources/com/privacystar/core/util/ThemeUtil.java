package com.privacystar.core.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.AttrRes;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.util.TypedValue;
import com.privacystar.core.C1566R;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.enums.CarrierMobileCode;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/ThemeUtil.class */
public class ThemeUtil {
    public static CarrierMobileCode carrierCode = CarrierMobileCode.Companion.fromId(PreferenceUtil.getCarrierId());
    @StyleRes
    public static int activeTheme = CarrierMobileCode.Companion.fromId(PreferenceUtil.getCarrierId()).getStyle();

    /* renamed from: com.privacystar.core.util.ThemeUtil$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/ThemeUtil$1.class */
    static /* synthetic */ class C16791 {
        static final /* synthetic */ int[] $SwitchMap$com$privacystar$core$util$enums$CarrierMobileCode = new int[CarrierMobileCode.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$privacystar$core$util$enums$CarrierMobileCode[CarrierMobileCode.BOOST_MOBILE1.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$enums$CarrierMobileCode[CarrierMobileCode.BOOST_MOBILE2.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$enums$CarrierMobileCode[CarrierMobileCode.BOOST_MOBILE3.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$enums$CarrierMobileCode[CarrierMobileCode.SPRINT_PREPAID.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$enums$CarrierMobileCode[CarrierMobileCode.VIRGIN_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$enums$CarrierMobileCode[CarrierMobileCode.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    private static void changeTheme(Activity activity, @StyleRes int i) {
        activeTheme = i;
        activity.finish();
        activity.startActivity(new Intent(activity, activity.getClass()));
        activity.overridePendingTransition(17432576, 17432577);
    }

    public static void changeTheme(Activity activity, CarrierMobileCode carrierMobileCode) {
        carrierCode = carrierMobileCode;
        changeTheme(activity, carrierMobileCode.getStyle());
    }

    @StringRes
    public static int getCarrierDisplayRes() {
        return CarrierMobileCode.Companion.fromId(PreferenceUtil.getCarrierId()).getDisplayText();
    }

    public static String getCarrierDisplayString(@NonNull Context context) {
        return context.getResources().getString(getCarrierDisplayRes());
    }

    @DrawableRes
    public static int getThemeButtonGradient(Context context) {
        if (!BuildUtil.INSTANCE.doesVariantHaveThemes(context)) {
            return C1566R.C1568drawable.button_gradient_default;
        }
        switch (C16791.$SwitchMap$com$privacystar$core$util$enums$CarrierMobileCode[carrierCode.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return C1566R.C1568drawable.button_gradient_boost;
            case 4:
                return C1566R.C1568drawable.button_gradient_sprint;
            case 5:
                return C1566R.C1568drawable.button_gradient_virgin;
            default:
                return C1566R.C1568drawable.button_gradient_default;
        }
    }

    public static void onActivityOnCreateSetTheme(Activity activity) {
        activity.setTheme(activeTheme);
    }

    public static String populateStringWithCarrier(@NonNull Context context, @StringRes int i) {
        return context.getResources().getString(i, getCarrierDisplayString(context));
    }

    @ColorInt
    public static int resolveAttributeColor(@NonNull Context context, @AttrRes int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.data;
    }
}
