package org.bouncycastle.i18n;

import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/i18n/TextBundle.class */
public class TextBundle extends LocalizedMessage {
    public static final String TEXT_ENTRY = "text";

    public TextBundle(String str, String str2) {
        super(str, str2);
    }

    public TextBundle(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    public TextBundle(String str, String str2, String str3, Object[] objArr) {
        super(str, str2, str3, objArr);
    }

    public TextBundle(String str, String str2, Object[] objArr) {
        super(str, str2, objArr);
    }

    public String getText(Locale locale) {
        return getEntry("text", locale, TimeZone.getDefault());
    }

    public String getText(Locale locale, TimeZone timeZone) {
        return getEntry("text", locale, timeZone);
    }
}
