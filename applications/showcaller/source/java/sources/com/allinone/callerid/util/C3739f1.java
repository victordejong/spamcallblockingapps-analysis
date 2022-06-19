package com.allinone.callerid.util;

import android.graphics.Typeface;
import com.allinone.callerid.main.EZCallApplication;
/* renamed from: com.allinone.callerid.util.f1 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/f1.class */
public class C3739f1 {
    /* renamed from: a */
    public static Typeface m24360a() {
        Typeface typeface;
        try {
            typeface = Typeface.createFromAsset(EZCallApplication.m26146c().getAssets(), "Roboto-Medium.ttf");
        } catch (Exception e) {
            e.printStackTrace();
            typeface = null;
        }
        return typeface;
    }

    /* renamed from: b */
    public static Typeface m24359b() {
        Typeface typeface;
        try {
            typeface = Typeface.createFromAsset(EZCallApplication.m26146c().getAssets(), "Roboto-Regular.ttf");
        } catch (Exception e) {
            e.printStackTrace();
            typeface = null;
        }
        return typeface;
    }
}
