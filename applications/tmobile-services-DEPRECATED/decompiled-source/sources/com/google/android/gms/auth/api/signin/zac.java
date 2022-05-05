package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/zac.class */
final class zac implements Comparator<Scope> {
    zac() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Scope scope, Scope scope2) {
        return scope.m15001B().compareTo(scope2.m15001B());
    }
}
