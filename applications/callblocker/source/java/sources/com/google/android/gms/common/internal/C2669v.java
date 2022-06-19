package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.api.C2471a;
/* renamed from: com.google.android.gms.common.internal.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/v.class */
public class C2669v<T extends IInterface> extends AbstractC2642h<T> {

    /* renamed from: e */
    private final C2471a.AbstractC2485h<T> f7428e;

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected T mo2033a(IBinder iBinder) {
        return this.f7428e.m14440a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected String mo2034a() {
        return this.f7428e.m14442a();
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected void mo13911a(int i, T t) {
        this.f7428e.m14441a(i, t);
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected String mo2032b() {
        return this.f7428e.m14439b();
    }

    /* renamed from: c */
    public C2471a.AbstractC2485h<T> m13910c() {
        return this.f7428e;
    }
}
