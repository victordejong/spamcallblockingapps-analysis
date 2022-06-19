package androidx.appcompat.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.app.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b.class */
final class C0194b {

    /* renamed from: a */
    private static final int[] f510a = {16843531};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b$a.class */
    public static final class C0195a {

        /* renamed from: a */
        public Method f511a;

        /* renamed from: b */
        public Method f512b;

        /* renamed from: c */
        public ImageView f513c;

        C0195a(Activity activity) {
            try {
                this.f511a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.f512b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException e) {
                View findViewById = activity.findViewById(16908332);
                if (findViewById == null) {
                    return;
                }
                ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                if (viewGroup.getChildCount() != 2) {
                    return;
                }
                View childAt = viewGroup.getChildAt(0);
                View childAt2 = childAt.getId() == 16908332 ? viewGroup.getChildAt(1) : childAt;
                if (!(childAt2 instanceof ImageView)) {
                    return;
                }
                this.f513c = (ImageView) childAt2;
            }
        }
    }

    private C0194b() {
    }

    /* renamed from: a */
    public static Drawable m46302a(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(f510a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    /* renamed from: a */
    public static C0195a m46301a(C0195a c0195a, Activity activity, int i) {
        C0195a c0195a2 = c0195a;
        if (c0195a == null) {
            c0195a2 = new C0195a(activity);
        }
        if (c0195a2.f511a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                c0195a2.f512b.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return c0195a2;
    }
}
