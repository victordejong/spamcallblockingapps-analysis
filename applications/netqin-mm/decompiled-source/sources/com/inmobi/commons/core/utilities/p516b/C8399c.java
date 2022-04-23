package com.inmobi.commons.core.utilities.p516b;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.widget.TextView;
import com.inmobi.commons.p508a.C8326a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.inmobi.commons.core.utilities.b.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/b/c.class */
public class C8399c {

    /* renamed from: a */
    public static final String f32659a = "c";

    /* renamed from: a */
    public static int m5686a(int i) {
        return Math.round(i * m5687a().f32662c);
    }

    /* renamed from: a */
    public static C8400d m5687a() {
        Context b = C8326a.m5891b();
        if (b == null) {
            return new C8400d(0, 0, 2.0f);
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) b.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        float f = displayMetrics.density;
        return new C8400d(Math.round(displayMetrics.widthPixels / f), Math.round(displayMetrics.heightPixels / f), f);
    }

    /* renamed from: b */
    public static int m5685b() {
        Context b = C8326a.m5891b();
        if (b == null) {
            return 1;
        }
        int rotation = ((WindowManager) b.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = b.getResources().getConfiguration().orientation;
        if (i == 1) {
            return (rotation == 1 || rotation == 2) ? 2 : 1;
        }
        if (i != 2) {
            return 1;
        }
        return (rotation == 0 || rotation == 1) ? 3 : 4;
    }

    /* renamed from: b */
    public static int m5684b(int i) {
        return Math.round(i / m5687a().f32662c);
    }

    /* renamed from: c */
    public static Map<String, String> m5683c() {
        String str;
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("d-device-screen-density", String.valueOf(m5687a().f32662c));
            C8400d a = m5687a();
            hashMap.put("d-device-screen-size", a.f32660a + "X" + a.f32661b);
            Context b = C8326a.m5891b();
            if (b == null) {
                str = "0x0";
            } else {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((WindowManager) b.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                str = displayMetrics.widthPixels + "x" + displayMetrics.heightPixels;
            }
            hashMap.put("d-density-dependent-screen-size", str);
            hashMap.put("d-orientation", String.valueOf(m5685b()));
            hashMap.put("d-textsize", String.valueOf(new TextView(C8326a.m5891b()).getTextSize()));
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in getting display info; ").append(e.getMessage());
        }
        return hashMap;
    }
}
