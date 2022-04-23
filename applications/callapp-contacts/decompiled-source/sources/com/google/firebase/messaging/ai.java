package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ai.class */
public final class ai implements Parcelable.Creator<RemoteMessage> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(RemoteMessage remoteMessage, Parcel parcel) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, remoteMessage.bundle, false);
        a.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ RemoteMessage createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                bundle = SafeParcelReader.o(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new RemoteMessage(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RemoteMessage[] newArray(int i) {
        return new RemoteMessage[i];
    }
}
