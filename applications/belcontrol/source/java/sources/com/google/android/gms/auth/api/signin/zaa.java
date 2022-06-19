package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/zaa.class */
public final /* synthetic */ class zaa implements Comparator {
    public static final Comparator zaa = new zaa();

    private zaa() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return GoogleSignInAccount.zaa((Scope) obj, (Scope) obj2);
    }
}
