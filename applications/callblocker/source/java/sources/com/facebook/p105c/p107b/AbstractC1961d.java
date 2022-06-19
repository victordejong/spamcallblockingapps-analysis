package com.facebook.p105c.p107b;

import android.os.Bundle;
import android.os.Parcel;
/* renamed from: com.facebook.c.b.d */
/* loaded from: classes-dex2jar.jar:com/facebook/c/b/d.class */
public abstract class AbstractC1961d implements AbstractC1962e {

    /* renamed from: a */
    private final Bundle f5884a;

    public AbstractC1961d(Parcel parcel) {
        this.f5884a = parcel.readBundle();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f5884a);
    }
}
