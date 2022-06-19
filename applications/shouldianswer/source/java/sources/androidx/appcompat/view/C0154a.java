package androidx.appcompat.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import androidx.appcompat.C0051a;
/* renamed from: androidx.appcompat.view.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/a.class */
public class C0154a {

    /* renamed from: a */
    private Context f524a;

    private C0154a(Context context) {
        this.f524a = context;
    }

    /* renamed from: a */
    public static C0154a m7662a(Context context) {
        return new C0154a(context);
    }

    /* renamed from: a */
    public int m7663a() {
        Configuration configuration = this.f524a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i > 600) {
            return 5;
        }
        if (i > 960 && i2 > 720) {
            return 5;
        }
        if (i > 720 && i2 > 960) {
            return 5;
        }
        if (i >= 500) {
            return 4;
        }
        if (i > 640 && i2 > 480) {
            return 4;
        }
        if (i > 480 && i2 > 640) {
            return 4;
        }
        return i >= 360 ? 3 : 2;
    }

    /* renamed from: b */
    public boolean m7661b() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return !ViewConfiguration.get(this.f524a).hasPermanentMenuKey();
    }

    /* renamed from: c */
    public int m7660c() {
        return this.f524a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    /* renamed from: d */
    public boolean m7659d() {
        return this.f524a.getResources().getBoolean(C0051a.C0053b.abc_action_bar_embed_tabs);
    }

    /* renamed from: e */
    public int m7658e() {
        TypedArray obtainStyledAttributes = this.f524a.obtainStyledAttributes(null, C0051a.C0061j.ActionBar, C0051a.C0052a.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C0051a.C0061j.ActionBar_height, 0);
        Resources resources = this.f524a.getResources();
        int i = layoutDimension;
        if (!m7659d()) {
            i = Math.min(layoutDimension, resources.getDimensionPixelSize(C0051a.C0055d.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return i;
    }

    /* renamed from: f */
    public boolean m7657f() {
        return this.f524a.getApplicationInfo().targetSdkVersion < 14;
    }

    /* renamed from: g */
    public int m7656g() {
        return this.f524a.getResources().getDimensionPixelSize(C0051a.C0055d.abc_action_bar_stacked_tab_max_width);
    }
}
