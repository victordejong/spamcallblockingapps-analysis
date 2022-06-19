package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessage.class */
public final class CloudMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CloudMessage> CREATOR = new C5957c();

    /* renamed from: d */
    private Intent f19089d;

    public CloudMessage(Intent intent) {
        this.f19089d = intent;
    }

    /* renamed from: k0 */
    public final Intent m17549k0() {
        return this.f19089d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 1, this.f19089d, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
