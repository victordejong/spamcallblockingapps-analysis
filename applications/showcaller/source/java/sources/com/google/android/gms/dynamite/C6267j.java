package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/j.class */
final class C6267j implements DynamiteModule.AbstractC6257a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC6257a
    /* renamed from: a */
    public final C6271n mo16732a(Context context, String str, AbstractC6270m abstractC6270m) {
        int i;
        C6271n c6271n = new C6271n();
        int mo16730b = abstractC6270m.mo16730b(context, str);
        c6271n.f19776a = mo16730b;
        int i2 = 0;
        if (mo16730b != 0) {
            i = abstractC6270m.mo16731a(context, str, false);
            c6271n.f19777b = i;
        } else {
            i = abstractC6270m.mo16731a(context, str, true);
            c6271n.f19777b = i;
        }
        int i3 = c6271n.f19776a;
        if (i3 != 0) {
            i2 = i3;
        } else if (i == 0) {
            c6271n.f19778c = 0;
            return c6271n;
        }
        if (i >= i2) {
            c6271n.f19778c = 1;
        } else {
            c6271n.f19778c = -1;
        }
        return c6271n;
    }
}
