package androidx.appcompat.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.legacy.app.ActionBarDrawerToggle;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBarDrawerToggleHoneycomb.class */
public class ActionBarDrawerToggleHoneycomb {
    public static final String TAG = "ActionBarDrawerToggleHC";
    public static final int[] THEME_ATTRS = {16843531};

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo.class */
    public static class SetIndicatorInfo {
        public Method setHomeActionContentDescription;
        public Method setHomeAsUpIndicator;
        public ImageView upIndicatorView;

        public SetIndicatorInfo(Activity activity) {
            try {
                this.setHomeAsUpIndicator = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.setHomeActionContentDescription = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException e) {
                View findViewById = activity.findViewById(ActionBarDrawerToggle.ID_HOME);
                if (findViewById != null) {
                    ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                    if (viewGroup.getChildCount() == 2) {
                        View childAt = viewGroup.getChildAt(0);
                        childAt = viewGroup.getChildAt(1);
                        if (childAt.getId() == 16908332) {
                        }
                        if (childAt instanceof ImageView) {
                            this.upIndicatorView = (ImageView) childAt;
                        }
                    }
                }
            }
        }
    }

    public static Drawable getThemeUpIndicator(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(THEME_ATTRS);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    public static SetIndicatorInfo setActionBarDescription(SetIndicatorInfo setIndicatorInfo, Activity activity, int i) {
        SetIndicatorInfo setIndicatorInfo2 = setIndicatorInfo;
        if (setIndicatorInfo == null) {
            setIndicatorInfo2 = new SetIndicatorInfo(activity);
        }
        if (setIndicatorInfo2.setHomeAsUpIndicator != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo2.setHomeActionContentDescription.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
            }
        }
        return setIndicatorInfo2;
    }

    public static SetIndicatorInfo setActionBarUpIndicator(Activity activity, Drawable drawable, int i) {
        SetIndicatorInfo setIndicatorInfo = new SetIndicatorInfo(activity);
        if (setIndicatorInfo.setHomeAsUpIndicator != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo.setHomeAsUpIndicator.invoke(actionBar, drawable);
                setIndicatorInfo.setHomeActionContentDescription.invoke(actionBar, Integer.valueOf(i));
            } catch (Exception e) {
            }
        } else {
            ImageView imageView = setIndicatorInfo.upIndicatorView;
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
        }
        return setIndicatorInfo;
    }
}
