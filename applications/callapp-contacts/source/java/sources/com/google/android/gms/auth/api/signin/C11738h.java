package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* renamed from: com.google.android.gms.auth.api.signin.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/h.class */
final class C11738h implements Comparator<Scope> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Scope scope, Scope scope2) {
        return scope.getScopeUri().compareTo(scope2.getScopeUri());
    }
}
