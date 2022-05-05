package io.realm.internal.android;

import android.util.Base64;
import io.realm.exceptions.RealmException;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/android/JsonUtils.class */
public class JsonUtils {
    public static Pattern jsonDate = Pattern.compile("/Date\\((\\d*)(?:[+-]\\d*)?\\)/");
    public static Pattern numericOnly = Pattern.compile("-?\\d+");
    public static ParsePosition parsePosition = new ParsePosition(0);

    public static byte[] stringToBytes(String str) {
        return (str == null || str.length() == 0) ? new byte[0] : Base64.decode(str, 0);
    }

    @Nullable
    public static Date stringToDate(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        Matcher matcher = jsonDate.matcher(str);
        if (matcher.find()) {
            return new Date(Long.parseLong(matcher.group(1)));
        }
        if (numericOnly.matcher(str).matches()) {
            try {
                return new Date(Long.parseLong(str));
            } catch (NumberFormatException e) {
                throw new RealmException(e.getMessage(), e);
            }
        } else {
            try {
                parsePosition.setIndex(0);
                return ISO8601Utils.parse(str, parsePosition);
            } catch (ParseException e2) {
                throw new RealmException(e2.getMessage(), e2);
            }
        }
    }
}
