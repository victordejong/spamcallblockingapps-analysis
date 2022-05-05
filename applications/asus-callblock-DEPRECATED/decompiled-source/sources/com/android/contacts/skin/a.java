package com.android.contacts.skin;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.ezmode.h;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/skin/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f2161a = null;

    /* renamed from: b  reason: collision with root package name */
    private static String f2162b = null;
    private static boolean c = false;
    private static boolean d = false;
    private static int[] e = new int[4];

    public static int a(int i) {
        return i >= 4 ? 0 : e[i];
    }

    public static int a(int i, float f) {
        return android.support.v4.a.a.a(i, Math.round(Color.alpha(i) * f));
    }

    public static int a(int i, float f, float f2) {
        Color.colorToHSV(i, r0);
        float[] fArr = {fArr[0] * f, fArr[1] * 1.0f, fArr[2] * f2};
        return Color.HSVToColor(fArr);
    }

    public static Drawable a(Context context, int i, int i2) {
        Drawable b2 = android.support.v4.a.a.a.b(context.getResources().getDrawable(i).mutate());
        android.support.v4.a.a.a.a(b2, i2);
        return b2;
    }

    public static String a() {
        return f2162b;
    }

    public static void a(Context context) {
        f2162b = context.getSharedPreferences("download_theme", 0).getString("theme_package_name", "default");
        Log.d("SkinHelper", "setCurrentThemePackageName:" + f2162b);
    }

    public static void a(Context context, MenuItem menuItem) {
        if (context != null && menuItem != null && menuItem.getIcon() != null) {
            int i = menuItem.isEnabled() ? 2131034418 : 2131034329;
            Drawable b2 = android.support.v4.a.a.a.b(menuItem.getIcon().mutate());
            android.support.v4.a.a.a.a(b2, context.getResources().getColor(i));
            menuItem.setIcon(b2);
        }
    }

    public static void a(Context context, String str) {
        boolean equals = "com.asus.contacts.theme.dark".equals(str);
        boolean isUsingTwoPanes = PhoneCapabilityTester.isUsingTwoPanes(context);
        boolean a2 = h.a(context);
        c = equals && !isUsingTwoPanes && !a2;
        d = "com.asus.themeapp.global".equals(str) && !isUsingTwoPanes && !a2;
        if (equals && isUsingTwoPanes) {
            c = false;
            d = false;
        }
        if (d) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("download_theme", 0);
            for (int i = 1; i <= 4; i++) {
                e[i - 1] = sharedPreferences.getInt("asus_contacts_global_theme_color" + i, 0);
            }
        }
    }

    public static void a(View view, View view2, ImageView imageView, TextView textView, Context context) {
        int i;
        int i2;
        if (c) {
            if (context != null) {
                i = context.getResources().getColor(2131034153);
                i2 = context.getResources().getColor(2131034127);
            }
            i = 0;
            i2 = 0;
        } else {
            if (d) {
                i = a(2);
                i2 = a(3);
            }
            i = 0;
            i2 = 0;
        }
        if (view != null) {
            view.setBackgroundColor(i2);
        }
        if (view2 != null) {
            view2.setBackgroundColor(i2);
        }
        if (!(imageView == null || i == 0)) {
            a(imageView, i);
        }
        if (textView != null && i != 0) {
            textView.setTextColor(i);
        }
    }

    public static void a(Window window) {
        if (Build.VERSION.SDK_INT >= 21) {
            window.addFlags(Integer.MIN_VALUE);
            int a2 = a(0);
            float alpha = Color.alpha(a2) / 255.0f;
            float red = Color.red(a2) / 255.0f;
            float green = Color.green(a2) / 255.0f;
            float blue = Color.blue(a2) / 255.0f;
            float red2 = Color.red(-16777216) / 255.0f;
            float green2 = Color.green(-16777216) / 255.0f;
            float blue2 = Color.blue(-16777216) / 255.0f;
            window.setStatusBarColor(Color.argb((int) (((alpha + 0.15f) - (0.15f * alpha)) * 255.0f), (int) ((Math.min(red, red2) + (red * 0.85f) + ((1.0f - alpha) * red2)) * 255.0f), (int) ((Math.min(green, green2) + (green * 0.85f) + ((1.0f - alpha) * green2)) * 255.0f), (int) ((Math.min(blue, blue2) + ((1.0f - alpha) * blue2) + (blue * 0.85f)) * 255.0f)));
        }
    }

    public static void a(ImageView imageView, int i) {
        if (imageView == null || imageView.getDrawable() == null) {
            Log.d("SkinHelper", "View or Drawable is null");
            return;
        }
        Drawable b2 = android.support.v4.a.a.a.b(imageView.getDrawable().mutate());
        android.support.v4.a.a.a.a(b2, i);
        imageView.setImageDrawable(b2);
    }

    public static void a(String str, Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("download_theme", 0).edit();
        edit.putString("theme_package_name", str);
        edit.commit();
        Log.d("SkinHelper", "setThemePackageName: " + str);
        a(context);
        a(context, f2162b);
    }

    public static void b(Context context) {
        int i = 0;
        synchronized (a.class) {
            try {
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                if (!h.a(context)) {
                    i = defaultSharedPreferences.getInt("theme_id", 0);
                }
                String string = context.getSharedPreferences("download_theme", 0).getString("theme_package_name", null);
                if (string == null) {
                    Log.d("SkinHelper", "checkThemeNow currentTheme: null");
                    if (i == 1) {
                        a("com.asus.contacts.theme.dark", context);
                    } else {
                        a("default", context);
                    }
                } else {
                    Log.d("SkinHelper", "checkThemeNow currentTheme:" + string);
                    if (string.equals("com.asus.contacts.theme.dark")) {
                        a(context, string);
                    } else if (string.equals("com.asus.themeapp.global")) {
                        a(context, string);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean b() {
        return c;
    }

    public static boolean c() {
        return d;
    }

    public static a d() {
        if (f2161a == null) {
            f2161a = new a();
        }
        return f2161a;
    }
}
