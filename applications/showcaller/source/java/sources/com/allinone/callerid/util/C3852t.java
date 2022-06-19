package com.allinone.callerid.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.widget.ImageView;
import com.allinone.callerid.main.C3067a;
/* renamed from: com.allinone.callerid.util.t */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t.class */
public class C3852t {
    /* renamed from: a */
    public static void m23962a(Activity activity, Object obj, int i, ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 17) {
            if (activity == null || activity.isDestroyed()) {
                return;
            }
            C3067a.m26103a(activity).m26049G(obj).mo22633Z(i).m26077K0().m23660A0(imageView);
            return;
        }
        try {
            C3067a.m26103a(activity).m26049G(obj).mo22633Z(i).m26077K0().m23660A0(imageView);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m23961b(Context context, Object obj, int i, ImageView imageView) {
        if (context != null) {
            try {
                C3067a.m26102b(context).m26049G(obj).mo22633Z(i).m26077K0().m23660A0(imageView);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: c */
    public static void m23960c(Activity activity, Uri uri, String str, int i, ImageView imageView) {
        if (Build.VERSION.SDK_INT < 17) {
            if (str != null) {
                try {
                    if (!"".equals(str)) {
                        C3067a.m26103a(activity).mo23631q(uri).mo23646u0(C3067a.m26103a(activity).mo23629s(str).mo22633Z(i).m26077K0()).mo22633Z(i).m26077K0().m23660A0(imageView);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            C3067a.m26103a(activity).mo23631q(uri).mo22633Z(i).m26077K0().m23660A0(imageView);
        } else if (activity == null) {
        } else {
            try {
                if (!activity.isDestroyed()) {
                    if (str == null || "".equals(str)) {
                        C3067a.m26103a(activity).mo23631q(uri).mo22633Z(i).m26077K0().m23660A0(imageView);
                    } else {
                        C3067a.m26103a(activity).mo23631q(uri).mo23646u0(C3067a.m26103a(activity).mo23629s(str).mo22633Z(i).m26077K0()).mo22633Z(i).m26077K0().m23660A0(imageView);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
