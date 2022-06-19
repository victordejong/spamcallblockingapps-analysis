package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* renamed from: com.google.android.gms.auth.api.signin.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/e.class */
public final /* synthetic */ class C2415e implements Comparator {

    /* renamed from: a */
    static final Comparator f6937a = new C2415e();

    private C2415e() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((Scope) obj).m14463a().compareTo(((Scope) obj2).m14463a());
        return compareTo;
    }
}
