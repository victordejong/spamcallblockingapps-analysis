package p1727n3.p1728a.p1730e.p1731d;

import android.content.Context;
import android.content.Intent;
import p1727n3.p1728a.p1730e.p1731d.AbstractC25376a;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: n3.a.e.d.c */
/* loaded from: classes-dex2jar.jar:n3/a/e/d/c.class */
public final class C25379c extends AbstractC25376a<String, Boolean> {
    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: a */
    public Intent mo3691a(Context context, String str) {
        return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", new String[]{str});
    }

    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: b */
    public AbstractC25376a.C25377a<Boolean> mo3692b(Context context, String str) {
        String str2 = str;
        return str2 == null ? new AbstractC25376a.C25377a<>(Boolean.FALSE) : C26467a.m1801a(context, str2) == 0 ? new AbstractC25376a.C25377a<>(Boolean.TRUE) : null;
    }

    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: c */
    public Boolean mo3690c(int i, Intent intent) {
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = bool;
        if (intent != null) {
            if (i != -1) {
                bool2 = bool;
            } else {
                int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                bool2 = bool;
                if (intArrayExtra != null) {
                    if (intArrayExtra.length == 0) {
                        bool2 = bool;
                    } else {
                        boolean z = false;
                        if (intArrayExtra[0] == 0) {
                            z = true;
                        }
                        bool2 = Boolean.valueOf(z);
                    }
                }
            }
        }
        return bool2;
    }
}
