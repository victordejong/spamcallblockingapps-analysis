package androidx.appcompat.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import androidx.appcompat.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public Context f729a;

    private a(Context context) {
        this.f729a = context;
    }

    public static a a(Context context) {
        return new a(context);
    }

    public final int a() {
        Configuration configuration = this.f729a.getResources().getConfiguration();
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
        if (i <= 480 || i2 <= 640) {
            return i >= 360 ? 3 : 2;
        }
        return 4;
    }

    public final boolean b() {
        return this.f729a.getResources().getBoolean(a.b.abc_action_bar_embed_tabs);
    }

    public final int c() {
        TypedArray obtainStyledAttributes = this.f729a.obtainStyledAttributes(null, a.j.ActionBar, a.C0018a.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(a.j.ActionBar_height, 0);
        Resources resources = this.f729a.getResources();
        int i = layoutDimension;
        if (!b()) {
            i = Math.min(layoutDimension, resources.getDimensionPixelSize(a.d.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return i;
    }

    public final boolean d() {
        return this.f729a.getApplicationInfo().targetSdkVersion < 14;
    }

    public final int e() {
        return this.f729a.getResources().getDimensionPixelSize(a.d.abc_action_bar_stacked_tab_max_width);
    }
}
