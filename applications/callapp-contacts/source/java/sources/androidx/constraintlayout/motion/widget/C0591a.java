package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.view.View;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.constraintlayout.motion.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/a.class */
public final class C0591a {
    /* renamed from: a */
    public static String m44985a() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    /* renamed from: a */
    public static String m44984a(Context context, int i) {
        if (i != -1) {
            try {
                return context.getResources().getResourceEntryName(i);
            } catch (Exception e) {
                return "?".concat(String.valueOf(i));
            }
        }
        return "UNKNOWN";
    }

    /* renamed from: a */
    public static String m44983a(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception e) {
            return "UNKNOWN";
        }
    }

    /* renamed from: a */
    public static String m44982a(MotionLayout motionLayout, int i) {
        return i == -1 ? "UNDEFINED" : motionLayout.getContext().getResources().getResourceEntryName(i);
    }

    /* renamed from: a */
    public static void m44981a(String str) {
        StackTraceElement[] stackTrace;
        int min = Math.min(2, new Throwable().getStackTrace().length - 1);
        String str2 = StringUtils.SPACE;
        for (int i = 1; i <= min; i++) {
            String str3 = ".(" + stackTrace[i].getFileName() + ":" + stackTrace[i].getLineNumber() + ") " + stackTrace[i].getMethodName();
            str2 = str2 + StringUtils.SPACE;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(str2);
            sb.append(str3);
            sb.append(str2);
        }
    }
}
