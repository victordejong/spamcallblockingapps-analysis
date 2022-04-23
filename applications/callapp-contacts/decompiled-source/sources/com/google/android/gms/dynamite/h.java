package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/h.class */
final class h implements DynamiteModule.a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.a
    public final n a(Context context, String str, m mVar) throws DynamiteModule.LoadingException {
        int i;
        n nVar = new n();
        int a2 = mVar.a(context, str);
        nVar.f22986a = a2;
        int i2 = 0;
        if (a2 != 0) {
            i = mVar.a(context, str, false);
            nVar.f22987b = i;
        } else {
            i = mVar.a(context, str, true);
            nVar.f22987b = i;
        }
        int i3 = nVar.f22986a;
        if (i3 != 0) {
            i2 = i3;
        } else if (i == 0) {
            nVar.f22988c = 0;
            return nVar;
        }
        if (i2 >= i) {
            nVar.f22988c = -1;
        } else {
            nVar.f22988c = 1;
        }
        return nVar;
    }
}
