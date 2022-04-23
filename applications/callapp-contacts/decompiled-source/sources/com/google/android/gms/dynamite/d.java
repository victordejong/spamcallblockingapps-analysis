package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/d.class */
final class d implements DynamiteModule.a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.a
    public final n a(Context context, String str, m mVar) throws DynamiteModule.LoadingException {
        n nVar = new n();
        int a2 = mVar.a(context, str, true);
        nVar.f22987b = a2;
        if (a2 != 0) {
            nVar.f22988c = 1;
        } else {
            int a3 = mVar.a(context, str);
            nVar.f22986a = a3;
            if (a3 != 0) {
                nVar.f22988c = -1;
            }
        }
        return nVar;
    }
}
