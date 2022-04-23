package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "SignInResponseCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zaj.class */
public final class zaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaj> CREATOR = new zak();
    @SafeParcelable.Field(getter = "getConnectionResult", m344id = 2)
    private final ConnectionResult zadh;
    @SafeParcelable.VersionField(m342id = 1)
    private final int zale;
    @SafeParcelable.Field(getter = "getResolveAccountResponse", m344id = 3)
    private final ResolveAccountResponse zasb;

    public zaj(int i) {
        this(new ConnectionResult(8, null), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zaj(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) ConnectionResult connectionResult, @SafeParcelable.Param(m343id = 3) ResolveAccountResponse resolveAccountResponse) {
        this.zale = i;
        this.zadh = connectionResult;
        this.zasb = resolveAccountResponse;
    }

    private zaj(ConnectionResult connectionResult, ResolveAccountResponse resolveAccountResponse) {
        this(1, connectionResult, null);
    }

    public final ConnectionResult getConnectionResult() {
        return this.zadh;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zale);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zadh, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zasb, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final ResolveAccountResponse zacw() {
        return this.zasb;
    }
}
