package p020b.p021a.p028o;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import p020b.p021a.C1423a;
import p020b.p021a.C1424b;
import p020b.p021a.C1426d;
import p020b.p021a.C1432j;
/* renamed from: b.a.o.a */
/* loaded from: classes-dex2jar.jar:b/a/o/a.class */
public class C1454a {

    /* renamed from: a */
    private Context f5833a;

    private C1454a(Context context) {
        this.f5833a = context;
    }

    /* renamed from: b */
    public static C1454a m30053b(Context context) {
        return new C1454a(context);
    }

    /* renamed from: a */
    public boolean m30054a() {
        return this.f5833a.getApplicationInfo().targetSdkVersion < 14;
    }

    /* renamed from: c */
    public int m30052c() {
        return this.f5833a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    /* renamed from: d */
    public int m30051d() {
        Configuration configuration = this.f5833a.getResources().getConfiguration();
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

    /* renamed from: e */
    public int m30050e() {
        return this.f5833a.getResources().getDimensionPixelSize(C1426d.abc_action_bar_stacked_tab_max_width);
    }

    /* renamed from: f */
    public int m30049f() {
        TypedArray obtainStyledAttributes = this.f5833a.obtainStyledAttributes(null, C1432j.ActionBar, C1423a.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C1432j.ActionBar_height, 0);
        Resources resources = this.f5833a.getResources();
        int i = layoutDimension;
        if (!m30048g()) {
            i = Math.min(layoutDimension, resources.getDimensionPixelSize(C1426d.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return i;
    }

    /* renamed from: g */
    public boolean m30048g() {
        return this.f5833a.getResources().getBoolean(C1424b.abc_action_bar_embed_tabs);
    }

    /* renamed from: h */
    public boolean m30047h() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return !ViewConfiguration.get(this.f5833a).hasPermanentMenuKey();
    }
}
