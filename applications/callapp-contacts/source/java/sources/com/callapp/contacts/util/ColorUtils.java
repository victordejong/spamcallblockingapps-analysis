package com.callapp.contacts.util;

import android.graphics.Color;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ColorUtils.class */
public class ColorUtils {
    /* renamed from: a */
    public static int m27549a(int i, int i2) {
        return Color.argb(i, Color.red(i2), Color.green(i2), Color.blue(i2));
    }

    public static String getRgbRepresentation(int i) {
        return Integer.toHexString(i).substring(2);
    }
}
