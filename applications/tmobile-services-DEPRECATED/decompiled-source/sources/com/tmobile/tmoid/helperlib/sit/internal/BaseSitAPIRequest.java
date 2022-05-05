package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/BaseSitAPIRequest.class */
abstract class BaseSitAPIRequest implements Parcelable {
    public BaseSitAPIRequest() {
    }

    public BaseSitAPIRequest(Parcel parcel) {
    }

    /* renamed from: a */
    public abstract String mo4773a();

    /* renamed from: b */
    public void mo4772b(Parcel parcel) {
    }

    /* renamed from: c */
    public boolean mo4820c() {
        return true;
    }

    /* renamed from: d */
    public abstract void mo4771d(String str);

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }
}
