package androidx.appcompat.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import androidx.appcompat.C0083a;
/* renamed from: androidx.appcompat.view.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/a.class */
public class C0171a {

    /* renamed from: a */
    private Context f576a;

    private C0171a(Context context) {
        this.f576a = context;
    }

    /* renamed from: a */
    public static C0171a m21993a(Context context) {
        return new C0171a(context);
    }

    /* renamed from: a */
    public int m21994a() {
        Configuration configuration = this.f576a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        return (configuration.smallestScreenWidthDp > 600 || i > 600 || (i > 960 && i2 > 720) || (i > 720 && i2 > 960)) ? 5 : (i >= 500 || (i > 640 && i2 > 480) || (i > 480 && i2 > 640)) ? 4 : i >= 360 ? 3 : 2;
    }

    /* renamed from: b */
    public boolean m21992b() {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 19 && ViewConfiguration.get(this.f576a).hasPermanentMenuKey()) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public int m21991c() {
        return this.f576a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    /* renamed from: d */
    public boolean m21990d() {
        return this.f576a.getResources().getBoolean(C0083a.C0085b.abc_action_bar_embed_tabs);
    }

    /* renamed from: e */
    public int m21989e() {
        TypedArray obtainStyledAttributes = this.f576a.obtainStyledAttributes(null, C0083a.C0093j.ActionBar, C0083a.C0084a.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C0083a.C0093j.ActionBar_height, 0);
        Resources resources = this.f576a.getResources();
        int i = layoutDimension;
        if (!m21990d()) {
            i = Math.min(layoutDimension, resources.getDimensionPixelSize(C0083a.C0087d.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return i;
    }

    /* renamed from: f */
    public boolean m21988f() {
        return this.f576a.getApplicationInfo().targetSdkVersion < 14;
    }

    /* renamed from: g */
    public int m21987g() {
        return this.f576a.getResources().getDimensionPixelSize(C0083a.C0087d.abc_action_bar_stacked_tab_max_width);
    }
}
