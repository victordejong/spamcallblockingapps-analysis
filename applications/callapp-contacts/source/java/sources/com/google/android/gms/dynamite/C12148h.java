package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/h.class */
final class C12148h implements DynamiteModule.AbstractC12140a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC12140a
    /* renamed from: a */
    public final C12154n mo18965a(Context context, String str, AbstractC12153m abstractC12153m) throws DynamiteModule.LoadingException {
        int i;
        C12154n c12154n = new C12154n();
        int mo18964a = abstractC12153m.mo18964a(context, str);
        c12154n.f39689a = mo18964a;
        int i2 = 0;
        if (mo18964a != 0) {
            i = abstractC12153m.mo18963a(context, str, false);
            c12154n.f39690b = i;
        } else {
            i = abstractC12153m.mo18963a(context, str, true);
            c12154n.f39690b = i;
        }
        int i3 = c12154n.f39689a;
        if (i3 != 0) {
            i2 = i3;
        } else if (i == 0) {
            c12154n.f39691c = 0;
            return c12154n;
        }
        if (i2 >= i) {
            c12154n.f39691c = -1;
        } else {
            c12154n.f39691c = 1;
        }
        return c12154n;
    }
}
