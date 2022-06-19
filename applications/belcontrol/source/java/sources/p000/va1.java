package p000;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
@TargetApi(23)
/* renamed from: va1 */
/* loaded from: classes3-dex2jar.jar:va1.class */
public abstract class va1 {
    /* renamed from: a */
    public boolean mo341a(ta1 ta1Var) {
        boolean z = false;
        try {
            if (lm1.m1292a().checkSelfPermission(ta1Var.f8199a) == 0) {
                z = true;
            }
        } catch (Throwable th) {
        }
        return z;
    }

    /* renamed from: b */
    public void mo340b(ta1[] ta1VarArr, Activity activity, int i) {
        String[] strArr = new String[ta1VarArr.length];
        int length = ta1VarArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            strArr[i2] = ta1VarArr[i2].f8199a;
        }
        if (activity != null) {
            r7.u(activity, strArr, i);
        }
    }

    /* renamed from: c */
    public void m339c(String str, int i, Activity activity) {
        Intent intent = new Intent(str);
        intent.setData(Uri.parse("package:" + lm1.m1292a().getPackageName()));
        if (activity != null) {
            activity.startActivityForResult(intent, i);
            return;
        }
        intent.addFlags(268435456);
        lm1.m1292a().startActivity(intent);
    }
}
