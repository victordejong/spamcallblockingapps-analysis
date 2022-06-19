package com.huawei.hms.utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.huawei.hms.push.constant.RemoteMessageConst;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/ResourceLoaderUtil.class */
public abstract class ResourceLoaderUtil {

    /* renamed from: a */
    public static Context f7879a;

    /* renamed from: b */
    public static String f7880b;

    public static int getAnimId(String str) {
        return f7879a.getResources().getIdentifier(str, "anim", f7880b);
    }

    public static int getColorId(String str) {
        return f7879a.getResources().getIdentifier(str, RemoteMessageConst.Notification.COLOR, f7880b);
    }

    public static Drawable getDrawable(String str) {
        return f7879a.getResources().getDrawable(getDrawableId(str));
    }

    public static int getDrawableId(String str) {
        return f7879a.getResources().getIdentifier(str, "drawable", f7880b);
    }

    public static int getIdId(String str) {
        return f7879a.getResources().getIdentifier(str, "id", f7880b);
    }

    public static int getLayoutId(String str) {
        return f7879a.getResources().getIdentifier(str, "layout", f7880b);
    }

    public static String getString(String str) {
        return f7879a.getResources().getString(getStringId(str));
    }

    public static String getString(String str, Object... objArr) {
        return f7879a.getResources().getString(getStringId(str), objArr);
    }

    public static int getStringId(String str) {
        return f7879a.getResources().getIdentifier(str, "string", f7880b);
    }

    public static int getStyleId(String str) {
        return f7879a.getResources().getIdentifier(str, "style", f7880b);
    }

    public static Context getmContext() {
        return f7879a;
    }

    public static void setmContext(Context context) {
        f7879a = context;
        f7880b = context.getPackageName();
    }
}
