package com.google.android.gms.search;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.Nullable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/search/GoogleNowAuthState.class */
public class GoogleNowAuthState extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleNowAuthState> CREATOR = new zza();
    @SafeParcelable.Field

    /* renamed from: f */
    private String f9791f;
    @SafeParcelable.Field

    /* renamed from: g */
    private String f9792g;
    @SafeParcelable.Field

    /* renamed from: h */
    private long f9793h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GoogleNowAuthState(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) long j) {
        this.f9791f = str;
        this.f9792g = str2;
        this.f9793h = j;
    }

    @Nullable
    /* renamed from: B */
    public String m10871B() {
        return this.f9792g;
    }

    @Nullable
    /* renamed from: I */
    public String m10870I() {
        return this.f9791f;
    }

    /* renamed from: W */
    public long m10869W() {
        return this.f9793h;
    }

    public String toString() {
        String str = this.f9791f;
        String str2 = this.f9792g;
        long j = this.f9793h;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74 + String.valueOf(str2).length());
        sb.append("mAuthCode = ");
        sb.append(str);
        sb.append("\nmAccessToken = ");
        sb.append(str2);
        sb.append("\nmNextAllowedTimeMillis = ");
        sb.append(j);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14447q(parcel, 1, m10870I(), false);
        SafeParcelWriter.m14447q(parcel, 2, m10871B(), false);
        SafeParcelWriter.m14451m(parcel, 3, m10869W());
        SafeParcelWriter.m14462b(parcel, a);
    }
}
