package com.allinone.callerid.p162i.p163a.p190t;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import com.allinone.callerid.p200l.p201a.C3045f;
import com.allinone.callerid.util.AsyncTaskC3740g;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3712b;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3720d;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3744g1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
/* renamed from: com.allinone.callerid.i.a.t.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/b.class */
public class C2969b {
    /* renamed from: a */
    public static void m26327a(Context context) {
        if (C3711a1.m24631I()) {
            C3711a1.m24514m1(false);
            if (C3767h1.m24234n0(context, C3767h1.m24275M(context))) {
                C3810q.m24071b().m24070c("install_googleplay");
            }
            C3738f0.m24385b(context);
            if (C3712b.m24459b(context)) {
                C3810q.m24071b().m24070c("is_ou_meng_country");
            }
            C3810q.m24071b().m24069d("first_enter_main_online");
            C3738f0.m24372o(context);
            if (C3714b1.m24448j(context)) {
                C3810q.m24071b().m24070c(C3744g1.f11927a);
                if (C3714b1.m24440r()) {
                    C3810q.m24071b().m24070c(C3744g1.f11928b);
                } else if (C3714b1.m24447k()) {
                    C3810q.m24071b().m24070c(C3744g1.f11929c);
                } else if (C3714b1.m24442p()) {
                    C3810q.m24071b().m24070c(C3744g1.f11930d);
                } else if (C3714b1.m24445m()) {
                    C3810q.m24071b().m24070c(C3744g1.f11931e);
                }
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 26 && i < 28) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "oldcallend:" + C3767h1.m24248g0(context));
                }
                if (!C3767h1.m24248g0(context)) {
                    C3711a1.m24596Q2(Boolean.FALSE);
                }
            }
            if (!C3711a1.m24663A()) {
                return;
            }
            C3720d.m24423g(context);
            C3711a1.m24550d1(false);
        }
    }

    /* renamed from: b */
    public static void m26326b(int i, Context context) {
        switch (i) {
            case 1:
                C3810q.m24071b().m24070c("response_1");
                return;
            case 2:
                C3810q.m24071b().m24070c("response_2");
                return;
            case 3:
                C3810q.m24071b().m24070c("response_3");
                return;
            case 4:
                C3810q.m24071b().m24070c("response_4");
                return;
            case 5:
                C3810q.m24071b().m24070c("response_5");
                return;
            case 6:
                C3810q.m24071b().m24070c("response_6");
                return;
            case 7:
                C3810q.m24071b().m24070c("response_7");
                return;
            case 8:
                C3810q.m24071b().m24070c("response_8");
                return;
            default:
                return;
        }
    }

    /* renamed from: c */
    public static void m26325c(String str, Context context) {
        if (!C3767h1.m24224s0(context)) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "剪贴板离线查询");
            }
            C3045f.m26167e(str);
        } else if (str == null || "".equals(str)) {
        } else {
            new AsyncTaskC3740g(context, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        }
    }
}
