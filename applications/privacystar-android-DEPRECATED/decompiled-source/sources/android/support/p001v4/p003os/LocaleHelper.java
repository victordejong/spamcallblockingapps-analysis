package android.support.p001v4.p003os;

import android.support.annotation.RestrictTo;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.Locale;
import org.apache.commons.cli.HelpFormatter;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v4.os.LocaleHelper */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/LocaleHelper.class */
final class LocaleHelper {
    private LocaleHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Locale forLanguageTag(String str) {
        if (str.contains(HelpFormatter.DEFAULT_OPT_PREFIX)) {
            String[] split = str.split(HelpFormatter.DEFAULT_OPT_PREFIX, -1);
            if (split.length > 2) {
                return new Locale(split[0], split[1], split[2]);
            }
            if (split.length > 1) {
                return new Locale(split[0], split[1]);
            }
            if (split.length == 1) {
                return new Locale(split[0]);
            }
        } else if (!str.contains(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR)) {
            return new Locale(str);
        } else {
            String[] split2 = str.split(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, -1);
            if (split2.length > 2) {
                return new Locale(split2[0], split2[1], split2[2]);
            }
            if (split2.length > 1) {
                return new Locale(split2[0], split2[1]);
            }
            if (split2.length == 1) {
                return new Locale(split2[0]);
            }
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String toLanguageTag(Locale locale) {
        StringBuilder sb = new StringBuilder();
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country != null && !country.isEmpty()) {
            sb.append(HelpFormatter.DEFAULT_OPT_PREFIX);
            sb.append(locale.getCountry());
        }
        return sb.toString();
    }
}
