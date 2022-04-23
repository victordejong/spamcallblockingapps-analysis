package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/x.class */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public final Set<Scope> f22908a;

    public x(Set<Scope> set) {
        o.a(set);
        this.f22908a = Collections.unmodifiableSet(set);
    }
}
