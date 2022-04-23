package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.ah;
import com.google.android.play.core.splitcompat.q;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/x.class */
public final /* synthetic */ class x {

    /* renamed from: a  reason: collision with root package name */
    private static z f31070a;

    public static z a(Context context) {
        z zVar;
        synchronized (x.class) {
            try {
                if (f31070a == null) {
                    y yVar = new y(null);
                    yVar.f31071a = new i(q.a(context));
                    ah.a(yVar.f31071a, i.class);
                    f31070a = new z(yVar.f31071a);
                }
                zVar = f31070a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zVar;
    }
}
