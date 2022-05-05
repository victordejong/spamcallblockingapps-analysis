package androidx.appcompat.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/ActionBarPolicy.class */
public class ActionBarPolicy {

    /* renamed from: a */
    private Context f441a;

    private ActionBarPolicy(Context context) {
        this.f441a = context;
    }

    /* renamed from: b */
    public static ActionBarPolicy m21991b(Context context) {
        return new ActionBarPolicy(context);
    }

    /* renamed from: a */
    public boolean m21992a() {
        return this.f441a.getApplicationInfo().targetSdkVersion < 14;
    }

    /* renamed from: c */
    public int m21990c() {
        return this.f441a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    /* renamed from: d */
    public int m21989d() {
        Configuration configuration = this.f441a.getResources().getConfiguration();
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

    /* renamed from: e */
    public int m21988e() {
        return this.f441a.getResources().getDimensionPixelSize(C0042R.dimen.abc_action_bar_stacked_tab_max_width);
    }

    /* renamed from: f */
    public int m21987f() {
        TypedArray obtainStyledAttributes = this.f441a.obtainStyledAttributes(null, C0042R.styleable.ActionBar, C0042R.attr.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C0042R.styleable.ActionBar_height, 0);
        Resources resources = this.f441a.getResources();
        int i = layoutDimension;
        if (!m21986g()) {
            i = Math.min(layoutDimension, resources.getDimensionPixelSize(C0042R.dimen.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return i;
    }

    /* renamed from: g */
    public boolean m21986g() {
        return this.f441a.getResources().getBoolean(C0042R.bool.abc_action_bar_embed_tabs);
    }

    /* renamed from: h */
    public boolean m21985h() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return !ViewConfiguration.get(this.f441a).hasPermanentMenuKey();
    }
}
