package io.realm.internal.android;

import io.realm.exceptions.RealmException;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/android/JsonUtils.class */
public class JsonUtils {

    /* renamed from: a */
    private static Pattern f20205a = Pattern.compile("/Date\\((\\d*)(?:[+-]\\d*)?\\)/");

    /* renamed from: b */
    private static Pattern f20206b = Pattern.compile("-?\\d+");

    /* renamed from: c */
    private static ParsePosition f20207c = new ParsePosition(0);

    @Nullable
    /* renamed from: a */
    public static Date m2586a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        Matcher matcher = f20205a.matcher(str);
        if (matcher.find()) {
            return new Date(Long.parseLong(matcher.group(1)));
        }
        if (f20206b.matcher(str).matches()) {
            try {
                return new Date(Long.parseLong(str));
            } catch (NumberFormatException e) {
                throw new RealmException(e.getMessage(), e);
            }
        } else {
            try {
                f20207c.setIndex(0);
                return ISO8601Utils.m2588c(str, f20207c);
            } catch (ParseException e2) {
                throw new RealmException(e2.getMessage(), e2);
            }
        }
    }
}
