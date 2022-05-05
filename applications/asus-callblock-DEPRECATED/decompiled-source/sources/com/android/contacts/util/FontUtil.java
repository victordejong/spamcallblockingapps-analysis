package com.android.contacts.util;

import android.content.Context;
import android.graphics.Typeface;
import android.util.Log;
import java.util.Hashtable;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/FontUtil.class */
public class FontUtil {
    private static String TAG = "FontUtil";
    private static Hashtable<String, Typeface> fontCache = new Hashtable<>();

    public static Typeface get(String str, Context context) {
        Typeface typeface = fontCache.get(str);
        Typeface typeface2 = typeface;
        if (typeface == null) {
            try {
                typeface2 = Typeface.createFromAsset(context.getAssets(), str);
                fontCache.put(str, typeface2);
            } catch (Exception e) {
                Log.e(TAG, e.toString());
                typeface2 = null;
            }
        }
        return typeface2;
    }
}
