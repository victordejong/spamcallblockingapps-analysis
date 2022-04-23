package com.android.contacts.util;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusActionBarUtils.class */
public class AsusActionBarUtils {
    public static int getActionBarHeight(Activity activity) {
        int dimensionPixelSize;
        if (activity == null) {
            dimensionPixelSize = 0;
        } else {
            TypedValue typedValue = new TypedValue();
            activity.getBaseContext().getTheme().resolveAttribute(16843499, typedValue, true);
            dimensionPixelSize = activity.getResources().getDimensionPixelSize(typedValue.resourceId);
        }
        return dimensionPixelSize;
    }

    public static int getStatusBarHeight(Context context) {
        int identifier;
        int i = 0;
        if (context != null && (identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android")) > 0) {
            i = context.getResources().getDimensionPixelSize(identifier);
        }
        return i;
    }

    public static void initActionbarDisplayOptions(ActionBar actionBar) {
        if (actionBar != null) {
            actionBar.setDisplayOptions(12, 12);
            actionBar.setDisplayShowHomeEnabled(false);
        }
    }

    public static void setHasEmbeddedTabs(Object obj, boolean z) {
        Class<?> cls;
        Class<?> cls2 = obj.getClass();
        if ("android.support.v7.app.ActionBarImplJBMR2".equals(cls2.getName())) {
            cls = cls2.getSuperclass().getSuperclass();
        } else {
            cls = cls2;
            if ("android.support.v7.app.ActionBarImplJB".equals(cls2.getName())) {
                cls = cls2.getSuperclass();
            }
        }
        Object obj2 = obj;
        obj2 = obj;
        obj2 = obj;
        try {
            Field declaredField = cls.getDeclaredField("mActionBar");
            declaredField.setAccessible(true);
            obj2 = declaredField.get(obj);
            obj2 = obj2;
            obj2 = obj2;
            obj2 = obj2;
            cls = obj2.getClass();
        } catch (IllegalAccessException e) {
        } catch (IllegalArgumentException e2) {
        } catch (NoSuchFieldException e3) {
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("setHasEmbeddedTabs", Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(obj2, Boolean.valueOf(z));
        } catch (IllegalAccessException e4) {
        } catch (IllegalArgumentException e5) {
        } catch (NoSuchMethodException e6) {
        } catch (InvocationTargetException e7) {
        }
    }

    public static void updateActionBar(Activity activity, TextView textView, TextView textView2) {
        if (activity != null && textView != null) {
            int statusBarHeight = getStatusBarHeight(activity);
            int actionBarHeight = getActionBarHeight(activity);
            if (!PhoneCapabilityTester.isEnableDialtactsWithTabName() || !activity.getClass().getSimpleName().equals("DialtactsActivity")) {
                textView.setHeight(actionBarHeight + statusBarHeight);
            } else {
                textView.setHeight(122);
            }
            if (textView2 != null) {
                textView2.setBackgroundColor(activity.getResources().getColor(2131034157));
                textView2.setHeight(statusBarHeight);
            }
        }
    }
}
