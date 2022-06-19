package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzajw.class */
public final class zzajw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajw> CREATOR = new C12649ix();
    public final Bundle extras;
    public final String zzdke;

    public zzajw(String str, Bundle bundle) {
        this.zzdke = str;
        this.extras = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, this.zzdke, false);
        C12050a.m19110a(parcel, 2, this.extras, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
