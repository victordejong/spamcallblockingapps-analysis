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
/* renamed from: androidx.appcompat.app.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c.class */
class C0088c {

    /* renamed from: a */
    private static final int[] f255a = {16843531};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c$a.class */
    public static class C0089a {

        /* renamed from: a */
        public Method f256a;

        /* renamed from: b */
        public Method f257b;

        /* renamed from: c */
        public ImageView f258c;

        C0089a(Activity activity) {
            try {
                this.f256a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.f257b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
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
                childAt = childAt.getId() == 16908332 ? viewGroup.getChildAt(1) : childAt;
                if (!(childAt instanceof ImageView)) {
                    return;
                }
                this.f258c = (ImageView) childAt;
            }
        }
    }

    /* renamed from: a */
    public static Drawable m7934a(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(f255a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    /* renamed from: a */
    public static C0089a m7933a(Activity activity, Drawable drawable, int i) {
        C0089a c0089a = new C0089a(activity);
        if (c0089a.f256a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                c0089a.f256a.invoke(actionBar, drawable);
                c0089a.f257b.invoke(actionBar, Integer.valueOf(i));
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set home-as-up indicator via JB-MR2 API", e);
            }
        } else if (c0089a.f258c != null) {
            c0089a.f258c.setImageDrawable(drawable);
        } else {
            Log.w("ActionBarDrawerToggleHC", "Couldn't set home-as-up indicator");
        }
        return c0089a;
    }

    /* renamed from: a */
    public static C0089a m7932a(C0089a c0089a, Activity activity, int i) {
        C0089a c0089a2 = c0089a;
        if (c0089a == null) {
            c0089a2 = new C0089a(activity);
        }
        if (c0089a2.f256a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                c0089a2.f257b.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return c0089a2;
    }
}
