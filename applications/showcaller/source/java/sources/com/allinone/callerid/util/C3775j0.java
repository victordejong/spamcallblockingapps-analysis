package com.allinone.callerid.util;

import android.content.Context;
import android.util.Log;
import android.view.WindowManager;
import com.allinone.callerid.customview.FloatNormalView;
/* renamed from: com.allinone.callerid.util.j0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/j0.class */
public class C3775j0 {

    /* renamed from: a */
    private static C3775j0 f12016a;

    /* renamed from: b */
    private FloatNormalView f12017b;

    private C3775j0() {
    }

    /* renamed from: b */
    public static C3775j0 m24166b() {
        if (f12016a == null) {
            f12016a = new C3775j0();
        }
        return f12016a;
    }

    /* renamed from: a */
    public void m24167a(Context context) {
        Log.e("selfstarting", "创建小型悬浮窗啦");
        if (this.f12017b == null) {
            this.f12017b = new FloatNormalView(context);
        }
    }

    /* renamed from: c */
    public void m24165c(Context context) {
        if (this.f12017b != null) {
            ((WindowManager) context.getSystemService("window")).removeView(this.f12017b);
            this.f12017b = null;
        }
    }
}
