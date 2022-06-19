package com.truecaller.calling.initiate_call;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded$a.class */
public final class InitiateCallHelper$CallContextOption$ShowOnBoarded$a implements Parcelable.Creator<InitiateCallHelper.CallContextOption.ShowOnBoarded> {
    @Override // android.os.Parcelable.Creator
    public InitiateCallHelper.CallContextOption.ShowOnBoarded createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return parcel.readInt() != 0 ? InitiateCallHelper.CallContextOption.ShowOnBoarded.a : null;
    }

    @Override // android.os.Parcelable.Creator
    public InitiateCallHelper.CallContextOption.ShowOnBoarded[] newArray(int i) {
        return new InitiateCallHelper.CallContextOption.ShowOnBoarded[i];
    }
}
