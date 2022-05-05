package p459j.p460a.p582w0;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
/* renamed from: j.a.w0.r2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/r2.class */
public class C14135r2 {
    /* renamed from: a */
    public static DisplayMetrics m2392a(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: b */
    public static int m2391b(Context context) {
        return m2392a(context).heightPixels;
    }

    /* renamed from: c */
    public static int m2390c(Context context) {
        return m2392a(context).widthPixels;
    }
}
