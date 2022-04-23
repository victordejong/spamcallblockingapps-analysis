package com.callapp.contacts.widget.floatingwidget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.WindowManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ChatHeadUtils.class */
public class ChatHeadUtils {
    public static int a(Context context, int i) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return a(displayMetrics, i);
    }

    public static int a(DisplayMetrics displayMetrics, int i) {
        float applyDimension = TypedValue.applyDimension(1, i, displayMetrics);
        float f = applyDimension;
        if (applyDimension < 1.0f) {
            f = 1.0f;
        }
        return (int) f;
    }
}
