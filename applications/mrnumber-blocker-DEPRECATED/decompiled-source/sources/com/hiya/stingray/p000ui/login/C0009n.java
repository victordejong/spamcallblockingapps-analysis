package com.hiya.stingray.p000ui.login;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.fragment.app.Fragment;
import com.google.common.base.m;
import com.google.common.collect.Lists;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.AbstractC0120n;
import java.util.ArrayList;
import r.a.a;
/* renamed from: com.hiya.stingray.ui.login.n */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/n.class */
public class C0009n {

    /* renamed from: com.hiya.stingray.ui.login.n$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/n$a.class */
    public interface AbstractC0010a {
        /* renamed from: a */
        void m1291a(boolean z);

        void onSuccess();
    }

    public C0009n(e1 e1Var) {
    }

    /* renamed from: f */
    private void m1293f(Fragment fragment, Activity activity, int i, String[] strArr, int[] iArr, AbstractC0010a aVar) {
        boolean z = false;
        m.d((fragment == null && activity == null) ? false : true);
        if (strArr.length < 1) {
            a.f(new IllegalStateException(), "No permissions have been requested", new Object[0]);
            return;
        }
        z = true;
        boolean z2 = false;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            String str = strArr[i2];
            if (iArr[i2] == -1) {
                z2 = !(fragment != null ? fragment.shouldShowRequestPermissionRationale(str) : androidx.core.app.a.q(activity, str));
                if (z2) {
                    break;
                }
                z = false;
            }
        }
        if (z) {
            aVar.onSuccess();
        } else {
            aVar.m1291a(z2);
        }
    }

    /* renamed from: a */
    public boolean m1298a(Context context, String[] strArr) {
        for (String str : strArr) {
            if (androidx.core.content.a.a(context, str) != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public boolean m1297b(Context context) {
        return m1298a(context, m1296c());
    }

    /* renamed from: c */
    public String[] m1296c() {
        return Build.VERSION.SDK_INT >= 28 ? AbstractC0120n.f208b : AbstractC0120n.f207a;
    }

    /* renamed from: d */
    public void m1295d(Activity activity, int i, String[] strArr, int[] iArr, AbstractC0010a aVar) {
        m1293f(null, activity, i, strArr, iArr, aVar);
    }

    /* renamed from: e */
    public void m1294e(Fragment fragment, int i, String[] strArr, int[] iArr, AbstractC0010a aVar) {
        m1293f(fragment, null, i, strArr, iArr, aVar);
    }

    /* renamed from: g */
    public boolean m1292g(Activity activity, Fragment fragment, String[] strArr, int i) {
        ArrayList g = Lists.g();
        for (String str : strArr) {
            if (androidx.core.content.a.a(activity, str) != 0) {
                g.add(str);
            }
        }
        if (g.size() <= 0) {
            return false;
        }
        if (fragment != null) {
            fragment.requestPermissions(strArr, i);
            return true;
        }
        androidx.core.app.a.p(activity, strArr, i);
        return true;
    }
}
