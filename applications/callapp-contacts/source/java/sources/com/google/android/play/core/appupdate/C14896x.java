package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.C15017ah;
import com.google.android.play.core.splitcompat.C15121q;
/* renamed from: com.google.android.play.core.appupdate.x */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/x.class */
public final /* synthetic */ class C14896x {

    /* renamed from: a */
    private static C14898z f54356a;

    /* renamed from: a */
    public static C14898z m9793a(Context context) {
        C14898z c14898z;
        synchronized (C14896x.class) {
            try {
                if (f54356a == null) {
                    C14897y c14897y = new C14897y(null);
                    c14897y.f54357a = new C14881i(C15121q.m9423a(context));
                    C15017ah.m9599a(c14897y.f54357a, C14881i.class);
                    f54356a = new C14898z(c14897y.f54357a);
                }
                c14898z = f54356a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c14898z;
    }
}
