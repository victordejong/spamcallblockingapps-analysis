package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/BaseSitAPIResponse.class */
abstract class BaseSitAPIResponse implements Parcelable {

    /* renamed from: f */
    Throwable f14861f;

    /* renamed from: a */
    public Throwable m4819a() {
        return this.f14861f;
    }

    /* renamed from: b */
    public void m4818b(Throwable th) {
        this.f14861f = th;
    }
}
