package p000;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookActivity;
import com.google.android.gms.common.internal.ImagesContract;
import mm0;
import zm0;
/* renamed from: em0 */
/* loaded from: classes-dex2jar.jar:em0.class */
public class em0 {

    /* renamed from: em0$a */
    /* loaded from: classes-dex2jar.jar:em0$a.class */
    public interface AbstractC1374a {
        /* renamed from: a */
        Bundle m2088a();

        Bundle getParameters();
    }

    /* renamed from: a */
    public static boolean m2100a(dm0 dm0Var) {
        return m2098c(dm0Var).e() != -1;
    }

    /* renamed from: b */
    public static Uri m2099b(dm0 dm0Var) {
        mm0.a d = mm0.d(ui0.f(), dm0Var.m2492b(), dm0Var.name());
        return d != null ? d.b() : null;
    }

    /* renamed from: c */
    public static zm0.g m2098c(dm0 dm0Var) {
        String f = ui0.f();
        String m2492b = dm0Var.m2492b();
        return zm0.u(m2492b, m2097d(f, m2492b, dm0Var));
    }

    /* renamed from: d */
    public static int[] m2097d(String str, String str2, dm0 dm0Var) {
        mm0.a d = mm0.d(str, str2, dm0Var.name());
        return d != null ? d.d() : new int[]{dm0Var.m2493a()};
    }

    /* renamed from: e */
    public static void m2096e(yl0 yl0Var, Activity activity) {
        activity.startActivityForResult(yl0Var.e(), yl0Var.d());
        yl0Var.g();
    }

    /* renamed from: f */
    public static void m2095f(yl0 yl0Var, pm0 pm0Var) {
        pm0Var.d(yl0Var.e(), yl0Var.d());
        yl0Var.g();
    }

    /* renamed from: g */
    public static void m2094g(yl0 yl0Var) {
        m2091j(yl0Var, new ri0("Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."));
    }

    /* renamed from: h */
    public static void m2093h(yl0 yl0Var, ri0 ri0Var) {
        if (ri0Var == null) {
            return;
        }
        gn0.f(ui0.e());
        Intent intent = new Intent();
        intent.setClass(ui0.e(), FacebookActivity.class);
        intent.setAction(FacebookActivity.b);
        zm0.D(intent, yl0Var.b().toString(), (String) null, zm0.x(), zm0.i(ri0Var));
        yl0Var.h(intent);
    }

    /* renamed from: i */
    public static void m2092i(yl0 yl0Var, AbstractC1374a abstractC1374a, dm0 dm0Var) {
        Context e = ui0.e();
        String m2492b = dm0Var.m2492b();
        zm0.g m2098c = m2098c(dm0Var);
        int e2 = m2098c.e();
        if (e2 != -1) {
            Bundle parameters = zm0.C(e2) ? abstractC1374a.getParameters() : abstractC1374a.m2088a();
            Bundle bundle = parameters;
            if (parameters == null) {
                bundle = new Bundle();
            }
            Intent l = zm0.l(e, yl0Var.b().toString(), m2492b, m2098c, bundle);
            if (l == null) {
                throw new ri0("Unable to create Intent; this likely means theFacebook app is not installed.");
            }
            yl0Var.h(l);
            return;
        }
        throw new ri0("Cannot present this dialog. This likely means that the Facebook app is not installed.");
    }

    /* renamed from: j */
    public static void m2091j(yl0 yl0Var, ri0 ri0Var) {
        m2093h(yl0Var, ri0Var);
    }

    /* renamed from: k */
    public static void m2090k(yl0 yl0Var, String str, Bundle bundle) {
        gn0.f(ui0.e());
        gn0.h(ui0.e());
        Bundle bundle2 = new Bundle();
        bundle2.putString("action", str);
        bundle2.putBundle("params", bundle);
        Intent intent = new Intent();
        zm0.D(intent, yl0Var.b().toString(), str, zm0.x(), bundle2);
        intent.setClass(ui0.e(), FacebookActivity.class);
        intent.setAction("FacebookDialogFragment");
        yl0Var.h(intent);
    }

    /* renamed from: l */
    public static void m2089l(yl0 yl0Var, Bundle bundle, dm0 dm0Var) {
        String str;
        String str2;
        gn0.f(ui0.e());
        gn0.h(ui0.e());
        String name = dm0Var.name();
        Uri m2099b = m2099b(dm0Var);
        if (m2099b == null) {
            throw new ri0("Unable to fetch the Url for the DialogFeature : '" + name + "'");
        }
        Bundle m5287e = cn0.m5287e(yl0Var.b().toString(), zm0.x(), bundle);
        if (m5287e == null) {
            throw new ri0("Unable to fetch the app's key-hash");
        }
        if (m2099b.isRelative()) {
            str = cn0.m5290b();
            str2 = m2099b.toString();
        } else {
            str = m2099b.getAuthority();
            str2 = m2099b.getPath();
        }
        Uri e = fn0.e(str, str2, m5287e);
        Bundle bundle2 = new Bundle();
        bundle2.putString(ImagesContract.URL, e.toString());
        bundle2.putBoolean("is_fallback", true);
        Intent intent = new Intent();
        zm0.D(intent, yl0Var.b().toString(), dm0Var.m2492b(), zm0.x(), bundle2);
        intent.setClass(ui0.e(), FacebookActivity.class);
        intent.setAction("FacebookDialogFragment");
        yl0Var.h(intent);
    }
}
