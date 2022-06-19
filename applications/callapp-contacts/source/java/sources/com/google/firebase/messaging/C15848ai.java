package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.firebase.messaging.ai */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ai.class */
public final class C15848ai implements Parcelable.Creator<RemoteMessage> {
    /* renamed from: a */
    public static void m8184a(RemoteMessage remoteMessage, Parcel parcel) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19110a(parcel, 2, remoteMessage.bundle, false);
        C12050a.m19095b(parcel, m19116a);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ RemoteMessage createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                bundle = SafeParcelReader.m19126o(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new RemoteMessage(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RemoteMessage[] newArray(int i) {
        return new RemoteMessage[i];
    }
}
