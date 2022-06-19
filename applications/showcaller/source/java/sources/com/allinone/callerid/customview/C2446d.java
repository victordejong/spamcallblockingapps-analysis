package com.allinone.callerid.customview;

import android.content.Context;
import android.view.WindowManager;
/* renamed from: com.allinone.callerid.customview.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/d.class */
public class C2446d {

    /* renamed from: a */
    private static C2446d f8700a;

    /* renamed from: b */
    private SpeakerTiplView f8701b;

    private C2446d() {
    }

    /* renamed from: b */
    public static C2446d m27340b() {
        if (f8700a == null) {
            f8700a = new C2446d();
        }
        return f8700a;
    }

    /* renamed from: a */
    public void m27341a(Context context) {
        try {
            if (this.f8701b != null) {
                return;
            }
            this.f8701b = new SpeakerTiplView(context);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m27339c(Context context) {
        try {
            if (this.f8701b == null) {
                return;
            }
            ((WindowManager) context.getSystemService("window")).removeView(this.f8701b);
            this.f8701b = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
