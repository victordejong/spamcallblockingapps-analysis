package com.tenor.android.core.constant;

import android.content.Context;
import com.tenor.android.core.C2746R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/constant/ScreenDensity.class */
public class ScreenDensity {
    public static final String SD_075 = "0.75";
    public static final String SD_100 = "1.0";
    public static final String SD_150 = "1.5";
    public static final String SD_200 = "2.0";
    public static final String SD_300 = "3.0";
    public static final String SD_400 = "4.0";
    public static final String UNKNOWN = "0.0";

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3-dex2jar.jar:com/tenor/android/core/constant/ScreenDensity$Value.class */
    public @interface Value {
    }

    @Value
    public static String get(Context context) {
        float f = context.getResources().getDisplayMetrics().density;
        String parse = parse(String.format(Locale.US, f < 1.0f ? "%.2f" : "%.1f", Float.valueOf(f)), UNKNOWN);
        return UNKNOWN.equals(parse) ? parse(context.getResources().getString(C2746R.string.screen_density), SD_300) : parse;
    }

    @Value
    private static String parse(String str, @Value String str2) {
        if (str == null) {
            return UNKNOWN;
        }
        boolean z = true;
        switch (str.hashCode()) {
            case 48563:
                if (str.equals("1.0")) {
                    z = false;
                    break;
                }
                break;
            case 48568:
                if (str.equals(SD_150)) {
                    z = true;
                    break;
                }
                break;
            case 49524:
                if (str.equals(SD_200)) {
                    z = true;
                    break;
                }
                break;
            case 50485:
                if (str.equals(SD_300)) {
                    z = true;
                    break;
                }
                break;
            case 51446:
                if (str.equals(SD_400)) {
                    z = true;
                    break;
                }
                break;
            case 1475932:
                if (str.equals(SD_075)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return "1.0";
            case true:
                return SD_150;
            case true:
                return SD_200;
            case true:
                return SD_300;
            case true:
                return SD_400;
            case true:
                return SD_075;
            default:
                return str2;
        }
    }
}
