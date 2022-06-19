package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.firebase.messaging.h0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/h0.class */
public class C9285h0 implements Parcelable.Creator<RemoteMessage> {
    /* renamed from: c */
    public static void m1228c(RemoteMessage remoteMessage, Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16943e(parcel, 2, remoteMessage.f39723d, false);
        C6170a.m16946b(parcel, m16947a);
    }

    /* renamed from: a */
    public RemoteMessage createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            if (SafeParcelReader.m16952v(m16983C) != 2) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                bundle = SafeParcelReader.m16968f(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new RemoteMessage(bundle);
    }

    /* renamed from: b */
    public RemoteMessage[] newArray(int i) {
        return new RemoteMessage[i];
    }
}
