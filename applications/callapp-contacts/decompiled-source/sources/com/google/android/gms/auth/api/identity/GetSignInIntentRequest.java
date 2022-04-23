package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/GetSignInIntentRequest.class */
public class GetSignInIntentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new c();
    private String zzau;
    private final String zzax;
    private final String zzbd;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/GetSignInIntentRequest$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f22485a;

        /* renamed from: b  reason: collision with root package name */
        String f22486b;

        /* renamed from: c  reason: collision with root package name */
        String f22487c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetSignInIntentRequest(String str, String str2, String str3) {
        o.a(str);
        this.zzax = str;
        this.zzbd = str2;
        this.zzau = str3;
    }

    public static a builder() {
        return new a();
    }

    public static a zzc(GetSignInIntentRequest getSignInIntentRequest) {
        o.a(getSignInIntentRequest);
        a builder = builder();
        String serverClientId = getSignInIntentRequest.getServerClientId();
        o.a(serverClientId);
        builder.f22485a = serverClientId;
        builder.f22486b = getSignInIntentRequest.getHostedDomainFilter();
        String str = getSignInIntentRequest.zzau;
        if (str != null) {
            builder.f22487c = str;
        }
        return builder;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GetSignInIntentRequest)) {
            return false;
        }
        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) obj;
        return m.a(this.zzax, getSignInIntentRequest.zzax) && m.a(this.zzbd, getSignInIntentRequest.zzbd) && m.a(this.zzau, getSignInIntentRequest.zzau);
    }

    public String getHostedDomainFilter() {
        return this.zzbd;
    }

    public String getServerClientId() {
        return this.zzax;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzax, this.zzbd, this.zzau});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, getServerClientId(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, getHostedDomainFilter(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, this.zzau, false);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2);
    }
}
