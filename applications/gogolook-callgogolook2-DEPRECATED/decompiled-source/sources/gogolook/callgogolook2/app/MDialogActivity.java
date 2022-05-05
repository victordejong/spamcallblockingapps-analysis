package gogolook.callgogolook2.app;

import android.app.Activity;
import android.app.Dialog;
import android.text.TextUtils;
import gogolook.callgogolook2.AbstractDialogActivity;
import p459j.p460a.p582w0.C14036j2;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p613z0.DialogC14618f;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/app/MDialogActivity.class */
public class MDialogActivity extends AbstractDialogActivity {
    @Override // gogolook.callgogolook2.AbstractDialogActivity
    /* renamed from: a */
    public Dialog mo26021a(Activity activity) {
        C14300r.m1652b("MDialogActivity", getIntent());
        String a = C14036j2.m2732a(getIntent(), "title", (String) null);
        String a2 = C14036j2.m2732a(getIntent(), "message", (String) null);
        String a3 = C14036j2.m2732a(getIntent(), "positive", (String) null);
        String a4 = C14036j2.m2732a(getIntent(), "negative", (String) null);
        DialogC14618f fVar = new DialogC14618f(activity);
        fVar.setCancelable(true);
        if (!TextUtils.isEmpty(a)) {
            fVar.setTitle(a);
        }
        if (!TextUtils.isEmpty(a2)) {
            fVar.m998b(a2);
        }
        if (!TextUtils.isEmpty(a3)) {
            fVar.m992d(a3);
        }
        if (!TextUtils.isEmpty(a4)) {
            fVar.m994c(a4);
        }
        return fVar;
    }
}
