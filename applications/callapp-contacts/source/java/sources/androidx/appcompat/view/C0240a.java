package androidx.appcompat.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import androidx.appcompat.C0142a;
/* renamed from: androidx.appcompat.view.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/a.class */
public final class C0240a {

    /* renamed from: a */
    public Context f690a;

    private C0240a(Context context) {
        this.f690a = context;
    }

    /* renamed from: a */
    public static C0240a m46173a(Context context) {
        return new C0240a(context);
    }

    /* renamed from: a */
    public final int m46174a() {
        Configuration configuration = this.f690a.getResources().getConfiguration();
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
    public final boolean m46172b() {
        return this.f690a.getResources().getBoolean(C0142a.C0144b.abc_action_bar_embed_tabs);
    }

    /* renamed from: c */
    public final int m46171c() {
        TypedArray obtainStyledAttributes = this.f690a.obtainStyledAttributes(null, C0142a.C0152j.ActionBar, C0142a.C0143a.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C0142a.C0152j.ActionBar_height, 0);
        Resources resources = this.f690a.getResources();
        int i = layoutDimension;
        if (!m46172b()) {
            i = Math.min(layoutDimension, resources.getDimensionPixelSize(C0142a.C0146d.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return i;
    }

    /* renamed from: d */
    public final boolean m46170d() {
        return this.f690a.getApplicationInfo().targetSdkVersion < 14;
    }

    /* renamed from: e */
    public final int m46169e() {
        return this.f690a.getResources().getDimensionPixelSize(C0142a.C0146d.abc_action_bar_stacked_tab_max_width);
    }
}
