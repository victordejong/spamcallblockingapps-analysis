package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.api.a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/g.class */
public final class g<T extends IInterface> extends r<T> {

    /* renamed from: a  reason: collision with root package name */
    public final a.h<T> f4005a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.k
    public final T a(IBinder iBinder) {
        return this.f4005a.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.k
    public final String d() {
        return this.f4005a.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.k
    public final String e() {
        return this.f4005a.b();
    }
}
