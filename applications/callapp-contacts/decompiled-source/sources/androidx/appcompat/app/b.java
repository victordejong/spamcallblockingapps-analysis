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
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f644a = {16843531};

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Method f645a;

        /* renamed from: b  reason: collision with root package name */
        public Method f646b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f647c;

        a(Activity activity) {
            try {
                this.f645a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.f646b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException e) {
                View findViewById = activity.findViewById(16908332);
                if (findViewById != null) {
                    ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                    if (viewGroup.getChildCount() == 2) {
                        View childAt = viewGroup.getChildAt(0);
                        r9 = viewGroup.getChildAt(1);
                        View view = childAt;
                        if (childAt.getId() == 16908332) {
                        }
                        if (view instanceof ImageView) {
                            this.f647c = (ImageView) view;
                        }
                    }
                }
            }
        }
    }

    private b() {
    }

    public static Drawable a(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(f644a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    public static a a(a aVar, Activity activity, int i) {
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new a(activity);
        }
        if (aVar2.f645a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                aVar2.f646b.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return aVar2;
    }
}
