package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class(creator = "MethodInvocationCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/MethodInvocation.class */
public class MethodInvocation extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new zan();
    @SafeParcelable.Field(getter = "getMethodKey", m4805id = 1)
    private final int zaa;
    @SafeParcelable.Field(getter = "getResultStatusCode", m4805id = 2)
    private final int zab;
    @SafeParcelable.Field(getter = "getConnectionResultStatusCode", m4805id = 3)
    private final int zac;
    @SafeParcelable.Field(getter = "getStartTimeMillis", m4805id = 4)
    private final long zad;
    @SafeParcelable.Field(getter = "getEndTimeMillis", m4805id = 5)
    private final long zae;
    @SafeParcelable.Field(getter = "getCallingModuleId", m4805id = 6)
    private final String zaf;
    @SafeParcelable.Field(getter = "getCallingEntryPoint", m4805id = 7)
    private final String zag;
    @SafeParcelable.Field(defaultValue = "0", getter = "getServiceId", m4805id = 8)
    private final int zah;

    @SafeParcelable.Constructor
    public MethodInvocation(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) int i2, @SafeParcelable.Param(m4804id = 3) int i3, @SafeParcelable.Param(m4804id = 4) long j, @SafeParcelable.Param(m4804id = 5) long j2, @SafeParcelable.Param(m4804id = 6) String str, @SafeParcelable.Param(m4804id = 7) String str2, @SafeParcelable.Param(m4804id = 8) int i4) {
        this.zaa = i;
        this.zab = i2;
        this.zac = i3;
        this.zad = j;
        this.zae = j2;
        this.zaf = str;
        this.zag = str2;
        this.zah = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeInt(parcel, 2, this.zab);
        SafeParcelWriter.writeInt(parcel, 3, this.zac);
        SafeParcelWriter.writeLong(parcel, 4, this.zad);
        SafeParcelWriter.writeLong(parcel, 5, this.zae);
        SafeParcelWriter.writeString(parcel, 6, this.zaf, false);
        SafeParcelWriter.writeString(parcel, 7, this.zag, false);
        SafeParcelWriter.writeInt(parcel, 8, this.zah);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
