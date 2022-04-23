package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/g.class */
final class g implements DynamiteModule.a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.a
    public final n a(Context context, String str, m mVar) throws DynamiteModule.LoadingException {
        n nVar = new n();
        nVar.f22986a = mVar.a(context, str);
        int a2 = mVar.a(context, str, true);
        nVar.f22987b = a2;
        int i = nVar.f22986a;
        int i2 = i;
        if (i == 0) {
            if (a2 == 0) {
                nVar.f22988c = 0;
                return nVar;
            }
            i2 = 0;
        }
        if (i2 >= a2) {
            nVar.f22988c = -1;
        } else {
            nVar.f22988c = 1;
        }
        return nVar;
    }
}
