package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/GetSignInIntentRequest.class */
public class GetSignInIntentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new C11718c();
    private String zzau;
    private final String zzax;
    private final String zzbd;

    /* renamed from: com.google.android.gms.auth.api.identity.GetSignInIntentRequest$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/GetSignInIntentRequest$a.class */
    public static final class C11714a {

        /* renamed from: a */
        String f39029a;

        /* renamed from: b */
        String f39030b;

        /* renamed from: c */
        String f39031c;
    }

    public GetSignInIntentRequest(String str, String str2, String str3) {
        C12045o.m19162a(str);
        this.zzax = str;
        this.zzbd = str2;
        this.zzau = str3;
    }

    public static C11714a builder() {
        return new C11714a();
    }

    public static C11714a zzc(GetSignInIntentRequest getSignInIntentRequest) {
        C12045o.m19162a(getSignInIntentRequest);
        C11714a builder = builder();
        String serverClientId = getSignInIntentRequest.getServerClientId();
        C12045o.m19162a(serverClientId);
        builder.f39029a = serverClientId;
        builder.f39030b = getSignInIntentRequest.getHostedDomainFilter();
        String str = getSignInIntentRequest.zzau;
        if (str != null) {
            builder.f39031c = str;
        }
        return builder;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GetSignInIntentRequest)) {
            return false;
        }
        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) obj;
        return C12041m.m19168a(this.zzax, getSignInIntentRequest.zzax) && C12041m.m19168a(this.zzbd, getSignInIntentRequest.zzbd) && C12041m.m19168a(this.zzau, getSignInIntentRequest.zzau);
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, getServerClientId(), false);
        C12050a.m19104a(parcel, 2, getHostedDomainFilter(), false);
        C12050a.m19104a(parcel, 3, this.zzau, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
