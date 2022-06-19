package com.truecaller.calling.initiate_call;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip$a.class */
public final class InitiateCallHelper$CallContextOption$Skip$a implements Parcelable.Creator<InitiateCallHelper.CallContextOption.Skip> {
    @Override // android.os.Parcelable.Creator
    public InitiateCallHelper.CallContextOption.Skip createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return parcel.readInt() != 0 ? InitiateCallHelper.CallContextOption.Skip.a : null;
    }

    @Override // android.os.Parcelable.Creator
    public InitiateCallHelper.CallContextOption.Skip[] newArray(int i) {
        return new InitiateCallHelper.CallContextOption.Skip[i];
    }
}
