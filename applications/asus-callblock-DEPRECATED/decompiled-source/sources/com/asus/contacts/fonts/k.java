package com.asus.contacts.fonts;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.util.Log;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/k.class */
public final class k {
    public static Typeface a(AssetManager assetManager, String str) {
        Typeface typeface = null;
        try {
            typeface = Typeface.createFromAsset(assetManager, str);
        } catch (Exception e) {
            Log.w("FontUtils", "[createTypefaceFromAssetSafely] failed, path: " + str);
        }
        return typeface;
    }

    public static Typeface a(File file) {
        Typeface typeface = null;
        try {
            typeface = Typeface.createFromFile(file);
        } catch (Exception e) {
            Log.w("FontUtils", "[createTypefaceFromFileSafely] failed, file: " + file);
        }
        return typeface;
    }

    public static Typeface a(String str) {
        Typeface typeface = null;
        try {
            typeface = Typeface.createFromFile(str);
        } catch (Exception e) {
            Log.w("FontUtils", "[createTypefaceFromFileSafely] failed, path: " + str);
        }
        return typeface;
    }
}
