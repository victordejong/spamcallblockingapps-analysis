package com.rey.material.util;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/rey/material/util/TypefaceUtil.class */
public class TypefaceUtil {
    private static final String PREFIX_ASSET = "asset:";
    private static final HashMap<String, Typeface> sCachedFonts = new HashMap<>();

    private TypefaceUtil() {
    }

    public static Typeface load(Context context, String str, int i) {
        if (str == null || !str.startsWith(PREFIX_ASSET)) {
            return Typeface.create(str, i);
        }
        synchronized (sCachedFonts) {
            try {
                if (!sCachedFonts.containsKey(str)) {
                    Typeface createFromAsset = Typeface.createFromAsset(context.getAssets(), str.substring(PREFIX_ASSET.length()));
                    sCachedFonts.put(str, createFromAsset);
                    return createFromAsset;
                }
                return sCachedFonts.get(str);
            } catch (Exception e) {
                return Typeface.DEFAULT;
            }
        }
    }
}
