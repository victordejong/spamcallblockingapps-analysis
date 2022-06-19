package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/g.class */
final class C12147g implements DynamiteModule.AbstractC12140a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC12140a
    /* renamed from: a */
    public final C12154n mo18965a(Context context, String str, AbstractC12153m abstractC12153m) throws DynamiteModule.LoadingException {
        C12154n c12154n = new C12154n();
        c12154n.f39689a = abstractC12153m.mo18964a(context, str);
        int mo18963a = abstractC12153m.mo18963a(context, str, true);
        c12154n.f39690b = mo18963a;
        int i = c12154n.f39689a;
        int i2 = i;
        if (i == 0) {
            if (mo18963a == 0) {
                c12154n.f39691c = 0;
                return c12154n;
            }
            i2 = 0;
        }
        if (i2 >= mo18963a) {
            c12154n.f39691c = -1;
        } else {
            c12154n.f39691c = 1;
        }
        return c12154n;
    }
}
