package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.o;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/af.class */
public final class af extends bg {

    /* renamed from: a  reason: collision with root package name */
    private final Object f30084a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private ag f30085b;

    /* renamed from: c  reason: collision with root package name */
    private m f30086c;

    @Override // com.google.android.gms.wearable.internal.bf
    public final void a(int i, int i2) {
        ag agVar;
        m mVar;
        synchronized (this.f30084a) {
            agVar = this.f30085b;
            mVar = new m(i, i2);
            this.f30086c = mVar;
        }
        if (agVar != null) {
            agVar.a(mVar);
        }
    }

    public final void a(ag agVar) {
        m mVar;
        synchronized (this.f30084a) {
            this.f30085b = (ag) o.a(agVar);
            mVar = this.f30086c;
        }
        if (mVar != null) {
            agVar.a(mVar);
        }
    }
}
