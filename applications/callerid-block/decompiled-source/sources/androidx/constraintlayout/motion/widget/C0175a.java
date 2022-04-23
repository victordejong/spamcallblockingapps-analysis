package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.view.View;
/* renamed from: androidx.constraintlayout.motion.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/a.class */
public class C0175a {
    /* renamed from: a */
    public static String m14284a() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    /* renamed from: b */
    public static String m14283b(Context context, int i) {
        if (i == -1) {
            return "UNKNOWN";
        }
        try {
            return context.getResources().getResourceEntryName(i);
        } catch (Exception e) {
            return "?" + i;
        }
    }

    /* renamed from: c */
    public static String m14282c(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception e) {
            return "UNKNOWN";
        }
    }

    /* renamed from: d */
    public static String m14281d(MotionLayout motionLayout, int i) {
        return i == -1 ? "UNDEFINED" : motionLayout.getContext().getResources().getResourceEntryName(i);
    }

    /* renamed from: e */
    public static void m14280e(String str, String str2, int i) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(i, stackTrace.length - 1);
        String str3 = " ";
        for (int i2 = 1; i2 <= min; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            str3 = str3 + " ";
            Log.v(str, str2 + str3 + (".(" + stackTrace[i2].getFileName() + ":" + stackTrace[i2].getLineNumber() + ") " + stackTrace[i2].getMethodName()) + str3);
        }
    }
}
