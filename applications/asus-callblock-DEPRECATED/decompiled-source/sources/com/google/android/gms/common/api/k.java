package com.google.android.gms.common.api;

import android.support.v4.b.a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.at;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/k.class */
public class k implements e {

    /* renamed from: a  reason: collision with root package name */
    private final Status f3953a;

    /* renamed from: b  reason: collision with root package name */
    private final a<at<?>, ConnectionResult> f3954b = null;

    public k(Status status) {
        this.f3953a = status;
    }

    @Override // com.google.android.gms.common.api.e
    public final Status b() {
        return this.f3953a;
    }
}
