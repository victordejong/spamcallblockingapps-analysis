package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/f.class */
final class C12146f implements DynamiteModule.AbstractC12140a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC12140a
    /* renamed from: a */
    public final C12154n mo18965a(Context context, String str, AbstractC12153m abstractC12153m) throws DynamiteModule.LoadingException {
        C12154n c12154n = new C12154n();
        int mo18963a = abstractC12153m.mo18963a(context, str, false);
        c12154n.f39690b = mo18963a;
        if (mo18963a == 0) {
            c12154n.f39691c = 0;
        } else {
            c12154n.f39691c = 1;
        }
        return c12154n;
    }
}
