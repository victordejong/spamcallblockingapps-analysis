package com.truecaller.calling.initiate_call;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnDemand$a.class */
public final class InitiateCallHelper$CallContextOption$ShowOnDemand$a implements Parcelable.Creator<InitiateCallHelper.CallContextOption.ShowOnDemand> {
    @Override // android.os.Parcelable.Creator
    public InitiateCallHelper.CallContextOption.ShowOnDemand createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return parcel.readInt() != 0 ? InitiateCallHelper.CallContextOption.ShowOnDemand.a : null;
    }

    @Override // android.os.Parcelable.Creator
    public InitiateCallHelper.CallContextOption.ShowOnDemand[] newArray(int i) {
        return new InitiateCallHelper.CallContextOption.ShowOnDemand[i];
    }
}
