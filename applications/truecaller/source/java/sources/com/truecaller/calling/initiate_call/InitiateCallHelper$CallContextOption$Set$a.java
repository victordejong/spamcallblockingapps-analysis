package com.truecaller.calling.initiate_call;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.CallContextMessage;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set$a.class */
public final class InitiateCallHelper$CallContextOption$Set$a implements Parcelable.Creator<InitiateCallHelper.CallContextOption.Set> {
    @Override // android.os.Parcelable.Creator
    public InitiateCallHelper.CallContextOption.Set createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return new InitiateCallHelper.CallContextOption.Set((CallContextMessage) parcel.readParcelable(InitiateCallHelper.CallContextOption.Set.class.getClassLoader()));
    }

    @Override // android.os.Parcelable.Creator
    public InitiateCallHelper.CallContextOption.Set[] newArray(int i) {
        return new InitiateCallHelper.CallContextOption.Set[i];
    }
}
