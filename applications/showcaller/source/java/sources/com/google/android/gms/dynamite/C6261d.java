package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/d.class */
final class C6261d implements DynamiteModule.AbstractC6257a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC6257a
    /* renamed from: a */
    public final C6271n mo16732a(Context context, String str, AbstractC6270m abstractC6270m) {
        C6271n c6271n = new C6271n();
        int mo16731a = abstractC6270m.mo16731a(context, str, true);
        c6271n.f19777b = mo16731a;
        if (mo16731a != 0) {
            c6271n.f19778c = 1;
        } else {
            int mo16730b = abstractC6270m.mo16730b(context, str);
            c6271n.f19776a = mo16730b;
            if (mo16730b != 0) {
                c6271n.f19778c = -1;
            }
        }
        return c6271n;
    }
}
